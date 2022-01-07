; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-abx80x.c_abx80x_handle_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-abx80x.c_abx80x_handle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.abx80x_priv = type { %struct.rtc_device* }
%struct.rtc_device = type { i32 }

@ABX8XX_REG_STATUS = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@ABX8XX_STATUS_AF = common dso_local global i32 0, align 4
@RTC_AF = common dso_local global i32 0, align 4
@RTC_IRQF = common dso_local global i32 0, align 4
@ABX8XX_STATUS_WDT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"watchdog timeout interrupt.\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @abx80x_handle_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abx80x_handle_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.abx80x_priv*, align 8
  %8 = alloca %struct.rtc_device*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.i2c_client*
  store %struct.i2c_client* %11, %struct.i2c_client** %6, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %13 = call %struct.abx80x_priv* @i2c_get_clientdata(%struct.i2c_client* %12)
  store %struct.abx80x_priv* %13, %struct.abx80x_priv** %7, align 8
  %14 = load %struct.abx80x_priv*, %struct.abx80x_priv** %7, align 8
  %15 = getelementptr inbounds %struct.abx80x_priv, %struct.abx80x_priv* %14, i32 0, i32 0
  %16 = load %struct.rtc_device*, %struct.rtc_device** %15, align 8
  store %struct.rtc_device* %16, %struct.rtc_device** %8, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %18 = load i32, i32* @ABX8XX_REG_STATUS, align 4
  %19 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @IRQ_NONE, align 4
  store i32 %23, i32* %3, align 4
  br label %49

24:                                               ; preds = %2
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @ABX8XX_STATUS_AF, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.rtc_device*, %struct.rtc_device** %8, align 8
  %31 = load i32, i32* @RTC_AF, align 4
  %32 = load i32, i32* @RTC_IRQF, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @rtc_update_irq(%struct.rtc_device* %30, i32 1, i32 %33)
  br label %35

35:                                               ; preds = %29, %24
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @ABX8XX_STATUS_WDT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 0
  %43 = call i32 @dev_alert(i32* %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %40, %35
  %45 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %46 = load i32, i32* @ABX8XX_REG_STATUS, align 4
  %47 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %45, i32 %46, i32 0)
  %48 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %44, %22
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.abx80x_priv* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @rtc_update_irq(%struct.rtc_device*, i32, i32) #1

declare dso_local i32 @dev_alert(i32*, i8*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
