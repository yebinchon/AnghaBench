; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_scsi.c_snic_tgt_scsi_abort_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_scsi.c_snic_tgt_scsi_abort_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snic_tgt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.snic = type { i32, i32 }
%struct.scsi_cmnd = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"tgt_abt_io: Cleaning Pending IOs.\0A\00", align 1
@SNIC_TGT_DAS = common dso_local global i64 0, align 8
@SNIC_ITMF_ABTS_TASK = common dso_local global i32 0, align 4
@SNIC_ITMF_ABTS_TASK_TERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"tgt_abt_io: Tag %x, Failed w err = %d\0A\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"tgt_abt_io: abt_cnt = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snic_tgt_scsi_abort_io(%struct.snic_tgt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snic_tgt*, align 8
  %4 = alloca %struct.snic*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.snic_tgt*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snic_tgt* %0, %struct.snic_tgt** %3, align 8
  store %struct.snic* null, %struct.snic** %4, align 8
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %5, align 8
  store %struct.snic_tgt* null, %struct.snic_tgt** %6, align 8
  store i32* null, i32** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.snic_tgt*, %struct.snic_tgt** %3, align 8
  %14 = icmp ne %struct.snic_tgt* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %106

16:                                               ; preds = %1
  %17 = load %struct.snic_tgt*, %struct.snic_tgt** %3, align 8
  %18 = call i32 @snic_tgt_to_shost(%struct.snic_tgt* %17)
  %19 = call %struct.snic* @shost_priv(i32 %18)
  store %struct.snic* %19, %struct.snic** %4, align 8
  %20 = load %struct.snic*, %struct.snic** %4, align 8
  %21 = getelementptr inbounds %struct.snic, %struct.snic* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i32, i8*, ...) @SNIC_SCSI_DBG(i32 %22, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.snic_tgt*, %struct.snic_tgt** %3, align 8
  %25 = getelementptr inbounds %struct.snic_tgt, %struct.snic_tgt* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SNIC_TGT_DAS, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %16
  %31 = load i32, i32* @SNIC_ITMF_ABTS_TASK, align 4
  store i32 %31, i32* %12, align 4
  br label %34

32:                                               ; preds = %16
  %33 = load i32, i32* @SNIC_ITMF_ABTS_TASK_TERM, align 4
  store i32 %33, i32* %12, align 4
  br label %34

34:                                               ; preds = %32, %30
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %97, %34
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.snic*, %struct.snic** %4, align 8
  %38 = getelementptr inbounds %struct.snic, %struct.snic* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %100

41:                                               ; preds = %35
  %42 = load %struct.snic*, %struct.snic** %4, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32* @snic_io_lock_tag(%struct.snic* %42, i32 %43)
  store i32* %44, i32** %7, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @spin_lock_irqsave(i32* %45, i64 %46)
  %48 = load %struct.snic*, %struct.snic** %4, align 8
  %49 = getelementptr inbounds %struct.snic, %struct.snic* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call %struct.scsi_cmnd* @scsi_host_find_tag(i32 %50, i32 %51)
  store %struct.scsi_cmnd* %52, %struct.scsi_cmnd** %5, align 8
  %53 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %54 = icmp ne %struct.scsi_cmnd* %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %41
  %56 = load i32*, i32** %7, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  br label %97

59:                                               ; preds = %41
  %60 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %61 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @scsi_target(i32 %62)
  %64 = call %struct.snic_tgt* @starget_to_tgt(i32 %63)
  store %struct.snic_tgt* %64, %struct.snic_tgt** %6, align 8
  %65 = load %struct.snic_tgt*, %struct.snic_tgt** %6, align 8
  %66 = load %struct.snic_tgt*, %struct.snic_tgt** %3, align 8
  %67 = icmp ne %struct.snic_tgt* %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %59
  %69 = load i32*, i32** %7, align 8
  %70 = load i64, i64* %8, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  br label %97

72:                                               ; preds = %59
  %73 = load i32*, i32** %7, align 8
  %74 = load i64, i64* %8, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  %76 = load %struct.snic*, %struct.snic** %4, align 8
  %77 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @snic_internal_abort_io(%struct.snic* %76, %struct.scsi_cmnd* %77, i32 %78)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %72
  %83 = load %struct.snic*, %struct.snic** %4, align 8
  %84 = getelementptr inbounds %struct.snic, %struct.snic* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @SNIC_HOST_ERR(i32 %85, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %87)
  br label %97

89:                                               ; preds = %72
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @SUCCESS, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %11, align 4
  br label %96

96:                                               ; preds = %93, %89
  br label %97

97:                                               ; preds = %96, %82, %68, %55
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %10, align 4
  br label %35

100:                                              ; preds = %35
  %101 = load %struct.snic*, %struct.snic** %4, align 8
  %102 = getelementptr inbounds %struct.snic, %struct.snic* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %11, align 4
  %105 = call i32 (i32, i8*, ...) @SNIC_SCSI_DBG(i32 %103, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %104)
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %100, %15
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local %struct.snic* @shost_priv(i32) #1

declare dso_local i32 @snic_tgt_to_shost(%struct.snic_tgt*) #1

declare dso_local i32 @SNIC_SCSI_DBG(i32, i8*, ...) #1

declare dso_local i32* @snic_io_lock_tag(%struct.snic*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.scsi_cmnd* @scsi_host_find_tag(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.snic_tgt* @starget_to_tgt(i32) #1

declare dso_local i32 @scsi_target(i32) #1

declare dso_local i32 @snic_internal_abort_io(%struct.snic*, %struct.scsi_cmnd*, i32) #1

declare dso_local i32 @SNIC_HOST_ERR(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
