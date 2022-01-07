; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_fcp_task_mgmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_fcp_task_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { %struct.TYPE_18__*, i32, i32, %struct.scsi_device* }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_13__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__, i32, i32, i32 }
%struct.TYPE_15__ = type { %struct.fcp_cmnd }
%struct.fcp_cmnd = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.scsi_device = type { i32 }
%struct.zfcp_scsi_dev = type { %struct.TYPE_14__*, i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.zfcp_qdio* }
%struct.zfcp_qdio = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@ZFCP_STATUS_COMMON_UNBLOCKED = common dso_local global i32 0, align 4
@FSF_QTCB_FCP_CMND = common dso_local global i32 0, align 4
@SBAL_SFLAGS0_TYPE_WRITE = common dso_local global i32 0, align 4
@zfcp_fsf_fcp_task_mgmt_handler = common dso_local global i32 0, align 4
@FSF_DATADIR_CMND = common dso_local global i32 0, align 4
@FSF_CLASS_3 = common dso_local global i32 0, align 4
@FCP_CMND_LEN = common dso_local global i32 0, align 4
@ZFCP_FSF_SCSI_ER_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.zfcp_fsf_req* @zfcp_fsf_fcp_task_mgmt(%struct.scsi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.zfcp_fsf_req*, align 8
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.zfcp_fsf_req*, align 8
  %7 = alloca %struct.fcp_cmnd*, align 8
  %8 = alloca %struct.zfcp_scsi_dev*, align 8
  %9 = alloca %struct.zfcp_qdio*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.zfcp_fsf_req* null, %struct.zfcp_fsf_req** %6, align 8
  %10 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %11 = call %struct.zfcp_scsi_dev* @sdev_to_zfcp(%struct.scsi_device* %10)
  store %struct.zfcp_scsi_dev* %11, %struct.zfcp_scsi_dev** %8, align 8
  %12 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %8, align 8
  %13 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %17, align 8
  store %struct.zfcp_qdio* %18, %struct.zfcp_qdio** %9, align 8
  %19 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %8, align 8
  %20 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %19, i32 0, i32 2
  %21 = call i32 @atomic_read(i32* %20)
  %22 = load i32, i32* @ZFCP_STATUS_COMMON_UNBLOCKED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store %struct.zfcp_fsf_req* null, %struct.zfcp_fsf_req** %3, align 8
  br label %129

30:                                               ; preds = %2
  %31 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %9, align 8
  %32 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %31, i32 0, i32 0
  %33 = call i32 @spin_lock_irq(i32* %32)
  %34 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %9, align 8
  %35 = call i64 @zfcp_qdio_sbal_get(%struct.zfcp_qdio* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %124

38:                                               ; preds = %30
  %39 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %9, align 8
  %40 = load i32, i32* @FSF_QTCB_FCP_CMND, align 4
  %41 = load i32, i32* @SBAL_SFLAGS0_TYPE_WRITE, align 4
  %42 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %9, align 8
  %43 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %42, i32 0, i32 1
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio* %39, i32 %40, i32 %41, i32 %47)
  store %struct.zfcp_fsf_req* %48, %struct.zfcp_fsf_req** %6, align 8
  %49 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %50 = call i64 @IS_ERR(%struct.zfcp_fsf_req* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %38
  store %struct.zfcp_fsf_req* null, %struct.zfcp_fsf_req** %6, align 8
  br label %124

53:                                               ; preds = %38
  %54 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %55 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %56 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %55, i32 0, i32 3
  store %struct.scsi_device* %54, %struct.scsi_device** %56, align 8
  %57 = load i32, i32* @zfcp_fsf_fcp_task_mgmt_handler, align 4
  %58 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %59 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %8, align 8
  %61 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %64 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %63, i32 0, i32 0
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  store i32 %62, i32* %67, align 4
  %68 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %8, align 8
  %69 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %68, i32 0, i32 0
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %74 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %73, i32 0, i32 0
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  store i32 %72, i32* %77, align 4
  %78 = load i32, i32* @FSF_DATADIR_CMND, align 4
  %79 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %80 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %79, i32 0, i32 0
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 3
  store i32 %78, i32* %84, align 4
  %85 = load i32, i32* @FSF_CLASS_3, align 4
  %86 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %87 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %86, i32 0, i32 0
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 2
  store i32 %85, i32* %91, align 4
  %92 = load i32, i32* @FCP_CMND_LEN, align 4
  %93 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %94 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %93, i32 0, i32 0
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 1
  store i32 %92, i32* %98, align 4
  %99 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %9, align 8
  %100 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %101 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %100, i32 0, i32 1
  %102 = call i32 @zfcp_qdio_set_sbale_last(%struct.zfcp_qdio* %99, i32* %101)
  %103 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %104 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %103, i32 0, i32 0
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  store %struct.fcp_cmnd* %109, %struct.fcp_cmnd** %7, align 8
  %110 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %7, align 8
  %111 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @zfcp_fc_fcp_tm(%struct.fcp_cmnd* %110, %struct.scsi_device* %111, i32 %112)
  %114 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %115 = load i32, i32* @ZFCP_FSF_SCSI_ER_TIMEOUT, align 4
  %116 = call i32 @zfcp_fsf_start_timer(%struct.zfcp_fsf_req* %114, i32 %115)
  %117 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %118 = call i32 @zfcp_fsf_req_send(%struct.zfcp_fsf_req* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %53
  br label %124

121:                                              ; preds = %53
  %122 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %123 = call i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req* %122)
  store %struct.zfcp_fsf_req* null, %struct.zfcp_fsf_req** %6, align 8
  br label %124

124:                                              ; preds = %121, %120, %52, %37
  %125 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %9, align 8
  %126 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %125, i32 0, i32 0
  %127 = call i32 @spin_unlock_irq(i32* %126)
  %128 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  store %struct.zfcp_fsf_req* %128, %struct.zfcp_fsf_req** %3, align 8
  br label %129

129:                                              ; preds = %124, %29
  %130 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  ret %struct.zfcp_fsf_req* %130
}

declare dso_local %struct.zfcp_scsi_dev* @sdev_to_zfcp(%struct.scsi_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @zfcp_qdio_sbal_get(%struct.zfcp_qdio*) #1

declare dso_local %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_qdio_set_sbale_last(%struct.zfcp_qdio*, i32*) #1

declare dso_local i32 @zfcp_fc_fcp_tm(%struct.fcp_cmnd*, %struct.scsi_device*, i32) #1

declare dso_local i32 @zfcp_fsf_start_timer(%struct.zfcp_fsf_req*, i32) #1

declare dso_local i32 @zfcp_fsf_req_send(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
