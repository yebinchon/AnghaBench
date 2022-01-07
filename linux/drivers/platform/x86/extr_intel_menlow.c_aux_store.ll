; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_menlow.c_aux_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_menlow.c_aux_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.intel_menlow_attribute = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64, i32)* @aux_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aux_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.device_attribute*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.intel_menlow_attribute*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.device_attribute*, %struct.device_attribute** %8, align 8
  %16 = call %struct.intel_menlow_attribute* @to_intel_menlow_attr(%struct.device_attribute* %15)
  store %struct.intel_menlow_attribute* %16, %struct.intel_menlow_attribute** %12, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = call i32 @sscanf(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %13)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %47

23:                                               ; preds = %5
  %24 = load i32, i32* %13, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %47

29:                                               ; preds = %23
  %30 = load %struct.intel_menlow_attribute*, %struct.intel_menlow_attribute** %12, align 8
  %31 = getelementptr inbounds %struct.intel_menlow_attribute, %struct.intel_menlow_attribute* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %13, align 4
  %35 = call i32 @CELSIUS_TO_DECI_KELVIN(i32 %34)
  %36 = call i32 @sensor_set_auxtrip(i32 %32, i32 %33, i32 %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load i32, i32* %14, align 4
  %41 = sext i32 %40 to i64
  br label %44

42:                                               ; preds = %29
  %43 = load i64, i64* %10, align 8
  br label %44

44:                                               ; preds = %42, %39
  %45 = phi i64 [ %41, %39 ], [ %43, %42 ]
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %44, %26, %20
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local %struct.intel_menlow_attribute* @to_intel_menlow_attr(%struct.device_attribute*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @sensor_set_auxtrip(i32, i32, i32) #1

declare dso_local i32 @CELSIUS_TO_DECI_KELVIN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
