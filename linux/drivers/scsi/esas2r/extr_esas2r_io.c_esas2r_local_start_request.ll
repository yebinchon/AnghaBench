; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_io.c_esas2r_local_start_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_io.c_esas2r_local_start_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32, i32 }
%struct.esas2r_request = type { i32, %struct.TYPE_5__, %struct.esas2r_request*, %struct.TYPE_4__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { %struct.esas2r_request* }

@.str = private unnamed_addr constant [6 x i8] c"rq=%p\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"rq->vrq:%p\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"rq->vrq_md->phys_addr:%x\00", align 1
@VDA_FUNC_FLASH = common dso_local global i64 0, align 8
@VDA_FLASH_COMMIT = common dso_local global i64 0, align 8
@AF_FLASHING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esas2r_local_start_request(%struct.esas2r_adapter* %0, %struct.esas2r_request* %1) #0 {
  %3 = alloca %struct.esas2r_adapter*, align 8
  %4 = alloca %struct.esas2r_request*, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %3, align 8
  store %struct.esas2r_request* %1, %struct.esas2r_request** %4, align 8
  %5 = call i32 (...) @esas2r_trace_enter()
  %6 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %7 = call i32 @esas2r_trace(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.esas2r_request* %6)
  %8 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %9 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %8, i32 0, i32 2
  %10 = load %struct.esas2r_request*, %struct.esas2r_request** %9, align 8
  %11 = call i32 @esas2r_trace(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %struct.esas2r_request* %10)
  %12 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %13 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %12, i32 0, i32 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.esas2r_request*, %struct.esas2r_request** %15, align 8
  %17 = call i32 @esas2r_trace(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), %struct.esas2r_request* %16)
  %18 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %19 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %18, i32 0, i32 2
  %20 = load %struct.esas2r_request*, %struct.esas2r_request** %19, align 8
  %21 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @VDA_FUNC_FLASH, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %2
  %27 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %28 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %27, i32 0, i32 2
  %29 = load %struct.esas2r_request*, %struct.esas2r_request** %28, align 8
  %30 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @VDA_FLASH_COMMIT, align 8
  %34 = icmp eq i64 %32, %33
  br label %35

35:                                               ; preds = %26, %2
  %36 = phi i1 [ false, %2 ], [ %34, %26 ]
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i32, i32* @AF_FLASHING, align 4
  %42 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %43 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %42, i32 0, i32 1
  %44 = call i32 @set_bit(i32 %41, i32* %43)
  br label %45

45:                                               ; preds = %40, %35
  %46 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %47 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %46, i32 0, i32 0
  %48 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %49 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %48, i32 0, i32 0
  %50 = call i32 @list_add_tail(i32* %47, i32* %49)
  %51 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %52 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %53 = call i32 @esas2r_start_vda_request(%struct.esas2r_adapter* %51, %struct.esas2r_request* %52)
  %54 = call i32 (...) @esas2r_trace_exit()
  ret void
}

declare dso_local i32 @esas2r_trace_enter(...) #1

declare dso_local i32 @esas2r_trace(i8*, %struct.esas2r_request*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @esas2r_start_vda_request(%struct.esas2r_adapter*, %struct.esas2r_request*) #1

declare dso_local i32 @esas2r_trace_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
