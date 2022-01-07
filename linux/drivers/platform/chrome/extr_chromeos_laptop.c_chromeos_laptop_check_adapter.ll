; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_chromeos_laptop.c_chromeos_laptop_check_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_chromeos_laptop.c_chromeos_laptop_check_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.i2c_peripheral* }
%struct.i2c_peripheral = type { i64, i32, i32, i64, i64 }
%struct.i2c_adapter = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@cros_laptop = common dso_local global %struct.TYPE_4__* null, align 8
@i2c_adapter_names = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_adapter*)* @chromeos_laptop_check_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chromeos_laptop_check_adapter(%struct.i2c_adapter* %0) #0 {
  %2 = alloca %struct.i2c_adapter*, align 8
  %3 = alloca %struct.i2c_peripheral*, align 8
  %4 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %69, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cros_laptop, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %72

11:                                               ; preds = %5
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cros_laptop, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load %struct.i2c_peripheral*, %struct.i2c_peripheral** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.i2c_peripheral, %struct.i2c_peripheral* %14, i64 %16
  store %struct.i2c_peripheral* %17, %struct.i2c_peripheral** %3, align 8
  %18 = load %struct.i2c_peripheral*, %struct.i2c_peripheral** %3, align 8
  %19 = getelementptr inbounds %struct.i2c_peripheral, %struct.i2c_peripheral* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %11
  br label %69

23:                                               ; preds = %11
  %24 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** @i2c_adapter_names, align 8
  %28 = load %struct.i2c_peripheral*, %struct.i2c_peripheral** %3, align 8
  %29 = getelementptr inbounds %struct.i2c_peripheral, %struct.i2c_peripheral* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** @i2c_adapter_names, align 8
  %34 = load %struct.i2c_peripheral*, %struct.i2c_peripheral** %3, align 8
  %35 = getelementptr inbounds %struct.i2c_peripheral, %struct.i2c_peripheral* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @strlen(i32 %38)
  %40 = call i64 @strncmp(i32 %26, i32 %32, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %23
  br label %69

43:                                               ; preds = %23
  %44 = load %struct.i2c_peripheral*, %struct.i2c_peripheral** %3, align 8
  %45 = getelementptr inbounds %struct.i2c_peripheral, %struct.i2c_peripheral* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %50 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.i2c_peripheral*, %struct.i2c_peripheral** %3, align 8
  %54 = getelementptr inbounds %struct.i2c_peripheral, %struct.i2c_peripheral* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @chromeos_laptop_match_adapter_devid(i32 %52, i64 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %48
  br label %69

59:                                               ; preds = %48, %43
  %60 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %61 = load %struct.i2c_peripheral*, %struct.i2c_peripheral** %3, align 8
  %62 = getelementptr inbounds %struct.i2c_peripheral, %struct.i2c_peripheral* %61, i32 0, i32 2
  %63 = load %struct.i2c_peripheral*, %struct.i2c_peripheral** %3, align 8
  %64 = getelementptr inbounds %struct.i2c_peripheral, %struct.i2c_peripheral* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @chromes_laptop_instantiate_i2c_device(%struct.i2c_adapter* %60, i32* %62, i32 %65)
  %67 = load %struct.i2c_peripheral*, %struct.i2c_peripheral** %3, align 8
  %68 = getelementptr inbounds %struct.i2c_peripheral, %struct.i2c_peripheral* %67, i32 0, i32 3
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %59, %58, %42, %22
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %4, align 4
  br label %5

72:                                               ; preds = %5
  ret void
}

declare dso_local i64 @strncmp(i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @chromeos_laptop_match_adapter_devid(i32, i64) #1

declare dso_local i64 @chromes_laptop_instantiate_i2c_device(%struct.i2c_adapter*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
