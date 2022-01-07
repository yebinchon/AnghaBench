; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c_qthread_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c_qthread_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anybuss_host = type { i32, i32, %struct.kfifo* }
%struct.kfifo = type { i32 }

@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @qthread_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qthread_fn(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.anybuss_host*, align 8
  %4 = alloca %struct.kfifo*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.anybuss_host*
  store %struct.anybuss_host* %8, %struct.anybuss_host** %3, align 8
  %9 = load %struct.anybuss_host*, %struct.anybuss_host** %3, align 8
  %10 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %9, i32 0, i32 2
  %11 = load %struct.kfifo*, %struct.kfifo** %10, align 8
  store %struct.kfifo* %11, %struct.kfifo** %4, align 8
  %12 = load %struct.anybuss_host*, %struct.anybuss_host** %3, align 8
  %13 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %12, i32 0, i32 2
  %14 = load %struct.kfifo*, %struct.kfifo** %13, align 8
  %15 = call i64 @ARRAY_SIZE(%struct.kfifo* %14)
  store i64 %15, i64* %5, align 8
  br label %16

16:                                               ; preds = %44, %1
  %17 = call i64 (...) @kthread_should_stop()
  %18 = icmp ne i64 %17, 0
  %19 = xor i1 %18, true
  br i1 %19, label %20, label %49

20:                                               ; preds = %16
  %21 = load %struct.anybuss_host*, %struct.anybuss_host** %3, align 8
  %22 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %21, i32 0, i32 0
  %23 = call i32 @atomic_read(i32* %22)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.anybuss_host*, %struct.anybuss_host** %3, align 8
  %25 = call i32 @process_qs(%struct.anybuss_host* %24)
  %26 = load %struct.anybuss_host*, %struct.anybuss_host** %3, align 8
  %27 = call i32 @process_softint(%struct.anybuss_host* %26)
  %28 = load %struct.anybuss_host*, %struct.anybuss_host** %3, align 8
  %29 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.anybuss_host*, %struct.anybuss_host** %3, align 8
  %32 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %31, i32 0, i32 0
  %33 = call i32 @atomic_read(i32* %32)
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %44, label %36

36:                                               ; preds = %20
  %37 = load %struct.kfifo*, %struct.kfifo** %4, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i64 @qs_have_work(%struct.kfifo* %37, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = call i64 (...) @kthread_should_stop()
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %41, %36, %20
  %45 = phi i1 [ true, %36 ], [ true, %20 ], [ %43, %41 ]
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* @HZ, align 4
  %48 = call i32 @wait_event_timeout(i32 %30, i32 %46, i32 %47)
  br label %16

49:                                               ; preds = %16
  ret i32 0
}

declare dso_local i64 @ARRAY_SIZE(%struct.kfifo*) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @process_qs(%struct.anybuss_host*) #1

declare dso_local i32 @process_softint(%struct.anybuss_host*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i64 @qs_have_work(%struct.kfifo*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
