; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/extr_core.c_devm_reset_control_array_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/extr_core.c_devm_reset_control_array_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reset_control = type { i32 }
%struct.device = type { i32 }

@devm_reset_control_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.reset_control* @devm_reset_control_array_get(%struct.device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.reset_control*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.reset_control**, align 8
  %9 = alloca %struct.reset_control*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @devm_reset_control_release, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.reset_control** @devres_alloc(i32 %10, i32 8, i32 %11)
  store %struct.reset_control** %12, %struct.reset_control*** %8, align 8
  %13 = load %struct.reset_control**, %struct.reset_control*** %8, align 8
  %14 = icmp ne %struct.reset_control** %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.reset_control* @ERR_PTR(i32 %17)
  store %struct.reset_control* %18, %struct.reset_control** %4, align 8
  br label %40

19:                                               ; preds = %3
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call %struct.reset_control* @of_reset_control_array_get(i32 %22, i32 %23, i32 %24, i32 1)
  store %struct.reset_control* %25, %struct.reset_control** %9, align 8
  %26 = load %struct.reset_control*, %struct.reset_control** %9, align 8
  %27 = call i64 @IS_ERR(%struct.reset_control* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %19
  %30 = load %struct.reset_control**, %struct.reset_control*** %8, align 8
  %31 = call i32 @devres_free(%struct.reset_control** %30)
  %32 = load %struct.reset_control*, %struct.reset_control** %9, align 8
  store %struct.reset_control* %32, %struct.reset_control** %4, align 8
  br label %40

33:                                               ; preds = %19
  %34 = load %struct.reset_control*, %struct.reset_control** %9, align 8
  %35 = load %struct.reset_control**, %struct.reset_control*** %8, align 8
  store %struct.reset_control* %34, %struct.reset_control** %35, align 8
  %36 = load %struct.device*, %struct.device** %5, align 8
  %37 = load %struct.reset_control**, %struct.reset_control*** %8, align 8
  %38 = call i32 @devres_add(%struct.device* %36, %struct.reset_control** %37)
  %39 = load %struct.reset_control*, %struct.reset_control** %9, align 8
  store %struct.reset_control* %39, %struct.reset_control** %4, align 8
  br label %40

40:                                               ; preds = %33, %29, %15
  %41 = load %struct.reset_control*, %struct.reset_control** %4, align 8
  ret %struct.reset_control* %41
}

declare dso_local %struct.reset_control** @devres_alloc(i32, i32, i32) #1

declare dso_local %struct.reset_control* @ERR_PTR(i32) #1

declare dso_local %struct.reset_control* @of_reset_control_array_get(i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.reset_control*) #1

declare dso_local i32 @devres_free(%struct.reset_control**) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.reset_control**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
