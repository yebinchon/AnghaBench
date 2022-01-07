; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_buf.c_comedi_buf_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_buf.c_comedi_buf_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @comedi_buf_reset(%struct.comedi_subdevice* %0) #0 {
  %2 = alloca %struct.comedi_subdevice*, align 8
  %3 = alloca %struct.comedi_async*, align 8
  store %struct.comedi_subdevice* %0, %struct.comedi_subdevice** %2, align 8
  %4 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %2, align 8
  %5 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %4, i32 0, i32 0
  %6 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  store %struct.comedi_async* %6, %struct.comedi_async** %3, align 8
  %7 = load %struct.comedi_async*, %struct.comedi_async** %3, align 8
  %8 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %7, i32 0, i32 12
  store i64 0, i64* %8, align 8
  %9 = load %struct.comedi_async*, %struct.comedi_async** %3, align 8
  %10 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %9, i32 0, i32 11
  store i64 0, i64* %10, align 8
  %11 = load %struct.comedi_async*, %struct.comedi_async** %3, align 8
  %12 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %11, i32 0, i32 10
  store i64 0, i64* %12, align 8
  %13 = load %struct.comedi_async*, %struct.comedi_async** %3, align 8
  %14 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %13, i32 0, i32 9
  store i64 0, i64* %14, align 8
  %15 = load %struct.comedi_async*, %struct.comedi_async** %3, align 8
  %16 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %15, i32 0, i32 8
  store i64 0, i64* %16, align 8
  %17 = load %struct.comedi_async*, %struct.comedi_async** %3, align 8
  %18 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %17, i32 0, i32 7
  store i64 0, i64* %18, align 8
  %19 = load %struct.comedi_async*, %struct.comedi_async** %3, align 8
  %20 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %19, i32 0, i32 6
  store i64 0, i64* %20, align 8
  %21 = load %struct.comedi_async*, %struct.comedi_async** %3, align 8
  %22 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %21, i32 0, i32 5
  store i64 0, i64* %22, align 8
  %23 = load %struct.comedi_async*, %struct.comedi_async** %3, align 8
  %24 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %23, i32 0, i32 4
  store i64 0, i64* %24, align 8
  %25 = load %struct.comedi_async*, %struct.comedi_async** %3, align 8
  %26 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = load %struct.comedi_async*, %struct.comedi_async** %3, align 8
  %28 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.comedi_async*, %struct.comedi_async** %3, align 8
  %30 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load %struct.comedi_async*, %struct.comedi_async** %3, align 8
  %32 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
