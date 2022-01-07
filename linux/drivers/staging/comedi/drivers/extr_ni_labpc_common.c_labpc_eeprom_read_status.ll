; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_common.c_labpc_eeprom_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_common.c_labpc_eeprom_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.labpc_private* }
%struct.labpc_private = type { i32, i32 (%struct.comedi_device.0*, i32, i32)* }
%struct.comedi_device.0 = type opaque

@CMD5_EEPROMCS = common dso_local global i32 0, align 4
@CMD5_REG = common dso_local global i32 0, align 4
@CMD5_WRTPRT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @labpc_eeprom_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @labpc_eeprom_read_status(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.labpc_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %7 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 0
  %9 = load %struct.labpc_private*, %struct.labpc_private** %8, align 8
  store %struct.labpc_private* %9, %struct.labpc_private** %3, align 8
  store i32 5, i32* %5, align 4
  store i32 8, i32* %6, align 4
  %10 = load i32, i32* @CMD5_EEPROMCS, align 4
  %11 = xor i32 %10, -1
  %12 = load %struct.labpc_private*, %struct.labpc_private** %3, align 8
  %13 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 8
  %16 = call i32 @udelay(i32 1)
  %17 = load %struct.labpc_private*, %struct.labpc_private** %3, align 8
  %18 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %17, i32 0, i32 1
  %19 = load i32 (%struct.comedi_device.0*, i32, i32)*, i32 (%struct.comedi_device.0*, i32, i32)** %18, align 8
  %20 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %21 = bitcast %struct.comedi_device* %20 to %struct.comedi_device.0*
  %22 = load %struct.labpc_private*, %struct.labpc_private** %3, align 8
  %23 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @CMD5_REG, align 4
  %26 = call i32 %19(%struct.comedi_device.0* %21, i32 %24, i32 %25)
  %27 = load i32, i32* @CMD5_EEPROMCS, align 4
  %28 = load i32, i32* @CMD5_WRTPRT, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.labpc_private*, %struct.labpc_private** %3, align 8
  %31 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = call i32 @udelay(i32 1)
  %35 = load %struct.labpc_private*, %struct.labpc_private** %3, align 8
  %36 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %35, i32 0, i32 1
  %37 = load i32 (%struct.comedi_device.0*, i32, i32)*, i32 (%struct.comedi_device.0*, i32, i32)** %36, align 8
  %38 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %39 = bitcast %struct.comedi_device* %38 to %struct.comedi_device.0*
  %40 = load %struct.labpc_private*, %struct.labpc_private** %3, align 8
  %41 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @CMD5_REG, align 4
  %44 = call i32 %37(%struct.comedi_device.0* %39, i32 %42, i32 %43)
  %45 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %46 = call i32 @labpc_serial_out(%struct.comedi_device* %45, i32 5, i32 8)
  %47 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %48 = call i32 @labpc_serial_in(%struct.comedi_device* %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* @CMD5_EEPROMCS, align 4
  %50 = load i32, i32* @CMD5_WRTPRT, align 4
  %51 = or i32 %49, %50
  %52 = xor i32 %51, -1
  %53 = load %struct.labpc_private*, %struct.labpc_private** %3, align 8
  %54 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = call i32 @udelay(i32 1)
  %58 = load %struct.labpc_private*, %struct.labpc_private** %3, align 8
  %59 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %58, i32 0, i32 1
  %60 = load i32 (%struct.comedi_device.0*, i32, i32)*, i32 (%struct.comedi_device.0*, i32, i32)** %59, align 8
  %61 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %62 = bitcast %struct.comedi_device* %61 to %struct.comedi_device.0*
  %63 = load %struct.labpc_private*, %struct.labpc_private** %3, align 8
  %64 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @CMD5_REG, align 4
  %67 = call i32 %60(%struct.comedi_device.0* %62, i32 %65, i32 %66)
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @labpc_serial_out(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @labpc_serial_in(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
