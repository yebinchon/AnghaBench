; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-bcm2835.c_bcm2835_pctl_dt_node_to_map_pull.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-bcm2835.c_bcm2835_pctl_dt_node_to_map_pull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.bcm2835_pinctrl = type { i32 }
%struct.device_node = type { i32 }
%struct.pinctrl_map = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64*, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"%pOF: invalid brcm,pull %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BCM2835_PINCONF_PARAM_PULL = common dso_local global i32 0, align 4
@PIN_MAP_TYPE_CONFIGS_PIN = common dso_local global i32 0, align 4
@bcm2835_gpio_pins = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm2835_pinctrl*, %struct.device_node*, i32, i32, %struct.pinctrl_map**)* @bcm2835_pctl_dt_node_to_map_pull to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_pctl_dt_node_to_map_pull(%struct.bcm2835_pinctrl* %0, %struct.device_node* %1, i32 %2, i32 %3, %struct.pinctrl_map** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bcm2835_pinctrl*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pinctrl_map**, align 8
  %12 = alloca %struct.pinctrl_map*, align 8
  %13 = alloca i64*, align 8
  store %struct.bcm2835_pinctrl* %0, %struct.bcm2835_pinctrl** %7, align 8
  store %struct.device_node* %1, %struct.device_node** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.pinctrl_map** %4, %struct.pinctrl_map*** %11, align 8
  %14 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %11, align 8
  %15 = load %struct.pinctrl_map*, %struct.pinctrl_map** %14, align 8
  store %struct.pinctrl_map* %15, %struct.pinctrl_map** %12, align 8
  %16 = load i32, i32* %10, align 4
  %17 = icmp sgt i32 %16, 2
  br i1 %17, label %18, label %27

18:                                               ; preds = %5
  %19 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %7, align 8
  %20 = getelementptr inbounds %struct.bcm2835_pinctrl, %struct.bcm2835_pinctrl* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.device_node*, %struct.device_node** %8, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.device_node* %22, i32 %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %66

27:                                               ; preds = %5
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i64* @kzalloc(i32 8, i32 %28)
  store i64* %29, i64** %13, align 8
  %30 = load i64*, i64** %13, align 8
  %31 = icmp ne i64* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %66

35:                                               ; preds = %27
  %36 = load i32, i32* @BCM2835_PINCONF_PARAM_PULL, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i64 @pinconf_to_config_packed(i32 %36, i32 %37)
  %39 = load i64*, i64** %13, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  store i64 %38, i64* %40, align 8
  %41 = load i32, i32* @PIN_MAP_TYPE_CONFIGS_PIN, align 4
  %42 = load %struct.pinctrl_map*, %struct.pinctrl_map** %12, align 8
  %43 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** @bcm2835_gpio_pins, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.pinctrl_map*, %struct.pinctrl_map** %12, align 8
  %51 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  store i32 %49, i32* %53, align 4
  %54 = load i64*, i64** %13, align 8
  %55 = load %struct.pinctrl_map*, %struct.pinctrl_map** %12, align 8
  %56 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i64* %54, i64** %58, align 8
  %59 = load %struct.pinctrl_map*, %struct.pinctrl_map** %12, align 8
  %60 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  store i32 1, i32* %62, align 8
  %63 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %11, align 8
  %64 = load %struct.pinctrl_map*, %struct.pinctrl_map** %63, align 8
  %65 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %64, i32 1
  store %struct.pinctrl_map* %65, %struct.pinctrl_map** %63, align 8
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %35, %32, %18
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i32 @dev_err(i32, i8*, %struct.device_node*, i32) #1

declare dso_local i64* @kzalloc(i32, i32) #1

declare dso_local i64 @pinconf_to_config_packed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
