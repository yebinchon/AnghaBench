; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla27xx_set_flash_upd_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla27xx_set_flash_upd_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { i32, %struct.TYPE_6__, %struct.fc_bsg_reply* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.fc_bsg_reply = type { i32, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8** }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_9__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i64, i64, i64* }
%struct.qla_flash_update_caps = type { i32, i64 }

@EPERM = common dso_local global i32 0, align 4
@EXT_STATUS_INVALID_PARAM = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@MAX_LOOP_TIMEOUT = common dso_local global i64 0, align 8
@EXT_STATUS_OK = common dso_local global i8* null, align 8
@DID_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsg_job*)* @qla27xx_set_flash_upd_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla27xx_set_flash_upd_cap(%struct.bsg_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bsg_job*, align 8
  %4 = alloca %struct.fc_bsg_reply*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.qla_hw_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.qla_flash_update_caps, align 8
  store %struct.bsg_job* %0, %struct.bsg_job** %3, align 8
  %10 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %11 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %10, i32 0, i32 2
  %12 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %11, align 8
  store %struct.fc_bsg_reply* %12, %struct.fc_bsg_reply** %4, align 8
  %13 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %14 = call %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job* %13)
  store %struct.Scsi_Host* %14, %struct.Scsi_Host** %5, align 8
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %16 = call %struct.TYPE_9__* @shost_priv(%struct.Scsi_Host* %15)
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %6, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load %struct.qla_hw_data*, %struct.qla_hw_data** %18, align 8
  store %struct.qla_hw_data* %19, %struct.qla_hw_data** %7, align 8
  store i32 0, i32* %8, align 4
  %20 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %21 = call i32 @IS_QLA27XX(%struct.qla_hw_data* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %1
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %25 = call i32 @IS_QLA28XX(%struct.qla_hw_data* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @EPERM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %120

30:                                               ; preds = %23, %1
  %31 = call i32 @memset(%struct.qla_flash_update_caps* %9, i32 0, i32 16)
  %32 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %33 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %37 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @sg_copy_to_buffer(i32 %35, i32 %39, %struct.qla_flash_update_caps* %9, i32 16)
  %41 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %42 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %41, i32 0, i32 2
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 1
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = shl i32 %46, 48
  %48 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %49 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %48, i32 0, i32 2
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 0
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = shl i32 %53, 32
  %55 = or i32 %47, %54
  %56 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %57 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = shl i32 %59, 16
  %61 = or i32 %55, %60
  %62 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %63 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = or i32 %61, %65
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = getelementptr inbounds %struct.qla_flash_update_caps, %struct.qla_flash_update_caps* %9, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %67, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %30
  %72 = load i8*, i8** @EXT_STATUS_INVALID_PARAM, align 8
  %73 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %74 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i8**, i8*** %76, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 0
  store i8* %72, i8** %78, align 8
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %120

81:                                               ; preds = %30
  %82 = getelementptr inbounds %struct.qla_flash_update_caps, %struct.qla_flash_update_caps* %9, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @MAX_LOOP_TIMEOUT, align 8
  %85 = icmp slt i64 %83, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %81
  %87 = load i8*, i8** @EXT_STATUS_INVALID_PARAM, align 8
  %88 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %89 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i8**, i8*** %91, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 0
  store i8* %87, i8** %93, align 8
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %120

96:                                               ; preds = %81
  %97 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %98 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %97, i32 0, i32 1
  store i64 0, i64* %98, align 8
  %99 = load i8*, i8** @EXT_STATUS_OK, align 8
  %100 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %101 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i8**, i8*** %103, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 0
  store i8* %99, i8** %105, align 8
  %106 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %107 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %106, i32 0, i32 0
  store i32 24, i32* %107, align 8
  %108 = load i32, i32* @DID_OK, align 4
  %109 = shl i32 %108, 16
  %110 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %111 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %113 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %114 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %117 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @bsg_job_done(%struct.bsg_job* %112, i32 %115, i64 %118)
  store i32 0, i32* %2, align 4
  br label %120

120:                                              ; preds = %96, %86, %71, %27
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job*) #1

declare dso_local %struct.TYPE_9__* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @IS_QLA27XX(%struct.qla_hw_data*) #1

declare dso_local i32 @IS_QLA28XX(%struct.qla_hw_data*) #1

declare dso_local i32 @memset(%struct.qla_flash_update_caps*, i32, i32) #1

declare dso_local i32 @sg_copy_to_buffer(i32, i32, %struct.qla_flash_update_caps*, i32) #1

declare dso_local i32 @bsg_job_done(%struct.bsg_job*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
