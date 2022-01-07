; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_scsi.c_snic_abort_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_scsi.c_snic_abort_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.snic = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@SUCCESS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"abt_cmd:sc %p :0x%x :req = %p :tag = %d\0A\00", align 1
@SNIC_ONLINE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"abt_cmd: tag %x Parent Devs are not rdy\0A\00", align 1
@FAST_IO_FAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"abts: Abort Req Status = %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"SUCCESS\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"FAST_IO_FAIL\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snic_abort_cmd(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.snic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %7 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %8 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %7, i32 0, i32 2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.snic* @shost_priv(i32 %11)
  store %struct.snic* %12, %struct.snic** %3, align 8
  %13 = load i32, i32* @SUCCESS, align 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %15 = call i32 @snic_cmd_tag(%struct.scsi_cmnd* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i64, i64* @jiffies, align 8
  store i64 %16, i64* %6, align 8
  %17 = load %struct.snic*, %struct.snic** %3, align 8
  %18 = getelementptr inbounds %struct.snic, %struct.snic* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %22 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %27 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 (%struct.TYPE_5__*, i8*, ...) @SNIC_SCSI_DBG(%struct.TYPE_5__* %19, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.scsi_cmnd* %20, i32 %25, i32 %28, i32 %29)
  %31 = load %struct.snic*, %struct.snic** %3, align 8
  %32 = call i64 @snic_get_state(%struct.snic* %31)
  %33 = load i64, i64* @SNIC_ONLINE, align 8
  %34 = icmp ne i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %1
  %39 = load %struct.snic*, %struct.snic** %3, align 8
  %40 = getelementptr inbounds %struct.snic, %struct.snic* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @SNIC_HOST_ERR(%struct.TYPE_5__* %41, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @FAST_IO_FAIL, align 4
  store i32 %44, i32* %4, align 4
  br label %56

45:                                               ; preds = %1
  %46 = load %struct.snic*, %struct.snic** %3, align 8
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %48 = call i32 @snic_send_abort_and_wait(%struct.snic* %46, %struct.scsi_cmnd* %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %56

52:                                               ; preds = %45
  %53 = load %struct.snic*, %struct.snic** %3, align 8
  %54 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %55 = call i32 @snic_abort_finish(%struct.snic* %53, %struct.scsi_cmnd* %54)
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %52, %51, %38
  %57 = load %struct.snic*, %struct.snic** %3, align 8
  %58 = getelementptr inbounds %struct.snic, %struct.snic* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %64 = ptrtoint %struct.scsi_cmnd* %63 to i32
  %65 = load i64, i64* @jiffies, align 8
  %66 = load i64, i64* %6, align 8
  %67 = sub nsw i64 %65, %66
  %68 = call i32 @jiffies_to_msecs(i64 %67)
  %69 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %70 = call i32 @SNIC_TRC_CMD(%struct.scsi_cmnd* %69)
  %71 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %72 = call i32 @SNIC_TRC_CMD_STATE_FLAGS(%struct.scsi_cmnd* %71)
  %73 = call i32 @SNIC_TRC(i32 %61, i32 %62, i32 %64, i32 %68, i32 0, i32 %70, i32 %72)
  %74 = load %struct.snic*, %struct.snic** %3, align 8
  %75 = getelementptr inbounds %struct.snic, %struct.snic* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @SUCCESS, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %56
  br label %87

81:                                               ; preds = %56
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @FAST_IO_FAIL, align 4
  %84 = icmp eq i32 %82, %83
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)
  br label %87

87:                                               ; preds = %81, %80
  %88 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %80 ], [ %86, %81 ]
  %89 = call i32 (%struct.TYPE_5__*, i8*, ...) @SNIC_SCSI_DBG(%struct.TYPE_5__* %76, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %88)
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.snic* @shost_priv(i32) #1

declare dso_local i32 @snic_cmd_tag(%struct.scsi_cmnd*) #1

declare dso_local i32 @SNIC_SCSI_DBG(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @snic_get_state(%struct.snic*) #1

declare dso_local i32 @SNIC_HOST_ERR(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @snic_send_abort_and_wait(%struct.snic*, %struct.scsi_cmnd*) #1

declare dso_local i32 @snic_abort_finish(%struct.snic*, %struct.scsi_cmnd*) #1

declare dso_local i32 @SNIC_TRC(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @SNIC_TRC_CMD(%struct.scsi_cmnd*) #1

declare dso_local i32 @SNIC_TRC_CMD_STATE_FLAGS(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
