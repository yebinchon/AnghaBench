; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_isadma.c_labpc_setup_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_isadma.c_labpc_setup_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.labpc_private* }
%struct.labpc_private = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.comedi_isadma_desc* }
%struct.comedi_isadma_desc = type { i32, i32 }
%struct.comedi_subdevice = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i64 }

@TRIG_COUNT = common dso_local global i64 0, align 8
@CMD3_DMAEN = common dso_local global i32 0, align 4
@CMD3_DMATCINTEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @labpc_setup_dma(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.labpc_private*, align 8
  %6 = alloca %struct.comedi_isadma_desc*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %9 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 0
  %11 = load %struct.labpc_private*, %struct.labpc_private** %10, align 8
  store %struct.labpc_private* %11, %struct.labpc_private** %5, align 8
  %12 = load %struct.labpc_private*, %struct.labpc_private** %5, align 8
  %13 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %15, align 8
  %17 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %16, i64 0
  store %struct.comedi_isadma_desc* %17, %struct.comedi_isadma_desc** %6, align 8
  %18 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %19 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store %struct.comedi_cmd* %21, %struct.comedi_cmd** %7, align 8
  %22 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %23 = call i32 @comedi_bytes_per_sample(%struct.comedi_subdevice* %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %25 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %26 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %6, align 8
  %27 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @labpc_suggest_transfer_size(%struct.comedi_device* %24, %struct.comedi_subdevice* %25, i32 %28)
  %30 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %6, align 8
  %31 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %33 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @TRIG_COUNT, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %2
  %38 = load %struct.labpc_private*, %struct.labpc_private** %5, align 8
  %39 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = mul i32 %40, %41
  %43 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %6, align 8
  %44 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ult i32 %42, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %37
  %48 = load %struct.labpc_private*, %struct.labpc_private** %5, align 8
  %49 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = mul i32 %50, %51
  %53 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %6, align 8
  %54 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %47, %37, %2
  %56 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %6, align 8
  %57 = call i32 @comedi_isadma_program(%struct.comedi_isadma_desc* %56)
  %58 = load i32, i32* @CMD3_DMAEN, align 4
  %59 = load i32, i32* @CMD3_DMATCINTEN, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.labpc_private*, %struct.labpc_private** %5, align 8
  %62 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  ret void
}

declare dso_local i32 @comedi_bytes_per_sample(%struct.comedi_subdevice*) #1

declare dso_local i32 @labpc_suggest_transfer_size(%struct.comedi_device*, %struct.comedi_subdevice*, i32) #1

declare dso_local i32 @comedi_isadma_program(%struct.comedi_isadma_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
