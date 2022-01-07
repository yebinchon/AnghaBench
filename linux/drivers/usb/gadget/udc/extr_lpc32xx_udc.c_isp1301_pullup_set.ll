; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_isp1301_pullup_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_isp1301_pullup_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpc32xx_udc = type { i32, i64 }

@ISP1301_I2C_OTG_CONTROL_1 = common dso_local global i32 0, align 4
@OTG1_DP_PULLUP = common dso_local global i32 0, align 4
@ISP1301_I2C_REG_CLEAR_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpc32xx_udc*)* @isp1301_pullup_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp1301_pullup_set(%struct.lpc32xx_udc* %0) #0 {
  %2 = alloca %struct.lpc32xx_udc*, align 8
  store %struct.lpc32xx_udc* %0, %struct.lpc32xx_udc** %2, align 8
  %3 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %4 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %9 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @ISP1301_I2C_OTG_CONTROL_1, align 4
  %12 = load i32, i32* @OTG1_DP_PULLUP, align 4
  %13 = call i32 @i2c_smbus_write_byte_data(i32 %10, i32 %11, i32 %12)
  br label %23

14:                                               ; preds = %1
  %15 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %16 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @ISP1301_I2C_OTG_CONTROL_1, align 4
  %19 = load i32, i32* @ISP1301_I2C_REG_CLEAR_ADDR, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @OTG1_DP_PULLUP, align 4
  %22 = call i32 @i2c_smbus_write_byte_data(i32 %17, i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %14, %7
  ret void
}

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
