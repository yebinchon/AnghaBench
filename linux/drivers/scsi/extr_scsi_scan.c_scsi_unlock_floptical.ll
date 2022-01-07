; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_scan.c_scsi_unlock_floptical.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_scan.c_scsi_unlock_floptical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }

@MAX_COMMAND_SIZE = common dso_local global i32 0, align 4
@KERN_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unlocking floptical drive\0A\00", align 1
@MODE_SENSE = common dso_local global i8 0, align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@SCSI_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_device*, i8*)* @scsi_unlock_floptical to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsi_unlock_floptical(%struct.scsi_device* %0, i8* %1) #0 {
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @MAX_COMMAND_SIZE, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %5, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %6, align 8
  %11 = load i32, i32* @KERN_NOTICE, align 4
  %12 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %13 = call i32 @sdev_printk(i32 %11, %struct.scsi_device* %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %14 = load i8, i8* @MODE_SENSE, align 1
  %15 = getelementptr inbounds i8, i8* %10, i64 0
  store i8 %14, i8* %15, align 16
  %16 = getelementptr inbounds i8, i8* %10, i64 1
  store i8 0, i8* %16, align 1
  %17 = getelementptr inbounds i8, i8* %10, i64 2
  store i8 46, i8* %17, align 2
  %18 = getelementptr inbounds i8, i8* %10, i64 3
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds i8, i8* %10, i64 4
  store i8 42, i8* %19, align 4
  %20 = getelementptr inbounds i8, i8* %10, i64 5
  store i8 0, i8* %20, align 1
  %21 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %22 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* @SCSI_TIMEOUT, align 4
  %25 = call i32 @scsi_execute_req(%struct.scsi_device* %21, i8* %10, i32 %22, i8* %23, i32 42, i32* null, i32 %24, i32 3, i32* null)
  %26 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %26)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*) #2

declare dso_local i32 @scsi_execute_req(%struct.scsi_device*, i8*, i32, i8*, i32, i32*, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
