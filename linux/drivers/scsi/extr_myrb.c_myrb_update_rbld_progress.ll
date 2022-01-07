; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_myrb_update_rbld_progress.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_myrb_update_rbld_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myrb_hba = type { i32, i32 }
%struct.myrb_rbld_progress = type { i32, i32, i32 }
%struct.scsi_device = type { i32 }

@MYRB_NO_STDBY_RBLD_OR_CHECK_IN_PROGRESS = common dso_local global i16 0, align 2
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Rebuild in Progress, %d%% completed\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Rebuild Failed due to Logical Drive Failure\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Rebuild Failed due to Bad Blocks on Other Drives\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"Rebuild Failed due to Failure of Drive Being Rebuilt\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Rebuild Completed Successfully\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Rebuild Successfully Terminated\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.myrb_hba*)* @myrb_update_rbld_progress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @myrb_update_rbld_progress(%struct.myrb_hba* %0) #0 {
  %2 = alloca %struct.myrb_hba*, align 8
  %3 = alloca %struct.myrb_rbld_progress, align 4
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_device*, align 8
  store %struct.myrb_hba* %0, %struct.myrb_hba** %2, align 8
  %7 = load %struct.myrb_hba*, %struct.myrb_hba** %2, align 8
  %8 = call zeroext i16 @myrb_get_rbld_progress(%struct.myrb_hba* %7, %struct.myrb_rbld_progress* %3)
  store i16 %8, i16* %4, align 2
  %9 = load i16, i16* %4, align 2
  %10 = zext i16 %9 to i32
  %11 = load i16, i16* @MYRB_NO_STDBY_RBLD_OR_CHECK_IN_PROGRESS, align 2
  %12 = zext i16 %11 to i32
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.myrb_hba*, %struct.myrb_hba** %2, align 8
  %16 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 128
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i16 130, i16* %4, align 2
  br label %20

20:                                               ; preds = %19, %14, %1
  %21 = load i16, i16* %4, align 2
  %22 = zext i16 %21 to i32
  %23 = load i16, i16* @MYRB_NO_STDBY_RBLD_OR_CHECK_IN_PROGRESS, align 2
  %24 = zext i16 %23 to i32
  %25 = icmp ne i32 %22, %24
  br i1 %25, label %26, label %83

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.myrb_rbld_progress, %struct.myrb_rbld_progress* %3, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.myrb_rbld_progress, %struct.myrb_rbld_progress* %3, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sub i32 %28, %30
  store i32 %31, i32* %5, align 4
  %32 = load %struct.myrb_hba*, %struct.myrb_hba** %2, align 8
  %33 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.myrb_hba*, %struct.myrb_hba** %2, align 8
  %36 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @myrb_logical_channel(i32 %37)
  %39 = getelementptr inbounds %struct.myrb_rbld_progress, %struct.myrb_rbld_progress* %3, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.scsi_device* @scsi_device_lookup(i32 %34, i32 %38, i32 %40, i32 0)
  store %struct.scsi_device* %41, %struct.scsi_device** %6, align 8
  %42 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %43 = icmp ne %struct.scsi_device* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %26
  br label %88

45:                                               ; preds = %26
  %46 = load i16, i16* %4, align 2
  %47 = zext i16 %46 to i32
  switch i32 %47, label %79 [
    i32 128, label %48
    i32 132, label %59
    i32 133, label %63
    i32 131, label %67
    i32 130, label %71
    i32 129, label %75
  ]

48:                                               ; preds = %45
  %49 = load i32, i32* @KERN_INFO, align 4
  %50 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %51 = load i32, i32* %5, align 4
  %52 = lshr i32 %51, 7
  %53 = mul i32 100, %52
  %54 = getelementptr inbounds %struct.myrb_rbld_progress, %struct.myrb_rbld_progress* %3, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = lshr i32 %55, 7
  %57 = udiv i32 %53, %56
  %58 = call i32 (i32, %struct.scsi_device*, i8*, ...) @sdev_printk(i32 %49, %struct.scsi_device* %50, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %80

59:                                               ; preds = %45
  %60 = load i32, i32* @KERN_INFO, align 4
  %61 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %62 = call i32 (i32, %struct.scsi_device*, i8*, ...) @sdev_printk(i32 %60, %struct.scsi_device* %61, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %80

63:                                               ; preds = %45
  %64 = load i32, i32* @KERN_INFO, align 4
  %65 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %66 = call i32 (i32, %struct.scsi_device*, i8*, ...) @sdev_printk(i32 %64, %struct.scsi_device* %65, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  br label %80

67:                                               ; preds = %45
  %68 = load i32, i32* @KERN_INFO, align 4
  %69 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %70 = call i32 (i32, %struct.scsi_device*, i8*, ...) @sdev_printk(i32 %68, %struct.scsi_device* %69, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  br label %80

71:                                               ; preds = %45
  %72 = load i32, i32* @KERN_INFO, align 4
  %73 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %74 = call i32 (i32, %struct.scsi_device*, i8*, ...) @sdev_printk(i32 %72, %struct.scsi_device* %73, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %80

75:                                               ; preds = %45
  %76 = load i32, i32* @KERN_INFO, align 4
  %77 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %78 = call i32 (i32, %struct.scsi_device*, i8*, ...) @sdev_printk(i32 %76, %struct.scsi_device* %77, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %80

79:                                               ; preds = %45
  br label %80

80:                                               ; preds = %79, %75, %71, %67, %63, %59, %48
  %81 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %82 = call i32 @scsi_device_put(%struct.scsi_device* %81)
  br label %83

83:                                               ; preds = %80, %20
  %84 = load i16, i16* %4, align 2
  %85 = zext i16 %84 to i32
  %86 = load %struct.myrb_hba*, %struct.myrb_hba** %2, align 8
  %87 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %83, %44
  ret void
}

declare dso_local zeroext i16 @myrb_get_rbld_progress(%struct.myrb_hba*, %struct.myrb_rbld_progress*) #1

declare dso_local %struct.scsi_device* @scsi_device_lookup(i32, i32, i32, i32) #1

declare dso_local i32 @myrb_logical_channel(i32) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, ...) #1

declare dso_local i32 @scsi_device_put(%struct.scsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
