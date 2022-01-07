; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_core.c_rtl_op_add_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_core.c_rtl_op_add_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_vif*, i32 }
%struct.rtl_priv = type { %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i32 (%struct.ieee80211_hw*, i32, i8**)*, i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*)*, i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*, i32, i32)* }
%struct.TYPE_5__ = type { i32 }
%struct.rtl_mac = type { i32, i32, i8**, i8*, i8*, %struct.ieee80211_vif*, %struct.ieee80211_vif*, i64, i8* }

@COMP_ERR = common dso_local global i32 0, align 4
@DBG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"vif has been set!! mac->vif = 0x%p\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IEEE80211_VIF_BEACON_FILTER = common dso_local global i32 0, align 4
@P2P_ROLE_CLIENT = common dso_local global i64 0, align 8
@COMP_MAC80211 = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"NL80211_IFTYPE_STATION\0A\00", align 1
@RTL_IBSS_INT_MASKS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"NL80211_IFTYPE_ADHOC\0A\00", align 1
@MAC80211_LINKED = common dso_local global i8* null, align 8
@BAND_ON_2_4G = common dso_local global i32 0, align 4
@HW_VAR_BASIC_RATE = common dso_local global i32 0, align 4
@P2P_ROLE_GO = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"NL80211_IFTYPE_AP\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"NL80211_IFTYPE_MESH_POINT\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"operation mode %d is not supported!\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"p2p role %x\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@HW_VAR_ETHER_ADDR = common dso_local global i32 0, align 4
@HW_VAR_RETRY_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @rtl_op_add_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_op_add_interface(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.rtl_priv*, align 8
  %7 = alloca %struct.rtl_mac*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  store %struct.rtl_priv* %11, %struct.rtl_priv** %6, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %13 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %12)
  %14 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %13)
  store %struct.rtl_mac* %14, %struct.rtl_mac** %7, align 8
  store i32 0, i32* %8, align 4
  store i8* inttoptr (i64 48 to i8*), i8** %9, align 8
  %15 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %16 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %15, i32 0, i32 6
  %17 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %16, align 8
  %18 = icmp ne %struct.ieee80211_vif* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %21 = load i32, i32* @COMP_ERR, align 4
  %22 = load i32, i32* @DBG_WARNING, align 4
  %23 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %24 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %23, i32 0, i32 6
  %25 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %24, align 8
  %26 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %20, i32 %21, i32 %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.ieee80211_vif* %25)
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %309

29:                                               ; preds = %2
  %30 = load i32, i32* @IEEE80211_VIF_BEACON_FILTER, align 4
  %31 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %32 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %36 = call i32 @rtl_ips_nic_on(%struct.ieee80211_hw* %35)
  %37 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %38 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %42 = call i32 @ieee80211_vif_type_p2p(%struct.ieee80211_vif* %41)
  switch i32 %42, label %210 [
    i32 130, label %43
    i32 128, label %47
    i32 133, label %77
    i32 129, label %120
    i32 132, label %124
    i32 131, label %167
  ]

43:                                               ; preds = %29
  %44 = load i64, i64* @P2P_ROLE_CLIENT, align 8
  %45 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %46 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %45, i32 0, i32 7
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %29, %43
  %48 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %49 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %76

52:                                               ; preds = %47
  %53 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %54 = load i32, i32* @COMP_MAC80211, align 4
  %55 = load i32, i32* @DBG_LOUD, align 4
  %56 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %53, i32 %54, i32 %55, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %58 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  %59 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %60 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %59, i32 0, i32 1
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 3
  %65 = load i32 (%struct.ieee80211_hw*, i32, i32)*, i32 (%struct.ieee80211_hw*, i32, i32)** %64, align 8
  %66 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %67 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %68 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %67, i32 0, i32 1
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* @RTL_IBSS_INT_MASKS, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 %65(%struct.ieee80211_hw* %66, i32 0, i32 %74)
  br label %76

76:                                               ; preds = %52, %47
  br label %217

77:                                               ; preds = %29
  %78 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %79 = load i32, i32* @COMP_MAC80211, align 4
  %80 = load i32, i32* @DBG_LOUD, align 4
  %81 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %78, i32 %79, i32 %80, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %82 = load i8*, i8** @MAC80211_LINKED, align 8
  %83 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %84 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %83, i32 0, i32 8
  store i8* %82, i8** %84, align 8
  %85 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %86 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %85, i32 0, i32 1
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 2
  %91 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %90, align 8
  %92 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %93 = call i32 %91(%struct.ieee80211_hw* %92)
  %94 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %95 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @BAND_ON_2_4G, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %77
  %101 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %102 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %101, i32 0, i32 1
  store i32 4095, i32* %102, align 4
  br label %106

103:                                              ; preds = %77
  %104 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %105 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %104, i32 0, i32 1
  store i32 4080, i32* %105, align 4
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %108 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %107, i32 0, i32 1
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32 (%struct.ieee80211_hw*, i32, i8**)*, i32 (%struct.ieee80211_hw*, i32, i8**)** %112, align 8
  %114 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %115 = load i32, i32* @HW_VAR_BASIC_RATE, align 4
  %116 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %117 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %116, i32 0, i32 1
  %118 = bitcast i32* %117 to i8**
  %119 = call i32 %113(%struct.ieee80211_hw* %114, i32 %115, i8** %118)
  store i8* inttoptr (i64 7 to i8*), i8** %9, align 8
  br label %217

120:                                              ; preds = %29
  %121 = load i64, i64* @P2P_ROLE_GO, align 8
  %122 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %123 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %122, i32 0, i32 7
  store i64 %121, i64* %123, align 8
  br label %124

124:                                              ; preds = %29, %120
  %125 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %126 = load i32, i32* @COMP_MAC80211, align 4
  %127 = load i32, i32* @DBG_LOUD, align 4
  %128 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %125, i32 %126, i32 %127, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %129 = load i8*, i8** @MAC80211_LINKED, align 8
  %130 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %131 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %130, i32 0, i32 8
  store i8* %129, i8** %131, align 8
  %132 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %133 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %132, i32 0, i32 1
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 2
  %138 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %137, align 8
  %139 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %140 = call i32 %138(%struct.ieee80211_hw* %139)
  %141 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %142 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @BAND_ON_2_4G, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %124
  %148 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %149 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %148, i32 0, i32 1
  store i32 4095, i32* %149, align 4
  br label %153

150:                                              ; preds = %124
  %151 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %152 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %151, i32 0, i32 1
  store i32 4080, i32* %152, align 4
  br label %153

153:                                              ; preds = %150, %147
  %154 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %155 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %154, i32 0, i32 1
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load i32 (%struct.ieee80211_hw*, i32, i8**)*, i32 (%struct.ieee80211_hw*, i32, i8**)** %159, align 8
  %161 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %162 = load i32, i32* @HW_VAR_BASIC_RATE, align 4
  %163 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %164 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %163, i32 0, i32 1
  %165 = bitcast i32* %164 to i8**
  %166 = call i32 %160(%struct.ieee80211_hw* %161, i32 %162, i8** %165)
  store i8* inttoptr (i64 7 to i8*), i8** %9, align 8
  br label %217

167:                                              ; preds = %29
  %168 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %169 = load i32, i32* @COMP_MAC80211, align 4
  %170 = load i32, i32* @DBG_LOUD, align 4
  %171 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %168, i32 %169, i32 %170, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %172 = load i8*, i8** @MAC80211_LINKED, align 8
  %173 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %174 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %173, i32 0, i32 8
  store i8* %172, i8** %174, align 8
  %175 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %176 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %175, i32 0, i32 1
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 2
  %181 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %180, align 8
  %182 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %183 = call i32 %181(%struct.ieee80211_hw* %182)
  %184 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %185 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @BAND_ON_2_4G, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %193

190:                                              ; preds = %167
  %191 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %192 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %191, i32 0, i32 1
  store i32 4095, i32* %192, align 4
  br label %196

193:                                              ; preds = %167
  %194 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %195 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %194, i32 0, i32 1
  store i32 4080, i32* %195, align 4
  br label %196

196:                                              ; preds = %193, %190
  %197 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %198 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %197, i32 0, i32 1
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  %203 = load i32 (%struct.ieee80211_hw*, i32, i8**)*, i32 (%struct.ieee80211_hw*, i32, i8**)** %202, align 8
  %204 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %205 = load i32, i32* @HW_VAR_BASIC_RATE, align 4
  %206 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %207 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %206, i32 0, i32 1
  %208 = bitcast i32* %207 to i8**
  %209 = call i32 %203(%struct.ieee80211_hw* %204, i32 %205, i8** %208)
  store i8* inttoptr (i64 7 to i8*), i8** %9, align 8
  br label %217

210:                                              ; preds = %29
  %211 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %212 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %211, i32 0, i32 1
  %213 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %212, align 8
  %214 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), %struct.ieee80211_vif* %213)
  %215 = load i32, i32* @EOPNOTSUPP, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %8, align 4
  br label %303

217:                                              ; preds = %196, %153, %106, %76
  %218 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %219 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %218, i32 0, i32 7
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %245

222:                                              ; preds = %217
  %223 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %224 = load i32, i32* @COMP_MAC80211, align 4
  %225 = load i32, i32* @DBG_LOUD, align 4
  %226 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %227 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %226, i32 0, i32 1
  %228 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %227, align 8
  %229 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %223, i32 %224, i32 %225, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), %struct.ieee80211_vif* %228)
  %230 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %231 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %230, i32 0, i32 1
  store i32 4080, i32* %231, align 4
  %232 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %233 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %232, i32 0, i32 1
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 0
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 0
  %238 = load i32 (%struct.ieee80211_hw*, i32, i8**)*, i32 (%struct.ieee80211_hw*, i32, i8**)** %237, align 8
  %239 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %240 = load i32, i32* @HW_VAR_BASIC_RATE, align 4
  %241 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %242 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %241, i32 0, i32 1
  %243 = bitcast i32* %242 to i8**
  %244 = call i32 %238(%struct.ieee80211_hw* %239, i32 %240, i8** %243)
  br label %245

245:                                              ; preds = %222, %217
  %246 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %247 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %248 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %247, i32 0, i32 6
  store %struct.ieee80211_vif* %246, %struct.ieee80211_vif** %248, align 8
  %249 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %250 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %249, i32 0, i32 1
  %251 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %250, align 8
  %252 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %253 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %252, i32 0, i32 5
  store %struct.ieee80211_vif* %251, %struct.ieee80211_vif** %253, align 8
  %254 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %255 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %254, i32 0, i32 1
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 0
  %258 = load %struct.TYPE_6__*, %struct.TYPE_6__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 1
  %260 = load i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*)*, i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*)** %259, align 8
  %261 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %262 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %263 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %262, i32 0, i32 1
  %264 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %263, align 8
  %265 = call i32 %260(%struct.ieee80211_hw* %261, %struct.ieee80211_vif* %264)
  %266 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %267 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %266, i32 0, i32 2
  %268 = load i8**, i8*** %267, align 8
  %269 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %270 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @ETH_ALEN, align 4
  %273 = call i32 @memcpy(i8** %268, i32 %271, i32 %272)
  %274 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %275 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %274, i32 0, i32 1
  %276 = load %struct.TYPE_7__*, %struct.TYPE_7__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i32 0, i32 0
  %278 = load %struct.TYPE_6__*, %struct.TYPE_6__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 0
  %280 = load i32 (%struct.ieee80211_hw*, i32, i8**)*, i32 (%struct.ieee80211_hw*, i32, i8**)** %279, align 8
  %281 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %282 = load i32, i32* @HW_VAR_ETHER_ADDR, align 4
  %283 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %284 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %283, i32 0, i32 2
  %285 = load i8**, i8*** %284, align 8
  %286 = call i32 %280(%struct.ieee80211_hw* %281, i32 %282, i8** %285)
  %287 = load i8*, i8** %9, align 8
  %288 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %289 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %288, i32 0, i32 4
  store i8* %287, i8** %289, align 8
  %290 = load i8*, i8** %9, align 8
  %291 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %292 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %291, i32 0, i32 3
  store i8* %290, i8** %292, align 8
  %293 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %294 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %293, i32 0, i32 1
  %295 = load %struct.TYPE_7__*, %struct.TYPE_7__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i32 0, i32 0
  %297 = load %struct.TYPE_6__*, %struct.TYPE_6__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %297, i32 0, i32 0
  %299 = load i32 (%struct.ieee80211_hw*, i32, i8**)*, i32 (%struct.ieee80211_hw*, i32, i8**)** %298, align 8
  %300 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %301 = load i32, i32* @HW_VAR_RETRY_LIMIT, align 4
  %302 = call i32 %299(%struct.ieee80211_hw* %300, i32 %301, i8** %9)
  br label %303

303:                                              ; preds = %245, %210
  %304 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %305 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %305, i32 0, i32 0
  %307 = call i32 @mutex_unlock(i32* %306)
  %308 = load i32, i32* %8, align 4
  store i32 %308, i32* %3, align 4
  br label %309

309:                                              ; preds = %303, %19
  %310 = load i32, i32* %3, align 4
  ret i32 %310
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @rtl_ips_nic_on(%struct.ieee80211_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ieee80211_vif_type_p2p(%struct.ieee80211_vif*) #1

declare dso_local i32 @pr_err(i8*, %struct.ieee80211_vif*) #1

declare dso_local i32 @memcpy(i8**, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
