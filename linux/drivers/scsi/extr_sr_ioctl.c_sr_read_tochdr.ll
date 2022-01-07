; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sr_ioctl.c_sr_read_tochdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sr_ioctl.c_sr_read_tochdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { %struct.scsi_cd* }
%struct.scsi_cd = type { i32 }
%struct.cdrom_tochdr = type { i8, i8 }
%struct.packet_command = type { i32*, i8*, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IOCTL_TIMEOUT = common dso_local global i32 0, align 4
@GPCMD_READ_TOC_PMA_ATIP = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*, %struct.cdrom_tochdr*)* @sr_read_tochdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sr_read_tochdr(%struct.cdrom_device_info* %0, %struct.cdrom_tochdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdrom_device_info*, align 8
  %5 = alloca %struct.cdrom_tochdr*, align 8
  %6 = alloca %struct.scsi_cd*, align 8
  %7 = alloca %struct.packet_command, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %4, align 8
  store %struct.cdrom_tochdr* %1, %struct.cdrom_tochdr** %5, align 8
  %10 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %11 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %10, i32 0, i32 0
  %12 = load %struct.scsi_cd*, %struct.scsi_cd** %11, align 8
  store %struct.scsi_cd* %12, %struct.scsi_cd** %6, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %15 = call i32 @SR_GFP_DMA(%struct.scsi_cd* %14)
  %16 = or i32 %13, %15
  %17 = call i8* @kmalloc(i32 32, i32 %16)
  store i8* %17, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %55

23:                                               ; preds = %2
  %24 = call i32 @memset(%struct.packet_command* %7, i32 0, i32 32)
  %25 = load i32, i32* @IOCTL_TIMEOUT, align 4
  %26 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %7, i32 0, i32 5
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @GPCMD_READ_TOC_PMA_ATIP, align 4
  %28 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %7, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 %27, i32* %30, align 4
  %31 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %7, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 8
  store i32 12, i32* %33, align 4
  %34 = load i8*, i8** %9, align 8
  %35 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %7, i32 0, i32 1
  store i8* %34, i8** %35, align 8
  %36 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %7, i32 0, i32 2
  store i32 12, i32* %36, align 8
  %37 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %7, i32 0, i32 3
  store i32 1, i32* %37, align 4
  %38 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %39 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %7, i32 0, i32 4
  store i32 %38, i32* %39, align 8
  %40 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %41 = call i32 @sr_do_ioctl(%struct.scsi_cd* %40, %struct.packet_command* %7)
  store i32 %41, i32* %8, align 4
  %42 = load i8*, i8** %9, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  %44 = load i8, i8* %43, align 1
  %45 = load %struct.cdrom_tochdr*, %struct.cdrom_tochdr** %5, align 8
  %46 = getelementptr inbounds %struct.cdrom_tochdr, %struct.cdrom_tochdr* %45, i32 0, i32 0
  store i8 %44, i8* %46, align 1
  %47 = load i8*, i8** %9, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 3
  %49 = load i8, i8* %48, align 1
  %50 = load %struct.cdrom_tochdr*, %struct.cdrom_tochdr** %5, align 8
  %51 = getelementptr inbounds %struct.cdrom_tochdr, %struct.cdrom_tochdr* %50, i32 0, i32 1
  store i8 %49, i8* %51, align 1
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 @kfree(i8* %52)
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %23, %20
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @SR_GFP_DMA(%struct.scsi_cd*) #1

declare dso_local i32 @memset(%struct.packet_command*, i32, i32) #1

declare dso_local i32 @sr_do_ioctl(%struct.scsi_cd*, %struct.packet_command*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
