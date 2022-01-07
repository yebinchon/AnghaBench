; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/extr_reset-ti-sci.c_ti_sci_reset_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/extr_reset-ti-sci.c_ti_sci_reset_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reset_controller_dev = type { i32 }
%struct.ti_sci_reset_data = type { i32, %struct.ti_sci_handle* }
%struct.ti_sci_handle = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ti_sci_dev_ops }
%struct.ti_sci_dev_ops = type { i32 (%struct.ti_sci_handle*, i32, i32*)* }
%struct.ti_sci_reset_control = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reset_controller_dev*, i64)* @ti_sci_reset_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_sci_reset_status(%struct.reset_controller_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.reset_controller_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ti_sci_reset_data*, align 8
  %7 = alloca %struct.ti_sci_handle*, align 8
  %8 = alloca %struct.ti_sci_dev_ops*, align 8
  %9 = alloca %struct.ti_sci_reset_control*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.reset_controller_dev* %0, %struct.reset_controller_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %4, align 8
  %13 = call %struct.ti_sci_reset_data* @to_ti_sci_reset_data(%struct.reset_controller_dev* %12)
  store %struct.ti_sci_reset_data* %13, %struct.ti_sci_reset_data** %6, align 8
  %14 = load %struct.ti_sci_reset_data*, %struct.ti_sci_reset_data** %6, align 8
  %15 = getelementptr inbounds %struct.ti_sci_reset_data, %struct.ti_sci_reset_data* %14, i32 0, i32 1
  %16 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %15, align 8
  store %struct.ti_sci_handle* %16, %struct.ti_sci_handle** %7, align 8
  %17 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %7, align 8
  %18 = getelementptr inbounds %struct.ti_sci_handle, %struct.ti_sci_handle* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.ti_sci_dev_ops* %19, %struct.ti_sci_dev_ops** %8, align 8
  %20 = load %struct.ti_sci_reset_data*, %struct.ti_sci_reset_data** %6, align 8
  %21 = getelementptr inbounds %struct.ti_sci_reset_data, %struct.ti_sci_reset_data* %20, i32 0, i32 0
  %22 = load i64, i64* %5, align 8
  %23 = call %struct.ti_sci_reset_control* @idr_find(i32* %21, i64 %22)
  store %struct.ti_sci_reset_control* %23, %struct.ti_sci_reset_control** %9, align 8
  %24 = load %struct.ti_sci_reset_control*, %struct.ti_sci_reset_control** %9, align 8
  %25 = icmp ne %struct.ti_sci_reset_control* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %48

29:                                               ; preds = %2
  %30 = load %struct.ti_sci_dev_ops*, %struct.ti_sci_dev_ops** %8, align 8
  %31 = getelementptr inbounds %struct.ti_sci_dev_ops, %struct.ti_sci_dev_ops* %30, i32 0, i32 0
  %32 = load i32 (%struct.ti_sci_handle*, i32, i32*)*, i32 (%struct.ti_sci_handle*, i32, i32*)** %31, align 8
  %33 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %7, align 8
  %34 = load %struct.ti_sci_reset_control*, %struct.ti_sci_reset_control** %9, align 8
  %35 = getelementptr inbounds %struct.ti_sci_reset_control, %struct.ti_sci_reset_control* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 %32(%struct.ti_sci_handle* %33, i32 %36, i32* %10)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %29
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %3, align 4
  br label %48

42:                                               ; preds = %29
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.ti_sci_reset_control*, %struct.ti_sci_reset_control** %9, align 8
  %45 = getelementptr inbounds %struct.ti_sci_reset_control, %struct.ti_sci_reset_control* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %43, %46
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %42, %40, %26
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.ti_sci_reset_data* @to_ti_sci_reset_data(%struct.reset_controller_dev*) #1

declare dso_local %struct.ti_sci_reset_control* @idr_find(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
