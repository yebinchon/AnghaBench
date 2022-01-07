; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_init.c_esas2r_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_init.c_esas2r_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.Scsi_Host = type { i64 }
%struct.esas2r_adapter = type { i32, i32 }

@ESAS2R_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"resuming adapter()\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"pci_set_power_state(PCI_D0) called\00", align 1
@PCI_D0 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"pci_enable_wake(PCI_D0, 0) called\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"pci_restore_state() called\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"pci_enable_device() called\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ESAS2R_LOG_CRIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"could not re-map PCI regions!\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"yikes, esas2r_power_up failed\00", align 1
@AF2_IRQ_CLAIMED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"yikes, unable to claim IRQ\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"could not re-claim IRQ!\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"esas2r_resume(): %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esas2r_resume(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.esas2r_adapter*, align 8
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.Scsi_Host* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.Scsi_Host* %7, %struct.Scsi_Host** %3, align 8
  %8 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %9 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.esas2r_adapter*
  store %struct.esas2r_adapter* %11, %struct.esas2r_adapter** %4, align 8
  %12 = load i32, i32* @ESAS2R_LOG_INFO, align 4
  %13 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = call i32 (i32, i32*, i8*, ...) @esas2r_log_dev(i32 %12, i32* %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ESAS2R_LOG_INFO, align 4
  %17 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 0
  %19 = call i32 (i32, i32*, i8*, ...) @esas2r_log_dev(i32 %16, i32* %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %21 = load i32, i32* @PCI_D0, align 4
  %22 = call i32 @pci_set_power_state(%struct.pci_dev* %20, i32 %21)
  %23 = load i32, i32* @ESAS2R_LOG_INFO, align 4
  %24 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 0
  %26 = call i32 (i32, i32*, i8*, ...) @esas2r_log_dev(i32 %23, i32* %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %27 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %28 = load i32, i32* @PCI_D0, align 4
  %29 = call i32 @pci_enable_wake(%struct.pci_dev* %27, i32 %28, i32 0)
  %30 = load i32, i32* @ESAS2R_LOG_INFO, align 4
  %31 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 0
  %33 = call i32 (i32, i32*, i8*, ...) @esas2r_log_dev(i32 %30, i32* %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %34 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %35 = call i32 @pci_restore_state(%struct.pci_dev* %34)
  %36 = load i32, i32* @ESAS2R_LOG_INFO, align 4
  %37 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 0
  %39 = call i32 (i32, i32*, i8*, ...) @esas2r_log_dev(i32 %36, i32* %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %40 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %41 = call i32 @pci_enable_device(%struct.pci_dev* %40)
  store i32 %41, i32* %5, align 4
  %42 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %43 = call i32 @pci_set_master(%struct.pci_dev* %42)
  %44 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %45 = icmp ne %struct.esas2r_adapter* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %1
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %93

49:                                               ; preds = %1
  %50 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %51 = call i64 @esas2r_map_regions(%struct.esas2r_adapter* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i32, i32* @ESAS2R_LOG_CRIT, align 4
  %55 = call i32 @esas2r_log(i32 %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %93

58:                                               ; preds = %49
  %59 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %60 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %61 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @esas2r_setup_interrupts(%struct.esas2r_adapter* %59, i32 %62)
  %64 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %65 = call i32 @esas2r_disable_chip_interrupts(%struct.esas2r_adapter* %64)
  %66 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %67 = call i32 @esas2r_power_up(%struct.esas2r_adapter* %66, i32 1)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %58
  %70 = call i32 @esas2r_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  br label %93

73:                                               ; preds = %58
  %74 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %75 = call i32 @esas2r_claim_interrupts(%struct.esas2r_adapter* %74)
  %76 = load i32, i32* @AF2_IRQ_CLAIMED, align 4
  %77 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %78 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %77, i32 0, i32 0
  %79 = call i64 @test_bit(i32 %76, i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %73
  %82 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %83 = call i32 @esas2r_enable_chip_interrupts(%struct.esas2r_adapter* %82)
  %84 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %85 = call i32 @esas2r_kickoff_timer(%struct.esas2r_adapter* %84)
  br label %92

86:                                               ; preds = %73
  %87 = call i32 @esas2r_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %88 = load i32, i32* @ESAS2R_LOG_CRIT, align 4
  %89 = call i32 @esas2r_log(i32 %88, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %5, align 4
  br label %93

92:                                               ; preds = %81
  br label %93

93:                                               ; preds = %92, %86, %69, %53, %46
  %94 = load i32, i32* @ESAS2R_LOG_CRIT, align 4
  %95 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %96 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %95, i32 0, i32 0
  %97 = load i32, i32* %5, align 4
  %98 = call i32 (i32, i32*, i8*, ...) @esas2r_log_dev(i32 %94, i32* %96, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local %struct.Scsi_Host* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @esas2r_log_dev(i32, i32*, i8*, ...) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_enable_wake(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_restore_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i64 @esas2r_map_regions(%struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_log(i32, i8*) #1

declare dso_local i32 @esas2r_setup_interrupts(%struct.esas2r_adapter*, i32) #1

declare dso_local i32 @esas2r_disable_chip_interrupts(%struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_power_up(%struct.esas2r_adapter*, i32) #1

declare dso_local i32 @esas2r_debug(i8*) #1

declare dso_local i32 @esas2r_claim_interrupts(%struct.esas2r_adapter*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @esas2r_enable_chip_interrupts(%struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_kickoff_timer(%struct.esas2r_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
