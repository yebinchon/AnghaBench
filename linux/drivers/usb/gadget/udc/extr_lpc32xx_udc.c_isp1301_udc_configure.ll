; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_isp1301_udc_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_isp1301_udc_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpc32xx_udc = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@STOTG04 = common dso_local global i64 0, align 8
@ISP1301_I2C_MODE_CONTROL_1 = common dso_local global i32 0, align 4
@ISP1301_I2C_REG_CLEAR_ADDR = common dso_local global i32 0, align 4
@MC1_UART_EN = common dso_local global i32 0, align 4
@MC1_SPEED_REG = common dso_local global i32 0, align 4
@MC1_DAT_SE0 = common dso_local global i32 0, align 4
@ISP1301_I2C_MODE_CONTROL_2 = common dso_local global i32 0, align 4
@MC2_BI_DI = common dso_local global i32 0, align 4
@MC2_SPD_SUSP_CTRL = common dso_local global i32 0, align 4
@ISP1301_I2C_OTG_CONTROL_1 = common dso_local global i32 0, align 4
@OTG1_VBUS_DRV = common dso_local global i32 0, align 4
@OTG1_DM_PULLDOWN = common dso_local global i32 0, align 4
@OTG1_DP_PULLDOWN = common dso_local global i32 0, align 4
@OTG1_VBUS_DISCHRG = common dso_local global i32 0, align 4
@ISP1301_I2C_INTERRUPT_LATCH = common dso_local global i32 0, align 4
@ISP1301_I2C_INTERRUPT_FALLING = common dso_local global i32 0, align 4
@ISP1301_I2C_INTERRUPT_RISING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"ISP1301 Vendor ID  : 0x%04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"ISP1301 Product ID : 0x%04x\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"ISP1301 Version ID : 0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpc32xx_udc*)* @isp1301_udc_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp1301_udc_configure(%struct.lpc32xx_udc* %0) #0 {
  %2 = alloca %struct.lpc32xx_udc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lpc32xx_udc* %0, %struct.lpc32xx_udc** %2, align 8
  %6 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %7 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @i2c_smbus_read_word_data(i32 %8, i32 0)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %11 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @i2c_smbus_read_word_data(i32 %12, i32 2)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 1155
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 41156
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i64, i64* @STOTG04, align 8
  %21 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %22 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  br label %23

23:                                               ; preds = %19, %16, %1
  %24 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %25 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ISP1301_I2C_MODE_CONTROL_1, align 4
  %28 = load i32, i32* @ISP1301_I2C_REG_CLEAR_ADDR, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @MC1_UART_EN, align 4
  %31 = call i32 @i2c_smbus_write_byte_data(i32 %26, i32 %29, i32 %30)
  %32 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %33 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @ISP1301_I2C_MODE_CONTROL_1, align 4
  %36 = load i32, i32* @ISP1301_I2C_REG_CLEAR_ADDR, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @i2c_smbus_write_byte_data(i32 %34, i32 %37, i32 -1)
  %39 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %40 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @ISP1301_I2C_MODE_CONTROL_1, align 4
  %43 = load i32, i32* @MC1_SPEED_REG, align 4
  %44 = load i32, i32* @MC1_DAT_SE0, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @i2c_smbus_write_byte_data(i32 %41, i32 %42, i32 %45)
  %47 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %48 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @ISP1301_I2C_MODE_CONTROL_2, align 4
  %51 = load i32, i32* @ISP1301_I2C_REG_CLEAR_ADDR, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @i2c_smbus_write_byte_data(i32 %49, i32 %52, i32 -1)
  %54 = load i32, i32* @MC2_BI_DI, align 4
  store i32 %54, i32* %3, align 4
  %55 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %56 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @STOTG04, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %23
  %61 = load i32, i32* @MC2_SPD_SUSP_CTRL, align 4
  %62 = load i32, i32* %3, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %60, %23
  %65 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %66 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @ISP1301_I2C_MODE_CONTROL_2, align 4
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @i2c_smbus_write_byte_data(i32 %67, i32 %68, i32 %69)
  %71 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %72 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %71, i32 0, i32 3
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %64
  %78 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %79 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @ISP1301_I2C_OTG_CONTROL_1, align 4
  %82 = load i32, i32* @OTG1_VBUS_DRV, align 4
  %83 = call i32 @i2c_smbus_write_byte_data(i32 %80, i32 %81, i32 %82)
  br label %93

84:                                               ; preds = %64
  %85 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %86 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @ISP1301_I2C_OTG_CONTROL_1, align 4
  %89 = load i32, i32* @ISP1301_I2C_REG_CLEAR_ADDR, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @OTG1_VBUS_DRV, align 4
  %92 = call i32 @i2c_smbus_write_byte_data(i32 %87, i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %84, %77
  %94 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %95 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @ISP1301_I2C_OTG_CONTROL_1, align 4
  %98 = load i32, i32* @ISP1301_I2C_REG_CLEAR_ADDR, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @i2c_smbus_write_byte_data(i32 %96, i32 %99, i32 -1)
  %101 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %102 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @ISP1301_I2C_OTG_CONTROL_1, align 4
  %105 = load i32, i32* @OTG1_DM_PULLDOWN, align 4
  %106 = or i32 0, %105
  %107 = load i32, i32* @OTG1_DP_PULLDOWN, align 4
  %108 = or i32 %106, %107
  %109 = call i32 @i2c_smbus_write_byte_data(i32 %103, i32 %104, i32 %108)
  %110 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %111 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @ISP1301_I2C_OTG_CONTROL_1, align 4
  %114 = load i32, i32* @OTG1_VBUS_DISCHRG, align 4
  %115 = call i32 @i2c_smbus_write_byte_data(i32 %112, i32 %113, i32 %114)
  %116 = call i32 @msleep(i32 1)
  %117 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %118 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @ISP1301_I2C_OTG_CONTROL_1, align 4
  %121 = load i32, i32* @ISP1301_I2C_REG_CLEAR_ADDR, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @OTG1_VBUS_DISCHRG, align 4
  %124 = call i32 @i2c_smbus_write_byte_data(i32 %119, i32 %122, i32 %123)
  %125 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %126 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @ISP1301_I2C_INTERRUPT_LATCH, align 4
  %129 = load i32, i32* @ISP1301_I2C_REG_CLEAR_ADDR, align 4
  %130 = or i32 %128, %129
  %131 = call i32 @i2c_smbus_write_byte_data(i32 %127, i32 %130, i32 -1)
  %132 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %133 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @ISP1301_I2C_INTERRUPT_FALLING, align 4
  %136 = load i32, i32* @ISP1301_I2C_REG_CLEAR_ADDR, align 4
  %137 = or i32 %135, %136
  %138 = call i32 @i2c_smbus_write_byte_data(i32 %134, i32 %137, i32 -1)
  %139 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %140 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @ISP1301_I2C_INTERRUPT_RISING, align 4
  %143 = load i32, i32* @ISP1301_I2C_REG_CLEAR_ADDR, align 4
  %144 = or i32 %142, %143
  %145 = call i32 @i2c_smbus_write_byte_data(i32 %141, i32 %144, i32 -1)
  %146 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %147 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %4, align 4
  %150 = call i32 @dev_info(i32 %148, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %149)
  %151 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %152 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %5, align 4
  %155 = call i32 @dev_info(i32 %153, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %154)
  %156 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %157 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %2, align 8
  %160 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @i2c_smbus_read_word_data(i32 %161, i32 20)
  %163 = call i32 @dev_info(i32 %158, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %162)
  ret void
}

declare dso_local i32 @i2c_smbus_read_word_data(i32, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
