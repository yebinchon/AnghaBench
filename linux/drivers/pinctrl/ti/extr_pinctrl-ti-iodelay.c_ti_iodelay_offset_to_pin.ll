; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/ti/extr_pinctrl-ti-iodelay.c_ti_iodelay_offset_to_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/ti/extr_pinctrl-ti-iodelay.c_ti_iodelay_offset_to_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_iodelay_device = type { i32, %struct.ti_iodelay_reg_data* }
%struct.ti_iodelay_reg_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"mux offset out of range: 0x%x (0x%x)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_iodelay_device*, i32)* @ti_iodelay_offset_to_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_iodelay_offset_to_pin(%struct.ti_iodelay_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ti_iodelay_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ti_iodelay_reg_data*, align 8
  %7 = alloca i32, align 4
  store %struct.ti_iodelay_device* %0, %struct.ti_iodelay_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %4, align 8
  %9 = getelementptr inbounds %struct.ti_iodelay_device, %struct.ti_iodelay_device* %8, i32 0, i32 1
  %10 = load %struct.ti_iodelay_reg_data*, %struct.ti_iodelay_reg_data** %9, align 8
  store %struct.ti_iodelay_reg_data* %10, %struct.ti_iodelay_reg_data** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.ti_iodelay_reg_data*, %struct.ti_iodelay_reg_data** %6, align 8
  %13 = getelementptr inbounds %struct.ti_iodelay_reg_data, %struct.ti_iodelay_reg_data* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ugt i32 %11, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %2
  %19 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %4, align 8
  %20 = getelementptr inbounds %struct.ti_iodelay_device, %struct.ti_iodelay_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.ti_iodelay_reg_data*, %struct.ti_iodelay_reg_data** %6, align 8
  %24 = getelementptr inbounds %struct.ti_iodelay_reg_data, %struct.ti_iodelay_reg_data* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %49

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.ti_iodelay_reg_data*, %struct.ti_iodelay_reg_data** %6, align 8
  %34 = getelementptr inbounds %struct.ti_iodelay_reg_data, %struct.ti_iodelay_reg_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub i32 %32, %35
  %37 = load %struct.ti_iodelay_reg_data*, %struct.ti_iodelay_reg_data** %6, align 8
  %38 = getelementptr inbounds %struct.ti_iodelay_reg_data, %struct.ti_iodelay_reg_data* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = udiv i32 %36, %41
  store i32 %42, i32* %7, align 4
  %43 = load %struct.ti_iodelay_reg_data*, %struct.ti_iodelay_reg_data** %6, align 8
  %44 = getelementptr inbounds %struct.ti_iodelay_reg_data, %struct.ti_iodelay_reg_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = udiv i32 %46, %45
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %31, %18
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
