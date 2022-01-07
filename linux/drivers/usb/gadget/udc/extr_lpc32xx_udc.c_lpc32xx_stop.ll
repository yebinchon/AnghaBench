; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_lpc32xx_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_lpc32xx_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.lpc32xx_udc = type { i32*, i64, i32, i32, i32, i64, i32 }

@ISP1301_I2C_INTERRUPT_FALLING = common dso_local global i32 0, align 4
@ISP1301_I2C_REG_CLEAR_ADDR = common dso_local global i32 0, align 4
@ISP1301_I2C_INTERRUPT_RISING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*)* @lpc32xx_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc32xx_stop(%struct.usb_gadget* %0) #0 {
  %2 = alloca %struct.usb_gadget*, align 8
  %3 = alloca %struct.lpc32xx_udc*, align 8
  store %struct.usb_gadget* %0, %struct.usb_gadget** %2, align 8
  %4 = load %struct.usb_gadget*, %struct.usb_gadget** %2, align 8
  %5 = call %struct.lpc32xx_udc* @to_udc(%struct.usb_gadget* %4)
  store %struct.lpc32xx_udc* %5, %struct.lpc32xx_udc** %3, align 8
  %6 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %3, align 8
  %7 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @ISP1301_I2C_INTERRUPT_FALLING, align 4
  %10 = load i32, i32* @ISP1301_I2C_REG_CLEAR_ADDR, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @i2c_smbus_write_byte_data(i32 %8, i32 %11, i32 -1)
  %13 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %3, align 8
  %14 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @ISP1301_I2C_INTERRUPT_RISING, align 4
  %17 = load i32, i32* @ISP1301_I2C_REG_CLEAR_ADDR, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @i2c_smbus_write_byte_data(i32 %15, i32 %18, i32 -1)
  %20 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %3, align 8
  %21 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %56

24:                                               ; preds = %1
  %25 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %3, align 8
  %26 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %25, i32 0, i32 2
  %27 = call i32 @spin_lock(i32* %26)
  %28 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %3, align 8
  %29 = call i32 @stop_activity(%struct.lpc32xx_udc* %28)
  %30 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %3, align 8
  %31 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %30, i32 0, i32 2
  %32 = call i32 @spin_unlock(i32* %31)
  %33 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %3, align 8
  %34 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %33, i32 0, i32 3
  %35 = call i64 @atomic_read(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %24
  %38 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %3, align 8
  %39 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %3, align 8
  %42 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %41, i32 0, i32 3
  %43 = call i64 @atomic_read(i32* %42)
  %44 = icmp eq i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @wait_event_interruptible(i32 %40, i32 %45)
  br label %47

47:                                               ; preds = %37, %24
  %48 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %3, align 8
  %49 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %48, i32 0, i32 2
  %50 = call i32 @spin_lock(i32* %49)
  %51 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %3, align 8
  %52 = call i32 @udc_clk_set(%struct.lpc32xx_udc* %51, i32 0)
  %53 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %3, align 8
  %54 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %53, i32 0, i32 2
  %55 = call i32 @spin_unlock(i32* %54)
  br label %56

56:                                               ; preds = %47, %1
  %57 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %3, align 8
  %58 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %3, align 8
  %60 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %59, i32 0, i32 0
  store i32* null, i32** %60, align 8
  ret i32 0
}

declare dso_local %struct.lpc32xx_udc* @to_udc(%struct.usb_gadget*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @stop_activity(%struct.lpc32xx_udc*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @udc_clk_set(%struct.lpc32xx_udc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
