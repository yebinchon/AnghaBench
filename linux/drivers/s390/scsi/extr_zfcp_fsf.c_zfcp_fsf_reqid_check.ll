; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_reqid_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_reqid_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_qdio = type { %struct.qdio_buffer**, %struct.zfcp_adapter* }
%struct.qdio_buffer = type { %struct.qdio_buffer_element* }
%struct.qdio_buffer_element = type { i32, i64 }
%struct.zfcp_adapter = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.zfcp_fsf_req = type { i32 }

@QDIO_MAX_ELEMENTS_PER_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"error: unknown req_id (%lx) on adapter %s.\0A\00", align 1
@SBAL_EFLAGS_LAST_ENTRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfcp_fsf_reqid_check(%struct.zfcp_qdio* %0, i32 %1) #0 {
  %3 = alloca %struct.zfcp_qdio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.zfcp_adapter*, align 8
  %6 = alloca %struct.qdio_buffer*, align 8
  %7 = alloca %struct.qdio_buffer_element*, align 8
  %8 = alloca %struct.zfcp_fsf_req*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.zfcp_qdio* %0, %struct.zfcp_qdio** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %12 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %11, i32 0, i32 1
  %13 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %12, align 8
  store %struct.zfcp_adapter* %13, %struct.zfcp_adapter** %5, align 8
  %14 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %15 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %14, i32 0, i32 0
  %16 = load %struct.qdio_buffer**, %struct.qdio_buffer*** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.qdio_buffer*, %struct.qdio_buffer** %16, i64 %18
  %20 = load %struct.qdio_buffer*, %struct.qdio_buffer** %19, align 8
  store %struct.qdio_buffer* %20, %struct.qdio_buffer** %6, align 8
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %64, %2
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @QDIO_MAX_ELEMENTS_PER_BUFFER, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %67

25:                                               ; preds = %21
  %26 = load %struct.qdio_buffer*, %struct.qdio_buffer** %6, align 8
  %27 = getelementptr inbounds %struct.qdio_buffer, %struct.qdio_buffer* %26, i32 0, i32 0
  %28 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %28, i64 %30
  store %struct.qdio_buffer_element* %31, %struct.qdio_buffer_element** %7, align 8
  %32 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %7, align 8
  %33 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %9, align 8
  %35 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %36 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call %struct.zfcp_fsf_req* @zfcp_reqlist_find_rm(i32 %37, i64 %38)
  store %struct.zfcp_fsf_req* %39, %struct.zfcp_fsf_req** %8, align 8
  %40 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %8, align 8
  %41 = icmp ne %struct.zfcp_fsf_req* %40, null
  br i1 %41, label %52, label %42

42:                                               ; preds = %25
  %43 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %44 = call i32 @zfcp_qdio_siosl(%struct.zfcp_adapter* %43)
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %47 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = call i32 @dev_name(i32* %49)
  %51 = call i32 @panic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %45, i32 %50)
  br label %52

52:                                               ; preds = %42, %25
  %53 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %8, align 8
  %54 = call i32 @zfcp_fsf_req_complete(%struct.zfcp_fsf_req* %53)
  %55 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %7, align 8
  %56 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @SBAL_EFLAGS_LAST_ENTRY, align 4
  %59 = and i32 %57, %58
  %60 = call i64 @likely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  br label %67

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %21

67:                                               ; preds = %62, %21
  ret void
}

declare dso_local %struct.zfcp_fsf_req* @zfcp_reqlist_find_rm(i32, i64) #1

declare dso_local i32 @zfcp_qdio_siosl(%struct.zfcp_adapter*) #1

declare dso_local i32 @panic(i8*, i64, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @zfcp_fsf_req_complete(%struct.zfcp_fsf_req*) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
