; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/ti/extr_pinctrl-ti-iodelay.c_ti_iodelay_alloc_pins.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/ti/extr_pinctrl-ti-iodelay.c_ti_iodelay_alloc_pins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ti_iodelay_device = type { %struct.pinctrl_pin_desc*, %struct.TYPE_4__, %struct.ti_iodelay_reg_data* }
%struct.pinctrl_pin_desc = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.pinctrl_pin_desc* }
%struct.ti_iodelay_reg_data = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Allocating %i pins\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.ti_iodelay_device*, i64)* @ti_iodelay_alloc_pins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_iodelay_alloc_pins(%struct.device* %0, %struct.ti_iodelay_device* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.ti_iodelay_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ti_iodelay_reg_data*, align 8
  %9 = alloca %struct.pinctrl_pin_desc*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.ti_iodelay_device* %1, %struct.ti_iodelay_device** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %6, align 8
  %14 = getelementptr inbounds %struct.ti_iodelay_device, %struct.ti_iodelay_device* %13, i32 0, i32 2
  %15 = load %struct.ti_iodelay_reg_data*, %struct.ti_iodelay_reg_data** %14, align 8
  store %struct.ti_iodelay_reg_data* %15, %struct.ti_iodelay_reg_data** %8, align 8
  %16 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %6, align 8
  %17 = load %struct.ti_iodelay_reg_data*, %struct.ti_iodelay_reg_data** %8, align 8
  %18 = getelementptr inbounds %struct.ti_iodelay_reg_data, %struct.ti_iodelay_reg_data* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ti_iodelay_offset_to_pin(%struct.ti_iodelay_device* %16, i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @dev_dbg(%struct.device* %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.pinctrl_pin_desc* @devm_kcalloc(%struct.device* %26, i32 %27, i32 4, i32 %28)
  %30 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %6, align 8
  %31 = getelementptr inbounds %struct.ti_iodelay_device, %struct.ti_iodelay_device* %30, i32 0, i32 0
  store %struct.pinctrl_pin_desc* %29, %struct.pinctrl_pin_desc** %31, align 8
  %32 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %6, align 8
  %33 = getelementptr inbounds %struct.ti_iodelay_device, %struct.ti_iodelay_device* %32, i32 0, i32 0
  %34 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %33, align 8
  %35 = icmp ne %struct.pinctrl_pin_desc* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %3
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %75

39:                                               ; preds = %3
  %40 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %6, align 8
  %41 = getelementptr inbounds %struct.ti_iodelay_device, %struct.ti_iodelay_device* %40, i32 0, i32 0
  %42 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %41, align 8
  %43 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %6, align 8
  %44 = getelementptr inbounds %struct.ti_iodelay_device, %struct.ti_iodelay_device* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  store %struct.pinctrl_pin_desc* %42, %struct.pinctrl_pin_desc** %45, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %6, align 8
  %48 = getelementptr inbounds %struct.ti_iodelay_device, %struct.ti_iodelay_device* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  %50 = load %struct.ti_iodelay_reg_data*, %struct.ti_iodelay_reg_data** %8, align 8
  %51 = getelementptr inbounds %struct.ti_iodelay_reg_data, %struct.ti_iodelay_reg_data* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %7, align 8
  %54 = add nsw i64 %52, %53
  store i64 %54, i64* %10, align 8
  store i32 0, i32* %12, align 4
  br label %55

55:                                               ; preds = %69, %39
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %55
  %60 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %6, align 8
  %61 = getelementptr inbounds %struct.ti_iodelay_device, %struct.ti_iodelay_device* %60, i32 0, i32 0
  %62 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %61, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %62, i64 %64
  store %struct.pinctrl_pin_desc* %65, %struct.pinctrl_pin_desc** %9, align 8
  %66 = load i32, i32* %12, align 4
  %67 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %9, align 8
  %68 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %59
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %12, align 4
  %72 = load i64, i64* %10, align 8
  %73 = add nsw i64 %72, 4
  store i64 %73, i64* %10, align 8
  br label %55

74:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %74, %36
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @ti_iodelay_offset_to_pin(%struct.ti_iodelay_device*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local %struct.pinctrl_pin_desc* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
