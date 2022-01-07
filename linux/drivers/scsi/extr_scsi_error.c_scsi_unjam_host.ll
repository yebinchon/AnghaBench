; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_error.c_scsi_unjam_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_error.c_scsi_unjam_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32, i32, i64, i32 }

@eh_work_q = common dso_local global i32 0, align 4
@eh_done_q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*)* @scsi_unjam_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsi_unjam_host(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca i64, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %4 = load i32, i32* @eh_work_q, align 4
  %5 = call i32 @LIST_HEAD(i32 %4)
  %6 = load i32, i32* @eh_done_q, align 4
  %7 = call i32 @LIST_HEAD(i32 %6)
  %8 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %9 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @spin_lock_irqsave(i32 %10, i64 %11)
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %14 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %13, i32 0, i32 3
  %15 = call i32 @list_splice_init(i32* %14, i32* @eh_work_q)
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %17 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32 %18, i64 %19)
  %21 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %22 = call i32 @scsi_eh_prt_fail_stats(%struct.Scsi_Host* %21, i32* @eh_work_q)
  %23 = call i32 @SCSI_LOG_ERROR_RECOVERY(i32 1, i32 %22)
  %24 = call i32 @scsi_eh_get_sense(i32* @eh_work_q, i32* @eh_done_q)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %28 = call i32 @scsi_eh_ready_devs(%struct.Scsi_Host* %27, i32* @eh_work_q, i32* @eh_done_q)
  br label %29

29:                                               ; preds = %26, %1
  %30 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %31 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %3, align 8
  %34 = call i32 @spin_lock_irqsave(i32 %32, i64 %33)
  %35 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %36 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, -1
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %41 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  br label %42

42:                                               ; preds = %39, %29
  %43 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %44 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %3, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32 %45, i64 %46)
  %48 = call i32 @scsi_eh_flush_done_q(i32* @eh_done_q)
  ret void
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @list_splice_init(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @SCSI_LOG_ERROR_RECOVERY(i32, i32) #1

declare dso_local i32 @scsi_eh_prt_fail_stats(%struct.Scsi_Host*, i32*) #1

declare dso_local i32 @scsi_eh_get_sense(i32*, i32*) #1

declare dso_local i32 @scsi_eh_ready_devs(%struct.Scsi_Host*, i32*, i32*) #1

declare dso_local i32 @scsi_eh_flush_done_q(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
