; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sr.c_sr_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sr.c_sr_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { %struct.scsi_cd* }
%struct.scsi_cd = type { %struct.scsi_device* }
%struct.scsi_device = type { i64 }
%struct.packet_command = type { i64*, i64, i32 }

@GPCMD_READ_DISC_INFO = common dso_local global i64 0, align 8
@EDRIVE_CANT_DO_THIS = common dso_local global i32 0, align 4
@IOCTL_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*, %struct.packet_command*)* @sr_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sr_packet(%struct.cdrom_device_info* %0, %struct.packet_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdrom_device_info*, align 8
  %5 = alloca %struct.packet_command*, align 8
  %6 = alloca %struct.scsi_cd*, align 8
  %7 = alloca %struct.scsi_device*, align 8
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %4, align 8
  store %struct.packet_command* %1, %struct.packet_command** %5, align 8
  %8 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %9 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %8, i32 0, i32 0
  %10 = load %struct.scsi_cd*, %struct.scsi_cd** %9, align 8
  store %struct.scsi_cd* %10, %struct.scsi_cd** %6, align 8
  %11 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %12 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %11, i32 0, i32 0
  %13 = load %struct.scsi_device*, %struct.scsi_device** %12, align 8
  store %struct.scsi_device* %13, %struct.scsi_device** %7, align 8
  %14 = load %struct.packet_command*, %struct.packet_command** %5, align 8
  %15 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @GPCMD_READ_DISC_INFO, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %23 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EDRIVE_CANT_DO_THIS, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %45

29:                                               ; preds = %21, %2
  %30 = load %struct.packet_command*, %struct.packet_command** %5, align 8
  %31 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp sle i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i64, i64* @IOCTL_TIMEOUT, align 8
  %36 = load %struct.packet_command*, %struct.packet_command** %5, align 8
  %37 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %34, %29
  %39 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %40 = load %struct.packet_command*, %struct.packet_command** %5, align 8
  %41 = call i32 @sr_do_ioctl(%struct.scsi_cd* %39, %struct.packet_command* %40)
  %42 = load %struct.packet_command*, %struct.packet_command** %5, align 8
  %43 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %38, %26
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @sr_do_ioctl(%struct.scsi_cd*, %struct.packet_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
