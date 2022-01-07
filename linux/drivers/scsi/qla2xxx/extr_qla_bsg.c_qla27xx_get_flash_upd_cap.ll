; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla27xx_get_flash_upd_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla27xx_get_flash_upd_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { i32, %struct.TYPE_6__, %struct.fc_bsg_reply* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.fc_bsg_reply = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_9__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i64, i64, i64* }
%struct.qla_flash_update_caps = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@EXT_STATUS_OK = common dso_local global i32 0, align 4
@DID_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsg_job*)* @qla27xx_get_flash_upd_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla27xx_get_flash_upd_cap(%struct.bsg_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bsg_job*, align 8
  %4 = alloca %struct.fc_bsg_reply*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.qla_hw_data*, align 8
  %8 = alloca %struct.qla_flash_update_caps, align 4
  store %struct.bsg_job* %0, %struct.bsg_job** %3, align 8
  %9 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %10 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %9, i32 0, i32 2
  %11 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %10, align 8
  store %struct.fc_bsg_reply* %11, %struct.fc_bsg_reply** %4, align 8
  %12 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %13 = call %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job* %12)
  store %struct.Scsi_Host* %13, %struct.Scsi_Host** %5, align 8
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %15 = call %struct.TYPE_9__* @shost_priv(%struct.Scsi_Host* %14)
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %6, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.qla_hw_data*, %struct.qla_hw_data** %17, align 8
  store %struct.qla_hw_data* %18, %struct.qla_hw_data** %7, align 8
  %19 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %20 = call i32 @IS_QLA27XX(%struct.qla_hw_data* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %1
  %23 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %24 = call i32 @IS_QLA28XX(%struct.qla_hw_data* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @EPERM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %90

29:                                               ; preds = %22, %1
  %30 = call i32 @memset(%struct.qla_flash_update_caps* %8, i32 0, i32 4)
  %31 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %32 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %31, i32 0, i32 2
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 1
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = shl i32 %36, 48
  %38 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %39 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %38, i32 0, i32 2
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = shl i32 %43, 32
  %45 = or i32 %37, %44
  %46 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %47 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = shl i32 %49, 16
  %51 = or i32 %45, %50
  %52 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %53 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = or i32 %51, %55
  %57 = getelementptr inbounds %struct.qla_flash_update_caps, %struct.qla_flash_update_caps* %8, i32 0, i32 0
  store i32 %56, i32* %57, align 4
  %58 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %59 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %63 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @sg_copy_from_buffer(i32 %61, i32 %65, %struct.qla_flash_update_caps* %8, i32 4)
  %67 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %68 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %67, i32 0, i32 0
  store i32 4, i32* %68, align 8
  %69 = load i32, i32* @EXT_STATUS_OK, align 4
  %70 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %71 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  store i32 %69, i32* %75, align 4
  %76 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %77 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %76, i32 0, i32 0
  store i32 16, i32* %77, align 8
  %78 = load i32, i32* @DID_OK, align 4
  %79 = shl i32 %78, 16
  %80 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %81 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %83 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %84 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %87 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @bsg_job_done(%struct.bsg_job* %82, i32 %85, i32 %88)
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %29, %26
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job*) #1

declare dso_local %struct.TYPE_9__* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @IS_QLA27XX(%struct.qla_hw_data*) #1

declare dso_local i32 @IS_QLA28XX(%struct.qla_hw_data*) #1

declare dso_local i32 @memset(%struct.qla_flash_update_caps*, i32, i32) #1

declare dso_local i32 @sg_copy_from_buffer(i32, i32, %struct.qla_flash_update_caps*, i32) #1

declare dso_local i32 @bsg_job_done(%struct.bsg_job*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
