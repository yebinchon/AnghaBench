; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_init.c_csio_shost_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_init.c_csio_shost_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_lnode = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.csio_hw = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @csio_shost_exit(%struct.csio_lnode* %0) #0 {
  %2 = alloca %struct.csio_lnode*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.csio_hw*, align 8
  store %struct.csio_lnode* %0, %struct.csio_lnode** %2, align 8
  %5 = load %struct.csio_lnode*, %struct.csio_lnode** %2, align 8
  %6 = call %struct.Scsi_Host* @csio_ln_to_shost(%struct.csio_lnode* %5)
  store %struct.Scsi_Host* %6, %struct.Scsi_Host** %3, align 8
  %7 = load %struct.csio_lnode*, %struct.csio_lnode** %2, align 8
  %8 = call %struct.csio_hw* @csio_lnode_to_hw(%struct.csio_lnode* %7)
  store %struct.csio_hw* %8, %struct.csio_hw** %4, align 8
  %9 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %10 = call i32 @fc_remove_host(%struct.Scsi_Host* %9)
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %12 = call i32 @scsi_remove_host(%struct.Scsi_Host* %11)
  %13 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %14 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %13, i32 0, i32 0
  %15 = call i32 @spin_lock_irq(i32* %14)
  %16 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %17 = call i32 @csio_evtq_flush(%struct.csio_hw* %16)
  %18 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %19 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %18, i32 0, i32 0
  %20 = call i32 @spin_unlock_irq(i32* %19)
  %21 = load %struct.csio_lnode*, %struct.csio_lnode** %2, align 8
  %22 = call i32 @csio_lnode_exit(%struct.csio_lnode* %21)
  %23 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %24 = call i32 @scsi_host_put(%struct.Scsi_Host* %23)
  ret void
}

declare dso_local %struct.Scsi_Host* @csio_ln_to_shost(%struct.csio_lnode*) #1

declare dso_local %struct.csio_hw* @csio_lnode_to_hw(%struct.csio_lnode*) #1

declare dso_local i32 @fc_remove_host(%struct.Scsi_Host*) #1

declare dso_local i32 @scsi_remove_host(%struct.Scsi_Host*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @csio_evtq_flush(%struct.csio_hw*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @csio_lnode_exit(%struct.csio_lnode*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
