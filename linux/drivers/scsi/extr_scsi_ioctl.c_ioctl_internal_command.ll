; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_ioctl.c_ioctl_internal_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_ioctl.c_ioctl_internal_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32, i32, i32 }
%struct.scsi_sense_hdr = type { i32, i32, i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Trying ioctl with scsi command %d\0A\00", align 1
@DMA_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Ioctl returned  0x%x\0A\00", align 1
@DRIVER_SENSE = common dso_local global i64 0, align 8
@ALLOW_MEDIUM_REMOVAL = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"ioctl_internal_command: ILLEGAL REQUEST asc=0x%x ascq=0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"ioctl_internal_command return code = %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"IOCTL Releasing command\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, i8*, i32, i32)* @ioctl_internal_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_internal_command(%struct.scsi_device* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.scsi_sense_hdr, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @KERN_INFO, align 4
  %12 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = call i32 (i32, %struct.scsi_device*, i8*, ...) @sdev_printk(i32 %11, %struct.scsi_device* %12, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = call i32 @SCSI_LOG_IOCTL(i32 1, i32 %16)
  %18 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* @DMA_NONE, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @scsi_execute_req(%struct.scsi_device* %18, i8* %19, i32 %20, i32* null, i32 0, %struct.scsi_sense_hdr* %10, i32 %21, i32 %22, i32* null)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* @KERN_INFO, align 4
  %25 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 (i32, %struct.scsi_device*, i8*, ...) @sdev_printk(i32 %24, %struct.scsi_device* %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = call i32 @SCSI_LOG_IOCTL(i32 2, i32 %27)
  %29 = load i32, i32* %9, align 4
  %30 = call i64 @driver_byte(i32 %29)
  %31 = load i64, i64* @DRIVER_SENSE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %83

33:                                               ; preds = %4
  %34 = call i64 @scsi_sense_valid(%struct.scsi_sense_hdr* %10)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %83

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %10, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %75 [
    i32 130, label %39
    i32 129, label %59
    i32 128, label %66
  ]

39:                                               ; preds = %36
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = load i8, i8* @ALLOW_MEDIUM_REMOVAL, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %49 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %48, i32 0, i32 2
  store i32 0, i32* %49, align 4
  br label %58

50:                                               ; preds = %39
  %51 = load i32, i32* @KERN_INFO, align 4
  %52 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %53 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %10, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %10, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i32, %struct.scsi_device*, i8*, ...) @sdev_printk(i32 %51, %struct.scsi_device* %52, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %54, i32 %56)
  br label %58

58:                                               ; preds = %50, %47
  br label %82

59:                                               ; preds = %36
  %60 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %61 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %82

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %36, %65
  %67 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %68 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %73 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %72, i32 0, i32 0
  store i32 1, i32* %73, align 4
  store i32 0, i32* %9, align 4
  br label %82

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %36, %74
  %76 = load i32, i32* @KERN_INFO, align 4
  %77 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 (i32, %struct.scsi_device*, i8*, ...) @sdev_printk(i32 %76, %struct.scsi_device* %77, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  %80 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %81 = call i32 @scsi_print_sense_hdr(%struct.scsi_device* %80, i32* null, %struct.scsi_sense_hdr* %10)
  br label %82

82:                                               ; preds = %75, %71, %64, %58
  br label %83

83:                                               ; preds = %82, %33, %4
  %84 = load i32, i32* @KERN_INFO, align 4
  %85 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %86 = call i32 (i32, %struct.scsi_device*, i8*, ...) @sdev_printk(i32 %84, %struct.scsi_device* %85, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %87 = call i32 @SCSI_LOG_IOCTL(i32 2, i32 %86)
  %88 = load i32, i32* %9, align 4
  ret i32 %88
}

declare dso_local i32 @SCSI_LOG_IOCTL(i32, i32) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, ...) #1

declare dso_local i32 @scsi_execute_req(%struct.scsi_device*, i8*, i32, i32*, i32, %struct.scsi_sense_hdr*, i32, i32, i32*) #1

declare dso_local i64 @driver_byte(i32) #1

declare dso_local i64 @scsi_sense_valid(%struct.scsi_sense_hdr*) #1

declare dso_local i32 @scsi_print_sense_hdr(%struct.scsi_device*, i32*, %struct.scsi_sense_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
