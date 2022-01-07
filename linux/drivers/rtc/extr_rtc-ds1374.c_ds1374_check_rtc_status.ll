; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1374.c_ds1374_check_rtc_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1374.c_ds1374_check_rtc_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@DS1374_REG_SR = common dso_local global i32 0, align 4
@DS1374_REG_SR_OSF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"oscillator discontinuity flagged, time unreliable\0A\00", align 1
@DS1374_REG_SR_AF = common dso_local global i32 0, align 4
@DS1374_REG_CR = common dso_local global i32 0, align 4
@DS1374_REG_CR_WACE = common dso_local global i32 0, align 4
@DS1374_REG_CR_AIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @ds1374_check_rtc_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1374_check_rtc_status(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = load i32, i32* @DS1374_REG_SR, align 4
  %9 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %2, align 4
  br label %57

14:                                               ; preds = %1
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @DS1374_REG_SR_OSF, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = call i32 @dev_warn(i32* %21, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %19, %14
  %24 = load i32, i32* @DS1374_REG_SR_OSF, align 4
  %25 = load i32, i32* @DS1374_REG_SR_AF, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %31 = load i32, i32* @DS1374_REG_SR, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %30, i32 %31, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %23
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %57

38:                                               ; preds = %23
  %39 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %40 = load i32, i32* @DS1374_REG_CR, align 4
  %41 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %39, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %57

46:                                               ; preds = %38
  %47 = load i32, i32* @DS1374_REG_CR_WACE, align 4
  %48 = load i32, i32* @DS1374_REG_CR_AIE, align 4
  %49 = or i32 %47, %48
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %5, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %5, align 4
  %53 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %54 = load i32, i32* @DS1374_REG_CR, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %53, i32 %54, i32 %55)
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %46, %44, %36, %12
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
