; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_read_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_read_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }

@NI_E_SERIAL_CMD_EEPROM_CS = common dso_local global i32 0, align 4
@NI_E_SERIAL_CMD_REG = common dso_local global i32 0, align 4
@NI_E_SERIAL_CMD_SDATA = common dso_local global i32 0, align 4
@NI_E_SERIAL_CMD_SCLK = common dso_local global i32 0, align 4
@NI_E_STATUS_REG = common dso_local global i32 0, align 4
@NI_E_STATUS_PROMOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32)* @ni_read_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_read_eeprom(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @NI_E_SERIAL_CMD_EEPROM_CS, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = and i32 %9, 256
  %11 = shl i32 %10, 3
  %12 = or i32 768, %11
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, 255
  %15 = or i32 %12, %14
  store i32 %15, i32* %7, align 4
  %16 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @NI_E_SERIAL_CMD_REG, align 4
  %19 = call i32 @ni_writeb(%struct.comedi_device* %16, i32 %17, i32 %18)
  store i32 32768, i32* %6, align 4
  br label %20

20:                                               ; preds = %48, %2
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %51

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* @NI_E_SERIAL_CMD_SDATA, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %37

32:                                               ; preds = %23
  %33 = load i32, i32* @NI_E_SERIAL_CMD_SDATA, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %32, %28
  %38 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @NI_E_SERIAL_CMD_REG, align 4
  %41 = call i32 @ni_writeb(%struct.comedi_device* %38, i32 %39, i32 %40)
  %42 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %43 = load i32, i32* @NI_E_SERIAL_CMD_SCLK, align 4
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @NI_E_SERIAL_CMD_REG, align 4
  %47 = call i32 @ni_writeb(%struct.comedi_device* %42, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %37
  %49 = load i32, i32* %6, align 4
  %50 = ashr i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %20

51:                                               ; preds = %20
  %52 = load i32, i32* @NI_E_SERIAL_CMD_EEPROM_CS, align 4
  store i32 %52, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 128, i32* %6, align 4
  br label %53

53:                                               ; preds = %78, %51
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %81

56:                                               ; preds = %53
  %57 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @NI_E_SERIAL_CMD_REG, align 4
  %60 = call i32 @ni_writeb(%struct.comedi_device* %57, i32 %58, i32 %59)
  %61 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %62 = load i32, i32* @NI_E_SERIAL_CMD_SCLK, align 4
  %63 = load i32, i32* %5, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @NI_E_SERIAL_CMD_REG, align 4
  %66 = call i32 @ni_writeb(%struct.comedi_device* %61, i32 %64, i32 %65)
  %67 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %68 = load i32, i32* @NI_E_STATUS_REG, align 4
  %69 = call i32 @ni_readb(%struct.comedi_device* %67, i32 %68)
  %70 = load i32, i32* @NI_E_STATUS_PROMOUT, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %56
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %73, %56
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %6, align 4
  %80 = ashr i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %53

81:                                               ; preds = %53
  %82 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %83 = load i32, i32* @NI_E_SERIAL_CMD_REG, align 4
  %84 = call i32 @ni_writeb(%struct.comedi_device* %82, i32 0, i32 %83)
  %85 = load i32, i32* %7, align 4
  ret i32 %85
}

declare dso_local i32 @ni_writeb(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @ni_readb(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
