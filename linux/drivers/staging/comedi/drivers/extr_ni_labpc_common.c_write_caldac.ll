; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_common.c_write_caldac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_common.c_write_caldac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.labpc_private* }
%struct.labpc_private = type { i32, i32 (%struct.comedi_device.0*, i32, i32)* }
%struct.comedi_device.0 = type opaque

@CMD5_CALDACLD = common dso_local global i32 0, align 4
@CMD5_EEPROMCS = common dso_local global i32 0, align 4
@CMD5_WRTPRT = common dso_local global i32 0, align 4
@CMD5_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32, i32)* @write_caldac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_caldac(%struct.comedi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.labpc_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 0
  %10 = load %struct.labpc_private*, %struct.labpc_private** %9, align 8
  store %struct.labpc_private* %10, %struct.labpc_private** %7, align 8
  %11 = load i32, i32* @CMD5_CALDACLD, align 4
  %12 = load i32, i32* @CMD5_EEPROMCS, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @CMD5_WRTPRT, align 4
  %15 = or i32 %13, %14
  %16 = xor i32 %15, -1
  %17 = load %struct.labpc_private*, %struct.labpc_private** %7, align 8
  %18 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = call i32 @udelay(i32 1)
  %22 = load %struct.labpc_private*, %struct.labpc_private** %7, align 8
  %23 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %22, i32 0, i32 1
  %24 = load i32 (%struct.comedi_device.0*, i32, i32)*, i32 (%struct.comedi_device.0*, i32, i32)** %23, align 8
  %25 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %26 = bitcast %struct.comedi_device* %25 to %struct.comedi_device.0*
  %27 = load %struct.labpc_private*, %struct.labpc_private** %7, align 8
  %28 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @CMD5_REG, align 4
  %31 = call i32 %24(%struct.comedi_device.0* %26, i32 %29, i32 %30)
  %32 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @labpc_serial_out(%struct.comedi_device* %32, i32 %33, i32 4)
  %35 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @labpc_serial_out(%struct.comedi_device* %35, i32 %36, i32 8)
  %38 = load i32, i32* @CMD5_CALDACLD, align 4
  %39 = load %struct.labpc_private*, %struct.labpc_private** %7, align 8
  %40 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = call i32 @udelay(i32 1)
  %44 = load %struct.labpc_private*, %struct.labpc_private** %7, align 8
  %45 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %44, i32 0, i32 1
  %46 = load i32 (%struct.comedi_device.0*, i32, i32)*, i32 (%struct.comedi_device.0*, i32, i32)** %45, align 8
  %47 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %48 = bitcast %struct.comedi_device* %47 to %struct.comedi_device.0*
  %49 = load %struct.labpc_private*, %struct.labpc_private** %7, align 8
  %50 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @CMD5_REG, align 4
  %53 = call i32 %46(%struct.comedi_device.0* %48, i32 %51, i32 %52)
  %54 = load i32, i32* @CMD5_CALDACLD, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.labpc_private*, %struct.labpc_private** %7, align 8
  %57 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = call i32 @udelay(i32 1)
  %61 = load %struct.labpc_private*, %struct.labpc_private** %7, align 8
  %62 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %61, i32 0, i32 1
  %63 = load i32 (%struct.comedi_device.0*, i32, i32)*, i32 (%struct.comedi_device.0*, i32, i32)** %62, align 8
  %64 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %65 = bitcast %struct.comedi_device* %64 to %struct.comedi_device.0*
  %66 = load %struct.labpc_private*, %struct.labpc_private** %7, align 8
  %67 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @CMD5_REG, align 4
  %70 = call i32 %63(%struct.comedi_device.0* %65, i32 %68, i32 %69)
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
