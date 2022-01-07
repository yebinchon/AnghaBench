; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_common.c_labpc_read_adc_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_common.c_labpc_read_adc_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.labpc_private* }
%struct.labpc_private = type { i32 (%struct.comedi_device.0*, i32)* }
%struct.comedi_device.0 = type opaque

@ADC_FIFO_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @labpc_read_adc_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @labpc_read_adc_fifo(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.labpc_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %6 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 0
  %8 = load %struct.labpc_private*, %struct.labpc_private** %7, align 8
  store %struct.labpc_private* %8, %struct.labpc_private** %3, align 8
  %9 = load %struct.labpc_private*, %struct.labpc_private** %3, align 8
  %10 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %9, i32 0, i32 0
  %11 = load i32 (%struct.comedi_device.0*, i32)*, i32 (%struct.comedi_device.0*, i32)** %10, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %13 = bitcast %struct.comedi_device* %12 to %struct.comedi_device.0*
  %14 = load i32, i32* @ADC_FIFO_REG, align 4
  %15 = call i32 %11(%struct.comedi_device.0* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.labpc_private*, %struct.labpc_private** %3, align 8
  %17 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %16, i32 0, i32 0
  %18 = load i32 (%struct.comedi_device.0*, i32)*, i32 (%struct.comedi_device.0*, i32)** %17, align 8
  %19 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %20 = bitcast %struct.comedi_device* %19 to %struct.comedi_device.0*
  %21 = load i32, i32* @ADC_FIFO_REG, align 4
  %22 = call i32 %18(%struct.comedi_device.0* %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = shl i32 %23, 8
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %24, %25
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
