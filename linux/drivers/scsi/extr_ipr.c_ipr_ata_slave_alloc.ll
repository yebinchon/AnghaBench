; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_ata_slave_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_ata_slave_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ipr_sata_port* }
%struct.ipr_sata_port = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@ENTER = common dso_local global i32 0, align 4
@LEAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @ipr_ata_slave_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_ata_slave_alloc(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca %struct.ipr_sata_port*, align 8
  %4 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  store %struct.ipr_sata_port* null, %struct.ipr_sata_port** %3, align 8
  %5 = load i32, i32* @ENXIO, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* @ENTER, align 4
  %8 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %9 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %14 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.ipr_sata_port*, %struct.ipr_sata_port** %16, align 8
  store %struct.ipr_sata_port* %17, %struct.ipr_sata_port** %3, align 8
  br label %18

18:                                               ; preds = %12, %1
  %19 = load %struct.ipr_sata_port*, %struct.ipr_sata_port** %3, align 8
  %20 = icmp ne %struct.ipr_sata_port* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = load %struct.ipr_sata_port*, %struct.ipr_sata_port** %3, align 8
  %23 = getelementptr inbounds %struct.ipr_sata_port, %struct.ipr_sata_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ata_sas_port_init(i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load %struct.ipr_sata_port*, %struct.ipr_sata_port** %3, align 8
  %30 = getelementptr inbounds %struct.ipr_sata_port, %struct.ipr_sata_port* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ata_sas_sync_probe(i32 %31)
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %28, %21
  br label %34

34:                                               ; preds = %33, %18
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %39 = call i32 @ipr_slave_destroy(%struct.scsi_device* %38)
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i32, i32* @LEAVE, align 4
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @ata_sas_port_init(i32) #1

declare dso_local i32 @ata_sas_sync_probe(i32) #1

declare dso_local i32 @ipr_slave_destroy(%struct.scsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
