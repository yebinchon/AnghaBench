; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_linit.c_aac_show_unique_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_linit.c_aac_show_unique_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.scsi_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.aac_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@CONTAINER_CHANNEL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [66 x i8] c"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @aac_show_unique_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_show_unique_id(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.scsi_device*, align 8
  %8 = alloca %struct.aac_dev*, align 8
  %9 = alloca [16 x i8], align 16
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.scsi_device* @to_scsi_device(%struct.device* %10)
  store %struct.scsi_device* %11, %struct.scsi_device** %7, align 8
  %12 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %13 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.aac_dev*
  store %struct.aac_dev* %17, %struct.aac_dev** %8, align 8
  %18 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %19 = call i32 @memset(i8* %18, i32 0, i32 16)
  %20 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %21 = call i64 @sdev_channel(%struct.scsi_device* %20)
  %22 = load i64, i64* @CONTAINER_CHANNEL, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %3
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %26 = load %struct.aac_dev*, %struct.aac_dev** %8, align 8
  %27 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %30 = call i64 @sdev_id(%struct.scsi_device* %29)
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @memcpy(i8* %25, i32 %33, i32 16)
  br label %35

35:                                               ; preds = %24, %3
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %38 = load i8, i8* %37, align 16
  %39 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 2
  %42 = load i8, i8* %41, align 2
  %43 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 3
  %44 = load i8, i8* %43, align 1
  %45 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 4
  %46 = load i8, i8* %45, align 4
  %47 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 5
  %48 = load i8, i8* %47, align 1
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 6
  %50 = load i8, i8* %49, align 2
  %51 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 7
  %52 = load i8, i8* %51, align 1
  %53 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 8
  %54 = load i8, i8* %53, align 8
  %55 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 9
  %56 = load i8, i8* %55, align 1
  %57 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 10
  %58 = load i8, i8* %57, align 2
  %59 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 11
  %60 = load i8, i8* %59, align 1
  %61 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 12
  %62 = load i8, i8* %61, align 4
  %63 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 13
  %64 = load i8, i8* %63, align 1
  %65 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 14
  %66 = load i8, i8* %65, align 2
  %67 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 15
  %68 = load i8, i8* %67, align 1
  %69 = call i32 @snprintf(i8* %36, i32 34, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i8 zeroext %38, i8 zeroext %40, i8 zeroext %42, i8 zeroext %44, i8 zeroext %46, i8 zeroext %48, i8 zeroext %50, i8 zeroext %52, i8 zeroext %54, i8 zeroext %56, i8 zeroext %58, i8 zeroext %60, i8 zeroext %62, i8 zeroext %64, i8 zeroext %66, i8 zeroext %68)
  ret i32 %69
}

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @sdev_channel(%struct.scsi_device*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i64 @sdev_id(%struct.scsi_device*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
