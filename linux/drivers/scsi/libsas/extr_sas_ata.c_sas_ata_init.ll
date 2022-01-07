; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_ata.c_sas_ata_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_ata.c_sas_ata_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.ata_port*, %struct.ata_host* }
%struct.ata_port = type { %struct.Scsi_Host*, i32, %struct.domain_device* }
%struct.Scsi_Host = type { i32 }
%struct.ata_host = type { i32 }
%struct.TYPE_4__ = type { %struct.sas_ha_struct* }
%struct.sas_ha_struct = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.Scsi_Host* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"ata host alloc failed.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@sas_sata_ops = common dso_local global i32 0, align 4
@sata_port_info = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"ata_sas_port_alloc failed.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ATA_CBL_SATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sas_ata_init(%struct.domain_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.domain_device*, align 8
  %4 = alloca %struct.sas_ha_struct*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.ata_host*, align 8
  %7 = alloca %struct.ata_port*, align 8
  %8 = alloca i32, align 4
  store %struct.domain_device* %0, %struct.domain_device** %3, align 8
  %9 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %10 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %12, align 8
  store %struct.sas_ha_struct* %13, %struct.sas_ha_struct** %4, align 8
  %14 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %4, align 8
  %15 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %16, align 8
  store %struct.Scsi_Host* %17, %struct.Scsi_Host** %5, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.ata_host* @kzalloc(i32 4, i32 %18)
  store %struct.ata_host* %19, %struct.ata_host** %6, align 8
  %20 = load %struct.ata_host*, %struct.ata_host** %6, align 8
  %21 = icmp ne %struct.ata_host* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %1
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %81

26:                                               ; preds = %1
  %27 = load %struct.ata_host*, %struct.ata_host** %6, align 8
  %28 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %4, align 8
  %29 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ata_host_init(%struct.ata_host* %27, i32 %30, i32* @sas_sata_ops)
  %32 = load %struct.ata_host*, %struct.ata_host** %6, align 8
  %33 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %34 = call %struct.ata_port* @ata_sas_port_alloc(%struct.ata_host* %32, i32* @sata_port_info, %struct.Scsi_Host* %33)
  store %struct.ata_port* %34, %struct.ata_port** %7, align 8
  %35 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %36 = icmp ne %struct.ata_port* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %26
  %38 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %8, align 4
  br label %77

41:                                               ; preds = %26
  %42 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %43 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %44 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %43, i32 0, i32 2
  store %struct.domain_device* %42, %struct.domain_device** %44, align 8
  %45 = load i32, i32* @ATA_CBL_SATA, align 4
  %46 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %47 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %49 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %50 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %49, i32 0, i32 0
  store %struct.Scsi_Host* %48, %struct.Scsi_Host** %50, align 8
  %51 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %52 = call i32 @ata_sas_port_init(%struct.ata_port* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %41
  br label %74

56:                                               ; preds = %41
  %57 = load %struct.ata_host*, %struct.ata_host** %6, align 8
  %58 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %61 = call i32 @ata_sas_tport_add(i32 %59, %struct.ata_port* %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %74

65:                                               ; preds = %56
  %66 = load %struct.ata_host*, %struct.ata_host** %6, align 8
  %67 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %68 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  store %struct.ata_host* %66, %struct.ata_host** %69, align 8
  %70 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %71 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %72 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  store %struct.ata_port* %70, %struct.ata_port** %73, align 8
  store i32 0, i32* %2, align 4
  br label %81

74:                                               ; preds = %64, %55
  %75 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %76 = call i32 @ata_sas_port_destroy(%struct.ata_port* %75)
  br label %77

77:                                               ; preds = %74, %37
  %78 = load %struct.ata_host*, %struct.ata_host** %6, align 8
  %79 = call i32 @ata_host_put(%struct.ata_host* %78)
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %77, %65, %22
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.ata_host* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @ata_host_init(%struct.ata_host*, i32, i32*) #1

declare dso_local %struct.ata_port* @ata_sas_port_alloc(%struct.ata_host*, i32*, %struct.Scsi_Host*) #1

declare dso_local i32 @ata_sas_port_init(%struct.ata_port*) #1

declare dso_local i32 @ata_sas_tport_add(i32, %struct.ata_port*) #1

declare dso_local i32 @ata_sas_port_destroy(%struct.ata_port*) #1

declare dso_local i32 @ata_host_put(%struct.ata_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
