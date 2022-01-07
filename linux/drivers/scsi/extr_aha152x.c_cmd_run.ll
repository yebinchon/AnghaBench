; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_aha152x.c_cmd_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_aha152x.c_cmd_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32* }
%struct.Scsi_Host = type { i32 }

@CMD_I = common dso_local global i64 0, align 8
@CURRENT_SC = common dso_local global %struct.TYPE_2__* null, align 8
@SSTAT0 = common dso_local global i32 0, align 4
@SPIORDY = common dso_local global i32 0, align 4
@SCSIDAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*)* @cmd_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_run(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  br label %3

3:                                                ; preds = %15, %1
  %4 = load i64, i64* @CMD_I, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CURRENT_SC, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp slt i64 %4, %7
  br i1 %8, label %9, label %25

9:                                                ; preds = %3
  %10 = load i32, i32* @SSTAT0, align 4
  %11 = load i32, i32* @SPIORDY, align 4
  %12 = call i64 @TESTLO(i32 %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %25

15:                                               ; preds = %9
  %16 = load i32, i32* @SCSIDAT, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CURRENT_SC, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @CMD_I, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* @CMD_I, align 8
  %22 = getelementptr inbounds i32, i32* %19, i64 %20
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @SETPORT(i32 %16, i32 %23)
  br label %3

25:                                               ; preds = %14, %3
  ret void
}

declare dso_local i64 @TESTLO(i32, i32) #1

declare dso_local i32 @SETPORT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
