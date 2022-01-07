; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_scsi.c_snic_queuecommand.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_scsi.c_snic_queuecommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.scsi_cmnd = type { i32, %struct.TYPE_6__*, i32*, i32 (%struct.scsi_cmnd*)* }
%struct.TYPE_6__ = type { i32 }
%struct.snic_tgt = type { i32 }
%struct.snic = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Tgt %p id %d Not Ready.\0A\00", align 1
@SNIC_ONLINE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"snic state is %s\0A\00", align 1
@snic_state_str = common dso_local global i32* null, align 8
@SCSI_MLQUEUE_HOST_BUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"sc %p Tag %d (sc %0x) lun %lld in snic_qcmd\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Failed to Q, Scsi Req w/ err %d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snic_queuecommand(%struct.Scsi_Host* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.snic_tgt*, align 8
  %7 = alloca %struct.snic*, align 8
  %8 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  store %struct.snic_tgt* null, %struct.snic_tgt** %6, align 8
  %9 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %10 = call %struct.snic* @shost_priv(%struct.Scsi_Host* %9)
  store %struct.snic* %10, %struct.snic** %7, align 8
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %12 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = call i32 @scsi_target(%struct.TYPE_6__* %13)
  %15 = call %struct.snic_tgt* @starget_to_tgt(i32 %14)
  store %struct.snic_tgt* %15, %struct.snic_tgt** %6, align 8
  %16 = load %struct.snic_tgt*, %struct.snic_tgt** %6, align 8
  %17 = call i32 @snic_tgt_chkready(%struct.snic_tgt* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %2
  %21 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %22 = load %struct.snic_tgt*, %struct.snic_tgt** %6, align 8
  %23 = load %struct.snic_tgt*, %struct.snic_tgt** %6, align 8
  %24 = getelementptr inbounds %struct.snic_tgt, %struct.snic_tgt* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (%struct.Scsi_Host*, i8*, ...) @SNIC_HOST_ERR(%struct.Scsi_Host* %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.snic_tgt* %22, i32 %25)
  %27 = load %struct.snic*, %struct.snic** %7, align 8
  %28 = getelementptr inbounds %struct.snic, %struct.snic* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = call i32 @atomic64_inc(i32* %30)
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %34 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %36 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %35, i32 0, i32 3
  %37 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %36, align 8
  %38 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %39 = call i32 %37(%struct.scsi_cmnd* %38)
  store i32 0, i32* %3, align 4
  br label %89

40:                                               ; preds = %2
  %41 = load %struct.snic*, %struct.snic** %7, align 8
  %42 = call i64 @snic_get_state(%struct.snic* %41)
  %43 = load i64, i64* @SNIC_ONLINE, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %47 = load i32*, i32** @snic_state_str, align 8
  %48 = load %struct.snic*, %struct.snic** %7, align 8
  %49 = call i64 @snic_get_state(%struct.snic* %48)
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (%struct.Scsi_Host*, i8*, ...) @SNIC_HOST_ERR(%struct.Scsi_Host* %46, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %53, i32* %3, align 4
  br label %89

54:                                               ; preds = %40
  %55 = load %struct.snic*, %struct.snic** %7, align 8
  %56 = getelementptr inbounds %struct.snic, %struct.snic* %55, i32 0, i32 0
  %57 = call i32 @atomic_inc(i32* %56)
  %58 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %59 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %60 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %61 = call i32 @snic_cmd_tag(%struct.scsi_cmnd* %60)
  %62 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %63 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %68 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @SNIC_SCSI_DBG(%struct.Scsi_Host* %58, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), %struct.scsi_cmnd* %59, i32 %61, i32 %66, i32 %71)
  %73 = load %struct.snic*, %struct.snic** %7, align 8
  %74 = load %struct.snic_tgt*, %struct.snic_tgt** %6, align 8
  %75 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %76 = call i32 @snic_issue_scsi_req(%struct.snic* %73, %struct.snic_tgt* %74, %struct.scsi_cmnd* %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %54
  %80 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i32 (%struct.Scsi_Host*, i8*, ...) @SNIC_HOST_ERR(%struct.Scsi_Host* %80, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %79, %54
  %85 = load %struct.snic*, %struct.snic** %7, align 8
  %86 = getelementptr inbounds %struct.snic, %struct.snic* %85, i32 0, i32 0
  %87 = call i32 @atomic_dec(i32* %86)
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %84, %45, %20
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.snic* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local %struct.snic_tgt* @starget_to_tgt(i32) #1

declare dso_local i32 @scsi_target(%struct.TYPE_6__*) #1

declare dso_local i32 @snic_tgt_chkready(%struct.snic_tgt*) #1

declare dso_local i32 @SNIC_HOST_ERR(%struct.Scsi_Host*, i8*, ...) #1

declare dso_local i32 @atomic64_inc(i32*) #1

declare dso_local i64 @snic_get_state(%struct.snic*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @SNIC_SCSI_DBG(%struct.Scsi_Host*, i8*, %struct.scsi_cmnd*, i32, i32, i32) #1

declare dso_local i32 @snic_cmd_tag(%struct.scsi_cmnd*) #1

declare dso_local i32 @snic_issue_scsi_req(%struct.snic*, %struct.snic_tgt*, %struct.scsi_cmnd*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
