; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_close_lun.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_close_lun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_erp_action = type { i32, i32, %struct.TYPE_10__*, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { %struct.zfcp_qdio* }
%struct.zfcp_qdio = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.zfcp_scsi_dev = type { i32 }
%struct.zfcp_fsf_req = type { i32, %struct.zfcp_erp_action*, i32, i32, %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@FSF_QTCB_CLOSE_LUN = common dso_local global i32 0, align 4
@SBAL_SFLAGS0_TYPE_READ = common dso_local global i32 0, align 4
@ZFCP_STATUS_FSFREQ_CLEANUP = common dso_local global i32 0, align 4
@zfcp_fsf_close_lun_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfcp_fsf_close_lun(%struct.zfcp_erp_action* %0) #0 {
  %2 = alloca %struct.zfcp_erp_action*, align 8
  %3 = alloca %struct.zfcp_qdio*, align 8
  %4 = alloca %struct.zfcp_scsi_dev*, align 8
  %5 = alloca %struct.zfcp_fsf_req*, align 8
  %6 = alloca i32, align 4
  store %struct.zfcp_erp_action* %0, %struct.zfcp_erp_action** %2, align 8
  %7 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %8 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %7, i32 0, i32 3
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %10, align 8
  store %struct.zfcp_qdio* %11, %struct.zfcp_qdio** %3, align 8
  %12 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %13 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.zfcp_scsi_dev* @sdev_to_zfcp(i32 %14)
  store %struct.zfcp_scsi_dev* %15, %struct.zfcp_scsi_dev** %4, align 8
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %6, align 4
  %18 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %19 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %18, i32 0, i32 0
  %20 = call i32 @spin_lock_irq(i32* %19)
  %21 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %22 = call i64 @zfcp_qdio_sbal_get(%struct.zfcp_qdio* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %98

25:                                               ; preds = %1
  %26 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %27 = load i32, i32* @FSF_QTCB_CLOSE_LUN, align 4
  %28 = load i32, i32* @SBAL_SFLAGS0_TYPE_READ, align 4
  %29 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %30 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %29, i32 0, i32 1
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio* %26, i32 %27, i32 %28, i32 %34)
  store %struct.zfcp_fsf_req* %35, %struct.zfcp_fsf_req** %5, align 8
  %36 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %37 = call i64 @IS_ERR(%struct.zfcp_fsf_req* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %25
  %40 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %41 = call i32 @PTR_ERR(%struct.zfcp_fsf_req* %40)
  store i32 %41, i32* %6, align 4
  br label %98

42:                                               ; preds = %25
  %43 = load i32, i32* @ZFCP_STATUS_FSFREQ_CLEANUP, align 4
  %44 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %45 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %49 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %50 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %49, i32 0, i32 5
  %51 = call i32 @zfcp_qdio_set_sbale_last(%struct.zfcp_qdio* %48, i32* %50)
  %52 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %53 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %52, i32 0, i32 2
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %58 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %57, i32 0, i32 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  store i32 %56, i32* %61, align 4
  %62 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %4, align 8
  %63 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %66 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %65, i32 0, i32 4
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  store i32 %64, i32* %69, align 4
  %70 = load i32, i32* @zfcp_fsf_close_lun_handler, align 4
  %71 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %72 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %74 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %77 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %79 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %80 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %79, i32 0, i32 1
  store %struct.zfcp_erp_action* %78, %struct.zfcp_erp_action** %80, align 8
  %81 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %82 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %85 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %87 = call i32 @zfcp_fsf_start_erp_timer(%struct.zfcp_fsf_req* %86)
  %88 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %89 = call i32 @zfcp_fsf_req_send(%struct.zfcp_fsf_req* %88)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %42
  %93 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %5, align 8
  %94 = call i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req* %93)
  %95 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %96 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %95, i32 0, i32 0
  store i32 0, i32* %96, align 8
  br label %97

97:                                               ; preds = %92, %42
  br label %98

98:                                               ; preds = %97, %39, %24
  %99 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %100 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %99, i32 0, i32 0
  %101 = call i32 @spin_unlock_irq(i32* %100)
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local %struct.zfcp_scsi_dev* @sdev_to_zfcp(i32) #1

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
