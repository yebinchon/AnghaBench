; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_host_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_host_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.iscsi_host = type { i64, i64, i32, i32, i32 }

@ISCSI_HOST_REMOVED = common dso_local global i32 0, align 4
@iscsi_notify_host_removed = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsi_host_remove(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca %struct.iscsi_host*, align 8
  %4 = alloca i64, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %5 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %6 = call %struct.iscsi_host* @shost_priv(%struct.Scsi_Host* %5)
  store %struct.iscsi_host* %6, %struct.iscsi_host** %3, align 8
  %7 = load %struct.iscsi_host*, %struct.iscsi_host** %3, align 8
  %8 = getelementptr inbounds %struct.iscsi_host, %struct.iscsi_host* %7, i32 0, i32 3
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load i32, i32* @ISCSI_HOST_REMOVED, align 4
  %12 = load %struct.iscsi_host*, %struct.iscsi_host** %3, align 8
  %13 = getelementptr inbounds %struct.iscsi_host, %struct.iscsi_host* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 8
  %14 = load %struct.iscsi_host*, %struct.iscsi_host** %3, align 8
  %15 = getelementptr inbounds %struct.iscsi_host, %struct.iscsi_host* %14, i32 0, i32 3
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @spin_unlock_irqrestore(i32* %15, i64 %16)
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %19 = load i32, i32* @iscsi_notify_host_removed, align 4
  %20 = call i32 @iscsi_host_for_each_session(%struct.Scsi_Host* %18, i32 %19)
  %21 = load %struct.iscsi_host*, %struct.iscsi_host** %3, align 8
  %22 = getelementptr inbounds %struct.iscsi_host, %struct.iscsi_host* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.iscsi_host*, %struct.iscsi_host** %3, align 8
  %25 = getelementptr inbounds %struct.iscsi_host, %struct.iscsi_host* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @wait_event_interruptible(i32 %23, i32 %28)
  %30 = load i32, i32* @current, align 4
  %31 = call i64 @signal_pending(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %1
  %34 = load i32, i32* @current, align 4
  %35 = call i32 @flush_signals(i32 %34)
  br label %36

36:                                               ; preds = %33, %1
  %37 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %38 = call i32 @scsi_remove_host(%struct.Scsi_Host* %37)
  %39 = load %struct.iscsi_host*, %struct.iscsi_host** %3, align 8
  %40 = getelementptr inbounds %struct.iscsi_host, %struct.iscsi_host* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load %struct.iscsi_host*, %struct.iscsi_host** %3, align 8
  %45 = getelementptr inbounds %struct.iscsi_host, %struct.iscsi_host* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @destroy_workqueue(i64 %46)
  br label %48

48:                                               ; preds = %43, %36
  ret void
}

declare dso_local %struct.iscsi_host* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @iscsi_host_for_each_session(%struct.Scsi_Host*, i32) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @flush_signals(i32) #1

declare dso_local i32 @scsi_remove_host(%struct.Scsi_Host*) #1

declare dso_local i32 @destroy_workqueue(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
