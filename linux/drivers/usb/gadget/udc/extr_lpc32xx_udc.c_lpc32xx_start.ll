; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_lpc32xx_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_lpc32xx_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.usb_gadget_driver = type { i64, i32 }
%struct.lpc32xx_udc = type { i32, i32, i64, i64, %struct.TYPE_5__, %struct.TYPE_6__*, %struct.usb_gadget_driver* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@USB_SPEED_FULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"bad parameter.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"UDC already has a gadget driver\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ISP1301_I2C_INTERRUPT_FALLING = common dso_local global i32 0, align 4
@INT_SESS_VLD = common dso_local global i32 0, align 4
@INT_VBUS_VLD = common dso_local global i32 0, align 4
@ISP1301_I2C_INTERRUPT_RISING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*, %struct.usb_gadget_driver*)* @lpc32xx_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc32xx_start(%struct.usb_gadget* %0, %struct.usb_gadget_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_gadget*, align 8
  %5 = alloca %struct.usb_gadget_driver*, align 8
  %6 = alloca %struct.lpc32xx_udc*, align 8
  store %struct.usb_gadget* %0, %struct.usb_gadget** %4, align 8
  store %struct.usb_gadget_driver* %1, %struct.usb_gadget_driver** %5, align 8
  %7 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %8 = call %struct.lpc32xx_udc* @to_udc(%struct.usb_gadget* %7)
  store %struct.lpc32xx_udc* %8, %struct.lpc32xx_udc** %6, align 8
  %9 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %5, align 8
  %10 = icmp ne %struct.usb_gadget_driver* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %5, align 8
  %13 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @USB_SPEED_FULL, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %22, label %17

17:                                               ; preds = %11
  %18 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %5, align 8
  %19 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %17, %11, %2
  %23 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %6, align 8
  %24 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %23, i32 0, i32 5
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = call i32 @dev_err(%struct.TYPE_6__* %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %83

29:                                               ; preds = %17
  %30 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %6, align 8
  %31 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %30, i32 0, i32 6
  %32 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %31, align 8
  %33 = icmp ne %struct.usb_gadget_driver* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %6, align 8
  %36 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %35, i32 0, i32 5
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = call i32 @dev_err(%struct.TYPE_6__* %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %83

41:                                               ; preds = %29
  %42 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %5, align 8
  %43 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %6, align 8
  %44 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %43, i32 0, i32 6
  store %struct.usb_gadget_driver* %42, %struct.usb_gadget_driver** %44, align 8
  %45 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %6, align 8
  %46 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %45, i32 0, i32 5
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %6, align 8
  %51 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32 %49, i32* %53, align 4
  %54 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %6, align 8
  %55 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %6, align 8
  %57 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %6, align 8
  %60 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %59, i32 0, i32 2
  store i64 0, i64* %60, align 8
  %61 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %6, align 8
  %62 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %61, i32 0, i32 2
  store i64 0, i64* %62, align 8
  %63 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %6, align 8
  %64 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %63, i32 0, i32 3
  store i64 0, i64* %64, align 8
  %65 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %6, align 8
  %66 = call i32 @vbus_work(%struct.lpc32xx_udc* %65)
  %67 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %6, align 8
  %68 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @ISP1301_I2C_INTERRUPT_FALLING, align 4
  %71 = load i32, i32* @INT_SESS_VLD, align 4
  %72 = load i32, i32* @INT_VBUS_VLD, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @i2c_smbus_write_byte_data(i32 %69, i32 %70, i32 %73)
  %75 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %6, align 8
  %76 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @ISP1301_I2C_INTERRUPT_RISING, align 4
  %79 = load i32, i32* @INT_SESS_VLD, align 4
  %80 = load i32, i32* @INT_VBUS_VLD, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @i2c_smbus_write_byte_data(i32 %77, i32 %78, i32 %81)
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %41, %34, %22
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.lpc32xx_udc* @to_udc(%struct.usb_gadget*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @vbus_work(%struct.lpc32xx_udc*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
