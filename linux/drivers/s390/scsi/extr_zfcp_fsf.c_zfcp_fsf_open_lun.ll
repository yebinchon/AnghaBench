; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_open_lun.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_open_lun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_erp_action = type { i32, i32, %struct.TYPE_9__*, %struct.zfcp_adapter* }
%struct.TYPE_9__ = type { i32 }
%struct.zfcp_adapter = type { i32, %struct.TYPE_7__, %struct.zfcp_qdio* }
%struct.TYPE_7__ = type { i32 }
%struct.zfcp_qdio = type { i32 }
%struct.zfcp_fsf_req = type { %struct.TYPE_12__*, i32, %struct.zfcp_erp_action*, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@FSF_QTCB_OPEN_LUN = common dso_local global i32 0, align 4
@SBAL_SFLAGS0_TYPE_READ = common dso_local global i32 0, align 4
@ZFCP_STATUS_FSFREQ_CLEANUP = common dso_local global i32 0, align 4
@zfcp_fsf_open_lun_handler = common dso_local global i32 0, align 4
@FSF_FEATURE_NPIV_MODE = common dso_local global i32 0, align 4
@FSF_OPEN_LUN_SUPPRESS_BOXING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfcp_fsf_open_lun(%struct.zfcp_erp_action* %0) #0 {
  %2 = alloca %struct.zfcp_erp_action*, align 8
  %3 = alloca %struct.zfcp_adapter*, align 8
  %4 = alloca %struct.zfcp_qdio*, align 8
  %5 = alloca %struct.zfcp_fsf_req*, align 8
  %6 = alloca i32, align 4
  store %struct.zfcp_erp_action* %0, %struct.zfcp_erp_action** %2, align 8
  %7 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %8 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %7, i32 0, i32 3
  %9 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %8, align 8
  store %struct.zfcp_adapter* %9, %struct.zfcp_adapter** %3, align 8
  %10 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %10, i32 0, i32 2
  %12 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %11, align 8
  store %struct.zfcp_qdio* %12, %struct.zfcp_qdio** %4, align 8
  %13 = load i32, i32* @EIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %6, align 4
  %15 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %16 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %15, i32 0, i32 0
  %17 = call i32 @spin_lock_irq(i32* %16)
  %18 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %19 = call i64 @zfcp_qdio_sbal_get(%struct.zfcp_qdio* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %110

22:                                               ; preds = %1
  %23 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %24 = load i32, i32* @FSF_QTCB_OPEN_LUN, align 4
  %25 = load i32, i32* @SBAL_SFLAGS0_TYPE_READ, align 4
  %26 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %27 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio* %23, i32 %24, i32 %25, i32 %29)
  store %struct.zfcp_fsf_req* %30, %struct.zfcp_fsf_req** %5, align 8
  %31 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %32 = call i64 @IS_ERR(%struct.zfcp_fsf_req* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %22
  %35 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %36 = call i32 @PTR_ERR(%struct.zfcp_fsf_req* %35)
  store i32 %36, i32* %6, align 4
  br label %110

37:                                               ; preds = %22
  %38 = load i32, i32* @ZFCP_STATUS_FSFREQ_CLEANUP, align 4
  %39 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %40 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %44 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %45 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %44, i32 0, i32 5
  %46 = call i32 @zfcp_qdio_set_sbale_last(%struct.zfcp_qdio* %43, i32* %45)
  %47 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %48 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %47, i32 0, i32 2
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %53 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %52, i32 0, i32 0
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  store i32 %51, i32* %56, align 4
  %57 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %58 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @zfcp_scsi_dev_lun(i32 %59)
  %61 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %62 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %61, i32 0, i32 0
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  store i32 %60, i32* %66, align 4
  %67 = load i32, i32* @zfcp_fsf_open_lun_handler, align 4
  %68 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %69 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 4
  %70 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %71 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %74 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 8
  %75 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %76 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %77 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %76, i32 0, i32 2
  store %struct.zfcp_erp_action* %75, %struct.zfcp_erp_action** %77, align 8
  %78 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %79 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %82 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %84 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @FSF_FEATURE_NPIV_MODE, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %37
  %90 = load i32, i32* @FSF_OPEN_LUN_SUPPRESS_BOXING, align 4
  %91 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %92 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %91, i32 0, i32 0
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  store i32 %90, i32* %96, align 4
  br label %97

97:                                               ; preds = %89, %37
  %98 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %99 = call i32 @zfcp_fsf_start_erp_timer(%struct.zfcp_fsf_req* %98)
  %100 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %101 = call i32 @zfcp_fsf_req_send(%struct.zfcp_fsf_req* %100)
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %97
  %105 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %106 = call i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req* %105)
  %107 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %108 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %107, i32 0, i32 0
  store i32 0, i32* %108, align 8
  br label %109

109:                                              ; preds = %104, %97
  br label %110

110:                                              ; preds = %109, %34, %21
  %111 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %112 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %111, i32 0, i32 0
  %113 = call i32 @spin_unlock_irq(i32* %112)
  %114 = load i32, i32* %6, align 4
  ret i32 %114
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @zfcp_qdio_sbal_get(%struct.zfcp_qdio*) #1

declare dso_local %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @PTR_ERR(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_qdio_set_sbale_last(%struct.zfcp_qdio*, i32*) #1

declare dso_local i32 @zfcp_scsi_dev_lun(i32) #1

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
