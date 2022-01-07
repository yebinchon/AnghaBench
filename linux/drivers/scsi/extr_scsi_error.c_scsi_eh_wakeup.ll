; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_error.c_scsi_eh_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_error.c_scsi_eh_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i64, i32, i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Waking error handler thread\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_eh_wakeup(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %3 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %4 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @lockdep_assert_held(i32 %5)
  %7 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %8 = call i64 @scsi_host_busy(%struct.Scsi_Host* %7)
  %9 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %10 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %8, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %15 = call i32 @trace_scsi_eh_wakeup(%struct.Scsi_Host* %14)
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %17 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @wake_up_process(i32 %18)
  %20 = load i32, i32* @KERN_INFO, align 4
  %21 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %22 = call i32 @shost_printk(i32 %20, %struct.Scsi_Host* %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @SCSI_LOG_ERROR_RECOVERY(i32 5, i32 %22)
  br label %24

24:                                               ; preds = %13, %1
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32) #1

declare dso_local i64 @scsi_host_busy(%struct.Scsi_Host*) #1

declare dso_local i32 @trace_scsi_eh_wakeup(%struct.Scsi_Host*) #1

declare dso_local i32 @wake_up_process(i32) #1

declare dso_local i32 @SCSI_LOG_ERROR_RECOVERY(i32, i32) #1

declare dso_local i32 @shost_printk(i32, %struct.Scsi_Host*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
