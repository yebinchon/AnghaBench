; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_update_bt_link_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_update_bt_link_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.TYPE_2__, %struct.rtw_chip_info*, %struct.rtw_coex }
%struct.TYPE_2__ = type { i64 }
%struct.rtw_chip_info = type { i64*, i64* }
%struct.rtw_coex = type { %struct.rtw_coex_dm, %struct.rtw_coex_stat }
%struct.rtw_coex_dm = type { i64*, i64*, i32 }
%struct.rtw_coex_stat = type { i64, i32*, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64 }

@COEX_RSSI_STEP = common dso_local global i64 0, align 8
@COEX_CNT_BT_INFOUPDATE = common dso_local global i64 0, align 8
@COEX_INFO_CONNECTION = common dso_local global i32 0, align 4
@COEX_INFO_FTP = common dso_local global i32 0, align 4
@COEX_INFO_A2DP = common dso_local global i32 0, align 4
@COEX_INFO_HID = common dso_local global i32 0, align 4
@COEX_INFO_SCO_ESCO = common dso_local global i32 0, align 4
@COEX_INFO_INQ_PAGE = common dso_local global i32 0, align 4
@COEX_BTSTATUS_INQ_PAGE = common dso_local global i32 0, align 4
@COEX_BTSTATUS_NCON_IDLE = common dso_local global i32 0, align 4
@COEX_BTSTATUS_CON_IDLE = common dso_local global i32 0, align 4
@COEX_INFO_SCO_BUSY = common dso_local global i32 0, align 4
@COEX_INFO_ACL_BUSY = common dso_local global i32 0, align 4
@COEX_BTSTATUS_ACL_SCO_BUSY = common dso_local global i32 0, align 4
@COEX_BTSTATUS_SCO_BUSY = common dso_local global i32 0, align 4
@COEX_BTSTATUS_ACL_BUSY = common dso_local global i32 0, align 4
@COEX_BTSTATUS_MAX = common dso_local global i32 0, align 4
@RTW_DBG_COEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"coex: bt status(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw_coex_update_bt_link_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_coex_update_bt_link_info(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_coex*, align 8
  %4 = alloca %struct.rtw_coex_stat*, align 8
  %5 = alloca %struct.rtw_coex_dm*, align 8
  %6 = alloca %struct.rtw_chip_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %12 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %13 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %12, i32 0, i32 2
  store %struct.rtw_coex* %13, %struct.rtw_coex** %3, align 8
  %14 = load %struct.rtw_coex*, %struct.rtw_coex** %3, align 8
  %15 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %14, i32 0, i32 1
  store %struct.rtw_coex_stat* %15, %struct.rtw_coex_stat** %4, align 8
  %16 = load %struct.rtw_coex*, %struct.rtw_coex** %3, align 8
  %17 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %16, i32 0, i32 0
  store %struct.rtw_coex_dm* %17, %struct.rtw_coex_dm** %5, align 8
  %18 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %19 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %18, i32 0, i32 1
  %20 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %19, align 8
  store %struct.rtw_chip_info* %20, %struct.rtw_chip_info** %6, align 8
  store i64 0, i64* %7, align 8
  br label %21

21:                                               ; preds = %52, %1
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @COEX_RSSI_STEP, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %55

25:                                               ; preds = %21
  %26 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %5, align 8
  %27 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %8, align 8
  %32 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %6, align 8
  %33 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %9, align 8
  %38 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %39 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %10, align 8
  %41 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i64 @rtw_coex_next_rssi_state(%struct.rtw_dev* %41, i64 %42, i64 %43, i64 %44)
  store i64 %45, i64* %8, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %5, align 8
  %48 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  store i64 %46, i64* %51, align 8
  br label %52

52:                                               ; preds = %25
  %53 = load i64, i64* %7, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %7, align 8
  br label %21

55:                                               ; preds = %21
  store i64 0, i64* %7, align 8
  br label %56

56:                                               ; preds = %88, %55
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* @COEX_RSSI_STEP, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %91

60:                                               ; preds = %56
  %61 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %5, align 8
  %62 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %61, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* %7, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %8, align 8
  %67 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %6, align 8
  %68 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = load i64, i64* %7, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %9, align 8
  %73 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %74 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %10, align 8
  %77 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* %9, align 8
  %81 = call i64 @rtw_coex_next_rssi_state(%struct.rtw_dev* %77, i64 %78, i64 %79, i64 %80)
  store i64 %81, i64* %8, align 8
  %82 = load i64, i64* %8, align 8
  %83 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %5, align 8
  %84 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %83, i32 0, i32 1
  %85 = load i64*, i64** %84, align 8
  %86 = load i64, i64* %7, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  store i64 %82, i64* %87, align 8
  br label %88

88:                                               ; preds = %60
  %89 = load i64, i64* %7, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %7, align 8
  br label %56

91:                                               ; preds = %56
  %92 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %93 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %92, i32 0, i32 11
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %126

96:                                               ; preds = %91
  %97 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %98 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i64, i64* @COEX_CNT_BT_INFOUPDATE, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = srem i32 %102, 3
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %126

105:                                              ; preds = %96
  %106 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %107 = call i64 @rtw_coex_get_bt_scan_type(%struct.rtw_dev* %106, i64* %11)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %125

109:                                              ; preds = %105
  %110 = load i64, i64* %11, align 8
  %111 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %112 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %111, i32 0, i32 2
  store i64 %110, i64* %112, align 8
  %113 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %114 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = and i64 %115, 1
  %117 = icmp eq i64 %116, 1
  br i1 %117, label %118, label %121

118:                                              ; preds = %109
  %119 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %120 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %119, i32 0, i32 3
  store i32 1, i32* %120, align 8
  br label %124

121:                                              ; preds = %109
  %122 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %123 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %122, i32 0, i32 3
  store i32 0, i32* %123, align 8
  br label %124

124:                                              ; preds = %121, %118
  br label %125

125:                                              ; preds = %124, %105
  br label %126

126:                                              ; preds = %125, %96, %91
  %127 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %128 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %127, i32 0, i32 10
  store i64 0, i64* %128, align 8
  %129 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %130 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @COEX_INFO_CONNECTION, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %146, label %135

135:                                              ; preds = %126
  %136 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %137 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %136, i32 0, i32 5
  store i32 0, i32* %137, align 8
  %138 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %139 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %138, i32 0, i32 6
  store i32 0, i32* %139, align 4
  %140 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %141 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %140, i32 0, i32 7
  store i32 0, i32* %141, align 8
  %142 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %143 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %142, i32 0, i32 8
  store i32 0, i32* %143, align 4
  %144 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %145 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %144, i32 0, i32 9
  store i32 0, i32* %145, align 8
  br label %217

146:                                              ; preds = %126
  %147 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %148 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %147, i32 0, i32 5
  store i32 1, i32* %148, align 8
  %149 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %150 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @COEX_INFO_FTP, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %146
  %156 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %157 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %156, i32 0, i32 6
  store i32 1, i32* %157, align 4
  %158 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %159 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %158, i32 0, i32 10
  %160 = load i64, i64* %159, align 8
  %161 = add nsw i64 %160, 1
  store i64 %161, i64* %159, align 8
  br label %165

162:                                              ; preds = %146
  %163 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %164 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %163, i32 0, i32 6
  store i32 0, i32* %164, align 4
  br label %165

165:                                              ; preds = %162, %155
  %166 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %167 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @COEX_INFO_A2DP, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %165
  %173 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %174 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %173, i32 0, i32 7
  store i32 1, i32* %174, align 8
  %175 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %176 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %175, i32 0, i32 10
  %177 = load i64, i64* %176, align 8
  %178 = add nsw i64 %177, 1
  store i64 %178, i64* %176, align 8
  br label %182

179:                                              ; preds = %165
  %180 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %181 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %180, i32 0, i32 7
  store i32 0, i32* %181, align 8
  br label %182

182:                                              ; preds = %179, %172
  %183 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %184 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @COEX_INFO_HID, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %182
  %190 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %191 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %190, i32 0, i32 8
  store i32 1, i32* %191, align 4
  %192 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %193 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %192, i32 0, i32 10
  %194 = load i64, i64* %193, align 8
  %195 = add nsw i64 %194, 1
  store i64 %195, i64* %193, align 8
  br label %199

196:                                              ; preds = %182
  %197 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %198 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %197, i32 0, i32 8
  store i32 0, i32* %198, align 4
  br label %199

199:                                              ; preds = %196, %189
  %200 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %201 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @COEX_INFO_SCO_ESCO, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %213

206:                                              ; preds = %199
  %207 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %208 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %207, i32 0, i32 9
  store i32 1, i32* %208, align 8
  %209 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %210 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %209, i32 0, i32 10
  %211 = load i64, i64* %210, align 8
  %212 = add nsw i64 %211, 1
  store i64 %212, i64* %210, align 8
  br label %216

213:                                              ; preds = %199
  %214 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %215 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %214, i32 0, i32 9
  store i32 0, i32* %215, align 8
  br label %216

216:                                              ; preds = %213, %206
  br label %217

217:                                              ; preds = %216, %135
  %218 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %219 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @COEX_INFO_INQ_PAGE, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %217
  %225 = load i32, i32* @COEX_BTSTATUS_INQ_PAGE, align 4
  %226 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %5, align 8
  %227 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %226, i32 0, i32 2
  store i32 %225, i32* %227, align 8
  br label %298

228:                                              ; preds = %217
  %229 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %230 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %229, i32 0, i32 4
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @COEX_INFO_CONNECTION, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %239, label %235

235:                                              ; preds = %228
  %236 = load i32, i32* @COEX_BTSTATUS_NCON_IDLE, align 4
  %237 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %5, align 8
  %238 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %237, i32 0, i32 2
  store i32 %236, i32* %238, align 8
  br label %297

239:                                              ; preds = %228
  %240 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %241 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %240, i32 0, i32 4
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @COEX_INFO_CONNECTION, align 4
  %244 = icmp eq i32 %242, %243
  br i1 %244, label %245, label %249

245:                                              ; preds = %239
  %246 = load i32, i32* @COEX_BTSTATUS_CON_IDLE, align 4
  %247 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %5, align 8
  %248 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %247, i32 0, i32 2
  store i32 %246, i32* %248, align 8
  br label %296

249:                                              ; preds = %239
  %250 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %251 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %250, i32 0, i32 4
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @COEX_INFO_SCO_ESCO, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %263, label %256

256:                                              ; preds = %249
  %257 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %258 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %257, i32 0, i32 4
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* @COEX_INFO_SCO_BUSY, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %279

263:                                              ; preds = %256, %249
  %264 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %265 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %264, i32 0, i32 4
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* @COEX_INFO_ACL_BUSY, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %274

270:                                              ; preds = %263
  %271 = load i32, i32* @COEX_BTSTATUS_ACL_SCO_BUSY, align 4
  %272 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %5, align 8
  %273 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %272, i32 0, i32 2
  store i32 %271, i32* %273, align 8
  br label %278

274:                                              ; preds = %263
  %275 = load i32, i32* @COEX_BTSTATUS_SCO_BUSY, align 4
  %276 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %5, align 8
  %277 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %276, i32 0, i32 2
  store i32 %275, i32* %277, align 8
  br label %278

278:                                              ; preds = %274, %270
  br label %295

279:                                              ; preds = %256
  %280 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %281 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %280, i32 0, i32 4
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* @COEX_INFO_ACL_BUSY, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %290

286:                                              ; preds = %279
  %287 = load i32, i32* @COEX_BTSTATUS_ACL_BUSY, align 4
  %288 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %5, align 8
  %289 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %288, i32 0, i32 2
  store i32 %287, i32* %289, align 8
  br label %294

290:                                              ; preds = %279
  %291 = load i32, i32* @COEX_BTSTATUS_MAX, align 4
  %292 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %5, align 8
  %293 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %292, i32 0, i32 2
  store i32 %291, i32* %293, align 8
  br label %294

294:                                              ; preds = %290, %286
  br label %295

295:                                              ; preds = %294, %278
  br label %296

296:                                              ; preds = %295, %245
  br label %297

297:                                              ; preds = %296, %235
  br label %298

298:                                              ; preds = %297, %224
  %299 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %300 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %299, i32 0, i32 1
  %301 = load i32*, i32** %300, align 8
  %302 = load i64, i64* @COEX_CNT_BT_INFOUPDATE, align 8
  %303 = getelementptr inbounds i32, i32* %301, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %303, align 4
  %306 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %307 = load i32, i32* @RTW_DBG_COEX, align 4
  %308 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %5, align 8
  %309 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 8
  %311 = call i32 @rtw_dbg(%struct.rtw_dev* %306, i32 %307, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %310)
  ret void
}

declare dso_local i64 @rtw_coex_next_rssi_state(%struct.rtw_dev*, i64, i64, i64) #1

declare dso_local i64 @rtw_coex_get_bt_scan_type(%struct.rtw_dev*, i64*) #1

declare dso_local i32 @rtw_dbg(%struct.rtw_dev*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
