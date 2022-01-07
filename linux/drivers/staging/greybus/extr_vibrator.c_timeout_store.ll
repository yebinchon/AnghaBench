; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_vibrator.c_timeout_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_vibrator.c_timeout_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.gb_vibrator_device = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"could not parse timeout value %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @timeout_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timeout_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.gb_vibrator_device*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.gb_vibrator_device* @dev_get_drvdata(%struct.device* %13)
  store %struct.gb_vibrator_device* %14, %struct.gb_vibrator_device** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @kstrtoul(i8* %15, i32 10, i64* %11)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = load i32, i32* %12, align 4
  %22 = call i32 @dev_err(%struct.device* %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %5, align 4
  br label %43

24:                                               ; preds = %4
  %25 = load i64, i64* %11, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load %struct.gb_vibrator_device*, %struct.gb_vibrator_device** %10, align 8
  %29 = load i64, i64* %11, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @turn_on(%struct.gb_vibrator_device* %28, i32 %30)
  store i32 %31, i32* %12, align 4
  br label %35

32:                                               ; preds = %24
  %33 = load %struct.gb_vibrator_device*, %struct.gb_vibrator_device** %10, align 8
  %34 = call i32 @turn_off(%struct.gb_vibrator_device* %33)
  store i32 %34, i32* %12, align 4
  br label %35

35:                                               ; preds = %32, %27
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %5, align 4
  br label %43

40:                                               ; preds = %35
  %41 = load i64, i64* %9, align 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %40, %38, %19
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local %struct.gb_vibrator_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @turn_on(%struct.gb_vibrator_device*, i32) #1

declare dso_local i32 @turn_off(%struct.gb_vibrator_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
