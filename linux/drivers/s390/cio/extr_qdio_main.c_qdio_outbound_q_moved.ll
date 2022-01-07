; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_qdio_outbound_q_moved.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_qdio_outbound_q_moved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_q = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@DBF_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out moved:%1d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qdio_q*, i32)* @qdio_outbound_q_moved to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qdio_outbound_q_moved(%struct.qdio_q* %0, i32 %1) #0 {
  %3 = alloca %struct.qdio_q*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qdio_q* %0, %struct.qdio_q** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @get_outbound_buffer_frontier(%struct.qdio_q* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %2
  %12 = load i32, i32* @DBF_INFO, align 4
  %13 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %14 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %17 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @DBF_DEV_EVENT(i32 %12, i32 %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %21 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %11
  %27 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @qdio_handle_aobs(%struct.qdio_q* %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %11
  br label %32

32:                                               ; preds = %31, %2
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @get_outbound_buffer_frontier(%struct.qdio_q*, i32) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, i32, i8*, i32) #1

declare dso_local i32 @qdio_handle_aobs(%struct.qdio_q*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
