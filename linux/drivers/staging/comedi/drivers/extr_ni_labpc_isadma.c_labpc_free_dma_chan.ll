; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_isadma.c_labpc_free_dma_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_isadma.c_labpc_free_dma_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.labpc_private* }
%struct.labpc_private = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @labpc_free_dma_chan(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.labpc_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %4 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 0
  %6 = load %struct.labpc_private*, %struct.labpc_private** %5, align 8
  store %struct.labpc_private* %6, %struct.labpc_private** %3, align 8
  %7 = load %struct.labpc_private*, %struct.labpc_private** %3, align 8
  %8 = icmp ne %struct.labpc_private* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.labpc_private*, %struct.labpc_private** %3, align 8
  %11 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @comedi_isadma_free(i32 %12)
  br label %14

14:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @comedi_isadma_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
