; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-ab8500-usb.c_ab8500_usb_regulator_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-ab8500-usb.c_ab8500_usb_regulator_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500_usb = type { i32, i64, i32, i32, i32, i32 }

@AB8500_USB_FLAG_REGULATOR_SET_VOLTAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Failed to set the Vintcore to %duV, ret=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to set optimum mode (ret=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ab8500_usb*)* @ab8500_usb_regulator_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ab8500_usb_regulator_disable(%struct.ab8500_usb* %0) #0 {
  %2 = alloca %struct.ab8500_usb*, align 8
  %3 = alloca i32, align 4
  store %struct.ab8500_usb* %0, %struct.ab8500_usb** %2, align 8
  %4 = load %struct.ab8500_usb*, %struct.ab8500_usb** %2, align 8
  %5 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %4, i32 0, i32 5
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @regulator_disable(i32 %6)
  %8 = load %struct.ab8500_usb*, %struct.ab8500_usb** %2, align 8
  %9 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @regulator_disable(i32 %10)
  %12 = load %struct.ab8500_usb*, %struct.ab8500_usb** %2, align 8
  %13 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @AB8500_USB_FLAG_REGULATOR_SET_VOLTAGE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %61

18:                                               ; preds = %1
  %19 = load %struct.ab8500_usb*, %struct.ab8500_usb** %2, align 8
  %20 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %18
  %24 = load %struct.ab8500_usb*, %struct.ab8500_usb** %2, align 8
  %25 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.ab8500_usb*, %struct.ab8500_usb** %2, align 8
  %28 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.ab8500_usb*, %struct.ab8500_usb** %2, align 8
  %31 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @regulator_set_voltage(i32 %26, i64 %29, i64 %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %23
  %37 = load %struct.ab8500_usb*, %struct.ab8500_usb** %2, align 8
  %38 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ab8500_usb*, %struct.ab8500_usb** %2, align 8
  %41 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* %3, align 4
  %45 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %39, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %36, %23
  br label %47

47:                                               ; preds = %46, %18
  %48 = load %struct.ab8500_usb*, %struct.ab8500_usb** %2, align 8
  %49 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @regulator_set_load(i32 %50, i32 0)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load %struct.ab8500_usb*, %struct.ab8500_usb** %2, align 8
  %56 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %3, align 4
  %59 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %57, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %54, %47
  br label %61

61:                                               ; preds = %60, %1
  %62 = load %struct.ab8500_usb*, %struct.ab8500_usb** %2, align 8
  %63 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @regulator_disable(i32 %64)
  ret void
}

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @regulator_set_voltage(i32, i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @regulator_set_load(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
