; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_buf.c_comedi_buf_write_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_buf.c_comedi_buf_write_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @comedi_buf_write_alloc(%struct.comedi_subdevice* %0, i32 %1) #0 {
  %3 = alloca %struct.comedi_subdevice*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_async*, align 8
  %6 = alloca i32, align 4
  store %struct.comedi_subdevice* %0, %struct.comedi_subdevice** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %8 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %7, i32 0, i32 0
  %9 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  store %struct.comedi_async* %9, %struct.comedi_async** %5, align 8
  %10 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %11 = call i32 @comedi_buf_write_n_unalloc(%struct.comedi_subdevice* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ugt i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %15, %2
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %20 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = call i32 (...) @smp_mb()
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i32 @comedi_buf_write_n_unalloc(%struct.comedi_subdevice*) #1

declare dso_local i32 @smp_mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
