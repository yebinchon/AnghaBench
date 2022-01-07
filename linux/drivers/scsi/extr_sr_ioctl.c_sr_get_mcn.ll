; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sr_ioctl.c_sr_get_mcn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sr_ioctl.c_sr_get_mcn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { i32* }
%struct.cdrom_mcn = type { i64* }
%struct.packet_command = type { i32*, i8*, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GPCMD_READ_SUBCHANNEL = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@IOCTL_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sr_get_mcn(%struct.cdrom_device_info* %0, %struct.cdrom_mcn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdrom_device_info*, align 8
  %5 = alloca %struct.cdrom_mcn*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.packet_command, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %4, align 8
  store %struct.cdrom_mcn* %1, %struct.cdrom_mcn** %5, align 8
  %10 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %11 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %6, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @SR_GFP_DMA(i32* %14)
  %16 = or i32 %13, %15
  %17 = call i8* @kmalloc(i32 32, i32 %16)
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %60

23:                                               ; preds = %2
  %24 = call i32 @memset(%struct.packet_command* %7, i32 0, i32 32)
  %25 = load i32, i32* @GPCMD_READ_SUBCHANNEL, align 4
  %26 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %7, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %25, i32* %28, align 4
  %29 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %7, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  store i32 64, i32* %31, align 4
  %32 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %7, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  store i32 2, i32* %34, align 4
  %35 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %7, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 8
  store i32 24, i32* %37, align 4
  %38 = load i8*, i8** %8, align 8
  %39 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %7, i32 0, i32 1
  store i8* %38, i8** %39, align 8
  %40 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %7, i32 0, i32 2
  store i32 24, i32* %40, align 8
  %41 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %42 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %7, i32 0, i32 4
  store i32 %41, i32* %42, align 8
  %43 = load i32, i32* @IOCTL_TIMEOUT, align 4
  %44 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %7, i32 0, i32 3
  store i32 %43, i32* %44, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @sr_do_ioctl(i32* %45, %struct.packet_command* %7)
  store i32 %46, i32* %9, align 4
  %47 = load %struct.cdrom_mcn*, %struct.cdrom_mcn** %5, align 8
  %48 = getelementptr inbounds %struct.cdrom_mcn, %struct.cdrom_mcn* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 9
  %52 = call i32 @memcpy(i64* %49, i8* %51, i32 13)
  %53 = load %struct.cdrom_mcn*, %struct.cdrom_mcn** %5, align 8
  %54 = getelementptr inbounds %struct.cdrom_mcn, %struct.cdrom_mcn* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 13
  store i64 0, i64* %56, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @kfree(i8* %57)
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %23, %20
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @SR_GFP_DMA(i32*) #1

declare dso_local i32 @memset(%struct.packet_command*, i32, i32) #1

declare dso_local i32 @sr_do_ioctl(i32*, %struct.packet_command*) #1

declare dso_local i32 @memcpy(i64*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
