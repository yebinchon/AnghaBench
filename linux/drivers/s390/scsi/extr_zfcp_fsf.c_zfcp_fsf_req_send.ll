; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_req_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_req_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { i32, i32, %struct.TYPE_2__, i32, %struct.zfcp_adapter* }
%struct.TYPE_2__ = type { i32 }
%struct.zfcp_adapter = type { i32, i32, i32, %struct.zfcp_qdio* }
%struct.zfcp_qdio = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"fsrs__1\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zfcp_fsf_req*)* @zfcp_fsf_req_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_fsf_req_send(%struct.zfcp_fsf_req* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zfcp_fsf_req*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.zfcp_adapter*, align 8
  %6 = alloca %struct.zfcp_qdio*, align 8
  %7 = alloca i32, align 4
  store %struct.zfcp_fsf_req* %0, %struct.zfcp_fsf_req** %3, align 8
  %8 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %9 = call i32 @zfcp_fsf_req_is_status_read_buffer(%struct.zfcp_fsf_req* %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %11 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %10, i32 0, i32 4
  %12 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %11, align 8
  store %struct.zfcp_adapter* %12, %struct.zfcp_adapter** %5, align 8
  %13 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %13, i32 0, i32 3
  %15 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %14, align 8
  store %struct.zfcp_qdio* %15, %struct.zfcp_qdio** %6, align 8
  %16 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %17 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %20 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %23 = call i32 @zfcp_reqlist_add(i32 %21, %struct.zfcp_fsf_req* %22)
  %24 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %6, align 8
  %25 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %24, i32 0, i32 0
  %26 = call i32 @atomic_read(i32* %25)
  %27 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %28 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = call i32 (...) @get_tod_clock()
  %31 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %32 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %6, align 8
  %34 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %35 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %34, i32 0, i32 2
  %36 = call i64 @zfcp_qdio_send(%struct.zfcp_qdio* %33, %struct.TYPE_2__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %1
  %39 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %40 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %39, i32 0, i32 1
  %41 = call i32 @del_timer(i32* %40)
  %42 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %43 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @zfcp_reqlist_find_rm(i32 %44, i32 %45)
  %47 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %48 = call i32 @zfcp_erp_adapter_reopen(%struct.zfcp_adapter* %47, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %64

51:                                               ; preds = %1
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %56 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %54, %51
  %60 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %61 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %59, %38
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @zfcp_fsf_req_is_status_read_buffer(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_reqlist_add(i32, %struct.zfcp_fsf_req*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @get_tod_clock(...) #1

declare dso_local i64 @zfcp_qdio_send(%struct.zfcp_qdio*, %struct.TYPE_2__*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @zfcp_reqlist_find_rm(i32, i32) #1

declare dso_local i32 @zfcp_erp_adapter_reopen(%struct.zfcp_adapter*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
