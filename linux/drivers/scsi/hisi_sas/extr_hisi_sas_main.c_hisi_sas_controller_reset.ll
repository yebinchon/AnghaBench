; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_controller_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_controller_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32, i32, %struct.TYPE_2__*, i32, i32, i64, %struct.Scsi_Host*, %struct.device* }
%struct.TYPE_2__ = type { {}* }
%struct.Scsi_Host = type { i32 }
%struct.device = type { i32 }

@hisi_sas_debugfs_enable = common dso_local global i64 0, align 8
@HISI_SAS_RESET_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"controller resetting...\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"controller reset failed (%d)\0A\00", align 1
@HISI_SAS_REJECT_CMD_BIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"controller reset complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hisi_hba*)* @hisi_sas_controller_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_sas_controller_reset(%struct.hisi_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hisi_hba*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca i32, align 4
  store %struct.hisi_hba* %0, %struct.hisi_hba** %3, align 8
  %7 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %8 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %7, i32 0, i32 7
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %11 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %10, i32 0, i32 6
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  store %struct.Scsi_Host* %12, %struct.Scsi_Host** %5, align 8
  %13 = load i64, i64* @hisi_sas_debugfs_enable, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %1
  %16 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %17 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %22 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %25 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %24, i32 0, i32 3
  %26 = call i32 @queue_work(i32 %23, i32* %25)
  br label %27

27:                                               ; preds = %20, %15, %1
  %28 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %29 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = bitcast {}** %31 to i32 (%struct.hisi_hba*)**
  %33 = load i32 (%struct.hisi_hba*)*, i32 (%struct.hisi_hba*)** %32, align 8
  %34 = icmp ne i32 (%struct.hisi_hba*)* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %27
  store i32 -1, i32* %2, align 4
  br label %81

36:                                               ; preds = %27
  %37 = load i32, i32* @HISI_SAS_RESET_BIT, align 4
  %38 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %39 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %38, i32 0, i32 0
  %40 = call i64 @test_and_set_bit(i32 %37, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 -1, i32* %2, align 4
  br label %81

43:                                               ; preds = %36
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = call i32 @dev_info(%struct.device* %44, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %47 = call i32 @hisi_sas_controller_reset_prepare(%struct.hisi_hba* %46)
  %48 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %49 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = bitcast {}** %51 to i32 (%struct.hisi_hba*)**
  %53 = load i32 (%struct.hisi_hba*)*, i32 (%struct.hisi_hba*)** %52, align 8
  %54 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %55 = call i32 %53(%struct.hisi_hba* %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %43
  %59 = load %struct.device*, %struct.device** %4, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @dev_warn(%struct.device* %59, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @HISI_SAS_REJECT_CMD_BIT, align 4
  %63 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %64 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %63, i32 0, i32 0
  %65 = call i32 @clear_bit(i32 %62, i32* %64)
  %66 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %67 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %66, i32 0, i32 1
  %68 = call i32 @up(i32* %67)
  %69 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %70 = call i32 @scsi_unblock_requests(%struct.Scsi_Host* %69)
  %71 = load i32, i32* @HISI_SAS_RESET_BIT, align 4
  %72 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %73 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %72, i32 0, i32 0
  %74 = call i32 @clear_bit(i32 %71, i32* %73)
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %2, align 4
  br label %81

76:                                               ; preds = %43
  %77 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %78 = call i32 @hisi_sas_controller_reset_done(%struct.hisi_hba* %77)
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = call i32 @dev_info(%struct.device* %79, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %76, %58, %42, %35
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @hisi_sas_controller_reset_prepare(%struct.hisi_hba*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @scsi_unblock_requests(%struct.Scsi_Host*) #1

declare dso_local i32 @hisi_sas_controller_reset_done(%struct.hisi_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
