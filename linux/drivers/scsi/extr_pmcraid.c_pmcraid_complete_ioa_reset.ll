; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_complete_ioa_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_complete_ioa_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_cmd = type { %struct.pmcraid_instance* }
%struct.pmcraid_instance = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmcraid_cmd*)* @pmcraid_complete_ioa_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmcraid_complete_ioa_reset(%struct.pmcraid_cmd* %0) #0 {
  %2 = alloca %struct.pmcraid_cmd*, align 8
  %3 = alloca %struct.pmcraid_instance*, align 8
  %4 = alloca i64, align 8
  store %struct.pmcraid_cmd* %0, %struct.pmcraid_cmd** %2, align 8
  %5 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %6 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %5, i32 0, i32 0
  %7 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %6, align 8
  store %struct.pmcraid_instance* %7, %struct.pmcraid_instance** %3, align 8
  %8 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %9 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @spin_lock_irqsave(i32 %12, i64 %13)
  %15 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %16 = call i32 @pmcraid_ioa_reset(%struct.pmcraid_cmd* %15)
  %17 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %18 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32 %21, i64 %22)
  %24 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %25 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = call i32 @scsi_unblock_requests(%struct.TYPE_2__* %26)
  %28 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %29 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %28, i32 0, i32 0
  %30 = call i32 @schedule_work(i32* %29)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @pmcraid_ioa_reset(%struct.pmcraid_cmd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @scsi_unblock_requests(%struct.TYPE_2__*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
