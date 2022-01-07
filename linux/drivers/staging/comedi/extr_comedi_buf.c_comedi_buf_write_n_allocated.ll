; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_buf.c_comedi_buf_write_n_allocated.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_buf.c_comedi_buf_write_n_allocated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @comedi_buf_write_n_allocated(%struct.comedi_subdevice* %0) #0 {
  %2 = alloca %struct.comedi_subdevice*, align 8
  %3 = alloca %struct.comedi_async*, align 8
  store %struct.comedi_subdevice* %0, %struct.comedi_subdevice** %2, align 8
  %4 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %2, align 8
  %5 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %4, i32 0, i32 0
  %6 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  store %struct.comedi_async* %6, %struct.comedi_async** %3, align 8
  %7 = load %struct.comedi_async*, %struct.comedi_async** %3, align 8
  %8 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.comedi_async*, %struct.comedi_async** %3, align 8
  %11 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = sub i32 %9, %12
  ret i32 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
