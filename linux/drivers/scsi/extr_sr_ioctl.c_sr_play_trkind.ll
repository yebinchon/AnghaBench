; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sr_ioctl.c_sr_play_trkind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sr_ioctl.c_sr_play_trkind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { %struct.scsi_cd* }
%struct.scsi_cd = type { i32 }
%struct.cdrom_ti = type { i32, i32, i32, i32 }
%struct.packet_command = type { i32, i32*, i32 }

@IOCTL_TIMEOUT = common dso_local global i32 0, align 4
@GPCMD_PLAYAUDIO_TI = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4
@EDRIVE_CANT_DO_THIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*, %struct.cdrom_ti*)* @sr_play_trkind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sr_play_trkind(%struct.cdrom_device_info* %0, %struct.cdrom_ti* %1) #0 {
  %3 = alloca %struct.cdrom_device_info*, align 8
  %4 = alloca %struct.cdrom_ti*, align 8
  %5 = alloca %struct.scsi_cd*, align 8
  %6 = alloca %struct.packet_command, align 8
  %7 = alloca i32, align 4
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %3, align 8
  store %struct.cdrom_ti* %1, %struct.cdrom_ti** %4, align 8
  %8 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %9 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %8, i32 0, i32 0
  %10 = load %struct.scsi_cd*, %struct.scsi_cd** %9, align 8
  store %struct.scsi_cd* %10, %struct.scsi_cd** %5, align 8
  %11 = call i32 @memset(%struct.packet_command* %6, i32 0, i32 24)
  %12 = load i32, i32* @IOCTL_TIMEOUT, align 4
  %13 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %6, i32 0, i32 2
  store i32 %12, i32* %13, align 8
  %14 = load i32, i32* @GPCMD_PLAYAUDIO_TI, align 4
  %15 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %6, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %14, i32* %17, align 4
  %18 = load %struct.cdrom_ti*, %struct.cdrom_ti** %4, align 8
  %19 = getelementptr inbounds %struct.cdrom_ti, %struct.cdrom_ti* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %6, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 4
  store i32 %20, i32* %23, align 4
  %24 = load %struct.cdrom_ti*, %struct.cdrom_ti** %4, align 8
  %25 = getelementptr inbounds %struct.cdrom_ti, %struct.cdrom_ti* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %6, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 5
  store i32 %26, i32* %29, align 4
  %30 = load %struct.cdrom_ti*, %struct.cdrom_ti** %4, align 8
  %31 = getelementptr inbounds %struct.cdrom_ti, %struct.cdrom_ti* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %6, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 7
  store i32 %32, i32* %35, align 4
  %36 = load %struct.cdrom_ti*, %struct.cdrom_ti** %4, align 8
  %37 = getelementptr inbounds %struct.cdrom_ti, %struct.cdrom_ti* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %6, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 8
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* @DMA_NONE, align 4
  %43 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %6, i32 0, i32 0
  store i32 %42, i32* %43, align 8
  %44 = load %struct.scsi_cd*, %struct.scsi_cd** %5, align 8
  %45 = call i32 @sr_do_ioctl(%struct.scsi_cd* %44, %struct.packet_command* %6)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @EDRIVE_CANT_DO_THIS, align 4
  %48 = sub nsw i32 0, %47
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %2
  %51 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %52 = load %struct.cdrom_ti*, %struct.cdrom_ti** %4, align 8
  %53 = call i32 @sr_fake_playtrkind(%struct.cdrom_device_info* %51, %struct.cdrom_ti* %52)
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %50, %2
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local i32 @memset(%struct.packet_command*, i32, i32) #1

declare dso_local i32 @sr_do_ioctl(%struct.scsi_cd*, %struct.packet_command*) #1

declare dso_local i32 @sr_fake_playtrkind(%struct.cdrom_device_info*, %struct.cdrom_ti*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
