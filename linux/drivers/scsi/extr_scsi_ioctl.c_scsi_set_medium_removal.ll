; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_ioctl.c_scsi_set_medium_removal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_ioctl.c_scsi_set_medium_removal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32, i32, i32 }

@MAX_COMMAND_SIZE = common dso_local global i32 0, align 4
@ALLOW_MEDIUM_REMOVAL = common dso_local global i8 0, align 1
@IOCTL_NORMAL_TIMEOUT = common dso_local global i32 0, align 4
@NORMAL_RETRIES = common dso_local global i32 0, align 4
@SCSI_REMOVAL_PREVENT = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_set_medium_removal(%struct.scsi_device* %0, i8 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %4, align 8
  store i8 %1, i8* %5, align 1
  %10 = load i32, i32* @MAX_COMMAND_SIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %15 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %20 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18, %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %50

24:                                               ; preds = %18
  %25 = load i8, i8* @ALLOW_MEDIUM_REMOVAL, align 1
  %26 = getelementptr inbounds i8, i8* %13, i64 0
  store i8 %25, i8* %26, align 16
  %27 = getelementptr inbounds i8, i8* %13, i64 1
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds i8, i8* %13, i64 2
  store i8 0, i8* %28, align 2
  %29 = getelementptr inbounds i8, i8* %13, i64 3
  store i8 0, i8* %29, align 1
  %30 = load i8, i8* %5, align 1
  %31 = getelementptr inbounds i8, i8* %13, i64 4
  store i8 %30, i8* %31, align 4
  %32 = getelementptr inbounds i8, i8* %13, i64 5
  store i8 0, i8* %32, align 1
  %33 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %34 = load i32, i32* @IOCTL_NORMAL_TIMEOUT, align 4
  %35 = load i32, i32* @NORMAL_RETRIES, align 4
  %36 = call i32 @ioctl_internal_command(%struct.scsi_device* %33, i8* %13, i32 %34, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %24
  %40 = load i8, i8* %5, align 1
  %41 = sext i8 %40 to i32
  %42 = load i8, i8* @SCSI_REMOVAL_PREVENT, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %41, %43
  %45 = zext i1 %44 to i32
  %46 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %47 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %39, %24
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %50

50:                                               ; preds = %48, %23
  %51 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %51)
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ioctl_internal_command(%struct.scsi_device*, i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
