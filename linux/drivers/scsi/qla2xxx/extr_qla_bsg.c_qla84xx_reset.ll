; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla84xx_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla84xx_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { %struct.fc_bsg_reply*, %struct.fc_bsg_request* }
%struct.fc_bsg_reply = type { i32, i32 }
%struct.fc_bsg_request = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64* }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_10__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }

@ql_dbg_user = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Not 84xx, exiting.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@A84_ISSUE_RESET_DIAG_FW = common dso_local global i64 0, align 8
@ql_log_warn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Vendor request 84xx reset failed.\0A\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Vendor request 84xx reset completed.\0A\00", align 1
@DID_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsg_job*)* @qla84xx_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla84xx_reset(%struct.bsg_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bsg_job*, align 8
  %4 = alloca %struct.fc_bsg_request*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.fc_bsg_reply*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.qla_hw_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.bsg_job* %0, %struct.bsg_job** %3, align 8
  %11 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %12 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %11, i32 0, i32 1
  %13 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %12, align 8
  store %struct.fc_bsg_request* %13, %struct.fc_bsg_request** %4, align 8
  %14 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %15 = call %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job* %14)
  store %struct.Scsi_Host* %15, %struct.Scsi_Host** %5, align 8
  %16 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %17 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %16, i32 0, i32 0
  %18 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %17, align 8
  store %struct.fc_bsg_reply* %18, %struct.fc_bsg_reply** %6, align 8
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %20 = call %struct.TYPE_10__* @shost_priv(%struct.Scsi_Host* %19)
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %7, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load %struct.qla_hw_data*, %struct.qla_hw_data** %22, align 8
  store %struct.qla_hw_data* %23, %struct.qla_hw_data** %8, align 8
  store i32 0, i32* %9, align 4
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %25 = call i32 @IS_QLA84XX(%struct.qla_hw_data* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @ql_dbg_user, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %30 = call i32 @ql_dbg(i32 %28, %struct.TYPE_10__* %29, i32 28719, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %72

33:                                               ; preds = %1
  %34 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %4, align 8
  %35 = getelementptr inbounds %struct.fc_bsg_request, %struct.fc_bsg_request* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 1
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %10, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* @A84_ISSUE_RESET_DIAG_FW, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @qla84xx_reset_chip(%struct.TYPE_10__* %41, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %33
  %50 = load i32, i32* @ql_log_warn, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %52 = call i32 @ql_log(i32 %50, %struct.TYPE_10__* %51, i32 28720, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @DID_ERROR, align 4
  %54 = shl i32 %53, 16
  store i32 %54, i32* %9, align 4
  br label %70

55:                                               ; preds = %33
  %56 = load i32, i32* @ql_dbg_user, align 4
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %58 = call i32 @ql_dbg(i32 %56, %struct.TYPE_10__* %57, i32 28721, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* @DID_OK, align 4
  %60 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %6, align 8
  %61 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %63 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %6, align 8
  %64 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %6, align 8
  %67 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @bsg_job_done(%struct.bsg_job* %62, i32 %65, i32 %68)
  br label %70

70:                                               ; preds = %55, %49
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %70, %27
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job*) #1

declare dso_local %struct.TYPE_10__* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @IS_QLA84XX(%struct.qla_hw_data*) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_10__*, i32, i8*) #1

declare dso_local i32 @qla84xx_reset_chip(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_10__*, i32, i8*) #1

declare dso_local i32 @bsg_job_done(%struct.bsg_job*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
