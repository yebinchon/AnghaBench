; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_alloc_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_alloc_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ufs_hba = type { i32, i32, %struct.device*, %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Invalid memory reference for dev is NULL\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ufshcd_driver_template = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"scsi_host_alloc failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@REF_CLK_FREQ_INVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ufshcd_alloc_host(%struct.device* %0, %struct.ufs_hba** %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.ufs_hba**, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.ufs_hba*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.ufs_hba** %1, %struct.ufs_hba*** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = icmp ne %struct.device* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call i32 @dev_err(%struct.device* %11, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %7, align 4
  br label %41

15:                                               ; preds = %2
  %16 = call %struct.Scsi_Host* @scsi_host_alloc(i32* @ufshcd_driver_template, i32 24)
  store %struct.Scsi_Host* %16, %struct.Scsi_Host** %5, align 8
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %18 = icmp ne %struct.Scsi_Host* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = call i32 @dev_err(%struct.device* %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %41

24:                                               ; preds = %15
  %25 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %26 = call %struct.ufs_hba* @shost_priv(%struct.Scsi_Host* %25)
  store %struct.ufs_hba* %26, %struct.ufs_hba** %6, align 8
  %27 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %28 = load %struct.ufs_hba*, %struct.ufs_hba** %6, align 8
  %29 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %28, i32 0, i32 3
  store %struct.Scsi_Host* %27, %struct.Scsi_Host** %29, align 8
  %30 = load %struct.device*, %struct.device** %3, align 8
  %31 = load %struct.ufs_hba*, %struct.ufs_hba** %6, align 8
  %32 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %31, i32 0, i32 2
  store %struct.device* %30, %struct.device** %32, align 8
  %33 = load %struct.ufs_hba*, %struct.ufs_hba** %6, align 8
  %34 = load %struct.ufs_hba**, %struct.ufs_hba*** %4, align 8
  store %struct.ufs_hba* %33, %struct.ufs_hba** %34, align 8
  %35 = load i32, i32* @REF_CLK_FREQ_INVAL, align 4
  %36 = load %struct.ufs_hba*, %struct.ufs_hba** %6, align 8
  %37 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.ufs_hba*, %struct.ufs_hba** %6, align 8
  %39 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %38, i32 0, i32 0
  %40 = call i32 @INIT_LIST_HEAD(i32* %39)
  br label %41

41:                                               ; preds = %24, %19, %10
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.Scsi_Host* @scsi_host_alloc(i32*, i32) #1

declare dso_local %struct.ufs_hba* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
