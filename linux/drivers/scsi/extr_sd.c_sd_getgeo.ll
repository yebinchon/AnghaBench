; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_getgeo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_getgeo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }
%struct.hd_geometry = type { i32, i32, i32 }
%struct.scsi_disk = type { i32, %struct.scsi_device* }
%struct.scsi_device = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.scsi_device*, %struct.block_device*, i32, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, %struct.hd_geometry*)* @sd_getgeo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_getgeo(%struct.block_device* %0, %struct.hd_geometry* %1) #0 {
  %3 = alloca %struct.block_device*, align 8
  %4 = alloca %struct.hd_geometry*, align 8
  %5 = alloca %struct.scsi_disk*, align 8
  %6 = alloca %struct.scsi_device*, align 8
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  store %struct.block_device* %0, %struct.block_device** %3, align 8
  store %struct.hd_geometry* %1, %struct.hd_geometry** %4, align 8
  %10 = load %struct.block_device*, %struct.block_device** %3, align 8
  %11 = getelementptr inbounds %struct.block_device, %struct.block_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.scsi_disk* @scsi_disk(i32 %12)
  store %struct.scsi_disk* %13, %struct.scsi_disk** %5, align 8
  %14 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %15 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %14, i32 0, i32 1
  %16 = load %struct.scsi_device*, %struct.scsi_device** %15, align 8
  store %struct.scsi_device* %16, %struct.scsi_device** %6, align 8
  %17 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %18 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %17, i32 0, i32 0
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %18, align 8
  store %struct.Scsi_Host* %19, %struct.Scsi_Host** %7, align 8
  %20 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %21 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %22 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @logical_to_sectors(%struct.scsi_device* %20, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32 64, i32* %25, align 16
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  store i32 32, i32* %26, align 4
  %27 = load i32, i32* %8, align 4
  %28 = ashr i32 %27, 11
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  store i32 %28, i32* %29, align 8
  %30 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %31 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.scsi_device*, %struct.block_device*, i32, i32*)*, i32 (%struct.scsi_device*, %struct.block_device*, i32, i32*)** %33, align 8
  %35 = icmp ne i32 (%struct.scsi_device*, %struct.block_device*, i32, i32*)* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %2
  %37 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %38 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (%struct.scsi_device*, %struct.block_device*, i32, i32*)*, i32 (%struct.scsi_device*, %struct.block_device*, i32, i32*)** %40, align 8
  %42 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %43 = load %struct.block_device*, %struct.block_device** %3, align 8
  %44 = load i32, i32* %8, align 4
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %46 = call i32 %41(%struct.scsi_device* %42, %struct.block_device* %43, i32 %44, i32* %45)
  br label %52

47:                                               ; preds = %2
  %48 = load %struct.block_device*, %struct.block_device** %3, align 8
  %49 = load i32, i32* %8, align 4
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %51 = call i32 @scsicam_bios_param(%struct.block_device* %48, i32 %49, i32* %50)
  br label %52

52:                                               ; preds = %47, %36
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %54 = load i32, i32* %53, align 16
  %55 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %56 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %60 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %64 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  ret i32 0
}

declare dso_local %struct.scsi_disk* @scsi_disk(i32) #1

declare dso_local i32 @logical_to_sectors(%struct.scsi_device*, i32) #1

declare dso_local i32 @scsicam_bios_param(%struct.block_device*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
