; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_error.c_scsi_eh_scmd_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_error.c_scsi_eh_scmd_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32, i32, i32, i64, i32 }

@SHOST_RECOVERY = common dso_local global i32 0, align 4
@SHOST_CANCEL_RECOVERY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@scsi_eh_inc_host_failed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_eh_scmd_add(%struct.scsi_cmnd* %0) #0 {
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
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %12 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON_ONCE(i32 %16)
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %19 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @spin_lock_irqsave(i32 %20, i64 %21)
  %23 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %24 = load i32, i32* @SHOST_RECOVERY, align 4
  %25 = call i32 @scsi_host_set_state(%struct.Scsi_Host* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %1
  %28 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %29 = load i32, i32* @SHOST_CANCEL_RECOVERY, align 4
  %30 = call i32 @scsi_host_set_state(%struct.Scsi_Host* %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @WARN_ON_ONCE(i32 %31)
  br label %33

33:                                               ; preds = %27, %1
  %34 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %35 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, -1
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %40 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = load i64, i64* @jiffies, align 8
  %45 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %46 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %45, i32 0, i32 3
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %43, %38, %33
  %48 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %49 = call i32 @scsi_eh_reset(%struct.scsi_cmnd* %48)
  %50 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %51 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %50, i32 0, i32 1
  %52 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %53 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %52, i32 0, i32 2
  %54 = call i32 @list_add_tail(i32* %51, i32* %53)
  %55 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %56 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i64, i64* %4, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32 %57, i64 %58)
  %60 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %61 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %60, i32 0, i32 0
  %62 = load i32, i32* @scsi_eh_inc_host_failed, align 4
  %63 = call i32 @call_rcu(i32* %61, i32 %62)
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @scsi_host_set_state(%struct.Scsi_Host*, i32) #1

declare dso_local i32 @scsi_eh_reset(%struct.scsi_cmnd*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
