; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max14656_charger_detector.c_max14656_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max14656_charger_detector.c_max14656_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max14656_chip = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@MAX14656_DEVICE_ID = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@DEVICE_VENDOR_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"wrong vendor ID %d\0A\00", align 1
@DEVICE_REV_MASK = common dso_local global i32 0, align 4
@MAX14656_CONTROL_2 = common dso_local global i32 0, align 4
@CONTROL2_ADC_EN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAX14656_CONTROL_1 = common dso_local global i32 0, align 4
@CONTROL1_DEFAULT = common dso_local global i32 0, align 4
@CONTROL1_INT_EN = common dso_local global i32 0, align 4
@CONTROL1_INT_ACTIVE_HIGH = common dso_local global i32 0, align 4
@CONTROL1_EDGE = common dso_local global i32 0, align 4
@MAX14656_INTMASK_1 = common dso_local global i32 0, align 4
@MAX14656_INTMASK_2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"detected revision %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max14656_chip*)* @max14656_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max14656_hw_init(%struct.max14656_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.max14656_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  store %struct.max14656_chip* %0, %struct.max14656_chip** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.max14656_chip*, %struct.max14656_chip** %3, align 8
  %8 = getelementptr inbounds %struct.max14656_chip, %struct.max14656_chip* %7, i32 0, i32 0
  %9 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  store %struct.i2c_client* %9, %struct.i2c_client** %6, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %11 = load i32, i32* @MAX14656_DEVICE_ID, align 4
  %12 = call i64 @max14656_read_reg(%struct.i2c_client* %10, i32 %11, i32* %4)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %80

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @DEVICE_VENDOR_MASK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 32
  br i1 %21, label %22, label %32

22:                                               ; preds = %17
  %23 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 0
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @DEVICE_VENDOR_MASK, align 4
  %27 = and i32 %25, %26
  %28 = ashr i32 %27, 4
  %29 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %80

32:                                               ; preds = %17
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @DEVICE_REV_MASK, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %5, align 4
  %36 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %37 = load i32, i32* @MAX14656_CONTROL_2, align 4
  %38 = load i32, i32* @CONTROL2_ADC_EN, align 4
  %39 = call i64 @max14656_write_reg(%struct.i2c_client* %36, i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %80

44:                                               ; preds = %32
  %45 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %46 = load i32, i32* @MAX14656_CONTROL_1, align 4
  %47 = load i32, i32* @CONTROL1_DEFAULT, align 4
  %48 = load i32, i32* @CONTROL1_INT_EN, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @CONTROL1_INT_ACTIVE_HIGH, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @CONTROL1_EDGE, align 4
  %53 = or i32 %51, %52
  %54 = call i64 @max14656_write_reg(%struct.i2c_client* %45, i32 %46, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %44
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %80

59:                                               ; preds = %44
  %60 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %61 = load i32, i32* @MAX14656_INTMASK_1, align 4
  %62 = call i64 @max14656_write_reg(%struct.i2c_client* %60, i32 %61, i32 3)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %80

67:                                               ; preds = %59
  %68 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %69 = load i32, i32* @MAX14656_INTMASK_2, align 4
  %70 = call i64 @max14656_write_reg(%struct.i2c_client* %68, i32 %69, i32 1)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %80

75:                                               ; preds = %67
  %76 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %77 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %76, i32 0, i32 0
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @dev_info(i32* %77, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %75, %72, %64, %56, %41, %22, %14
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i64 @max14656_read_reg(%struct.i2c_client*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i64 @max14656_write_reg(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
