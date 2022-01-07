; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_mite.c_mite_sync_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_mite.c_mite_sync_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mite_channel = type { i64 }
%struct.comedi_subdevice = type { i32 }

@COMEDI_INPUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mite_sync_dma(%struct.mite_channel* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.mite_channel*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  store %struct.mite_channel* %0, %struct.mite_channel** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %5 = load %struct.mite_channel*, %struct.mite_channel** %3, align 8
  %6 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @COMEDI_INPUT, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.mite_channel*, %struct.mite_channel** %3, align 8
  %12 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %13 = call i32 @mite_sync_input_dma(%struct.mite_channel* %11, %struct.comedi_subdevice* %12)
  br label %18

14:                                               ; preds = %2
  %15 = load %struct.mite_channel*, %struct.mite_channel** %3, align 8
  %16 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %17 = call i32 @mite_sync_output_dma(%struct.mite_channel* %15, %struct.comedi_subdevice* %16)
  br label %18

18:                                               ; preds = %14, %10
  ret void
}

declare dso_local i32 @mite_sync_input_dma(%struct.mite_channel*, %struct.comedi_subdevice*) #1

declare dso_local i32 @mite_sync_output_dma(%struct.mite_channel*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
