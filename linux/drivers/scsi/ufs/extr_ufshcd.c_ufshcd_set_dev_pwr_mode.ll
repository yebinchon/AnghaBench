; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_set_dev_pwr_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_set_dev_pwr_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32, i32, %struct.TYPE_2__*, %struct.scsi_device* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.scsi_device = type { i32 }
%struct.scsi_sense_hdr = type { i32 }

@START_STOP = common dso_local global i8 0, align 1
@ENODEV = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4
@START_STOP_TIMEOUT = common dso_local global i32 0, align 4
@RQF_PM = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"START_STOP failed for power mode: %d, result %x\0A\00", align 1
@DRIVER_SENSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufs_hba*, i32)* @ufshcd_set_dev_pwr_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufshcd_set_dev_pwr_mode(%struct.ufs_hba* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ufs_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [6 x i8], align 1
  %7 = alloca %struct.scsi_sense_hdr, align 4
  %8 = alloca %struct.scsi_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ufs_hba* %0, %struct.ufs_hba** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 0
  %12 = load i8, i8* @START_STOP, align 1
  store i8 %12, i8* %11, align 1
  %13 = getelementptr inbounds i8, i8* %11, i64 1
  %14 = getelementptr inbounds i8, i8* %11, i64 6
  br label %15

15:                                               ; preds = %15, %2
  %16 = phi i8* [ %13, %2 ], [ %17, %15 ]
  store i8 0, i8* %16, align 1
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  %18 = icmp eq i8* %17, %14
  br i1 %18, label %19, label %15

19:                                               ; preds = %15
  %20 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %21 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @spin_lock_irqsave(i32 %24, i64 %25)
  %27 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %28 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %27, i32 0, i32 3
  %29 = load %struct.scsi_device*, %struct.scsi_device** %28, align 8
  store %struct.scsi_device* %29, %struct.scsi_device** %8, align 8
  %30 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %31 = icmp ne %struct.scsi_device* %30, null
  br i1 %31, label %32, label %47

32:                                               ; preds = %19
  %33 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %34 = call i32 @scsi_device_get(%struct.scsi_device* %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %32
  %38 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %39 = call i32 @scsi_device_online(%struct.scsi_device* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %10, align 4
  %44 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %45 = call i32 @scsi_device_put(%struct.scsi_device* %44)
  br label %46

46:                                               ; preds = %41, %37, %32
  br label %50

47:                                               ; preds = %19
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %47, %46
  %51 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %52 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32 %55, i64 %56)
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %50
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %3, align 4
  br label %124

62:                                               ; preds = %50
  %63 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %64 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i32 1, i32* %66, align 4
  %67 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %68 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %62
  %72 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %73 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %74 = call i32 @ufshcd_send_request_sense(%struct.ufs_hba* %72, %struct.scsi_device* %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %116

78:                                               ; preds = %71
  %79 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %80 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %79, i32 0, i32 0
  store i32 0, i32* %80, align 8
  br label %81

81:                                               ; preds = %78, %62
  %82 = load i32, i32* %5, align 4
  %83 = shl i32 %82, 4
  %84 = trunc i32 %83 to i8
  %85 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 4
  store i8 %84, i8* %85, align 1
  %86 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %87 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 0
  %88 = load i32, i32* @DMA_NONE, align 4
  %89 = load i32, i32* @START_STOP_TIMEOUT, align 4
  %90 = load i32, i32* @RQF_PM, align 4
  %91 = call i32 @scsi_execute(%struct.scsi_device* %86, i8* %87, i32 %88, i32* null, i32 0, i32* null, %struct.scsi_sense_hdr* %7, i32 %89, i32 0, i32 0, i32 %90, i32* null)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %108

94:                                               ; preds = %81
  %95 = load i32, i32* @KERN_WARNING, align 4
  %96 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @sdev_printk(i32 %95, %struct.scsi_device* %96, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %97, i32 %98)
  %100 = load i32, i32* %10, align 4
  %101 = call i64 @driver_byte(i32 %100)
  %102 = load i64, i64* @DRIVER_SENSE, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %94
  %105 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %106 = call i32 @scsi_print_sense_hdr(%struct.scsi_device* %105, i32* null, %struct.scsi_sense_hdr* %7)
  br label %107

107:                                              ; preds = %104, %94
  br label %108

108:                                              ; preds = %107, %81
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %5, align 4
  %113 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %114 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  br label %115

115:                                              ; preds = %111, %108
  br label %116

116:                                              ; preds = %115, %77
  %117 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %118 = call i32 @scsi_device_put(%struct.scsi_device* %117)
  %119 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %120 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %119, i32 0, i32 2
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  store i32 0, i32* %122, align 4
  %123 = load i32, i32* %10, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %116, %60
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @scsi_device_get(%struct.scsi_device*) #1

declare dso_local i32 @scsi_device_online(%struct.scsi_device*) #1

declare dso_local i32 @scsi_device_put(%struct.scsi_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @ufshcd_send_request_sense(%struct.ufs_hba*, %struct.scsi_device*) #1

declare dso_local i32 @scsi_execute(%struct.scsi_device*, i8*, i32, i32*, i32, i32*, %struct.scsi_sense_hdr*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i32, i32) #1

declare dso_local i64 @driver_byte(i32) #1

declare dso_local i32 @scsi_print_sense_hdr(%struct.scsi_device*, i32*, %struct.scsi_sense_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
