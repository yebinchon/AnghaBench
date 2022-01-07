; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_status_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_status_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_qdio = type { i32, %struct.zfcp_adapter* }
%struct.zfcp_adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.zfcp_fsf_req = type { %struct.fsf_status_read_buffer*, i32 }
%struct.fsf_status_read_buffer = type { i32 }
%struct.page = type { i32 }

@EIO = common dso_local global i32 0, align 4
@FSF_QTCB_UNSOLICITED_STATUS = common dso_local global i32 0, align 4
@SBAL_SFLAGS0_TYPE_STATUS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"fssr__1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfcp_fsf_status_read(%struct.zfcp_qdio* %0) #0 {
  %2 = alloca %struct.zfcp_qdio*, align 8
  %3 = alloca %struct.zfcp_adapter*, align 8
  %4 = alloca %struct.zfcp_fsf_req*, align 8
  %5 = alloca %struct.fsf_status_read_buffer*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  store %struct.zfcp_qdio* %0, %struct.zfcp_qdio** %2, align 8
  %8 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %9 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %8, i32 0, i32 1
  %10 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %9, align 8
  store %struct.zfcp_adapter* %10, %struct.zfcp_adapter** %3, align 8
  %11 = load i32, i32* @EIO, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %14 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %13, i32 0, i32 0
  %15 = call i32 @spin_lock_irq(i32* %14)
  %16 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %17 = call i64 @zfcp_qdio_sbal_get(%struct.zfcp_qdio* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %85

20:                                               ; preds = %1
  %21 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %22 = load i32, i32* @FSF_QTCB_UNSOLICITED_STATUS, align 4
  %23 = load i32, i32* @SBAL_SFLAGS0_TYPE_STATUS, align 4
  %24 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio* %21, i32 %22, i32 %23, i32 %27)
  store %struct.zfcp_fsf_req* %28, %struct.zfcp_fsf_req** %4, align 8
  %29 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %30 = call i64 @IS_ERR(%struct.zfcp_fsf_req* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %20
  %33 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %34 = call i32 @PTR_ERR(%struct.zfcp_fsf_req* %33)
  store i32 %34, i32* %7, align 4
  br label %85

35:                                               ; preds = %20
  %36 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @GFP_ATOMIC, align 4
  %41 = call %struct.page* @mempool_alloc(i32 %39, i32 %40)
  store %struct.page* %41, %struct.page** %6, align 8
  %42 = load %struct.page*, %struct.page** %6, align 8
  %43 = icmp ne %struct.page* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %35
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %7, align 4
  br label %80

47:                                               ; preds = %35
  %48 = load %struct.page*, %struct.page** %6, align 8
  %49 = call %struct.fsf_status_read_buffer* @page_address(%struct.page* %48)
  store %struct.fsf_status_read_buffer* %49, %struct.fsf_status_read_buffer** %5, align 8
  %50 = load %struct.fsf_status_read_buffer*, %struct.fsf_status_read_buffer** %5, align 8
  %51 = call i32 @memset(%struct.fsf_status_read_buffer* %50, i32 0, i32 4)
  %52 = load %struct.fsf_status_read_buffer*, %struct.fsf_status_read_buffer** %5, align 8
  %53 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %54 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %53, i32 0, i32 0
  store %struct.fsf_status_read_buffer* %52, %struct.fsf_status_read_buffer** %54, align 8
  %55 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %56 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %57 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %56, i32 0, i32 1
  %58 = load %struct.fsf_status_read_buffer*, %struct.fsf_status_read_buffer** %5, align 8
  %59 = call i32 @zfcp_qdio_fill_next(%struct.zfcp_qdio* %55, i32* %57, %struct.fsf_status_read_buffer* %58, i32 4)
  %60 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %61 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %62 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %61, i32 0, i32 1
  %63 = call i32 @zfcp_qdio_set_sbale_last(%struct.zfcp_qdio* %60, i32* %62)
  %64 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %65 = call i32 @zfcp_fsf_req_send(%struct.zfcp_fsf_req* %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %47
  br label %70

69:                                               ; preds = %47
  br label %85

70:                                               ; preds = %68
  %71 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %72 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %71, i32 0, i32 0
  store %struct.fsf_status_read_buffer* null, %struct.fsf_status_read_buffer** %72, align 8
  %73 = load %struct.fsf_status_read_buffer*, %struct.fsf_status_read_buffer** %5, align 8
  %74 = call i32 @virt_to_page(%struct.fsf_status_read_buffer* %73)
  %75 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %76 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @mempool_free(i32 %74, i32 %78)
  br label %80

80:                                               ; preds = %70, %44
  %81 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %82 = call i32 @zfcp_dbf_hba_fsf_uss(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.zfcp_fsf_req* %81)
  %83 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %84 = call i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req* %83)
  br label %85

85:                                               ; preds = %80, %69, %32, %19
  %86 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %87 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %86, i32 0, i32 0
  %88 = call i32 @spin_unlock_irq(i32* %87)
  %89 = load i32, i32* %7, align 4
  ret i32 %89
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @zfcp_qdio_sbal_get(%struct.zfcp_qdio*) #1

declare dso_local %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @PTR_ERR(%struct.zfcp_fsf_req*) #1

declare dso_local %struct.page* @mempool_alloc(i32, i32) #1

declare dso_local %struct.fsf_status_read_buffer* @page_address(%struct.page*) #1

declare dso_local i32 @memset(%struct.fsf_status_read_buffer*, i32, i32) #1

declare dso_local i32 @zfcp_qdio_fill_next(%struct.zfcp_qdio*, i32*, %struct.fsf_status_read_buffer*, i32) #1

declare dso_local i32 @zfcp_qdio_set_sbale_last(%struct.zfcp_qdio*, i32*) #1

declare dso_local i32 @zfcp_fsf_req_send(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @mempool_free(i32, i32) #1

declare dso_local i32 @virt_to_page(%struct.fsf_status_read_buffer*) #1

declare dso_local i32 @zfcp_dbf_hba_fsf_uss(i8*, %struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
