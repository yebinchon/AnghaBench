; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_initio_state_7.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_initio_state_7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.initio_host = type { i32, i64 }

@TUL_SFifoCnt = common dso_local global i64 0, align 8
@TUL_SFifo = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @initio_state_7(%struct.initio_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.initio_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.initio_host* %0, %struct.initio_host** %3, align 8
  %6 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %7 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @TUL_SFifoCnt, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @inb(i64 %10)
  %12 = and i32 %11, 31
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %27, %15
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %22 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TUL_SFifo, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @inb(i64 %25)
  br label %27

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %16

30:                                               ; preds = %16
  br label %31

31:                                               ; preds = %30, %1
  %32 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %33 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %38 [
    i32 129, label %35
    i32 128, label %35
  ]

35:                                               ; preds = %31, %31
  %36 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %37 = call i32 @initio_bad_seq(%struct.initio_host* %36)
  store i32 %37, i32* %2, align 4
  br label %39

38:                                               ; preds = %31
  store i32 6, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %35
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @initio_bad_seq(%struct.initio_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
