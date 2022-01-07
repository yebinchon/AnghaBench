; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wfi_cfgoperations.c_change_virtual_intf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wfi_cfgoperations.c_change_virtual_intf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.vif_params = type { i32 }
%struct.wilc = type { i32 }
%struct.wilc_vif = type { i32, i8*, i32, i32, %struct.wilc_priv }
%struct.wilc_priv = type { %struct.TYPE_8__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@WILC_AP_MODE = common dso_local global i8* null, align 8
@WILC_GO_MODE = common dso_local global i8* null, align 8
@WILC_STATION_MODE = common dso_local global i8* null, align 8
@WILC_MAX_NUM_STA = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@WILC_CLIENT_MODE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"Unknown interface type= %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32, %struct.vif_params*)* @change_virtual_intf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @change_virtual_intf(%struct.wiphy* %0, %struct.net_device* %1, i32 %2, %struct.vif_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vif_params*, align 8
  %10 = alloca %struct.wilc*, align 8
  %11 = alloca %struct.wilc_vif*, align 8
  %12 = alloca %struct.wilc_priv*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.vif_params* %3, %struct.vif_params** %9, align 8
  %13 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %14 = call %struct.wilc* @wiphy_priv(%struct.wiphy* %13)
  store %struct.wilc* %14, %struct.wilc** %10, align 8
  %15 = load %struct.net_device*, %struct.net_device** %7, align 8
  %16 = call %struct.wilc_vif* @netdev_priv(%struct.net_device* %15)
  store %struct.wilc_vif* %16, %struct.wilc_vif** %11, align 8
  %17 = load %struct.wilc_vif*, %struct.wilc_vif** %11, align 8
  %18 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %17, i32 0, i32 4
  store %struct.wilc_priv* %18, %struct.wilc_priv** %12, align 8
  %19 = load %struct.wilc_priv*, %struct.wilc_priv** %12, align 8
  %20 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  %22 = load %struct.wilc_priv*, %struct.wilc_priv** %12, align 8
  %23 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store i32 0, i32* %24, align 4
  %25 = load %struct.wilc_priv*, %struct.wilc_priv** %12, align 8
  %26 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  store i32 0, i32* %27, align 4
  %28 = load i32, i32* %8, align 4
  switch i32 %28, label %150 [
    i32 128, label %29
    i32 130, label %77
    i32 131, label %102
    i32 129, label %129
  ]

29:                                               ; preds = %4
  %30 = load %struct.wilc_vif*, %struct.wilc_vif** %11, align 8
  %31 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.net_device*, %struct.net_device** %7, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.wilc_priv*, %struct.wilc_priv** %12, align 8
  %39 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  %41 = load %struct.wilc_vif*, %struct.wilc_vif** %11, align 8
  %42 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %41, i32 0, i32 3
  store i32 0, i32* %42, align 4
  %43 = load %struct.wilc_vif*, %struct.wilc_vif** %11, align 8
  %44 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = load i8*, i8** @WILC_AP_MODE, align 8
  %47 = icmp eq i8* %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %29
  %49 = load %struct.wilc_vif*, %struct.wilc_vif** %11, align 8
  %50 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = load i8*, i8** @WILC_GO_MODE, align 8
  %53 = icmp eq i8* %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48, %29
  %55 = load %struct.wilc*, %struct.wilc** %10, align 8
  %56 = call i32 @wilc_wfi_deinit_mon_interface(%struct.wilc* %55, i32 1)
  br label %57

57:                                               ; preds = %54, %48
  %58 = load i8*, i8** @WILC_STATION_MODE, align 8
  %59 = load %struct.wilc_vif*, %struct.wilc_vif** %11, align 8
  %60 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = load %struct.wilc_vif*, %struct.wilc_vif** %11, align 8
  %62 = load %struct.wilc_vif*, %struct.wilc_vif** %11, align 8
  %63 = call i32 @wilc_get_vif_idx(%struct.wilc_vif* %62)
  %64 = load i8*, i8** @WILC_STATION_MODE, align 8
  %65 = load %struct.wilc_vif*, %struct.wilc_vif** %11, align 8
  %66 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @wilc_set_operation_mode(%struct.wilc_vif* %61, i32 %63, i8* %64, i32 %67)
  %69 = load %struct.wilc_priv*, %struct.wilc_priv** %12, align 8
  %70 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @WILC_MAX_NUM_STA, align 4
  %74 = load i32, i32* @ETH_ALEN, align 4
  %75 = mul nsw i32 %73, %74
  %76 = call i32 @memset(i32 %72, i32 0, i32 %75)
  br label %156

77:                                               ; preds = %4
  %78 = load %struct.wilc_vif*, %struct.wilc_vif** %11, align 8
  %79 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %78, i32 0, i32 0
  store i32 0, i32* %79, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.net_device*, %struct.net_device** %7, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 0
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  store i32 %80, i32* %84, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.wilc_priv*, %struct.wilc_priv** %12, align 8
  %87 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 4
  %89 = load %struct.wilc_vif*, %struct.wilc_vif** %11, align 8
  %90 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %89, i32 0, i32 3
  store i32 0, i32* %90, align 4
  %91 = load i8*, i8** @WILC_CLIENT_MODE, align 8
  %92 = load %struct.wilc_vif*, %struct.wilc_vif** %11, align 8
  %93 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  %94 = load %struct.wilc_vif*, %struct.wilc_vif** %11, align 8
  %95 = load %struct.wilc_vif*, %struct.wilc_vif** %11, align 8
  %96 = call i32 @wilc_get_vif_idx(%struct.wilc_vif* %95)
  %97 = load i8*, i8** @WILC_STATION_MODE, align 8
  %98 = load %struct.wilc_vif*, %struct.wilc_vif** %11, align 8
  %99 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @wilc_set_operation_mode(%struct.wilc_vif* %94, i32 %96, i8* %97, i32 %100)
  br label %156

102:                                              ; preds = %4
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.net_device*, %struct.net_device** %7, align 8
  %105 = getelementptr inbounds %struct.net_device, %struct.net_device* %104, i32 0, i32 0
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  store i32 %103, i32* %107, align 4
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.wilc_priv*, %struct.wilc_priv** %12, align 8
  %110 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  store i32 %108, i32* %111, align 4
  %112 = load i8*, i8** @WILC_AP_MODE, align 8
  %113 = load %struct.wilc_vif*, %struct.wilc_vif** %11, align 8
  %114 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %113, i32 0, i32 1
  store i8* %112, i8** %114, align 8
  %115 = load %struct.wilc*, %struct.wilc** %10, align 8
  %116 = getelementptr inbounds %struct.wilc, %struct.wilc* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %102
  %120 = load %struct.wilc_vif*, %struct.wilc_vif** %11, align 8
  %121 = load %struct.wilc_vif*, %struct.wilc_vif** %11, align 8
  %122 = call i32 @wilc_get_vif_idx(%struct.wilc_vif* %121)
  %123 = load i8*, i8** @WILC_AP_MODE, align 8
  %124 = load %struct.wilc_vif*, %struct.wilc_vif** %11, align 8
  %125 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @wilc_set_operation_mode(%struct.wilc_vif* %120, i32 %122, i8* %123, i32 %126)
  br label %128

128:                                              ; preds = %119, %102
  br label %156

129:                                              ; preds = %4
  %130 = load i32, i32* %8, align 4
  %131 = load %struct.net_device*, %struct.net_device** %7, align 8
  %132 = getelementptr inbounds %struct.net_device, %struct.net_device* %131, i32 0, i32 0
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  store i32 %130, i32* %134, align 4
  %135 = load i32, i32* %8, align 4
  %136 = load %struct.wilc_priv*, %struct.wilc_priv** %12, align 8
  %137 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  store i32 %135, i32* %138, align 4
  %139 = load i8*, i8** @WILC_GO_MODE, align 8
  %140 = load %struct.wilc_vif*, %struct.wilc_vif** %11, align 8
  %141 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %140, i32 0, i32 1
  store i8* %139, i8** %141, align 8
  %142 = load %struct.wilc_vif*, %struct.wilc_vif** %11, align 8
  %143 = load %struct.wilc_vif*, %struct.wilc_vif** %11, align 8
  %144 = call i32 @wilc_get_vif_idx(%struct.wilc_vif* %143)
  %145 = load i8*, i8** @WILC_AP_MODE, align 8
  %146 = load %struct.wilc_vif*, %struct.wilc_vif** %11, align 8
  %147 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @wilc_set_operation_mode(%struct.wilc_vif* %142, i32 %144, i8* %145, i32 %148)
  br label %156

150:                                              ; preds = %4
  %151 = load %struct.net_device*, %struct.net_device** %7, align 8
  %152 = load i32, i32* %8, align 4
  %153 = call i32 @netdev_err(%struct.net_device* %151, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %152)
  %154 = load i32, i32* @EINVAL, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %5, align 4
  br label %157

156:                                              ; preds = %129, %128, %77, %57
  store i32 0, i32* %5, align 4
  br label %157

157:                                              ; preds = %156, %150
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

declare dso_local %struct.wilc* @wiphy_priv(%struct.wiphy*) #1

declare dso_local %struct.wilc_vif* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @wilc_wfi_deinit_mon_interface(%struct.wilc*, i32) #1

declare dso_local i32 @wilc_set_operation_mode(%struct.wilc_vif*, i32, i8*, i32) #1

declare dso_local i32 @wilc_get_vif_idx(%struct.wilc_vif*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
