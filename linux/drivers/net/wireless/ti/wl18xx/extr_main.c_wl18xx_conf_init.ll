; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_main.c_wl18xx_conf_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_main.c_wl18xx_conf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32, %struct.wl18xx_priv*, %struct.platform_device* }
%struct.wl18xx_priv = type { i32 }
%struct.platform_device = type { i32 }
%struct.device = type { i32 }
%struct.wlcore_platdev_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"falling back to default config\00", align 1
@wl18xx_conf = common dso_local global i32 0, align 4
@wl18xx_default_priv_conf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.device*)* @wl18xx_conf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl18xx_conf_init(%struct.wl1271* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.wlcore_platdev_data*, align 8
  %7 = alloca %struct.wl18xx_priv*, align 8
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  store %struct.device* %1, %struct.device** %4, align 8
  %8 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %9 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %8, i32 0, i32 2
  %10 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  store %struct.platform_device* %10, %struct.platform_device** %5, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call %struct.wlcore_platdev_data* @dev_get_platdata(i32* %12)
  store %struct.wlcore_platdev_data* %13, %struct.wlcore_platdev_data** %6, align 8
  %14 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %15 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %14, i32 0, i32 1
  %16 = load %struct.wl18xx_priv*, %struct.wl18xx_priv** %15, align 8
  store %struct.wl18xx_priv* %16, %struct.wl18xx_priv** %7, align 8
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %19 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %18, i32 0, i32 0
  %20 = load %struct.wl18xx_priv*, %struct.wl18xx_priv** %7, align 8
  %21 = getelementptr inbounds %struct.wl18xx_priv, %struct.wl18xx_priv* %20, i32 0, i32 0
  %22 = load %struct.wlcore_platdev_data*, %struct.wlcore_platdev_data** %6, align 8
  %23 = getelementptr inbounds %struct.wlcore_platdev_data, %struct.wlcore_platdev_data* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @wl18xx_load_conf_file(%struct.device* %17, i32* %19, i32* %21, i32 %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %2
  %30 = call i32 @wl1271_warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %32 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %31, i32 0, i32 0
  %33 = call i32 @memcpy(i32* %32, i32* @wl18xx_conf, i32 4)
  %34 = load %struct.wl18xx_priv*, %struct.wl18xx_priv** %7, align 8
  %35 = getelementptr inbounds %struct.wl18xx_priv, %struct.wl18xx_priv* %34, i32 0, i32 0
  %36 = call i32 @memcpy(i32* %35, i32* @wl18xx_default_priv_conf, i32 4)
  br label %37

37:                                               ; preds = %29, %2
  ret i32 0
}

declare dso_local %struct.wlcore_platdev_data* @dev_get_platdata(i32*) #1

declare dso_local i64 @wl18xx_load_conf_file(%struct.device*, i32*, i32*, i32) #1

declare dso_local i32 @wl1271_warning(i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
