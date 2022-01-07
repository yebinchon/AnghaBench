; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-abx80x.c_oscillator_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-abx80x.c_oscillator_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"rc\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"xtal\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Oscillator selection value outside permitted ones\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ABX8XX_REG_OSC = common dso_local global i32 0, align 4
@ABX8XX_OSC_OSEL = common dso_local global i32 0, align 4
@ABX8XX_REG_CFG_KEY = common dso_local global i32 0, align 4
@ABX8XX_CFG_KEY_OSC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Failed to write CONFIG_KEY register\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Failed to write Oscillator Control register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @oscillator_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oscillator_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.i2c_client* @to_i2c_client(i32 %16)
  store %struct.i2c_client* %17, %struct.i2c_client** %10, align 8
  store i32 0, i32* %13, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = call i64 @strncmp(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 1, i32* %13, align 4
  br label %33

22:                                               ; preds = %4
  %23 = load i8*, i8** %8, align 8
  %24 = call i64 @strncmp(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 0, i32* %13, align 4
  br label %32

27:                                               ; preds = %22
  %28 = load %struct.device*, %struct.device** %6, align 8
  %29 = call i32 @dev_err(%struct.device* %28, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %86

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32, %21
  %34 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %35 = load i32, i32* @ABX8XX_REG_OSC, align 4
  %36 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %34, i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %5, align 4
  br label %86

41:                                               ; preds = %33
  %42 = load i32, i32* %13, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i32, i32* @ABX8XX_OSC_OSEL, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %12, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %12, align 4
  br label %53

49:                                               ; preds = %41
  %50 = load i32, i32* @ABX8XX_OSC_OSEL, align 4
  %51 = load i32, i32* %12, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %12, align 4
  br label %53

53:                                               ; preds = %49, %44
  %54 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %55 = load i32, i32* @ABX8XX_REG_CFG_KEY, align 4
  %56 = load i32, i32* @ABX8XX_CFG_KEY_OSC, align 4
  %57 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %54, i32 %55, i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load %struct.device*, %struct.device** %6, align 8
  %62 = call i32 @dev_err(%struct.device* %61, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %63 = load i32, i32* %11, align 4
  store i32 %63, i32* %5, align 4
  br label %86

64:                                               ; preds = %53
  %65 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %66 = load i32, i32* @ABX8XX_REG_OSC, align 4
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %65, i32 %66, i32 %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load %struct.device*, %struct.device** %6, align 8
  %73 = call i32 @dev_err(%struct.device* %72, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %5, align 4
  br label %86

75:                                               ; preds = %64
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  br label %83

81:                                               ; preds = %75
  %82 = load i64, i64* %9, align 8
  br label %83

83:                                               ; preds = %81, %78
  %84 = phi i64 [ %80, %78 ], [ %82, %81 ]
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %83, %71, %60, %39, %27
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local %struct.i2c_client* @to_i2c_client(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
