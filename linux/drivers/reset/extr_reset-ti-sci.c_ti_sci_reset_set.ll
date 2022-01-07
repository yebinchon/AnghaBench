; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/extr_reset-ti-sci.c_ti_sci_reset_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/extr_reset-ti-sci.c_ti_sci_reset_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reset_controller_dev = type { i32 }
%struct.ti_sci_reset_data = type { i32, %struct.ti_sci_handle* }
%struct.ti_sci_handle = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ti_sci_dev_ops }
%struct.ti_sci_dev_ops = type { i32 (%struct.ti_sci_handle*, i32, i32*)*, i32 (%struct.ti_sci_handle*, i32, i32)* }
%struct.ti_sci_reset_control = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reset_controller_dev*, i64, i32)* @ti_sci_reset_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_sci_reset_set(%struct.reset_controller_dev* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.reset_controller_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ti_sci_reset_data*, align 8
  %9 = alloca %struct.ti_sci_handle*, align 8
  %10 = alloca %struct.ti_sci_dev_ops*, align 8
  %11 = alloca %struct.ti_sci_reset_control*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.reset_controller_dev* %0, %struct.reset_controller_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %5, align 8
  %15 = call %struct.ti_sci_reset_data* @to_ti_sci_reset_data(%struct.reset_controller_dev* %14)
  store %struct.ti_sci_reset_data* %15, %struct.ti_sci_reset_data** %8, align 8
  %16 = load %struct.ti_sci_reset_data*, %struct.ti_sci_reset_data** %8, align 8
  %17 = getelementptr inbounds %struct.ti_sci_reset_data, %struct.ti_sci_reset_data* %16, i32 0, i32 1
  %18 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %17, align 8
  store %struct.ti_sci_handle* %18, %struct.ti_sci_handle** %9, align 8
  %19 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %9, align 8
  %20 = getelementptr inbounds %struct.ti_sci_handle, %struct.ti_sci_handle* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store %struct.ti_sci_dev_ops* %21, %struct.ti_sci_dev_ops** %10, align 8
  %22 = load %struct.ti_sci_reset_data*, %struct.ti_sci_reset_data** %8, align 8
  %23 = getelementptr inbounds %struct.ti_sci_reset_data, %struct.ti_sci_reset_data* %22, i32 0, i32 0
  %24 = load i64, i64* %6, align 8
  %25 = call %struct.ti_sci_reset_control* @idr_find(i32* %23, i64 %24)
  store %struct.ti_sci_reset_control* %25, %struct.ti_sci_reset_control** %11, align 8
  %26 = load %struct.ti_sci_reset_control*, %struct.ti_sci_reset_control** %11, align 8
  %27 = icmp ne %struct.ti_sci_reset_control* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %77

31:                                               ; preds = %3
  %32 = load %struct.ti_sci_reset_control*, %struct.ti_sci_reset_control** %11, align 8
  %33 = getelementptr inbounds %struct.ti_sci_reset_control, %struct.ti_sci_reset_control* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.ti_sci_dev_ops*, %struct.ti_sci_dev_ops** %10, align 8
  %36 = getelementptr inbounds %struct.ti_sci_dev_ops, %struct.ti_sci_dev_ops* %35, i32 0, i32 0
  %37 = load i32 (%struct.ti_sci_handle*, i32, i32*)*, i32 (%struct.ti_sci_handle*, i32, i32*)** %36, align 8
  %38 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %9, align 8
  %39 = load %struct.ti_sci_reset_control*, %struct.ti_sci_reset_control** %11, align 8
  %40 = getelementptr inbounds %struct.ti_sci_reset_control, %struct.ti_sci_reset_control* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 %37(%struct.ti_sci_handle* %38, i32 %41, i32* %12)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %31
  br label %72

46:                                               ; preds = %31
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load %struct.ti_sci_reset_control*, %struct.ti_sci_reset_control** %11, align 8
  %51 = getelementptr inbounds %struct.ti_sci_reset_control, %struct.ti_sci_reset_control* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %12, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %12, align 4
  br label %62

55:                                               ; preds = %46
  %56 = load %struct.ti_sci_reset_control*, %struct.ti_sci_reset_control** %11, align 8
  %57 = getelementptr inbounds %struct.ti_sci_reset_control, %struct.ti_sci_reset_control* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %12, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %12, align 4
  br label %62

62:                                               ; preds = %55, %49
  %63 = load %struct.ti_sci_dev_ops*, %struct.ti_sci_dev_ops** %10, align 8
  %64 = getelementptr inbounds %struct.ti_sci_dev_ops, %struct.ti_sci_dev_ops* %63, i32 0, i32 1
  %65 = load i32 (%struct.ti_sci_handle*, i32, i32)*, i32 (%struct.ti_sci_handle*, i32, i32)** %64, align 8
  %66 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %9, align 8
  %67 = load %struct.ti_sci_reset_control*, %struct.ti_sci_reset_control** %11, align 8
  %68 = getelementptr inbounds %struct.ti_sci_reset_control, %struct.ti_sci_reset_control* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %12, align 4
  %71 = call i32 %65(%struct.ti_sci_handle* %66, i32 %69, i32 %70)
  store i32 %71, i32* %13, align 4
  br label %72

72:                                               ; preds = %62, %45
  %73 = load %struct.ti_sci_reset_control*, %struct.ti_sci_reset_control** %11, align 8
  %74 = getelementptr inbounds %struct.ti_sci_reset_control, %struct.ti_sci_reset_control* %73, i32 0, i32 0
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load i32, i32* %13, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %72, %28
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.ti_sci_reset_data* @to_ti_sci_reset_data(%struct.reset_controller_dev*) #1

declare dso_local %struct.ti_sci_reset_control* @idr_find(i32*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
