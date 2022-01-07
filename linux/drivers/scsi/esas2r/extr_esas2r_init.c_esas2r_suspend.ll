; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_init.c_esas2r_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_init.c_esas2r_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.Scsi_Host = type { i64 }
%struct.esas2r_adapter = type { i32 }

@ESAS2R_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"suspending adapter()\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"pci_save_state() called\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"pci_disable_device() called\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"pci_set_power_state() called\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"esas2r_suspend(): 0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esas2r_suspend(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.esas2r_adapter*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = call %struct.Scsi_Host* @pci_get_drvdata(%struct.pci_dev* %9)
  store %struct.Scsi_Host* %10, %struct.Scsi_Host** %6, align 8
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %12 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.esas2r_adapter*
  store %struct.esas2r_adapter* %14, %struct.esas2r_adapter** %8, align 8
  %15 = load i32, i32* @ESAS2R_LOG_INFO, align 4
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 0
  %18 = call i32 @esas2r_log_dev(i32 %15, i32* %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %8, align 8
  %20 = icmp ne %struct.esas2r_adapter* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %53

24:                                               ; preds = %2
  %25 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %8, align 8
  %26 = call i32 @esas2r_adapter_power_down(%struct.esas2r_adapter* %25, i32 1)
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @pci_choose_state(%struct.pci_dev* %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* @ESAS2R_LOG_INFO, align 4
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 0
  %33 = call i32 @esas2r_log_dev(i32 %30, i32* %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = call i32 @pci_save_state(%struct.pci_dev* %34)
  %36 = load i32, i32* @ESAS2R_LOG_INFO, align 4
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 0
  %39 = call i32 @esas2r_log_dev(i32 %36, i32* %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = call i32 @pci_disable_device(%struct.pci_dev* %40)
  %42 = load i32, i32* @ESAS2R_LOG_INFO, align 4
  %43 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %44 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %43, i32 0, i32 0
  %45 = call i32 @esas2r_log_dev(i32 %42, i32* %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @pci_set_power_state(%struct.pci_dev* %46, i32 %47)
  %49 = load i32, i32* @ESAS2R_LOG_INFO, align 4
  %50 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %51 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %50, i32 0, i32 0
  %52 = call i32 @esas2r_log_dev(i32 %49, i32* %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %24, %21
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.Scsi_Host* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @esas2r_log_dev(i32, i32*, i8*) #1

declare dso_local i32 @esas2r_adapter_power_down(%struct.esas2r_adapter*, i32) #1

declare dso_local i32 @pci_choose_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
