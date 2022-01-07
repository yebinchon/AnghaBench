; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_scan_finished.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_scan_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32, i64 }
%struct.lpfc_vport = type { i32, i64, i64, i64, i64, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FC_UNLOADING = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"0461 Scanning longer than 30 seconds.  Continuing initialization\0A\00", align 1
@LPFC_LINK_DOWN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [67 x i8] c"0465 Link down longer than 15 seconds.  Continuing initialization\0A\00", align 1
@LPFC_VPORT_READY = common dso_local global i64 0, align 8
@LPFC_SLI_MBOX_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_scan_finished(%struct.Scsi_Host* %0, i64 %1) #0 {
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_hba*, align 8
  %7 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %9 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.lpfc_vport*
  store %struct.lpfc_vport* %11, %struct.lpfc_vport** %5, align 8
  %12 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %13 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %12, i32 0, i32 5
  %14 = load %struct.lpfc_hba*, %struct.lpfc_hba** %13, align 8
  store %struct.lpfc_hba* %14, %struct.lpfc_hba** %6, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %16 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @spin_lock_irq(i32 %17)
  %19 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %20 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @FC_UNLOADING, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %88

26:                                               ; preds = %2
  %27 = load i64, i64* %4, align 8
  %28 = call i64 @msecs_to_jiffies(i32 30000)
  %29 = icmp uge i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %32 = load i32, i32* @KERN_INFO, align 4
  %33 = load i32, i32* @LOG_INIT, align 4
  %34 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %31, i32 %32, i32 %33, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %88

35:                                               ; preds = %26
  %36 = load i64, i64* %4, align 8
  %37 = call i64 @msecs_to_jiffies(i32 15000)
  %38 = icmp uge i64 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %41 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @LPFC_LINK_DOWN, align 8
  %44 = icmp sle i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %47 = load i32, i32* @KERN_INFO, align 4
  %48 = load i32, i32* @LOG_INIT, align 4
  %49 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %46, i32 %47, i32 %48, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %88

50:                                               ; preds = %39, %35
  %51 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %52 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @LPFC_VPORT_READY, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %88

57:                                               ; preds = %50
  %58 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %59 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %64 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62, %57
  br label %88

68:                                               ; preds = %62
  %69 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %70 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load i64, i64* %4, align 8
  %75 = call i64 @msecs_to_jiffies(i32 2000)
  %76 = icmp ult i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %88

78:                                               ; preds = %73, %68
  %79 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %80 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @LPFC_SLI_MBOX_ACTIVE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  br label %88

87:                                               ; preds = %78
  store i32 1, i32* %7, align 4
  br label %88

88:                                               ; preds = %87, %86, %77, %67, %56, %45, %30, %25
  %89 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %90 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @spin_unlock_irq(i32 %91)
  %93 = load i32, i32* %7, align 4
  ret i32 %93
}

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
