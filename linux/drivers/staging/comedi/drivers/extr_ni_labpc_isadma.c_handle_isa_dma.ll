; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_isadma.c_handle_isa_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_isadma.c_handle_isa_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.labpc_private* }
%struct.labpc_private = type { i32 (%struct.comedi_device.0*, i32, i32)*, %struct.TYPE_2__* }
%struct.comedi_device.0 = type opaque
%struct.TYPE_2__ = type { %struct.comedi_isadma_desc* }
%struct.comedi_isadma_desc = type { i64 }

@DMATC_CLEAR_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @handle_isa_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_isa_dma(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.labpc_private*, align 8
  %4 = alloca %struct.comedi_isadma_desc*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %5 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %6 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 0
  %7 = load %struct.labpc_private*, %struct.labpc_private** %6, align 8
  store %struct.labpc_private* %7, %struct.labpc_private** %3, align 8
  %8 = load %struct.labpc_private*, %struct.labpc_private** %3, align 8
  %9 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %11, align 8
  %13 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %12, i64 0
  store %struct.comedi_isadma_desc* %13, %struct.comedi_isadma_desc** %4, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %15 = call i32 @labpc_drain_dma(%struct.comedi_device* %14)
  %16 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %4, align 8
  %17 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %4, align 8
  %22 = call i32 @comedi_isadma_program(%struct.comedi_isadma_desc* %21)
  br label %23

23:                                               ; preds = %20, %1
  %24 = load %struct.labpc_private*, %struct.labpc_private** %3, align 8
  %25 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %24, i32 0, i32 0
  %26 = load i32 (%struct.comedi_device.0*, i32, i32)*, i32 (%struct.comedi_device.0*, i32, i32)** %25, align 8
  %27 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %28 = bitcast %struct.comedi_device* %27 to %struct.comedi_device.0*
  %29 = load i32, i32* @DMATC_CLEAR_REG, align 4
  %30 = call i32 %26(%struct.comedi_device.0* %28, i32 1, i32 %29)
  ret void
}

declare dso_local i32 @labpc_drain_dma(%struct.comedi_device*) #1

declare dso_local i32 @comedi_isadma_program(%struct.comedi_isadma_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
