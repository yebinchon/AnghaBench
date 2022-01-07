; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_osm.c_ahd_linux_slave_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_osm.c_ahd_linux_slave_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ahd_softc = type { i32 }
%struct.ahd_linux_device = type { i32, i64 }

@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"%s: Slave Alloc %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @ahd_linux_slave_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahd_linux_slave_alloc(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca %struct.ahd_softc*, align 8
  %4 = alloca %struct.ahd_linux_device*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %5 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %6 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.ahd_softc**
  %11 = load %struct.ahd_softc*, %struct.ahd_softc** %10, align 8
  store %struct.ahd_softc* %11, %struct.ahd_softc** %3, align 8
  %12 = load i64, i64* @bootverbose, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %16 = call i32 @ahd_name(%struct.ahd_softc* %15)
  %17 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %18 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19)
  br label %21

21:                                               ; preds = %14, %1
  %22 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %23 = call %struct.ahd_linux_device* @scsi_transport_device_data(%struct.scsi_device* %22)
  store %struct.ahd_linux_device* %23, %struct.ahd_linux_device** %4, align 8
  %24 = load %struct.ahd_linux_device*, %struct.ahd_linux_device** %4, align 8
  %25 = call i32 @memset(%struct.ahd_linux_device* %24, i32 0, i32 16)
  %26 = load %struct.ahd_linux_device*, %struct.ahd_linux_device** %4, align 8
  %27 = getelementptr inbounds %struct.ahd_linux_device, %struct.ahd_linux_device* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.ahd_linux_device*, %struct.ahd_linux_device** %4, align 8
  %29 = getelementptr inbounds %struct.ahd_linux_device, %struct.ahd_linux_device* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  ret i32 0
}

declare dso_local i32 @printk(i8*, i32, i32) #1

declare dso_local i32 @ahd_name(%struct.ahd_softc*) #1

declare dso_local %struct.ahd_linux_device* @scsi_transport_device_data(%struct.scsi_device*) #1

declare dso_local i32 @memset(%struct.ahd_linux_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
