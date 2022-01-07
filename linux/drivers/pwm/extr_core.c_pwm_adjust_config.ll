; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_core.c_pwm_adjust_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_core.c_pwm_adjust_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_device = type { i32 }
%struct.pwm_state = type { i32, i32, i64 }
%struct.pwm_args = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pwm_adjust_config(%struct.pwm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pwm_device*, align 8
  %4 = alloca %struct.pwm_state, align 8
  %5 = alloca %struct.pwm_args, align 8
  %6 = alloca i32, align 4
  store %struct.pwm_device* %0, %struct.pwm_device** %3, align 8
  %7 = load %struct.pwm_device*, %struct.pwm_device** %3, align 8
  %8 = call i32 @pwm_get_args(%struct.pwm_device* %7, %struct.pwm_args* %5)
  %9 = load %struct.pwm_device*, %struct.pwm_device** %3, align 8
  %10 = call i32 @pwm_get_state(%struct.pwm_device* %9, %struct.pwm_state* %4)
  %11 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %4, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %4, i32 0, i32 1
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.pwm_args, %struct.pwm_args* %5, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %4, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds %struct.pwm_args, %struct.pwm_args* %5, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %4, i32 0, i32 2
  store i64 %20, i64* %21, align 8
  %22 = load %struct.pwm_device*, %struct.pwm_device** %3, align 8
  %23 = call i32 @pwm_apply_state(%struct.pwm_device* %22, %struct.pwm_state* %4)
  store i32 %23, i32* %2, align 4
  br label %64

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.pwm_args, %struct.pwm_args* %5, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %4, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %26, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %4, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.pwm_args, %struct.pwm_args* %5, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = mul nsw i32 %32, %34
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %4, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @do_div(i32 %36, i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %4, i32 0, i32 1
  store i32 %40, i32* %41, align 4
  %42 = getelementptr inbounds %struct.pwm_args, %struct.pwm_args* %5, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %4, i32 0, i32 0
  store i32 %43, i32* %44, align 8
  br label %45

45:                                               ; preds = %30, %24
  %46 = getelementptr inbounds %struct.pwm_args, %struct.pwm_args* %5, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %4, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %47, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.pwm_args, %struct.pwm_args* %5, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %4, i32 0, i32 2
  store i64 %53, i64* %54, align 8
  %55 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %4, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %4, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %56, %58
  %60 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %4, i32 0, i32 1
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %51, %45
  %62 = load %struct.pwm_device*, %struct.pwm_device** %3, align 8
  %63 = call i32 @pwm_apply_state(%struct.pwm_device* %62, %struct.pwm_state* %4)
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %61, %14
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @pwm_get_args(%struct.pwm_device*, %struct.pwm_args*) #1

declare dso_local i32 @pwm_get_state(%struct.pwm_device*, %struct.pwm_state*) #1

declare dso_local i32 @pwm_apply_state(%struct.pwm_device*, %struct.pwm_state*) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
