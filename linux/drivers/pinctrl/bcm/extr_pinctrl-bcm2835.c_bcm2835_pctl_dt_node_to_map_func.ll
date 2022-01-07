; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-bcm2835.c_bcm2835_pctl_dt_node_to_map_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-bcm2835.c_bcm2835_pctl_dt_node_to_map_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_pinctrl = type { i32 }
%struct.device_node = type { i32 }
%struct.pinctrl_map = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@bcm2835_functions = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"%pOF: invalid brcm,function %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PIN_MAP_TYPE_MUX_GROUP = common dso_local global i32 0, align 4
@bcm2835_gpio_groups = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm2835_pinctrl*, %struct.device_node*, i64, i64, %struct.pinctrl_map**)* @bcm2835_pctl_dt_node_to_map_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_pctl_dt_node_to_map_func(%struct.bcm2835_pinctrl* %0, %struct.device_node* %1, i64 %2, i64 %3, %struct.pinctrl_map** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bcm2835_pinctrl*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.pinctrl_map**, align 8
  %12 = alloca %struct.pinctrl_map*, align 8
  store %struct.bcm2835_pinctrl* %0, %struct.bcm2835_pinctrl** %7, align 8
  store %struct.device_node* %1, %struct.device_node** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.pinctrl_map** %4, %struct.pinctrl_map*** %11, align 8
  %13 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %11, align 8
  %14 = load %struct.pinctrl_map*, %struct.pinctrl_map** %13, align 8
  store %struct.pinctrl_map* %14, %struct.pinctrl_map** %12, align 8
  %15 = load i64, i64* %10, align 8
  %16 = load i32*, i32** @bcm2835_functions, align 8
  %17 = call i64 @ARRAY_SIZE(i32* %16)
  %18 = icmp uge i64 %15, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %5
  %20 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %7, align 8
  %21 = getelementptr inbounds %struct.bcm2835_pinctrl, %struct.bcm2835_pinctrl* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.device_node*, %struct.device_node** %8, align 8
  %24 = load i64, i64* %10, align 8
  %25 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.device_node* %23, i64 %24)
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %51

28:                                               ; preds = %5
  %29 = load i32, i32* @PIN_MAP_TYPE_MUX_GROUP, align 4
  %30 = load %struct.pinctrl_map*, %struct.pinctrl_map** %12, align 8
  %31 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32*, i32** @bcm2835_gpio_groups, align 8
  %33 = load i64, i64* %9, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.pinctrl_map*, %struct.pinctrl_map** %12, align 8
  %37 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i32 %35, i32* %39, align 4
  %40 = load i32*, i32** @bcm2835_functions, align 8
  %41 = load i64, i64* %10, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.pinctrl_map*, %struct.pinctrl_map** %12, align 8
  %45 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32 %43, i32* %47, align 4
  %48 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %11, align 8
  %49 = load %struct.pinctrl_map*, %struct.pinctrl_map** %48, align 8
  %50 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %49, i32 1
  store %struct.pinctrl_map* %50, %struct.pinctrl_map** %48, align 8
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %28, %19
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, %struct.device_node*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
