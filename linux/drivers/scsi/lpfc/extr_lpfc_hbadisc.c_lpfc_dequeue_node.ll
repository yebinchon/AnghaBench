; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_dequeue_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_dequeue_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32 }
%struct.lpfc_nodelist = type { i64, i32 }
%struct.Scsi_Host = type { i32 }

@NLP_STE_UNUSED_NODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_dequeue_node(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1) #0 {
  %3 = alloca %struct.lpfc_vport*, align 8
  %4 = alloca %struct.lpfc_nodelist*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %3, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %4, align 8
  %6 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %7 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %6)
  store %struct.Scsi_Host* %7, %struct.Scsi_Host** %5, align 8
  %8 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %9 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %10 = call i32 @lpfc_cancel_retry_delay_tmo(%struct.lpfc_vport* %8, %struct.lpfc_nodelist* %9)
  %11 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %12 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %17 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %16, i32 0, i32 1
  %18 = call i32 @list_empty(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %22 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %23 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @lpfc_nlp_counters(%struct.lpfc_vport* %21, i64 %24, i32 -1)
  br label %26

26:                                               ; preds = %20, %15, %2
  %27 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %28 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @spin_lock_irq(i32 %29)
  %31 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %32 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %31, i32 0, i32 1
  %33 = call i32 @list_del_init(i32* %32)
  %34 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %35 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @spin_unlock_irq(i32 %36)
  %38 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %39 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %40 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %41 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* @NLP_STE_UNUSED_NODE, align 4
  %44 = call i32 @lpfc_nlp_state_cleanup(%struct.lpfc_vport* %38, %struct.lpfc_nodelist* %39, i64 %42, i32 %43)
  ret void
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_cancel_retry_delay_tmo(%struct.lpfc_vport*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @lpfc_nlp_counters(%struct.lpfc_vport*, i64, i32) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_nlp_state_cleanup(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
