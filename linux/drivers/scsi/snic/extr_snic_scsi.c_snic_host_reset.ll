; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_scsi.c_snic_host_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_scsi.c_snic_host_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"host reset:sc %p sc_cmd 0x%x req %p tag %d flags 0x%llx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snic_host_reset(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %6 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %7 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  store %struct.Scsi_Host* %10, %struct.Scsi_Host** %3, align 8
  %11 = load i64, i64* @jiffies, align 8
  store i64 %11, i64* %4, align 8
  %12 = load i32, i32* @FAILED, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %16 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %21 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %24 = call i32 @snic_cmd_tag(%struct.scsi_cmnd* %23)
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %26 = call i32 @CMD_FLAGS(%struct.scsi_cmnd* %25)
  %27 = call i32 @SNIC_SCSI_DBG(%struct.Scsi_Host* %13, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), %struct.scsi_cmnd* %14, i32 %19, i32 %22, i32 %24, i32 %26)
  %28 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %29 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %30 = call i32 @snic_reset(%struct.Scsi_Host* %28, %struct.scsi_cmnd* %29)
  store i32 %30, i32* %5, align 4
  %31 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %32 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %35 = call i32 @snic_cmd_tag(%struct.scsi_cmnd* %34)
  %36 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %37 = ptrtoint %struct.scsi_cmnd* %36 to i32
  %38 = load i64, i64* @jiffies, align 8
  %39 = load i64, i64* %4, align 8
  %40 = sub nsw i64 %38, %39
  %41 = call i32 @jiffies_to_msecs(i64 %40)
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %43 = call i32 @SNIC_TRC_CMD(%struct.scsi_cmnd* %42)
  %44 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %45 = call i32 @SNIC_TRC_CMD_STATE_FLAGS(%struct.scsi_cmnd* %44)
  %46 = call i32 @SNIC_TRC(i32 %33, i32 %35, i32 %37, i32 %41, i32 0, i32 %43, i32 %45)
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @SNIC_SCSI_DBG(%struct.Scsi_Host*, i8*, %struct.scsi_cmnd*, i32, i32, i32, i32) #1

declare dso_local i32 @snic_cmd_tag(%struct.scsi_cmnd*) #1

declare dso_local i32 @CMD_FLAGS(%struct.scsi_cmnd*) #1

declare dso_local i32 @snic_reset(%struct.Scsi_Host*, %struct.scsi_cmnd*) #1

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
