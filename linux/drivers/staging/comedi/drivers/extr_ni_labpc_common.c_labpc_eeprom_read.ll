; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_common.c_labpc_eeprom_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_common.c_labpc_eeprom_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.labpc_private* }
%struct.labpc_private = type { i32, i32 (%struct.comedi_device.0*, i32, i32)* }
%struct.comedi_device.0 = type opaque

@CMD5_EEPROMCS = common dso_local global i32 0, align 4
@CMD5_REG = common dso_local global i32 0, align 4
@CMD5_WRTPRT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32)* @labpc_eeprom_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @labpc_eeprom_read(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.labpc_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 0
  %11 = load %struct.labpc_private*, %struct.labpc_private** %10, align 8
  store %struct.labpc_private* %11, %struct.labpc_private** %5, align 8
  store i32 3, i32* %7, align 4
  store i32 8, i32* %8, align 4
  %12 = load i32, i32* @CMD5_EEPROMCS, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.labpc_private*, %struct.labpc_private** %5, align 8
  %15 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = call i32 @udelay(i32 1)
  %19 = load %struct.labpc_private*, %struct.labpc_private** %5, align 8
  %20 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %19, i32 0, i32 1
  %21 = load i32 (%struct.comedi_device.0*, i32, i32)*, i32 (%struct.comedi_device.0*, i32, i32)** %20, align 8
  %22 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %23 = bitcast %struct.comedi_device* %22 to %struct.comedi_device.0*
  %24 = load %struct.labpc_private*, %struct.labpc_private** %5, align 8
  %25 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @CMD5_REG, align 4
  %28 = call i32 %21(%struct.comedi_device.0* %23, i32 %26, i32 %27)
  %29 = load i32, i32* @CMD5_EEPROMCS, align 4
  %30 = load i32, i32* @CMD5_WRTPRT, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.labpc_private*, %struct.labpc_private** %5, align 8
  %33 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = call i32 @udelay(i32 1)
  %37 = load %struct.labpc_private*, %struct.labpc_private** %5, align 8
  %38 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %37, i32 0, i32 1
  %39 = load i32 (%struct.comedi_device.0*, i32, i32)*, i32 (%struct.comedi_device.0*, i32, i32)** %38, align 8
  %40 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %41 = bitcast %struct.comedi_device* %40 to %struct.comedi_device.0*
  %42 = load %struct.labpc_private*, %struct.labpc_private** %5, align 8
  %43 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @CMD5_REG, align 4
  %46 = call i32 %39(%struct.comedi_device.0* %41, i32 %44, i32 %45)
  %47 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %48 = call i32 @labpc_serial_out(%struct.comedi_device* %47, i32 3, i32 8)
  %49 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @labpc_serial_out(%struct.comedi_device* %49, i32 %50, i32 8)
  %52 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %53 = call i32 @labpc_serial_in(%struct.comedi_device* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* @CMD5_EEPROMCS, align 4
  %55 = load i32, i32* @CMD5_WRTPRT, align 4
  %56 = or i32 %54, %55
  %57 = xor i32 %56, -1
  %58 = load %struct.labpc_private*, %struct.labpc_private** %5, align 8
  %59 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = call i32 @udelay(i32 1)
  %63 = load %struct.labpc_private*, %struct.labpc_private** %5, align 8
  %64 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %63, i32 0, i32 1
  %65 = load i32 (%struct.comedi_device.0*, i32, i32)*, i32 (%struct.comedi_device.0*, i32, i32)** %64, align 8
  %66 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %67 = bitcast %struct.comedi_device* %66 to %struct.comedi_device.0*
  %68 = load %struct.labpc_private*, %struct.labpc_private** %5, align 8
  %69 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @CMD5_REG, align 4
  %72 = call i32 %65(%struct.comedi_device.0* %67, i32 %70, i32 %71)
  %73 = load i32, i32* %6, align 4
  ret i32 %73
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
