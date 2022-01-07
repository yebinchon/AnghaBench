; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rs5c372.c_rs5c_rtc_alarm_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rs5c372.c_rs5c_rtc_alarm_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.i2c_client = type { i32 }
%struct.rs5c372 = type { i8*, i32 }

@RS5C_REG_CTRL1 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@RS5C_CTRL1_AALE = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [20 x i8] c"can't update alarm\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @rs5c_rtc_alarm_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs5c_rtc_alarm_irq_enable(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.rs5c372*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.i2c_client* @to_i2c_client(%struct.device* %11)
  store %struct.i2c_client* %12, %struct.i2c_client** %6, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %14 = call %struct.rs5c372* @i2c_get_clientdata(%struct.i2c_client* %13)
  store %struct.rs5c372* %14, %struct.rs5c372** %7, align 8
  %15 = load %struct.rs5c372*, %struct.rs5c372** %7, align 8
  %16 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load i64, i64* @RS5C_REG_CTRL1, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %8, align 1
  %21 = load %struct.rs5c372*, %struct.rs5c372** %7, align 8
  %22 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %75

28:                                               ; preds = %2
  %29 = load %struct.rs5c372*, %struct.rs5c372** %7, align 8
  %30 = call i32 @rs5c_get_regs(%struct.rs5c372* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %3, align 4
  br label %75

35:                                               ; preds = %28
  %36 = load i64, i64* @RS5C_REG_CTRL1, align 8
  %37 = call i32 @RS5C_ADDR(i64 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load i8, i8* @RS5C_CTRL1_AALE, align 1
  %42 = zext i8 %41 to i32
  %43 = load i8, i8* %8, align 1
  %44 = zext i8 %43 to i32
  %45 = or i32 %44, %42
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %8, align 1
  br label %55

47:                                               ; preds = %35
  %48 = load i8, i8* @RS5C_CTRL1_AALE, align 1
  %49 = zext i8 %48 to i32
  %50 = xor i32 %49, -1
  %51 = load i8, i8* %8, align 1
  %52 = zext i8 %51 to i32
  %53 = and i32 %52, %50
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %8, align 1
  br label %55

55:                                               ; preds = %47, %40
  %56 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load i8, i8* %8, align 1
  %59 = call i64 @i2c_smbus_write_byte_data(%struct.i2c_client* %56, i32 %57, i8 zeroext %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = call i32 @dev_warn(%struct.device* %62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* @EIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %9, align 4
  br label %73

66:                                               ; preds = %55
  %67 = load i8, i8* %8, align 1
  %68 = load %struct.rs5c372*, %struct.rs5c372** %7, align 8
  %69 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load i64, i64* @RS5C_REG_CTRL1, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  store i8 %67, i8* %72, align 1
  br label %73

73:                                               ; preds = %66, %61
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %33, %25
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.rs5c372* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @rs5c_get_regs(%struct.rs5c372*) #1

declare dso_local i32 @RS5C_ADDR(i64) #1

declare dso_local i64 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i8 zeroext) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
