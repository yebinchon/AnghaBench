; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_scsi.c_snic_process_io_failed_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_scsi.c_snic_process_io_failed_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snic = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.snic_icmnd_cmpl = type { i32, i32 }
%struct.scsi_cmnd = type { i32 }

@DID_TIME_OUT = common dso_local global i32 0, align 4
@DID_ABORT = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@DID_REQUEUE = common dso_local global i32 0, align 4
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"Invalid Hdr/Param or Req Not Supported or Cmnd Rejected or Device Offline. or Unknown\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"fw returns failed status %s flags 0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snic*, %struct.snic_icmnd_cmpl*, %struct.scsi_cmnd*, i32)* @snic_process_io_failed_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snic_process_io_failed_state(%struct.snic* %0, %struct.snic_icmnd_cmpl* %1, %struct.scsi_cmnd* %2, i32 %3) #0 {
  %5 = alloca %struct.snic*, align 8
  %6 = alloca %struct.snic_icmnd_cmpl*, align 8
  %7 = alloca %struct.scsi_cmnd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snic* %0, %struct.snic** %5, align 8
  store %struct.snic_icmnd_cmpl* %1, %struct.snic_icmnd_cmpl** %6, align 8
  store %struct.scsi_cmnd* %2, %struct.scsi_cmnd** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %8, align 4
  switch i32 %10, label %75 [
    i32 128, label %11
    i32 142, label %18
    i32 140, label %25
    i32 132, label %38
    i32 134, label %45
    i32 129, label %52
    i32 137, label %59
    i32 130, label %66
    i32 133, label %72
    i32 139, label %72
    i32 136, label %74
    i32 135, label %74
    i32 131, label %74
    i32 141, label %74
    i32 138, label %74
  ]

11:                                               ; preds = %4
  %12 = load %struct.snic*, %struct.snic** %5, align 8
  %13 = getelementptr inbounds %struct.snic, %struct.snic* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 3
  %16 = call i32 @atomic64_inc(i32* %15)
  %17 = load i32, i32* @DID_TIME_OUT, align 4
  store i32 %17, i32* %9, align 4
  br label %81

18:                                               ; preds = %4
  %19 = load %struct.snic*, %struct.snic** %5, align 8
  %20 = getelementptr inbounds %struct.snic, %struct.snic* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = call i32 @atomic64_inc(i32* %22)
  %24 = load i32, i32* @DID_ABORT, align 4
  store i32 %24, i32* %9, align 4
  br label %81

25:                                               ; preds = %4
  %26 = load %struct.snic*, %struct.snic** %5, align 8
  %27 = getelementptr inbounds %struct.snic, %struct.snic* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = call i32 @atomic64_inc(i32* %29)
  %31 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %32 = load %struct.snic_icmnd_cmpl*, %struct.snic_icmnd_cmpl** %6, align 8
  %33 = getelementptr inbounds %struct.snic_icmnd_cmpl, %struct.snic_icmnd_cmpl* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le32_to_cpu(i32 %34)
  %36 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %31, i32 %35)
  %37 = load i32, i32* @DID_ERROR, align 4
  store i32 %37, i32* %9, align 4
  br label %81

38:                                               ; preds = %4
  %39 = load %struct.snic*, %struct.snic** %5, align 8
  %40 = getelementptr inbounds %struct.snic, %struct.snic* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  %43 = call i32 @atomic64_inc(i32* %42)
  %44 = load i32, i32* @DID_REQUEUE, align 4
  store i32 %44, i32* %9, align 4
  br label %81

45:                                               ; preds = %4
  %46 = load %struct.snic*, %struct.snic** %5, align 8
  %47 = getelementptr inbounds %struct.snic, %struct.snic* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = call i32 @atomic64_inc(i32* %49)
  %51 = load i32, i32* @DID_ERROR, align 4
  store i32 %51, i32* %9, align 4
  br label %81

52:                                               ; preds = %4
  %53 = load %struct.snic*, %struct.snic** %5, align 8
  %54 = getelementptr inbounds %struct.snic, %struct.snic* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = call i32 @atomic64_inc(i32* %56)
  %58 = load i32, i32* @DID_ERROR, align 4
  store i32 %58, i32* %9, align 4
  br label %81

59:                                               ; preds = %4
  %60 = load %struct.snic*, %struct.snic** %5, align 8
  %61 = getelementptr inbounds %struct.snic, %struct.snic* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = call i32 @atomic64_inc(i32* %63)
  %65 = load i32, i32* @DID_ERROR, align 4
  store i32 %65, i32* %9, align 4
  br label %81

66:                                               ; preds = %4
  %67 = load %struct.snic*, %struct.snic** %5, align 8
  %68 = getelementptr inbounds %struct.snic, %struct.snic* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = call i32 @atomic64_inc(i32* %70)
  br label %81

72:                                               ; preds = %4, %4
  %73 = load i32, i32* @DID_NO_CONNECT, align 4
  store i32 %73, i32* %9, align 4
  br label %81

74:                                               ; preds = %4, %4, %4, %4, %4
  br label %75

75:                                               ; preds = %4, %74
  %76 = load %struct.snic*, %struct.snic** %5, align 8
  %77 = getelementptr inbounds %struct.snic, %struct.snic* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @SNIC_SCSI_DBG(i32 %78, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0))
  %80 = load i32, i32* @DID_ERROR, align 4
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %75, %72, %66, %59, %52, %45, %38, %25, %18, %11
  %82 = load %struct.snic*, %struct.snic** %5, align 8
  %83 = getelementptr inbounds %struct.snic, %struct.snic* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @snic_io_status_to_str(i32 %85)
  %87 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %88 = call i32 @CMD_FLAGS(%struct.scsi_cmnd* %87)
  %89 = call i32 @SNIC_HOST_ERR(i32 %84, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %88)
  %90 = load i32, i32* %9, align 4
  %91 = shl i32 %90, 16
  %92 = load %struct.snic_icmnd_cmpl*, %struct.snic_icmnd_cmpl** %6, align 8
  %93 = getelementptr inbounds %struct.snic_icmnd_cmpl, %struct.snic_icmnd_cmpl* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %91, %94
  %96 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %97 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  ret void
}

declare dso_local i32 @atomic64_inc(i32*) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @SNIC_SCSI_DBG(i32, i8*) #1

declare dso_local i32 @SNIC_HOST_ERR(i32, i8*, i32, i32) #1

declare dso_local i32 @snic_io_status_to_str(i32) #1

declare dso_local i32 @CMD_FLAGS(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
