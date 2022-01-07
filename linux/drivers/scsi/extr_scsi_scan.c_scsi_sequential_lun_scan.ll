; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_scan.c_scsi_sequential_lun_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_scan.c_scsi_sequential_lun_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_target = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.Scsi_Host = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"scsi scan: Sequential scan\0A\00", align 1
@max_scsi_luns = common dso_local global i32 0, align 4
@BLIST_SPARSELUN = common dso_local global i32 0, align 4
@BLIST_FORCELUN = common dso_local global i32 0, align 4
@BLIST_MAX5LUN = common dso_local global i32 0, align 4
@SCSI_3 = common dso_local global i32 0, align 4
@BLIST_LARGELUN = common dso_local global i32 0, align 4
@SCSI_SCAN_LUN_PRESENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_target*, i32, i32, i32)* @scsi_sequential_lun_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsi_sequential_lun_scan(%struct.scsi_target* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.scsi_target*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.Scsi_Host*, align 8
  store %struct.scsi_target* %0, %struct.scsi_target** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.scsi_target*, %struct.scsi_target** %5, align 8
  %14 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.Scsi_Host* @dev_to_shost(i32 %16)
  store %struct.Scsi_Host* %17, %struct.Scsi_Host** %12, align 8
  %18 = load i32, i32* @KERN_INFO, align 4
  %19 = load %struct.scsi_target*, %struct.scsi_target** %5, align 8
  %20 = call i32 @starget_printk(i32 %18, %struct.scsi_target* %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @SCSI_LOG_SCAN_BUS(i32 3, i32 %20)
  %22 = load i32, i32* @max_scsi_luns, align 4
  %23 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %24 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @min(i32 %22, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @BLIST_SPARSELUN, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %4
  %32 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %33 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %36

35:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %35, %31
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @BLIST_FORCELUN, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %43 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %41, %36
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @BLIST_MAX5LUN, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @min(i32 5, i32 %51)
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %50, %45
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @SCSI_3, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @BLIST_LARGELUN, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @min(i32 8, i32 %63)
  store i32 %64, i32* %9, align 4
  br label %68

65:                                               ; preds = %57, %53
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @min(i32 256, i32 %66)
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %65, %62
  store i32 1, i32* %11, align 4
  br label %69

69:                                               ; preds = %85, %68
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %88

73:                                               ; preds = %69
  %74 = load %struct.scsi_target*, %struct.scsi_target** %5, align 8
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i64 @scsi_probe_and_add_lun(%struct.scsi_target* %74, i32 %75, i32* null, i32* null, i32 %76, i32* null)
  %78 = load i64, i64* @SCSI_SCAN_LUN_PRESENT, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %73
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %80
  br label %88

84:                                               ; preds = %80, %73
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %11, align 4
  br label %69

88:                                               ; preds = %83, %69
  ret void
}

declare dso_local %struct.Scsi_Host* @dev_to_shost(i32) #1

declare dso_local i32 @SCSI_LOG_SCAN_BUS(i32, i32) #1

declare dso_local i32 @starget_printk(i32, %struct.scsi_target*, i8*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @scsi_probe_and_add_lun(%struct.scsi_target*, i32, i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
