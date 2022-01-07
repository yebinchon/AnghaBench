; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b1ant.c_btc8723b1ant_tdma_dur_adj_for_acl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b1ant.c_btc8723b1ant_tdma_dur_adj_for_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i64, i32, i32 }
%struct.btc_coexist = type { %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@btc8723b1ant_tdma_dur_adj_for_acl.up = internal global i32 0, align 4
@btc8723b1ant_tdma_dur_adj_for_acl.dn = internal global i32 0, align 4
@btc8723b1ant_tdma_dur_adj_for_acl.m = internal global i32 0, align 4
@btc8723b1ant_tdma_dur_adj_for_acl.n = internal global i32 0, align 4
@btc8723b1ant_tdma_dur_adj_for_acl.wait_count = internal global i32 0, align 4
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"[BTCoex], TdmaDurationAdjustForAcl()\0A\00", align 1
@BT_8723B_1ANT_WIFI_STATUS_CONNECTED_BUSY = common dso_local global i64 0, align 8
@BT_8723B_1ANT_WIFI_STATUS_NON_CONNECTED_ASSO_AUTH_SCAN = common dso_local global i64 0, align 8
@BT_8723B_1ANT_WIFI_STATUS_CONNECTED_SCAN = common dso_local global i64 0, align 8
@BT_8723B_1ANT_WIFI_STATUS_CONNECTED_SPECIAL_PKT = common dso_local global i64 0, align 8
@coex_dm = common dso_local global %struct.TYPE_4__* null, align 8
@NORMAL_EXEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"[BTCoex], first run TdmaDurationAdjust()!!\0A\00", align 1
@coex_sta = common dso_local global %struct.TYPE_3__* null, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"[BTCoex], Increase wifi duration!!\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"[BTCoex], Decrease wifi duration for retryCounter<3!!\0A\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"[BTCoex], Decrease wifi duration for retryCounter>3!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btc_coexist*, i64)* @btc8723b1ant_tdma_dur_adj_for_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc8723b1ant_tdma_dur_adj_for_acl(%struct.btc_coexist* %0, i64 %1) #0 {
  %3 = alloca %struct.btc_coexist*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.btc_coexist* %0, %struct.btc_coexist** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %11 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %10, i32 0, i32 0
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  store %struct.rtl_priv* %12, %struct.rtl_priv** %5, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %14 = load i32, i32* @COMP_BT_COEXIST, align 4
  %15 = load i32, i32* @DBG_LOUD, align 4
  %16 = call i32 @RT_TRACE(%struct.rtl_priv* %13, i32 %14, i32 %15, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @BT_8723B_1ANT_WIFI_STATUS_CONNECTED_BUSY, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  br label %22

21:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %21, %20
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @BT_8723B_1ANT_WIFI_STATUS_NON_CONNECTED_ASSO_AUTH_SCAN, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @BT_8723B_1ANT_WIFI_STATUS_CONNECTED_SCAN, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* @BT_8723B_1ANT_WIFI_STATUS_CONNECTED_SPECIAL_PKT, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %61

34:                                               ; preds = %30, %26, %22
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 1
  br i1 %38, label %39, label %60

39:                                               ; preds = %34
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 2
  br i1 %43, label %44, label %60

44:                                               ; preds = %39
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 3
  br i1 %48, label %49, label %60

49:                                               ; preds = %44
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 9
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %56 = load i32, i32* @NORMAL_EXEC, align 4
  %57 = call i32 @halbtc8723b1ant_ps_tdma(%struct.btc_coexist* %55, i32 %56, i32 1, i32 9)
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  store i32 9, i32* %59, align 4
  store i32 0, i32* @btc8723b1ant_tdma_dur_adj_for_acl.up, align 4
  store i32 0, i32* @btc8723b1ant_tdma_dur_adj_for_acl.dn, align 4
  store i32 1, i32* @btc8723b1ant_tdma_dur_adj_for_acl.m, align 4
  store i32 3, i32* @btc8723b1ant_tdma_dur_adj_for_acl.n, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* @btc8723b1ant_tdma_dur_adj_for_acl.wait_count, align 4
  br label %60

60:                                               ; preds = %54, %49, %44, %39, %34
  br label %279

61:                                               ; preds = %30
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %61
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  store i32 1, i32* %68, align 4
  %69 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %70 = load i32, i32* @COMP_BT_COEXIST, align 4
  %71 = load i32, i32* @DBG_LOUD, align 4
  %72 = call i32 @RT_TRACE(%struct.rtl_priv* %69, i32 %70, i32 %71, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %73 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %74 = load i32, i32* @NORMAL_EXEC, align 4
  %75 = call i32 @halbtc8723b1ant_ps_tdma(%struct.btc_coexist* %73, i32 %74, i32 1, i32 2)
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  store i32 2, i32* %77, align 4
  store i32 0, i32* @btc8723b1ant_tdma_dur_adj_for_acl.up, align 4
  store i32 0, i32* @btc8723b1ant_tdma_dur_adj_for_acl.dn, align 4
  store i32 1, i32* @btc8723b1ant_tdma_dur_adj_for_acl.m, align 4
  store i32 3, i32* @btc8723b1ant_tdma_dur_adj_for_acl.n, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* @btc8723b1ant_tdma_dur_adj_for_acl.wait_count, align 4
  br label %279

78:                                               ; preds = %61
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %7, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %8, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = icmp sgt i32 %87, 1050
  br i1 %88, label %94, label %89

89:                                               ; preds = %78
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = icmp sgt i32 %92, 1250
  br i1 %93, label %94, label %97

94:                                               ; preds = %89, %78
  %95 = load i64, i64* %7, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* %7, align 8
  br label %97

97:                                               ; preds = %94, %89
  store i32 0, i32* %6, align 4
  %98 = load i32, i32* @btc8723b1ant_tdma_dur_adj_for_acl.wait_count, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* @btc8723b1ant_tdma_dur_adj_for_acl.wait_count, align 4
  %100 = load i64, i64* %7, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %120

102:                                              ; preds = %97
  %103 = load i32, i32* @btc8723b1ant_tdma_dur_adj_for_acl.up, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* @btc8723b1ant_tdma_dur_adj_for_acl.up, align 4
  %105 = load i32, i32* @btc8723b1ant_tdma_dur_adj_for_acl.dn, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* @btc8723b1ant_tdma_dur_adj_for_acl.dn, align 4
  %107 = load i32, i32* @btc8723b1ant_tdma_dur_adj_for_acl.dn, align 4
  %108 = icmp sle i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %102
  store i32 0, i32* @btc8723b1ant_tdma_dur_adj_for_acl.dn, align 4
  br label %110

110:                                              ; preds = %109, %102
  %111 = load i32, i32* @btc8723b1ant_tdma_dur_adj_for_acl.up, align 4
  %112 = load i32, i32* @btc8723b1ant_tdma_dur_adj_for_acl.n, align 4
  %113 = icmp sge i32 %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %110
  store i32 0, i32* @btc8723b1ant_tdma_dur_adj_for_acl.wait_count, align 4
  store i32 3, i32* @btc8723b1ant_tdma_dur_adj_for_acl.n, align 4
  store i32 0, i32* @btc8723b1ant_tdma_dur_adj_for_acl.up, align 4
  store i32 0, i32* @btc8723b1ant_tdma_dur_adj_for_acl.dn, align 4
  store i32 1, i32* %6, align 4
  %115 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %116 = load i32, i32* @COMP_BT_COEXIST, align 4
  %117 = load i32, i32* @DBG_LOUD, align 4
  %118 = call i32 @RT_TRACE(%struct.rtl_priv* %115, i32 %116, i32 %117, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %119

119:                                              ; preds = %114, %110
  br label %172

120:                                              ; preds = %97
  %121 = load i64, i64* %7, align 8
  %122 = icmp sle i64 %121, 3
  br i1 %122, label %123, label %153

123:                                              ; preds = %120
  %124 = load i32, i32* @btc8723b1ant_tdma_dur_adj_for_acl.up, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* @btc8723b1ant_tdma_dur_adj_for_acl.up, align 4
  %126 = load i32, i32* @btc8723b1ant_tdma_dur_adj_for_acl.dn, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* @btc8723b1ant_tdma_dur_adj_for_acl.dn, align 4
  %128 = load i32, i32* @btc8723b1ant_tdma_dur_adj_for_acl.up, align 4
  %129 = icmp sle i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %123
  store i32 0, i32* @btc8723b1ant_tdma_dur_adj_for_acl.up, align 4
  br label %131

131:                                              ; preds = %130, %123
  %132 = load i32, i32* @btc8723b1ant_tdma_dur_adj_for_acl.dn, align 4
  %133 = icmp eq i32 %132, 2
  br i1 %133, label %134, label %152

134:                                              ; preds = %131
  %135 = load i32, i32* @btc8723b1ant_tdma_dur_adj_for_acl.wait_count, align 4
  %136 = icmp sle i32 %135, 2
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load i32, i32* @btc8723b1ant_tdma_dur_adj_for_acl.m, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* @btc8723b1ant_tdma_dur_adj_for_acl.m, align 4
  br label %141

140:                                              ; preds = %134
  store i32 1, i32* @btc8723b1ant_tdma_dur_adj_for_acl.m, align 4
  br label %141

141:                                              ; preds = %140, %137
  %142 = load i32, i32* @btc8723b1ant_tdma_dur_adj_for_acl.m, align 4
  %143 = icmp sge i32 %142, 20
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  store i32 20, i32* @btc8723b1ant_tdma_dur_adj_for_acl.m, align 4
  br label %145

145:                                              ; preds = %144, %141
  %146 = load i32, i32* @btc8723b1ant_tdma_dur_adj_for_acl.m, align 4
  %147 = mul nsw i32 3, %146
  store i32 %147, i32* @btc8723b1ant_tdma_dur_adj_for_acl.n, align 4
  store i32 0, i32* @btc8723b1ant_tdma_dur_adj_for_acl.up, align 4
  store i32 0, i32* @btc8723b1ant_tdma_dur_adj_for_acl.dn, align 4
  store i32 0, i32* @btc8723b1ant_tdma_dur_adj_for_acl.wait_count, align 4
  store i32 -1, i32* %6, align 4
  %148 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %149 = load i32, i32* @COMP_BT_COEXIST, align 4
  %150 = load i32, i32* @DBG_LOUD, align 4
  %151 = call i32 @RT_TRACE(%struct.rtl_priv* %148, i32 %149, i32 %150, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  br label %152

152:                                              ; preds = %145, %131
  br label %171

153:                                              ; preds = %120
  %154 = load i32, i32* @btc8723b1ant_tdma_dur_adj_for_acl.wait_count, align 4
  %155 = icmp eq i32 %154, 1
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load i32, i32* @btc8723b1ant_tdma_dur_adj_for_acl.m, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* @btc8723b1ant_tdma_dur_adj_for_acl.m, align 4
  br label %160

159:                                              ; preds = %153
  store i32 1, i32* @btc8723b1ant_tdma_dur_adj_for_acl.m, align 4
  br label %160

160:                                              ; preds = %159, %156
  %161 = load i32, i32* @btc8723b1ant_tdma_dur_adj_for_acl.m, align 4
  %162 = icmp sge i32 %161, 20
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  store i32 20, i32* @btc8723b1ant_tdma_dur_adj_for_acl.m, align 4
  br label %164

164:                                              ; preds = %163, %160
  %165 = load i32, i32* @btc8723b1ant_tdma_dur_adj_for_acl.m, align 4
  %166 = mul nsw i32 3, %165
  store i32 %166, i32* @btc8723b1ant_tdma_dur_adj_for_acl.n, align 4
  store i32 0, i32* @btc8723b1ant_tdma_dur_adj_for_acl.up, align 4
  store i32 0, i32* @btc8723b1ant_tdma_dur_adj_for_acl.dn, align 4
  store i32 0, i32* @btc8723b1ant_tdma_dur_adj_for_acl.wait_count, align 4
  store i32 -1, i32* %6, align 4
  %167 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %168 = load i32, i32* @COMP_BT_COEXIST, align 4
  %169 = load i32, i32* @DBG_LOUD, align 4
  %170 = call i32 @RT_TRACE(%struct.rtl_priv* %167, i32 %168, i32 %169, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  br label %171

171:                                              ; preds = %164, %152
  br label %172

172:                                              ; preds = %171, %119
  %173 = load i32, i32* %6, align 4
  %174 = icmp eq i32 %173, -1
  br i1 %174, label %175, label %211

175:                                              ; preds = %172
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = icmp eq i32 %178, 1
  br i1 %179, label %180, label %186

180:                                              ; preds = %175
  %181 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %182 = load i32, i32* @NORMAL_EXEC, align 4
  %183 = call i32 @halbtc8723b1ant_ps_tdma(%struct.btc_coexist* %181, i32 %182, i32 1, i32 2)
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 1
  store i32 2, i32* %185, align 4
  br label %210

186:                                              ; preds = %175
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = icmp eq i32 %189, 2
  br i1 %190, label %191, label %197

191:                                              ; preds = %186
  %192 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %193 = load i32, i32* @NORMAL_EXEC, align 4
  %194 = call i32 @halbtc8723b1ant_ps_tdma(%struct.btc_coexist* %192, i32 %193, i32 1, i32 9)
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 1
  store i32 9, i32* %196, align 4
  br label %209

197:                                              ; preds = %186
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = icmp eq i32 %200, 9
  br i1 %201, label %202, label %208

202:                                              ; preds = %197
  %203 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %204 = load i32, i32* @NORMAL_EXEC, align 4
  %205 = call i32 @halbtc8723b1ant_ps_tdma(%struct.btc_coexist* %203, i32 %204, i32 1, i32 11)
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 1
  store i32 11, i32* %207, align 4
  br label %208

208:                                              ; preds = %202, %197
  br label %209

209:                                              ; preds = %208, %191
  br label %210

210:                                              ; preds = %209, %180
  br label %251

211:                                              ; preds = %172
  %212 = load i32, i32* %6, align 4
  %213 = icmp eq i32 %212, 1
  br i1 %213, label %214, label %250

214:                                              ; preds = %211
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = icmp eq i32 %217, 11
  br i1 %218, label %219, label %225

219:                                              ; preds = %214
  %220 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %221 = load i32, i32* @NORMAL_EXEC, align 4
  %222 = call i32 @halbtc8723b1ant_ps_tdma(%struct.btc_coexist* %220, i32 %221, i32 1, i32 9)
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 1
  store i32 9, i32* %224, align 4
  br label %249

225:                                              ; preds = %214
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = icmp eq i32 %228, 9
  br i1 %229, label %230, label %236

230:                                              ; preds = %225
  %231 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %232 = load i32, i32* @NORMAL_EXEC, align 4
  %233 = call i32 @halbtc8723b1ant_ps_tdma(%struct.btc_coexist* %231, i32 %232, i32 1, i32 2)
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 1
  store i32 2, i32* %235, align 4
  br label %248

236:                                              ; preds = %225
  %237 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = icmp eq i32 %239, 2
  br i1 %240, label %241, label %247

241:                                              ; preds = %236
  %242 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %243 = load i32, i32* @NORMAL_EXEC, align 4
  %244 = call i32 @halbtc8723b1ant_ps_tdma(%struct.btc_coexist* %242, i32 %243, i32 1, i32 1)
  %245 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 1
  store i32 1, i32* %246, align 4
  br label %247

247:                                              ; preds = %241, %236
  br label %248

248:                                              ; preds = %247, %230
  br label %249

249:                                              ; preds = %248, %219
  br label %250

250:                                              ; preds = %249, %211
  br label %251

251:                                              ; preds = %250, %210
  %252 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = icmp ne i32 %254, 1
  br i1 %255, label %256, label %278

256:                                              ; preds = %251
  %257 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = icmp ne i32 %259, 2
  br i1 %260, label %261, label %278

261:                                              ; preds = %256
  %262 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = icmp ne i32 %264, 9
  br i1 %265, label %266, label %278

266:                                              ; preds = %261
  %267 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = icmp ne i32 %269, 11
  br i1 %270, label %271, label %278

271:                                              ; preds = %266
  %272 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %273 = load i32, i32* @NORMAL_EXEC, align 4
  %274 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @halbtc8723b1ant_ps_tdma(%struct.btc_coexist* %272, i32 %273, i32 1, i32 %276)
  br label %278

278:                                              ; preds = %271, %266, %261, %256, %251
  br label %279

279:                                              ; preds = %60, %278, %66
  ret void
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @halbtc8723b1ant_ps_tdma(%struct.btc_coexist*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
