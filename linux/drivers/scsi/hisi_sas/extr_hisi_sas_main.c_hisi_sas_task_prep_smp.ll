; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_task_prep_smp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_task_prep_smp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.hisi_hba*, %struct.hisi_sas_slot*)* }
%struct.hisi_sas_slot = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_hba*, %struct.hisi_sas_slot*)* @hisi_sas_task_prep_smp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hisi_sas_task_prep_smp(%struct.hisi_hba* %0, %struct.hisi_sas_slot* %1) #0 {
  %3 = alloca %struct.hisi_hba*, align 8
  %4 = alloca %struct.hisi_sas_slot*, align 8
  store %struct.hisi_hba* %0, %struct.hisi_hba** %3, align 8
  store %struct.hisi_sas_slot* %1, %struct.hisi_sas_slot** %4, align 8
  %5 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %6 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (%struct.hisi_hba*, %struct.hisi_sas_slot*)*, i32 (%struct.hisi_hba*, %struct.hisi_sas_slot*)** %8, align 8
  %10 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %11 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %4, align 8
  %12 = call i32 %9(%struct.hisi_hba* %10, %struct.hisi_sas_slot* %11)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
