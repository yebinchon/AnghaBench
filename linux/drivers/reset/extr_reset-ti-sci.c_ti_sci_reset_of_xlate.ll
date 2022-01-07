; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/extr_reset-ti-sci.c_ti_sci_reset_of_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/extr_reset-ti-sci.c_ti_sci_reset_of_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reset_controller_dev = type { i64 }
%struct.of_phandle_args = type { i64, i32* }
%struct.ti_sci_reset_data = type { i32, i32 }
%struct.ti_sci_reset_control = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reset_controller_dev*, %struct.of_phandle_args*)* @ti_sci_reset_of_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_sci_reset_of_xlate(%struct.reset_controller_dev* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.reset_controller_dev*, align 8
  %5 = alloca %struct.of_phandle_args*, align 8
  %6 = alloca %struct.ti_sci_reset_data*, align 8
  %7 = alloca %struct.ti_sci_reset_control*, align 8
  store %struct.reset_controller_dev* %0, %struct.reset_controller_dev** %4, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %5, align 8
  %8 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %4, align 8
  %9 = call %struct.ti_sci_reset_data* @to_ti_sci_reset_data(%struct.reset_controller_dev* %8)
  store %struct.ti_sci_reset_data* %9, %struct.ti_sci_reset_data** %6, align 8
  %10 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %11 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %4, align 8
  %14 = getelementptr inbounds %struct.reset_controller_dev, %struct.reset_controller_dev* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %12, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %57

23:                                               ; preds = %2
  %24 = load %struct.ti_sci_reset_data*, %struct.ti_sci_reset_data** %6, align 8
  %25 = getelementptr inbounds %struct.ti_sci_reset_data, %struct.ti_sci_reset_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.ti_sci_reset_control* @devm_kzalloc(i32 %26, i32 12, i32 %27)
  store %struct.ti_sci_reset_control* %28, %struct.ti_sci_reset_control** %7, align 8
  %29 = load %struct.ti_sci_reset_control*, %struct.ti_sci_reset_control** %7, align 8
  %30 = icmp ne %struct.ti_sci_reset_control* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %23
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %57

34:                                               ; preds = %23
  %35 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %36 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ti_sci_reset_control*, %struct.ti_sci_reset_control** %7, align 8
  %41 = getelementptr inbounds %struct.ti_sci_reset_control, %struct.ti_sci_reset_control* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %43 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ti_sci_reset_control*, %struct.ti_sci_reset_control** %7, align 8
  %48 = getelementptr inbounds %struct.ti_sci_reset_control, %struct.ti_sci_reset_control* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.ti_sci_reset_control*, %struct.ti_sci_reset_control** %7, align 8
  %50 = getelementptr inbounds %struct.ti_sci_reset_control, %struct.ti_sci_reset_control* %49, i32 0, i32 0
  %51 = call i32 @mutex_init(i32* %50)
  %52 = load %struct.ti_sci_reset_data*, %struct.ti_sci_reset_data** %6, align 8
  %53 = getelementptr inbounds %struct.ti_sci_reset_data, %struct.ti_sci_reset_data* %52, i32 0, i32 0
  %54 = load %struct.ti_sci_reset_control*, %struct.ti_sci_reset_control** %7, align 8
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i32 @idr_alloc(i32* %53, %struct.ti_sci_reset_control* %54, i32 0, i32 0, i32 %55)
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %34, %31, %20
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.ti_sci_reset_data* @to_ti_sci_reset_data(%struct.reset_controller_dev*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.ti_sci_reset_control* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @idr_alloc(i32*, %struct.ti_sci_reset_control*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
