; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_common.c_labpc_ao_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_common.c_labpc_ao_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.labpc_private* }
%struct.labpc_private = type { i32 (%struct.comedi_device.0*, i32, i32)* }
%struct.comedi_device.0 = type opaque
%struct.comedi_subdevice = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32)* @labpc_ao_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @labpc_ao_write(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.labpc_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 0
  %12 = load %struct.labpc_private*, %struct.labpc_private** %11, align 8
  store %struct.labpc_private* %12, %struct.labpc_private** %9, align 8
  %13 = load %struct.labpc_private*, %struct.labpc_private** %9, align 8
  %14 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %13, i32 0, i32 0
  %15 = load i32 (%struct.comedi_device.0*, i32, i32)*, i32 (%struct.comedi_device.0*, i32, i32)** %14, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %17 = bitcast %struct.comedi_device* %16 to %struct.comedi_device.0*
  %18 = load i32, i32* %8, align 4
  %19 = and i32 %18, 255
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @DAC_LSB_REG(i32 %20)
  %22 = call i32 %15(%struct.comedi_device.0* %17, i32 %19, i32 %21)
  %23 = load %struct.labpc_private*, %struct.labpc_private** %9, align 8
  %24 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %23, i32 0, i32 0
  %25 = load i32 (%struct.comedi_device.0*, i32, i32)*, i32 (%struct.comedi_device.0*, i32, i32)** %24, align 8
  %26 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %27 = bitcast %struct.comedi_device* %26 to %struct.comedi_device.0*
  %28 = load i32, i32* %8, align 4
  %29 = lshr i32 %28, 8
  %30 = and i32 %29, 255
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @DAC_MSB_REG(i32 %31)
  %33 = call i32 %25(%struct.comedi_device.0* %27, i32 %30, i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %36 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %34, i32* %40, align 4
  ret void
}

declare dso_local i32 @DAC_LSB_REG(i32) #1

declare dso_local i32 @DAC_MSB_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
