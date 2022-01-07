; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_raid_state_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_raid_state_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.scsi_device = type { %struct.myrb_pdev_state*, i32 }
%struct.myrb_pdev_state = type { i32, i32 }
%struct.myrb_hba = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"kill\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"offline\00", align 1
@MYRB_DEVICE_DEAD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"online\00", align 1
@MYRB_DEVICE_ONLINE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"standby\00", align 1
@MYRB_DEVICE_STANDBY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"Failed - no physical device information\0A\00", align 1
@ENXIO = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"Failed - device not present\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Failed - Unable to Start Device\0A\00", align 1
@EAGAIN = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [31 x i8] c"Failed - No Device at Address\0A\00", align 1
@ENODEV = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [48 x i8] c"Failed - Invalid Channel or Target or Modifier\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Failed - Channel Busy\0A\00", align 1
@EBUSY = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [33 x i8] c"Failed - Unexpected Status %04X\0A\00", align 1
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @raid_state_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @raid_state_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.scsi_device*, align 8
  %11 = alloca %struct.myrb_hba*, align 8
  %12 = alloca %struct.myrb_pdev_state*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i16, align 2
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.scsi_device* @to_scsi_device(%struct.device* %15)
  store %struct.scsi_device* %16, %struct.scsi_device** %10, align 8
  %17 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %18 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.myrb_hba* @shost_priv(i32 %19)
  store %struct.myrb_hba* %20, %struct.myrb_hba** %11, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @strncmp(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @strncmp(i8* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24, %4
  %29 = load i32, i32* @MYRB_DEVICE_DEAD, align 4
  store i32 %29, i32* %13, align 4
  br label %47

30:                                               ; preds = %24
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @strncmp(i8* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* @MYRB_DEVICE_ONLINE, align 4
  store i32 %35, i32* %13, align 4
  br label %46

36:                                               ; preds = %30
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @strncmp(i8* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 7)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* @MYRB_DEVICE_STANDBY, align 4
  store i32 %41, i32* %13, align 4
  br label %45

42:                                               ; preds = %36
  %43 = load i64, i64* @EINVAL, align 8
  %44 = sub i64 0, %43
  store i64 %44, i64* %5, align 8
  br label %120

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %45, %34
  br label %47

47:                                               ; preds = %46, %28
  %48 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %49 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %48, i32 0, i32 0
  %50 = load %struct.myrb_pdev_state*, %struct.myrb_pdev_state** %49, align 8
  store %struct.myrb_pdev_state* %50, %struct.myrb_pdev_state** %12, align 8
  %51 = load %struct.myrb_pdev_state*, %struct.myrb_pdev_state** %12, align 8
  %52 = icmp ne %struct.myrb_pdev_state* %51, null
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* @KERN_INFO, align 4
  %55 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %56 = call i32 (i32, %struct.scsi_device*, i8*, ...) @sdev_printk(i32 %54, %struct.scsi_device* %55, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %57 = load i64, i64* @ENXIO, align 8
  %58 = sub i64 0, %57
  store i64 %58, i64* %5, align 8
  br label %120

59:                                               ; preds = %47
  %60 = load %struct.myrb_pdev_state*, %struct.myrb_pdev_state** %12, align 8
  %61 = getelementptr inbounds %struct.myrb_pdev_state, %struct.myrb_pdev_state* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* @KERN_INFO, align 4
  %66 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %67 = call i32 (i32, %struct.scsi_device*, i8*, ...) @sdev_printk(i32 %65, %struct.scsi_device* %66, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %68 = load i64, i64* @ENXIO, align 8
  %69 = sub i64 0, %68
  store i64 %69, i64* %5, align 8
  br label %120

70:                                               ; preds = %59
  %71 = load %struct.myrb_pdev_state*, %struct.myrb_pdev_state** %12, align 8
  %72 = getelementptr inbounds %struct.myrb_pdev_state, %struct.myrb_pdev_state* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i64, i64* %9, align 8
  store i64 %77, i64* %5, align 8
  br label %120

78:                                               ; preds = %70
  %79 = load %struct.myrb_hba*, %struct.myrb_hba** %11, align 8
  %80 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %81 = load i32, i32* %13, align 4
  %82 = call zeroext i16 @myrb_set_pdev_state(%struct.myrb_hba* %79, %struct.scsi_device* %80, i32 %81)
  store i16 %82, i16* %14, align 2
  %83 = load i16, i16* %14, align 2
  %84 = zext i16 %83 to i32
  switch i32 %84, label %110 [
    i32 128, label %85
    i32 129, label %86
    i32 130, label %92
    i32 131, label %98
    i32 132, label %104
  ]

85:                                               ; preds = %78
  br label %118

86:                                               ; preds = %78
  %87 = load i32, i32* @KERN_INFO, align 4
  %88 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %89 = call i32 (i32, %struct.scsi_device*, i8*, ...) @sdev_printk(i32 %87, %struct.scsi_device* %88, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %90 = load i64, i64* @EAGAIN, align 8
  %91 = sub i64 0, %90
  store i64 %91, i64* %9, align 8
  br label %118

92:                                               ; preds = %78
  %93 = load i32, i32* @KERN_INFO, align 4
  %94 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %95 = call i32 (i32, %struct.scsi_device*, i8*, ...) @sdev_printk(i32 %93, %struct.scsi_device* %94, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %96 = load i64, i64* @ENODEV, align 8
  %97 = sub i64 0, %96
  store i64 %97, i64* %9, align 8
  br label %118

98:                                               ; preds = %78
  %99 = load i32, i32* @KERN_INFO, align 4
  %100 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %101 = call i32 (i32, %struct.scsi_device*, i8*, ...) @sdev_printk(i32 %99, %struct.scsi_device* %100, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0))
  %102 = load i64, i64* @EINVAL, align 8
  %103 = sub i64 0, %102
  store i64 %103, i64* %9, align 8
  br label %118

104:                                              ; preds = %78
  %105 = load i32, i32* @KERN_INFO, align 4
  %106 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %107 = call i32 (i32, %struct.scsi_device*, i8*, ...) @sdev_printk(i32 %105, %struct.scsi_device* %106, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %108 = load i64, i64* @EBUSY, align 8
  %109 = sub i64 0, %108
  store i64 %109, i64* %9, align 8
  br label %118

110:                                              ; preds = %78
  %111 = load i32, i32* @KERN_INFO, align 4
  %112 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %113 = load i16, i16* %14, align 2
  %114 = zext i16 %113 to i32
  %115 = call i32 (i32, %struct.scsi_device*, i8*, ...) @sdev_printk(i32 %111, %struct.scsi_device* %112, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 %114)
  %116 = load i64, i64* @EIO, align 8
  %117 = sub i64 0, %116
  store i64 %117, i64* %9, align 8
  br label %118

118:                                              ; preds = %110, %104, %98, %92, %86, %85
  %119 = load i64, i64* %9, align 8
  store i64 %119, i64* %5, align 8
  br label %120

120:                                              ; preds = %118, %76, %64, %53, %42
  %121 = load i64, i64* %5, align 8
  ret i64 %121
}

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local %struct.myrb_hba* @shost_priv(i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, ...) #1

declare dso_local zeroext i16 @myrb_set_pdev_state(%struct.myrb_hba*, %struct.scsi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
