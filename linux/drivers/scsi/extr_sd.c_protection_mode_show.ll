; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_protection_mode_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_protection_mode_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.scsi_disk = type { i32, %struct.scsi_device* }
%struct.scsi_device = type { i32 }

@T10_PI_TYPE0_PROTECTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"none\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dix\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"dif\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @protection_mode_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @protection_mode_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.scsi_disk*, align 8
  %9 = alloca %struct.scsi_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.scsi_disk* @to_scsi_disk(%struct.device* %12)
  store %struct.scsi_disk* %13, %struct.scsi_disk** %8, align 8
  %14 = load %struct.scsi_disk*, %struct.scsi_disk** %8, align 8
  %15 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %14, i32 0, i32 1
  %16 = load %struct.scsi_device*, %struct.scsi_device** %15, align 8
  store %struct.scsi_device* %16, %struct.scsi_device** %9, align 8
  %17 = load %struct.scsi_device*, %struct.scsi_device** %9, align 8
  %18 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.scsi_disk*, %struct.scsi_disk** %8, align 8
  %21 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @scsi_host_dif_capable(i32 %19, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.scsi_device*, %struct.scsi_device** %9, align 8
  %25 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.scsi_disk*, %struct.scsi_disk** %8, align 8
  %28 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @scsi_host_dix_capable(i32 %26, i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %3
  %34 = load %struct.scsi_device*, %struct.scsi_device** %9, align 8
  %35 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @T10_PI_TYPE0_PROTECTION, align 4
  %38 = call i32 @scsi_host_dix_capable(i32 %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %41

41:                                               ; preds = %40, %33, %3
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 (i8*, i8*, ...) @sprintf(i8* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %49, i32* %4, align 4
  br label %58

50:                                               ; preds = %44, %41
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %56 = load i32, i32* %10, align 4
  %57 = call i32 (i8*, i8*, ...) @sprintf(i8* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %55, i32 %56)
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %50, %47
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.scsi_disk* @to_scsi_disk(%struct.device*) #1

declare dso_local i32 @scsi_host_dif_capable(i32, i32) #1

declare dso_local i32 @scsi_host_dix_capable(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
