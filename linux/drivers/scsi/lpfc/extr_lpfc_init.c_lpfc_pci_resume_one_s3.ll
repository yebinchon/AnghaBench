; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_pci_resume_one_s3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_pci_resume_one_s3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64 }
%struct.Scsi_Host = type { i64 }
%struct.lpfc_hba = type { i64, i32, i32 }
%struct.lpfc_vport = type { %struct.lpfc_hba* }

@KERN_INFO = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"0452 PCI device Power Management resume.\0A\00", align 1
@PCI_D0 = common dso_local global i32 0, align 4
@lpfc_do_work = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"lpfc_worker_%d\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"0434 PM resume failed to start worker thread: error=x%x.\0A\00", align 1
@LPFC_INTR_ERROR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"0430 PM resume Failed to enable interrupt\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @lpfc_pci_resume_one_s3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_pci_resume_one_s3(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = call %struct.Scsi_Host* @pci_get_drvdata(%struct.pci_dev* %8)
  store %struct.Scsi_Host* %9, %struct.Scsi_Host** %4, align 8
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %11 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.lpfc_vport*
  %14 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %13, i32 0, i32 0
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %14, align 8
  store %struct.lpfc_hba* %15, %struct.lpfc_hba** %5, align 8
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %17 = load i32, i32* @KERN_INFO, align 4
  %18 = load i32, i32* @LOG_INIT, align 4
  %19 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %16, i32 %17, i32 %18, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %21 = load i32, i32* @PCI_D0, align 4
  %22 = call i32 @pci_set_power_state(%struct.pci_dev* %20, i32 %21)
  %23 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %24 = call i32 @pci_restore_state(%struct.pci_dev* %23)
  %25 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %26 = call i32 @pci_save_state(%struct.pci_dev* %25)
  %27 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %33 = call i32 @pci_set_master(%struct.pci_dev* %32)
  br label %34

34:                                               ; preds = %31, %1
  %35 = load i32, i32* @lpfc_do_work, align 4
  %36 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %37 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %38 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @kthread_run(i32 %35, %struct.lpfc_hba* %36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %42 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %44 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @IS_ERR(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %34
  %49 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %50 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @PTR_ERR(i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %54 = load i32, i32* @KERN_ERR, align 4
  %55 = load i32, i32* @LOG_INIT, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %53, i32 %54, i32 %55, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %2, align 4
  br label %89

59:                                               ; preds = %34
  %60 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %61 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %62 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @lpfc_sli_enable_intr(%struct.lpfc_hba* %60, i64 %63)
  store i64 %64, i64* %6, align 8
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* @LPFC_INTR_ERROR, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %59
  %69 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %70 = load i32, i32* @KERN_ERR, align 4
  %71 = load i32, i32* @LOG_INIT, align 4
  %72 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %69, i32 %70, i32 %71, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %73 = load i32, i32* @EIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %89

75:                                               ; preds = %59
  %76 = load i64, i64* %6, align 8
  %77 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %78 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %75
  %80 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %81 = call i32 @lpfc_sli_brdrestart(%struct.lpfc_hba* %80)
  %82 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %83 = call i32 @lpfc_online(%struct.lpfc_hba* %82)
  %84 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %85 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %86 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @lpfc_log_intr_mode(%struct.lpfc_hba* %84, i64 %87)
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %79, %68, %48
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.Scsi_Host* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_restore_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @kthread_run(i32, %struct.lpfc_hba*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @lpfc_sli_enable_intr(%struct.lpfc_hba*, i64) #1

declare dso_local i32 @lpfc_sli_brdrestart(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_online(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_log_intr_mode(%struct.lpfc_hba*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
