; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_get_inbound_buffer_frontier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_get_inbound_buffer_frontier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_q = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@QDIO_MAX_BUFFERS_MASK = common dso_local global i32 0, align 4
@inbound_queue_full = common dso_local global i32 0, align 4
@DBF_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"in nop:%1d %#02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qdio_q*, i32)* @get_inbound_buffer_frontier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_inbound_buffer_frontier(%struct.qdio_q* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qdio_q*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.qdio_q* %0, %struct.qdio_q** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8 0, i8* %6, align 1
  %8 = call i32 (...) @get_tod_clock_fast()
  %9 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %10 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %9, i32 0, i32 4
  store i32 %8, i32* %10, align 8
  %11 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %12 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %11, i32 0, i32 3
  %13 = call i32 @atomic_read(i32* %12)
  %14 = load i32, i32* @QDIO_MAX_BUFFERS_MASK, align 4
  %15 = call i32 @min(i32 %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %109

19:                                               ; preds = %2
  %20 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @get_buf_states(%struct.qdio_q* %20, i32 %21, i8* %6, i32 %22, i32 1, i32 0)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %109

27:                                               ; preds = %19
  %28 = load i8, i8* %6, align 1
  %29 = zext i8 %28 to i32
  switch i32 %29, label %107 [
    i32 128, label %30
    i32 130, label %57
    i32 132, label %84
    i32 129, label %84
    i32 131, label %84
  ]

30:                                               ; preds = %27
  %31 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @inbound_primed(%struct.qdio_q* %31, i32 %32, i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %37 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %36, i32 0, i32 3
  %38 = call i32 @atomic_sub_return(i32 %35, i32* %37)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %30
  %41 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %42 = load i32, i32* @inbound_queue_full, align 4
  %43 = call i32 @qperf_inc(%struct.qdio_q* %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %30
  %45 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %46 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @account_sbals(%struct.qdio_q* %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %44
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %3, align 4
  br label %109

57:                                               ; preds = %27
  %58 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @process_buffer_error(%struct.qdio_q* %58, i32 %59, i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %64 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %63, i32 0, i32 3
  %65 = call i32 @atomic_sub_return(i32 %62, i32* %64)
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %57
  %68 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %69 = load i32, i32* @inbound_queue_full, align 4
  %70 = call i32 @qperf_inc(%struct.qdio_q* %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %57
  %72 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %73 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @account_sbals_error(%struct.qdio_q* %79, i32 %80)
  br label %82

82:                                               ; preds = %78, %71
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %3, align 4
  br label %109

84:                                               ; preds = %27, %27, %27
  %85 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %86 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %85, i32 0, i32 1
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %84
  %92 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %93 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 8
  br label %97

97:                                               ; preds = %91, %84
  %98 = load i32, i32* @DBF_INFO, align 4
  %99 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %100 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %99, i32 0, i32 1
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %103 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @DBF_DEV_EVENT(i32 %98, %struct.TYPE_4__* %101, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %104, i32 %105)
  store i32 0, i32* %3, align 4
  br label %109

107:                                              ; preds = %27
  %108 = call i32 @WARN_ON_ONCE(i32 1)
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %107, %97, %82, %55, %26, %18
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @get_tod_clock_fast(...) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @get_buf_states(%struct.qdio_q*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @inbound_primed(%struct.qdio_q*, i32, i32) #1

declare dso_local i32 @atomic_sub_return(i32, i32*) #1

declare dso_local i32 @qperf_inc(%struct.qdio_q*, i32) #1

declare dso_local i32 @account_sbals(%struct.qdio_q*, i32) #1

declare dso_local i32 @process_buffer_error(%struct.qdio_q*, i32, i32) #1

declare dso_local i32 @account_sbals_error(%struct.qdio_q*, i32) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.TYPE_4__*, i8*, i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
