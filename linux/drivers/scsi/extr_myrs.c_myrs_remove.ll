; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_myrs_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_myrs_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.myrs_hba = type { i32 }

@KERN_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Flushing Cache...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @myrs_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @myrs_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.myrs_hba*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.myrs_hba* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.myrs_hba* %5, %struct.myrs_hba** %3, align 8
  %6 = load %struct.myrs_hba*, %struct.myrs_hba** %3, align 8
  %7 = icmp eq %struct.myrs_hba* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %21

9:                                                ; preds = %1
  %10 = load i32, i32* @KERN_NOTICE, align 4
  %11 = load %struct.myrs_hba*, %struct.myrs_hba** %3, align 8
  %12 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @shost_printk(i32 %10, i32 %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.myrs_hba*, %struct.myrs_hba** %3, align 8
  %16 = call i32 @myrs_flush_cache(%struct.myrs_hba* %15)
  %17 = load %struct.myrs_hba*, %struct.myrs_hba** %3, align 8
  %18 = call i32 @myrs_destroy_mempools(%struct.myrs_hba* %17)
  %19 = load %struct.myrs_hba*, %struct.myrs_hba** %3, align 8
  %20 = call i32 @myrs_cleanup(%struct.myrs_hba* %19)
  br label %21

21:                                               ; preds = %9, %8
  ret void
}

declare dso_local %struct.myrs_hba* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @shost_printk(i32, i32, i8*) #1

declare dso_local i32 @myrs_flush_cache(%struct.myrs_hba*) #1

declare dso_local i32 @myrs_destroy_mempools(%struct.myrs_hba*) #1

declare dso_local i32 @myrs_cleanup(%struct.myrs_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
