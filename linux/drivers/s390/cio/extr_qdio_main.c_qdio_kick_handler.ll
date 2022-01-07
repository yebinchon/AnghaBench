; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_qdio_kick_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_qdio_kick_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_q = type { i32, i64, %struct.TYPE_2__*, i32, i32 (i32, i64, i32, i32, i32, i32)*, i64 }
%struct.TYPE_2__ = type { i64, i32, i32 }

@QDIO_IRQ_STATE_ACTIVE = common dso_local global i64 0, align 8
@inbound_handler = common dso_local global i32 0, align 4
@DBF_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"kih s:%02x c:%02x\00", align 1
@outbound_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"koh: s:%02x c:%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qdio_q*, i32)* @qdio_kick_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qdio_kick_handler(%struct.qdio_q* %0, i32 %1) #0 {
  %3 = alloca %struct.qdio_q*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qdio_q* %0, %struct.qdio_q** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %7 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %10 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @QDIO_IRQ_STATE_ACTIVE, align 8
  %15 = icmp ne i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %77

20:                                               ; preds = %2
  %21 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %22 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  %26 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %27 = load i32, i32* @inbound_handler, align 4
  %28 = call i32 @qperf_inc(%struct.qdio_q* %26, i32 %27)
  %29 = load i32, i32* @DBF_INFO, align 4
  %30 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %31 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @DBF_DEV_EVENT(i32 %29, %struct.TYPE_2__* %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  br label %47

36:                                               ; preds = %20
  %37 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %38 = load i32, i32* @outbound_handler, align 4
  %39 = call i32 @qperf_inc(%struct.qdio_q* %37, i32 %38)
  %40 = load i32, i32* @DBF_INFO, align 4
  %41 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %42 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @DBF_DEV_EVENT(i32 %40, %struct.TYPE_2__* %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %36, %25
  %48 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %49 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %48, i32 0, i32 4
  %50 = load i32 (i32, i64, i32, i32, i32, i32)*, i32 (i32, i64, i32, i32, i32, i32)** %49, align 8
  %51 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %52 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %57 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %60 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %65 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %64, i32 0, i32 2
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 %50(i32 %55, i64 %58, i32 %61, i32 %62, i32 %63, i32 %68)
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @add_buf(i32 %70, i32 %71)
  %73 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %74 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %76 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %75, i32 0, i32 1
  store i64 0, i64* %76, align 8
  br label %77

77:                                               ; preds = %47, %19
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @qperf_inc(%struct.qdio_q*, i32) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.TYPE_2__*, i8*, i32, i32) #1

declare dso_local i32 @add_buf(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
