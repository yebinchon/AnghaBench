; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla26xx_serdes_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla26xx_serdes_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.fc_bsg_reply* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.fc_bsg_reply = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.Scsi_Host = type { i32 }
%struct.qla_serdes_reg = type { i32, i32, i32 }

@ql_dbg_user = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unknown serdes cmd %x.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EXT_STATUS_MAILBOX = common dso_local global i32 0, align 4
@DID_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsg_job*)* @qla26xx_serdes_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla26xx_serdes_op(%struct.bsg_job* %0) #0 {
  %2 = alloca %struct.bsg_job*, align 8
  %3 = alloca %struct.fc_bsg_reply*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qla_serdes_reg, align 4
  store %struct.bsg_job* %0, %struct.bsg_job** %2, align 8
  %8 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %9 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %8, i32 0, i32 3
  %10 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %9, align 8
  store %struct.fc_bsg_reply* %10, %struct.fc_bsg_reply** %3, align 8
  %11 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %12 = call %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job* %11)
  store %struct.Scsi_Host* %12, %struct.Scsi_Host** %4, align 8
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %14 = call i32* @shost_priv(%struct.Scsi_Host* %13)
  store i32* %14, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %15 = call i32 @memset(%struct.qla_serdes_reg* %7, i32 0, i32 12)
  %16 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %17 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %21 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @sg_copy_to_buffer(i32 %19, i32 %23, %struct.qla_serdes_reg* %7, i32 12)
  %25 = getelementptr inbounds %struct.qla_serdes_reg, %struct.qla_serdes_reg* %7, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %53 [
    i32 128, label %27
    i32 129, label %36
  ]

27:                                               ; preds = %1
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds %struct.qla_serdes_reg, %struct.qla_serdes_reg* %7, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.qla_serdes_reg, %struct.qla_serdes_reg* %7, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @qla2x00_write_serdes_word(i32* %28, i32 %30, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %3, align 8
  %35 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  br label %61

36:                                               ; preds = %1
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds %struct.qla_serdes_reg, %struct.qla_serdes_reg* %7, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.qla_serdes_reg, %struct.qla_serdes_reg* %7, i32 0, i32 1
  %41 = call i32 @qla2x00_read_serdes_word(i32* %37, i32 %39, i32* %40)
  store i32 %41, i32* %6, align 4
  %42 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %43 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %47 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @sg_copy_from_buffer(i32 %45, i32 %49, %struct.qla_serdes_reg* %7, i32 12)
  %51 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %3, align 8
  %52 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %51, i32 0, i32 0
  store i32 12, i32* %52, align 8
  br label %61

53:                                               ; preds = %1
  %54 = load i32, i32* @ql_dbg_user, align 4
  %55 = load i32*, i32** %5, align 8
  %56 = getelementptr inbounds %struct.qla_serdes_reg, %struct.qla_serdes_reg* %7, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ql_dbg(i32 %54, i32* %55, i32 28812, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %53, %36, %27
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i32, i32* @EXT_STATUS_MAILBOX, align 4
  br label %67

66:                                               ; preds = %61
  br label %67

67:                                               ; preds = %66, %64
  %68 = phi i32 [ %65, %64 ], [ 0, %66 ]
  %69 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %3, align 8
  %70 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  store i32 %68, i32* %74, align 4
  %75 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %76 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %75, i32 0, i32 0
  store i32 16, i32* %76, align 8
  %77 = load i32, i32* @DID_OK, align 4
  %78 = shl i32 %77, 16
  %79 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %3, align 8
  %80 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %82 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %3, align 8
  %83 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %3, align 8
  %86 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @bsg_job_done(%struct.bsg_job* %81, i32 %84, i32 %87)
  ret i32 0
}

declare dso_local %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job*) #1

declare dso_local i32* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @memset(%struct.qla_serdes_reg*, i32, i32) #1

declare dso_local i32 @sg_copy_to_buffer(i32, i32, %struct.qla_serdes_reg*, i32) #1

declare dso_local i32 @qla2x00_write_serdes_word(i32*, i32, i32) #1

declare dso_local i32 @qla2x00_read_serdes_word(i32*, i32, i32*) #1

declare dso_local i32 @sg_copy_from_buffer(i32, i32, %struct.qla_serdes_reg*, i32) #1

declare dso_local i32 @ql_dbg(i32, i32*, i32, i8*, i32) #1

declare dso_local i32 @bsg_job_done(%struct.bsg_job*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
