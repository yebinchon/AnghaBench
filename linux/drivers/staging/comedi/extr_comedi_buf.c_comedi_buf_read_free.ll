; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_buf.c_comedi_buf_read_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_buf.c_comedi_buf_read_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @comedi_buf_read_free(%struct.comedi_subdevice* %0, i32 %1) #0 {
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
  %10 = call i32 (...) @smp_mb()
  %11 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %12 = call i32 @comedi_buf_read_n_allocated(%struct.comedi_async* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ugt i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %16, %2
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %21 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %26 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %30 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %33 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = urem i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @comedi_buf_read_n_allocated(%struct.comedi_async*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
