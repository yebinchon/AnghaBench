; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_io.c_esas2r_ioreq_aborted.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_io.c_esas2r_ioreq_aborted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32 }
%struct.esas2r_request = type { i64, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"rq:%p\00", align 1
@RQ_MAX_TIMEOUT = common dso_local global i64 0, align 8
@RS_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esas2r_ioreq_aborted(%struct.esas2r_adapter* %0, %struct.esas2r_request* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.esas2r_adapter*, align 8
  %6 = alloca %struct.esas2r_request*, align 8
  %7 = alloca i32, align 4
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %5, align 8
  store %struct.esas2r_request* %1, %struct.esas2r_request** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = call i32 (...) @esas2r_trace_enter()
  %9 = load %struct.esas2r_request*, %struct.esas2r_request** %6, align 8
  %10 = call i32 @esas2r_trace(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.esas2r_request* %9)
  %11 = load %struct.esas2r_request*, %struct.esas2r_request** %6, align 8
  %12 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %11, i32 0, i32 2
  %13 = call i32 @list_del_init(i32* %12)
  %14 = load %struct.esas2r_request*, %struct.esas2r_request** %6, align 8
  %15 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @RQ_MAX_TIMEOUT, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load i32, i32* @RS_BUSY, align 4
  %21 = load %struct.esas2r_request*, %struct.esas2r_request** %6, align 8
  %22 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = call i32 (...) @esas2r_trace_exit()
  store i32 1, i32* %4, align 4
  br label %29

24:                                               ; preds = %3
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.esas2r_request*, %struct.esas2r_request** %6, align 8
  %27 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = call i32 (...) @esas2r_trace_exit()
  store i32 1, i32* %4, align 4
  br label %29

29:                                               ; preds = %24, %19
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @esas2r_trace_enter(...) #1

declare dso_local i32 @esas2r_trace(i8*, %struct.esas2r_request*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @esas2r_trace_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
