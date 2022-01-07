; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_sysfs.c_enable_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_sysfs.c_enable_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.pwm_export = type { i32, %struct.pwm_device* }
%struct.pwm_device = type { i32 }
%struct.pwm_state = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @enable_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.pwm_export*, align 8
  %11 = alloca %struct.pwm_device*, align 8
  %12 = alloca %struct.pwm_state, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.pwm_export* @child_to_pwm_export(%struct.device* %15)
  store %struct.pwm_export* %16, %struct.pwm_export** %10, align 8
  %17 = load %struct.pwm_export*, %struct.pwm_export** %10, align 8
  %18 = getelementptr inbounds %struct.pwm_export, %struct.pwm_export* %17, i32 0, i32 1
  %19 = load %struct.pwm_device*, %struct.pwm_device** %18, align 8
  store %struct.pwm_device* %19, %struct.pwm_device** %11, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @kstrtoint(i8* %20, i32 0, i32* %13)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %14, align 4
  store i32 %25, i32* %5, align 4
  br label %56

26:                                               ; preds = %4
  %27 = load %struct.pwm_export*, %struct.pwm_export** %10, align 8
  %28 = getelementptr inbounds %struct.pwm_export, %struct.pwm_export* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.pwm_device*, %struct.pwm_device** %11, align 8
  %31 = call i32 @pwm_get_state(%struct.pwm_device* %30, %struct.pwm_state* %12)
  %32 = load i32, i32* %13, align 4
  switch i32 %32, label %37 [
    i32 0, label %33
    i32 1, label %35
  ]

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %12, i32 0, i32 0
  store i32 0, i32* %34, align 4
  br label %40

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %12, i32 0, i32 0
  store i32 1, i32* %36, align 4
  br label %40

37:                                               ; preds = %26
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %14, align 4
  br label %43

40:                                               ; preds = %35, %33
  %41 = load %struct.pwm_device*, %struct.pwm_device** %11, align 8
  %42 = call i32 @pwm_apply_state(%struct.pwm_device* %41, %struct.pwm_state* %12)
  store i32 %42, i32* %14, align 4
  br label %43

43:                                               ; preds = %40, %37
  %44 = load %struct.pwm_export*, %struct.pwm_export** %10, align 8
  %45 = getelementptr inbounds %struct.pwm_export, %struct.pwm_export* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load i32, i32* %14, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = sext i32 %47 to i64
  br label %53

51:                                               ; preds = %43
  %52 = load i64, i64* %9, align 8
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i64 [ %50, %49 ], [ %52, %51 ]
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %53, %24
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local %struct.pwm_export* @child_to_pwm_export(%struct.device*) #1

declare dso_local i32 @kstrtoint(i8*, i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pwm_get_state(%struct.pwm_device*, %struct.pwm_state*) #1

declare dso_local i32 @pwm_apply_state(%struct.pwm_device*, %struct.pwm_state*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
