; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme_ext.c_set_stakey_hdl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme_ext.c_set_stakey_hdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.sta_priv, %struct.mlme_ext_priv }
%struct.sta_priv = type { i32 }
%struct.mlme_ext_priv = type { %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i32, i32 }
%struct.set_stakey_parm = type { i32, i32, i32, i32 }
%struct.sta_info = type { i32 }

@_drv_info_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"set pairwise key to hw: alg:%d(WEP40-1 WEP104-5 TKIP-2 AES-4) camid:%d\0A\00", align 1
@WIFI_FW_AP_STATE = common dso_local global i32 0, align 4
@_NO_PRIVACY_ = common dso_local global i32 0, align 4
@H2C_SUCCESS_RSP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"r871x_set_stakey_hdl(): enc_algorithm=%d\0A\00", align 1
@NUM_STA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"r871x_set_stakey_hdl():set_stakey failed, mac_id(aid)=%d\0A\00", align 1
@H2C_REJECTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Write CAM, mac_addr =%pM, cam_entry=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"r871x_set_stakey_hdl(): sta has been free\0A\00", align 1
@H2C_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_stakey_hdl(%struct.adapter* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlme_ext_priv*, align 8
  %9 = alloca %struct.mlme_ext_info*, align 8
  %10 = alloca %struct.set_stakey_parm*, align 8
  %11 = alloca %struct.sta_info*, align 8
  %12 = alloca %struct.sta_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.adapter*, %struct.adapter** %4, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 1
  store %struct.mlme_ext_priv* %14, %struct.mlme_ext_priv** %8, align 8
  %15 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %8, align 8
  %16 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %15, i32 0, i32 0
  store %struct.mlme_ext_info* %16, %struct.mlme_ext_info** %9, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = bitcast i32* %17 to %struct.set_stakey_parm*
  store %struct.set_stakey_parm* %18, %struct.set_stakey_parm** %10, align 8
  store i32 4, i32* %7, align 4
  %19 = load i32, i32* @_drv_info_, align 4
  %20 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %10, align 8
  %21 = getelementptr inbounds %struct.set_stakey_parm, %struct.set_stakey_parm* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @DBG_88E_LEVEL(i32 %19, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %9, align 8
  %26 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 3
  %29 = load i32, i32* @WIFI_FW_AP_STATE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %106

31:                                               ; preds = %2
  %32 = load %struct.adapter*, %struct.adapter** %4, align 8
  %33 = getelementptr inbounds %struct.adapter, %struct.adapter* %32, i32 0, i32 0
  store %struct.sta_priv* %33, %struct.sta_priv** %12, align 8
  %34 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %10, align 8
  %35 = getelementptr inbounds %struct.set_stakey_parm, %struct.set_stakey_parm* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @_NO_PRIVACY_, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %31
  %40 = load %struct.adapter*, %struct.adapter** %4, align 8
  %41 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %10, align 8
  %42 = getelementptr inbounds %struct.set_stakey_parm, %struct.set_stakey_parm* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @clear_cam_entry(%struct.adapter* %40, i32 %43)
  %45 = load i32, i32* @H2C_SUCCESS_RSP, align 4
  store i32 %45, i32* %3, align 4
  br label %142

46:                                               ; preds = %31
  %47 = load %struct.sta_priv*, %struct.sta_priv** %12, align 8
  %48 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %10, align 8
  %49 = getelementptr inbounds %struct.set_stakey_parm, %struct.set_stakey_parm* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.sta_info* @rtw_get_stainfo(%struct.sta_priv* %47, i32 %50)
  store %struct.sta_info* %51, %struct.sta_info** %11, align 8
  %52 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %53 = icmp ne %struct.sta_info* %52, null
  br i1 %53, label %54, label %103

54:                                               ; preds = %46
  %55 = call i32 @BIT(i32 15)
  %56 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %10, align 8
  %57 = getelementptr inbounds %struct.set_stakey_parm, %struct.set_stakey_parm* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 %58, 2
  %60 = or i32 %55, %59
  store i32 %60, i32* %6, align 4
  %61 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %10, align 8
  %62 = getelementptr inbounds %struct.set_stakey_parm, %struct.set_stakey_parm* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i8*, ...) @DBG_88E(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %66 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %67, 1
  br i1 %68, label %76, label %69

69:                                               ; preds = %54
  %70 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %71 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @NUM_STA, align 4
  %74 = sub nsw i32 %73, 4
  %75 = icmp sgt i32 %72, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %69, %54
  %77 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %78 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i8*, ...) @DBG_88E(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @H2C_REJECTED, align 4
  store i32 %81, i32* %3, align 4
  br label %142

82:                                               ; preds = %69
  %83 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %84 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 3
  store i32 %86, i32* %7, align 4
  %87 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %10, align 8
  %88 = getelementptr inbounds %struct.set_stakey_parm, %struct.set_stakey_parm* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 (i8*, ...) @DBG_88E(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %89, i32 %90)
  %92 = load %struct.adapter*, %struct.adapter** %4, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %10, align 8
  %96 = getelementptr inbounds %struct.set_stakey_parm, %struct.set_stakey_parm* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %10, align 8
  %99 = getelementptr inbounds %struct.set_stakey_parm, %struct.set_stakey_parm* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @write_cam(%struct.adapter* %92, i32 %93, i32 %94, i32 %97, i32 %100)
  %102 = load i32, i32* @H2C_SUCCESS_RSP, align 4
  store i32 %102, i32* %3, align 4
  br label %142

103:                                              ; preds = %46
  %104 = call i32 (i8*, ...) @DBG_88E(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %105 = load i32, i32* @H2C_REJECTED, align 4
  store i32 %105, i32* %3, align 4
  br label %142

106:                                              ; preds = %2
  %107 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %10, align 8
  %108 = getelementptr inbounds %struct.set_stakey_parm, %struct.set_stakey_parm* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @_NO_PRIVACY_, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %106
  %113 = load %struct.adapter*, %struct.adapter** %4, align 8
  %114 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %10, align 8
  %115 = getelementptr inbounds %struct.set_stakey_parm, %struct.set_stakey_parm* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @clear_cam_entry(%struct.adapter* %113, i32 %116)
  %118 = load i32, i32* @H2C_SUCCESS, align 4
  store i32 %118, i32* %3, align 4
  br label %142

119:                                              ; preds = %106
  %120 = call i32 @BIT(i32 15)
  %121 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %10, align 8
  %122 = getelementptr inbounds %struct.set_stakey_parm, %struct.set_stakey_parm* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = shl i32 %123, 2
  %125 = or i32 %120, %124
  store i32 %125, i32* %6, align 4
  %126 = load %struct.adapter*, %struct.adapter** %4, align 8
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* %6, align 4
  %129 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %10, align 8
  %130 = getelementptr inbounds %struct.set_stakey_parm, %struct.set_stakey_parm* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %10, align 8
  %133 = getelementptr inbounds %struct.set_stakey_parm, %struct.set_stakey_parm* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @write_cam(%struct.adapter* %126, i32 %127, i32 %128, i32 %131, i32 %134)
  %136 = load %struct.set_stakey_parm*, %struct.set_stakey_parm** %10, align 8
  %137 = getelementptr inbounds %struct.set_stakey_parm, %struct.set_stakey_parm* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %9, align 8
  %140 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* @H2C_SUCCESS, align 4
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %119, %112, %103, %82, %76, %39
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @DBG_88E_LEVEL(i32, i8*, i32, i32) #1

declare dso_local i32 @clear_cam_entry(%struct.adapter*, i32) #1

declare dso_local %struct.sta_info* @rtw_get_stainfo(%struct.sta_priv*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @DBG_88E(i8*, ...) #1

declare dso_local i32 @write_cam(%struct.adapter*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
