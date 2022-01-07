; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_vbus_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_vbus_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpc32xx_udc = type { i64, i32, i32, i32, i32 }

@ISP1301_I2C_OTG_CONTROL_1 = common dso_local global i32 0, align 4
@OTG1_VBUS_DISCHRG = common dso_local global i32 0, align 4
@ISP1301_I2C_REG_CLEAR_ADDR = common dso_local global i32 0, align 4
@ISP1301_I2C_INTERRUPT_LATCH = common dso_local global i32 0, align 4
@ISP1301_I2C_INTERRUPT_SOURCE = common dso_local global i32 0, align 4
@INT_SESS_VLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpc32xx_udc*)* @vbus_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vbus_work(%struct.lpc32xx_udc* %0) #0 {
  %2 = alloca %struct.lpc32xx_udc*, align 8
  %3 = alloca i32, align 4
  store %struct.lpc32xx_udc* %0, %struct.lpc32xx_udc** %2, align 8
  %4 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %5 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %67

8:                                                ; preds = %1
  %9 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %10 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @ISP1301_I2C_OTG_CONTROL_1, align 4
  %13 = load i32, i32* @OTG1_VBUS_DISCHRG, align 4
  %14 = call i32 @i2c_smbus_write_byte_data(i32 %11, i32 %12, i32 %13)
  %15 = call i32 @msleep(i32 100)
  %16 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %17 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ISP1301_I2C_OTG_CONTROL_1, align 4
  %20 = load i32, i32* @ISP1301_I2C_REG_CLEAR_ADDR, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @OTG1_VBUS_DISCHRG, align 4
  %23 = call i32 @i2c_smbus_write_byte_data(i32 %18, i32 %21, i32 %22)
  %24 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %25 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ISP1301_I2C_INTERRUPT_LATCH, align 4
  %28 = load i32, i32* @ISP1301_I2C_REG_CLEAR_ADDR, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @i2c_smbus_write_byte_data(i32 %26, i32 %29, i32 -1)
  %31 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %32 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ISP1301_I2C_INTERRUPT_SOURCE, align 4
  %35 = call i32 @i2c_smbus_read_byte_data(i32 %33, i32 %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @INT_SESS_VLD, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %8
  %41 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %42 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %41, i32 0, i32 1
  store i32 1, i32* %42, align 8
  br label %46

43:                                               ; preds = %8
  %44 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %45 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %44, i32 0, i32 1
  store i32 0, i32* %45, align 8
  br label %46

46:                                               ; preds = %43, %40
  %47 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %48 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %51 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %49, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %46
  %55 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %56 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %59 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %61 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %60, i32 0, i32 3
  %62 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %63 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @lpc32xx_vbus_session(i32* %61, i32 %64)
  br label %66

66:                                               ; preds = %54, %46
  br label %67

67:                                               ; preds = %66, %1
  ret void
}

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

declare dso_local i32 @lpc32xx_vbus_session(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
