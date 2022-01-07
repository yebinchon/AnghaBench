; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla27xx_get_bbcr_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla27xx_get_bbcr_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { i32, %struct.TYPE_9__, %struct.fc_bsg_reply* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.fc_bsg_reply = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32* }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_8__, %struct.qla_hw_data* }
%struct.TYPE_8__ = type { i64 }
%struct.qla_hw_data = type { i32 }
%struct.qla_bbcr_data = type { i64, i32, i32, i8*, i32, i32 }

@EPERM = common dso_local global i32 0, align 4
@QLA_BBCR_STATUS_ENABLED = common dso_local global i64 0, align 8
@QLA_BBCR_STATUS_DISABLED = common dso_local global i64 0, align 8
@QLA_SUCCESS = common dso_local global i32 0, align 4
@QLA_BBCR_STATUS_UNKNOWN = common dso_local global i64 0, align 8
@QLA_BBCR_STATE_OFFLINE = common dso_local global i8* null, align 8
@QLA_BBCR_REASON_LOGIN_REJECT = common dso_local global i32 0, align 4
@QLA_BBCR_STATE_ONLINE = common dso_local global i8* null, align 8
@EXT_STATUS_OK = common dso_local global i32 0, align 4
@DID_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsg_job*)* @qla27xx_get_bbcr_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla27xx_get_bbcr_data(%struct.bsg_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bsg_job*, align 8
  %4 = alloca %struct.fc_bsg_reply*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.qla_hw_data*, align 8
  %8 = alloca %struct.qla_bbcr_data, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.bsg_job* %0, %struct.bsg_job** %3, align 8
  %17 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %18 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %17, i32 0, i32 2
  %19 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %18, align 8
  store %struct.fc_bsg_reply* %19, %struct.fc_bsg_reply** %4, align 8
  %20 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %21 = call %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job* %20)
  store %struct.Scsi_Host* %21, %struct.Scsi_Host** %5, align 8
  %22 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %23 = call %struct.TYPE_12__* @shost_priv(%struct.Scsi_Host* %22)
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %6, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 2
  %26 = load %struct.qla_hw_data*, %struct.qla_hw_data** %25, align 8
  store %struct.qla_hw_data* %26, %struct.qla_hw_data** %7, align 8
  %27 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %28 = call i32 @IS_QLA27XX(%struct.qla_hw_data* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %1
  %31 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %32 = call i32 @IS_QLA28XX(%struct.qla_hw_data* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* @EPERM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %130

37:                                               ; preds = %30, %1
  %38 = call i32 @memset(%struct.qla_bbcr_data* %8, i32 0, i32 32)
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i64, i64* @QLA_BBCR_STATUS_ENABLED, align 8
  %46 = getelementptr inbounds %struct.qla_bbcr_data, %struct.qla_bbcr_data* %8, i32 0, i32 0
  store i64 %45, i64* %46, align 8
  br label %50

47:                                               ; preds = %37
  %48 = load i64, i64* @QLA_BBCR_STATUS_DISABLED, align 8
  %49 = getelementptr inbounds %struct.qla_bbcr_data, %struct.qla_bbcr_data* %8, i32 0, i32 0
  store i64 %48, i64* %49, align 8
  br label %50

50:                                               ; preds = %47, %44
  %51 = getelementptr inbounds %struct.qla_bbcr_data, %struct.qla_bbcr_data* %8, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @QLA_BBCR_STATUS_ENABLED, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %96

55:                                               ; preds = %50
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %57 = call i32 @qla2x00_get_adapter_id(%struct.TYPE_12__* %56, i32* %9, i32* %14, i32* %13, i32* %12, i32* %10, i32* %11)
  store i32 %57, i32* %16, align 4
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* @QLA_SUCCESS, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  %62 = load i64, i64* @QLA_BBCR_STATUS_UNKNOWN, align 8
  %63 = getelementptr inbounds %struct.qla_bbcr_data, %struct.qla_bbcr_data* %8, i32 0, i32 0
  store i64 %62, i64* %63, align 8
  %64 = load i8*, i8** @QLA_BBCR_STATE_OFFLINE, align 8
  %65 = getelementptr inbounds %struct.qla_bbcr_data, %struct.qla_bbcr_data* %8, i32 0, i32 3
  store i8* %64, i8** %65, align 8
  %66 = load i32, i32* %9, align 4
  %67 = getelementptr inbounds %struct.qla_bbcr_data, %struct.qla_bbcr_data* %8, i32 0, i32 5
  store i32 %66, i32* %67, align 4
  br label %97

68:                                               ; preds = %55
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = ashr i32 %71, 12
  %73 = and i32 %72, 1
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %15, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %68
  %77 = load i8*, i8** @QLA_BBCR_STATE_OFFLINE, align 8
  %78 = getelementptr inbounds %struct.qla_bbcr_data, %struct.qla_bbcr_data* %8, i32 0, i32 3
  store i8* %77, i8** %78, align 8
  %79 = load i32, i32* @QLA_BBCR_REASON_LOGIN_REJECT, align 4
  %80 = getelementptr inbounds %struct.qla_bbcr_data, %struct.qla_bbcr_data* %8, i32 0, i32 4
  store i32 %79, i32* %80, align 8
  br label %90

81:                                               ; preds = %68
  %82 = load i8*, i8** @QLA_BBCR_STATE_ONLINE, align 8
  %83 = getelementptr inbounds %struct.qla_bbcr_data, %struct.qla_bbcr_data* %8, i32 0, i32 3
  store i8* %82, i8** %83, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = ashr i32 %86, 8
  %88 = and i32 %87, 15
  %89 = getelementptr inbounds %struct.qla_bbcr_data, %struct.qla_bbcr_data* %8, i32 0, i32 1
  store i32 %88, i32* %89, align 8
  br label %90

90:                                               ; preds = %81, %76
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = and i32 %93, 15
  %95 = getelementptr inbounds %struct.qla_bbcr_data, %struct.qla_bbcr_data* %8, i32 0, i32 2
  store i32 %94, i32* %95, align 4
  br label %96

96:                                               ; preds = %90, %50
  br label %97

97:                                               ; preds = %96, %61
  %98 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %99 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %103 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @sg_copy_from_buffer(i32 %101, i32 %105, %struct.qla_bbcr_data* %8, i32 32)
  %107 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %108 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %107, i32 0, i32 0
  store i32 32, i32* %108, align 8
  %109 = load i32, i32* @EXT_STATUS_OK, align 4
  %110 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %111 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  store i32 %109, i32* %115, align 4
  %116 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %117 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %116, i32 0, i32 0
  store i32 16, i32* %117, align 8
  %118 = load i32, i32* @DID_OK, align 4
  %119 = shl i32 %118, 16
  %120 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %121 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %123 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %124 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %127 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @bsg_job_done(%struct.bsg_job* %122, i32 %125, i32 %128)
  store i32 0, i32* %2, align 4
  br label %130

130:                                              ; preds = %97, %34
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job*) #1

declare dso_local %struct.TYPE_12__* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @IS_QLA27XX(%struct.qla_hw_data*) #1

declare dso_local i32 @IS_QLA28XX(%struct.qla_hw_data*) #1

declare dso_local i32 @memset(%struct.qla_bbcr_data*, i32, i32) #1

declare dso_local i32 @qla2x00_get_adapter_id(%struct.TYPE_12__*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @sg_copy_from_buffer(i32, i32, %struct.qla_bbcr_data*, i32) #1

declare dso_local i32 @bsg_job_done(%struct.bsg_job*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
