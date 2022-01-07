; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_close_physical_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_close_physical_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_erp_action = type { i32, %struct.TYPE_12__*, %struct.TYPE_7__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_7__ = type { %struct.zfcp_qdio* }
%struct.zfcp_qdio = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.zfcp_fsf_req = type { i32, i32, %struct.zfcp_erp_action*, %struct.TYPE_11__*, %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@FSF_QTCB_CLOSE_PHYSICAL_PORT = common dso_local global i32 0, align 4
@SBAL_SFLAGS0_TYPE_READ = common dso_local global i32 0, align 4
@ZFCP_STATUS_FSFREQ_CLEANUP = common dso_local global i32 0, align 4
@zfcp_fsf_close_physical_port_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfcp_fsf_close_physical_port(%struct.zfcp_erp_action* %0) #0 {
  %2 = alloca %struct.zfcp_erp_action*, align 8
  %3 = alloca %struct.zfcp_qdio*, align 8
  %4 = alloca %struct.zfcp_fsf_req*, align 8
  %5 = alloca i32, align 4
  store %struct.zfcp_erp_action* %0, %struct.zfcp_erp_action** %2, align 8
  %6 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %7 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %6, i32 0, i32 2
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %9, align 8
  store %struct.zfcp_qdio* %10, %struct.zfcp_qdio** %3, align 8
  %11 = load i32, i32* @EIO, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %5, align 4
  %13 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %14 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %13, i32 0, i32 0
  %15 = call i32 @spin_lock_irq(i32* %14)
  %16 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %17 = call i64 @zfcp_qdio_sbal_get(%struct.zfcp_qdio* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %85

20:                                               ; preds = %1
  %21 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %22 = load i32, i32* @FSF_QTCB_CLOSE_PHYSICAL_PORT, align 4
  %23 = load i32, i32* @SBAL_SFLAGS0_TYPE_READ, align 4
  %24 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %25 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %24, i32 0, i32 1
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio* %21, i32 %22, i32 %23, i32 %29)
  store %struct.zfcp_fsf_req* %30, %struct.zfcp_fsf_req** %4, align 8
  %31 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %32 = call i64 @IS_ERR(%struct.zfcp_fsf_req* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %20
  %35 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %36 = call i32 @PTR_ERR(%struct.zfcp_fsf_req* %35)
  store i32 %36, i32* %5, align 4
  br label %85

37:                                               ; preds = %20
  %38 = load i32, i32* @ZFCP_STATUS_FSFREQ_CLEANUP, align 4
  %39 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %40 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %44 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %45 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %44, i32 0, i32 5
  %46 = call i32 @zfcp_qdio_set_sbale_last(%struct.zfcp_qdio* %43, i32* %45)
  %47 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %48 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %47, i32 0, i32 1
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %51 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %50, i32 0, i32 4
  store %struct.TYPE_12__* %49, %struct.TYPE_12__** %51, align 8
  %52 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %53 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %52, i32 0, i32 1
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %58 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %57, i32 0, i32 3
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  store i32 %56, i32* %61, align 4
  %62 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %63 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %64 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %63, i32 0, i32 2
  store %struct.zfcp_erp_action* %62, %struct.zfcp_erp_action** %64, align 8
  %65 = load i32, i32* @zfcp_fsf_close_physical_port_handler, align 4
  %66 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %67 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %69 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %72 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %74 = call i32 @zfcp_fsf_start_erp_timer(%struct.zfcp_fsf_req* %73)
  %75 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %76 = call i32 @zfcp_fsf_req_send(%struct.zfcp_fsf_req* %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %37
  %80 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %81 = call i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req* %80)
  %82 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %83 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %82, i32 0, i32 0
  store i32 0, i32* %83, align 8
  br label %84

84:                                               ; preds = %79, %37
  br label %85

85:                                               ; preds = %84, %34, %19
  %86 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %87 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %86, i32 0, i32 0
  %88 = call i32 @spin_unlock_irq(i32* %87)
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @zfcp_qdio_sbal_get(%struct.zfcp_qdio*) #1

declare dso_local %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @PTR_ERR(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_qdio_set_sbale_last(%struct.zfcp_qdio*, i32*) #1

declare dso_local i32 @zfcp_fsf_start_erp_timer(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_fsf_req_send(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
