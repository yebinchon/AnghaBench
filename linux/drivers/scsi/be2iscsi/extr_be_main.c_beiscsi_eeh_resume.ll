; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_eeh_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_eeh_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.beiscsi_hba = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"BM_%d : AER EEH resume failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @beiscsi_eeh_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @beiscsi_eeh_resume(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.beiscsi_hba*, align 8
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call i64 @pci_get_drvdata(%struct.pci_dev* %5)
  %7 = inttoptr i64 %6 to %struct.beiscsi_hba*
  store %struct.beiscsi_hba* %7, %struct.beiscsi_hba** %3, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %9 = call i32 @pci_save_state(%struct.pci_dev* %8)
  %10 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %11 = call i32 @beiscsi_enable_port(%struct.beiscsi_hba* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %16 = load i32, i32* @KERN_ERR, align 4
  %17 = call i32 @__beiscsi_log(%struct.beiscsi_hba* %15, i32 %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %14, %1
  ret void
}

declare dso_local i64 @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i32 @beiscsi_enable_port(%struct.beiscsi_hba*) #1

declare dso_local i32 @__beiscsi_log(%struct.beiscsi_hba*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
