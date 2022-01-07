; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_abort_fcp_cmnd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_abort_fcp_cmnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { %struct.TYPE_16__*, i32, %struct.scsi_device*, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.scsi_device = type { i32 }
%struct.scsi_cmnd = type { i64, %struct.scsi_device* }
%struct.zfcp_scsi_dev = type { %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.zfcp_qdio* }
%struct.zfcp_qdio = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@FSF_QTCB_ABORT_FCP_CMND = common dso_local global i32 0, align 4
@SBAL_SFLAGS0_TYPE_READ = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_UNBLOCKED = common dso_local global i32 0, align 4
@zfcp_fsf_abort_fcp_command_handler = common dso_local global i32 0, align 4
@ZFCP_FSF_SCSI_ER_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.zfcp_fsf_req* @zfcp_fsf_abort_fcp_cmnd(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.zfcp_fsf_req*, align 8
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca %struct.zfcp_scsi_dev*, align 8
  %6 = alloca %struct.zfcp_qdio*, align 8
  %7 = alloca i64, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  store %struct.zfcp_fsf_req* null, %struct.zfcp_fsf_req** %3, align 8
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %9 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %8, i32 0, i32 1
  %10 = load %struct.scsi_device*, %struct.scsi_device** %9, align 8
  store %struct.scsi_device* %10, %struct.scsi_device** %4, align 8
  %11 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %12 = call %struct.zfcp_scsi_dev* @sdev_to_zfcp(%struct.scsi_device* %11)
  store %struct.zfcp_scsi_dev* %12, %struct.zfcp_scsi_dev** %5, align 8
  %13 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %5, align 8
  %14 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %13, i32 0, i32 0
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %18, align 8
  store %struct.zfcp_qdio* %19, %struct.zfcp_qdio** %6, align 8
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %21 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %7, align 8
  %23 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %6, align 8
  %24 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %23, i32 0, i32 0
  %25 = call i32 @spin_lock_irq(i32* %24)
  %26 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %6, align 8
  %27 = call i64 @zfcp_qdio_sbal_get(%struct.zfcp_qdio* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  br label %104

30:                                               ; preds = %1
  %31 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %6, align 8
  %32 = load i32, i32* @FSF_QTCB_ABORT_FCP_CMND, align 4
  %33 = load i32, i32* @SBAL_SFLAGS0_TYPE_READ, align 4
  %34 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %6, align 8
  %35 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %34, i32 0, i32 1
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio* %31, i32 %32, i32 %33, i32 %39)
  store %struct.zfcp_fsf_req* %40, %struct.zfcp_fsf_req** %3, align 8
  %41 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %42 = call i64 @IS_ERR(%struct.zfcp_fsf_req* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %30
  store %struct.zfcp_fsf_req* null, %struct.zfcp_fsf_req** %3, align 8
  br label %104

45:                                               ; preds = %30
  %46 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %5, align 8
  %47 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %46, i32 0, i32 2
  %48 = call i32 @atomic_read(i32* %47)
  %49 = load i32, i32* @ZFCP_STATUS_COMMON_UNBLOCKED, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  br label %101

57:                                               ; preds = %45
  %58 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %6, align 8
  %59 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %60 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %59, i32 0, i32 3
  %61 = call i32 @zfcp_qdio_set_sbale_last(%struct.zfcp_qdio* %58, i32* %60)
  %62 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %63 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %64 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %63, i32 0, i32 2
  store %struct.scsi_device* %62, %struct.scsi_device** %64, align 8
  %65 = load i32, i32* @zfcp_fsf_abort_fcp_command_handler, align 4
  %66 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %67 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %5, align 8
  %69 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %72 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %71, i32 0, i32 0
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  store i32 %70, i32* %75, align 4
  %76 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %5, align 8
  %77 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %76, i32 0, i32 0
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %82 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %81, i32 0, i32 0
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  store i32 %80, i32* %85, align 8
  %86 = load i64, i64* %7, align 8
  %87 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %88 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %87, i32 0, i32 0
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  store i64 %86, i64* %92, align 8
  %93 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %94 = load i32, i32* @ZFCP_FSF_SCSI_ER_TIMEOUT, align 4
  %95 = call i32 @zfcp_fsf_start_timer(%struct.zfcp_fsf_req* %93, i32 %94)
  %96 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %97 = call i32 @zfcp_fsf_req_send(%struct.zfcp_fsf_req* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %57
  br label %104

100:                                              ; preds = %57
  br label %101

101:                                              ; preds = %100, %56
  %102 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %103 = call i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req* %102)
  store %struct.zfcp_fsf_req* null, %struct.zfcp_fsf_req** %3, align 8
  br label %104

104:                                              ; preds = %101, %99, %44, %29
  %105 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %6, align 8
  %106 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %105, i32 0, i32 0
  %107 = call i32 @spin_unlock_irq(i32* %106)
  %108 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  ret %struct.zfcp_fsf_req* %108
}

declare dso_local %struct.zfcp_scsi_dev* @sdev_to_zfcp(%struct.scsi_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @zfcp_qdio_sbal_get(%struct.zfcp_qdio*) #1

declare dso_local %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.zfcp_fsf_req*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @zfcp_qdio_set_sbale_last(%struct.zfcp_qdio*, i32*) #1

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
