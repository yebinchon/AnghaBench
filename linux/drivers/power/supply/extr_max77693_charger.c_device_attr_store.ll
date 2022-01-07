; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max77693_charger.c_device_attr_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max77693_charger.c_device_attr_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.max77693_charger = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64, i32 (%struct.max77693_charger*, i64)*)* @device_attr_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_attr_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3, i32 (%struct.max77693_charger*, i64)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.device_attribute*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32 (%struct.max77693_charger*, i64)*, align 8
  %12 = alloca %struct.max77693_charger*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 (%struct.max77693_charger*, i64)* %4, i32 (%struct.max77693_charger*, i64)** %11, align 8
  %15 = load %struct.device*, %struct.device** %7, align 8
  %16 = call %struct.max77693_charger* @dev_get_drvdata(%struct.device* %15)
  store %struct.max77693_charger* %16, %struct.max77693_charger** %12, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = call i32 @kstrtoul(i8* %17, i32 10, i64* %13)
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %14, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* %14, align 4
  store i32 %22, i32* %6, align 4
  br label %35

23:                                               ; preds = %5
  %24 = load i32 (%struct.max77693_charger*, i64)*, i32 (%struct.max77693_charger*, i64)** %11, align 8
  %25 = load %struct.max77693_charger*, %struct.max77693_charger** %12, align 8
  %26 = load i64, i64* %13, align 8
  %27 = call i32 %24(%struct.max77693_charger* %25, i64 %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* %14, align 4
  store i32 %31, i32* %6, align 4
  br label %35

32:                                               ; preds = %23
  %33 = load i64, i64* %10, align 8
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %32, %30, %21
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local %struct.max77693_charger* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
