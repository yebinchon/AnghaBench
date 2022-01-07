; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_scan.c___scsi_scan_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_scan.c___scsi_scan_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.scsi_target = type { i32, i32 }

@SCAN_WILD_CARD = common dso_local global i32 0, align 4
@SCSI_SCAN_LUN_PRESENT = common dso_local global i32 0, align 4
@SCSI_SCAN_TARGET_PRESENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i32, i32, i32, i32)* @__scsi_scan_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__scsi_scan_target(%struct.device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.Scsi_Host*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.scsi_target*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.Scsi_Host* @dev_to_shost(%struct.device* %15)
  store %struct.Scsi_Host* %16, %struct.Scsi_Host** %11, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %18 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  br label %77

23:                                               ; preds = %5
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call %struct.scsi_target* @scsi_alloc_target(%struct.device* %24, i32 %25, i32 %26)
  store %struct.scsi_target* %27, %struct.scsi_target** %14, align 8
  %28 = load %struct.scsi_target*, %struct.scsi_target** %14, align 8
  %29 = icmp ne %struct.scsi_target* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  br label %77

31:                                               ; preds = %23
  %32 = load %struct.scsi_target*, %struct.scsi_target** %14, align 8
  %33 = call i32 @scsi_autopm_get_target(%struct.scsi_target* %32)
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @SCAN_WILD_CARD, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load %struct.scsi_target*, %struct.scsi_target** %14, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @scsi_probe_and_add_lun(%struct.scsi_target* %38, i32 %39, i32* null, i32* null, i32 %40, i32* null)
  br label %69

42:                                               ; preds = %31
  %43 = load %struct.scsi_target*, %struct.scsi_target** %14, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @scsi_probe_and_add_lun(%struct.scsi_target* %43, i32 0, i32* %12, i32* null, i32 %44, i32* null)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* @SCSI_SCAN_LUN_PRESENT, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @SCSI_SCAN_TARGET_PRESENT, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %49, %42
  %54 = load %struct.scsi_target*, %struct.scsi_target** %14, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i64 @scsi_report_lun_scan(%struct.scsi_target* %54, i32 %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %53
  %60 = load %struct.scsi_target*, %struct.scsi_target** %14, align 8
  %61 = load i32, i32* %12, align 4
  %62 = load %struct.scsi_target*, %struct.scsi_target** %14, align 8
  %63 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @scsi_sequential_lun_scan(%struct.scsi_target* %60, i32 %61, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %59, %53
  br label %68

68:                                               ; preds = %67, %49
  br label %69

69:                                               ; preds = %68, %37
  %70 = load %struct.scsi_target*, %struct.scsi_target** %14, align 8
  %71 = call i32 @scsi_autopm_put_target(%struct.scsi_target* %70)
  %72 = load %struct.scsi_target*, %struct.scsi_target** %14, align 8
  %73 = call i32 @scsi_target_reap(%struct.scsi_target* %72)
  %74 = load %struct.scsi_target*, %struct.scsi_target** %14, align 8
  %75 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %74, i32 0, i32 0
  %76 = call i32 @put_device(i32* %75)
  br label %77

77:                                               ; preds = %69, %30, %22
  ret void
}

declare dso_local %struct.Scsi_Host* @dev_to_shost(%struct.device*) #1

declare dso_local %struct.scsi_target* @scsi_alloc_target(%struct.device*, i32, i32) #1

declare dso_local i32 @scsi_autopm_get_target(%struct.scsi_target*) #1

declare dso_local i32 @scsi_probe_and_add_lun(%struct.scsi_target*, i32, i32*, i32*, i32, i32*) #1

declare dso_local i64 @scsi_report_lun_scan(%struct.scsi_target*, i32, i32) #1

declare dso_local i32 @scsi_sequential_lun_scan(%struct.scsi_target*, i32, i32, i32) #1

declare dso_local i32 @scsi_autopm_put_target(%struct.scsi_target*) #1

declare dso_local i32 @scsi_target_reap(%struct.scsi_target*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
