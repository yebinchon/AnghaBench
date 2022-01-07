; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_common.c_labpc_eeprom_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_common.c_labpc_eeprom_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.labpc_private* }
%struct.labpc_private = type { i32, i32 (%struct.comedi_device.0*, i32, i32)* }
%struct.comedi_device.0 = type opaque

@CMD5_EEPROMCS = common dso_local global i32 0, align 4
@CMD5_REG = common dso_local global i32 0, align 4
@CMD5_WRTPRT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32, i32)* @labpc_eeprom_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @labpc_eeprom_write(%struct.comedi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.labpc_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 0
  %13 = load %struct.labpc_private*, %struct.labpc_private** %12, align 8
  store %struct.labpc_private* %13, %struct.labpc_private** %7, align 8
  store i32 6, i32* %8, align 4
  store i32 2, i32* %9, align 4
  store i32 8, i32* %10, align 4
  %14 = load i32, i32* @CMD5_EEPROMCS, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.labpc_private*, %struct.labpc_private** %7, align 8
  %17 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = call i32 @udelay(i32 1)
  %21 = load %struct.labpc_private*, %struct.labpc_private** %7, align 8
  %22 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %21, i32 0, i32 1
  %23 = load i32 (%struct.comedi_device.0*, i32, i32)*, i32 (%struct.comedi_device.0*, i32, i32)** %22, align 8
  %24 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %25 = bitcast %struct.comedi_device* %24 to %struct.comedi_device.0*
  %26 = load %struct.labpc_private*, %struct.labpc_private** %7, align 8
  %27 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @CMD5_REG, align 4
  %30 = call i32 %23(%struct.comedi_device.0* %25, i32 %28, i32 %29)
  %31 = load i32, i32* @CMD5_EEPROMCS, align 4
  %32 = load i32, i32* @CMD5_WRTPRT, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.labpc_private*, %struct.labpc_private** %7, align 8
  %35 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = call i32 @udelay(i32 1)
  %39 = load %struct.labpc_private*, %struct.labpc_private** %7, align 8
  %40 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %39, i32 0, i32 1
  %41 = load i32 (%struct.comedi_device.0*, i32, i32)*, i32 (%struct.comedi_device.0*, i32, i32)** %40, align 8
  %42 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %43 = bitcast %struct.comedi_device* %42 to %struct.comedi_device.0*
  %44 = load %struct.labpc_private*, %struct.labpc_private** %7, align 8
  %45 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @CMD5_REG, align 4
  %48 = call i32 %41(%struct.comedi_device.0* %43, i32 %46, i32 %47)
  %49 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %50 = call i32 @labpc_serial_out(%struct.comedi_device* %49, i32 6, i32 8)
  %51 = load i32, i32* @CMD5_EEPROMCS, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.labpc_private*, %struct.labpc_private** %7, align 8
  %54 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = call i32 @udelay(i32 1)
  %58 = load %struct.labpc_private*, %struct.labpc_private** %7, align 8
  %59 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %58, i32 0, i32 1
  %60 = load i32 (%struct.comedi_device.0*, i32, i32)*, i32 (%struct.comedi_device.0*, i32, i32)** %59, align 8
  %61 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %62 = bitcast %struct.comedi_device* %61 to %struct.comedi_device.0*
  %63 = load %struct.labpc_private*, %struct.labpc_private** %7, align 8
  %64 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @CMD5_REG, align 4
  %67 = call i32 %60(%struct.comedi_device.0* %62, i32 %65, i32 %66)
  %68 = load i32, i32* @CMD5_EEPROMCS, align 4
  %69 = load %struct.labpc_private*, %struct.labpc_private** %7, align 8
  %70 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  %73 = call i32 @udelay(i32 1)
  %74 = load %struct.labpc_private*, %struct.labpc_private** %7, align 8
  %75 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %74, i32 0, i32 1
  %76 = load i32 (%struct.comedi_device.0*, i32, i32)*, i32 (%struct.comedi_device.0*, i32, i32)** %75, align 8
  %77 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %78 = bitcast %struct.comedi_device* %77 to %struct.comedi_device.0*
  %79 = load %struct.labpc_private*, %struct.labpc_private** %7, align 8
  %80 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @CMD5_REG, align 4
  %83 = call i32 %76(%struct.comedi_device.0* %78, i32 %81, i32 %82)
  %84 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %85 = call i32 @labpc_serial_out(%struct.comedi_device* %84, i32 2, i32 8)
  %86 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @labpc_serial_out(%struct.comedi_device* %86, i32 %87, i32 8)
  %89 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @labpc_serial_out(%struct.comedi_device* %89, i32 %90, i32 8)
  %92 = load i32, i32* @CMD5_EEPROMCS, align 4
  %93 = xor i32 %92, -1
  %94 = load %struct.labpc_private*, %struct.labpc_private** %7, align 8
  %95 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = and i32 %96, %93
  store i32 %97, i32* %95, align 8
  %98 = call i32 @udelay(i32 1)
  %99 = load %struct.labpc_private*, %struct.labpc_private** %7, align 8
  %100 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %99, i32 0, i32 1
  %101 = load i32 (%struct.comedi_device.0*, i32, i32)*, i32 (%struct.comedi_device.0*, i32, i32)** %100, align 8
  %102 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %103 = bitcast %struct.comedi_device* %102 to %struct.comedi_device.0*
  %104 = load %struct.labpc_private*, %struct.labpc_private** %7, align 8
  %105 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @CMD5_REG, align 4
  %108 = call i32 %101(%struct.comedi_device.0* %103, i32 %106, i32 %107)
  %109 = load i32, i32* @CMD5_EEPROMCS, align 4
  %110 = load i32, i32* @CMD5_WRTPRT, align 4
  %111 = or i32 %109, %110
  %112 = xor i32 %111, -1
  %113 = load %struct.labpc_private*, %struct.labpc_private** %7, align 8
  %114 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = and i32 %115, %112
  store i32 %116, i32* %114, align 8
  %117 = call i32 @udelay(i32 1)
  %118 = load %struct.labpc_private*, %struct.labpc_private** %7, align 8
  %119 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %118, i32 0, i32 1
  %120 = load i32 (%struct.comedi_device.0*, i32, i32)*, i32 (%struct.comedi_device.0*, i32, i32)** %119, align 8
  %121 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %122 = bitcast %struct.comedi_device* %121 to %struct.comedi_device.0*
  %123 = load %struct.labpc_private*, %struct.labpc_private** %7, align 8
  %124 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @CMD5_REG, align 4
  %127 = call i32 %120(%struct.comedi_device.0* %122, i32 %125, i32 %126)
  ret void
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @labpc_serial_out(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
