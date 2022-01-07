; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_target_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_target_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_target = type { %struct.ipr_sata_port*, i32 }
%struct.ipr_sata_port = type { %struct.ipr_resource_entry*, %struct.ata_port*, %struct.ipr_ioa_cfg* }
%struct.ipr_resource_entry = type { %struct.ipr_sata_port* }
%struct.ata_port = type { %struct.ipr_sata_port* }
%struct.ipr_ioa_cfg = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.Scsi_Host = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sata_port_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_target*)* @ipr_target_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_target_alloc(%struct.scsi_target* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_target*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.ipr_ioa_cfg*, align 8
  %6 = alloca %struct.ipr_sata_port*, align 8
  %7 = alloca %struct.ata_port*, align 8
  %8 = alloca %struct.ipr_resource_entry*, align 8
  %9 = alloca i64, align 8
  store %struct.scsi_target* %0, %struct.scsi_target** %3, align 8
  %10 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %11 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %10, i32 0, i32 1
  %12 = call %struct.Scsi_Host* @dev_to_shost(i32* %11)
  store %struct.Scsi_Host* %12, %struct.Scsi_Host** %4, align 8
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %14 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ipr_ioa_cfg*
  store %struct.ipr_ioa_cfg* %16, %struct.ipr_ioa_cfg** %5, align 8
  %17 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %5, align 8
  %18 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @spin_lock_irqsave(i32 %21, i64 %22)
  %24 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %25 = call %struct.ipr_resource_entry* @ipr_find_starget(%struct.scsi_target* %24)
  store %struct.ipr_resource_entry* %25, %struct.ipr_resource_entry** %8, align 8
  %26 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %27 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %26, i32 0, i32 0
  store %struct.ipr_sata_port* null, %struct.ipr_sata_port** %27, align 8
  %28 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %8, align 8
  %29 = icmp ne %struct.ipr_resource_entry* %28, null
  br i1 %29, label %30, label %88

30:                                               ; preds = %1
  %31 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %8, align 8
  %32 = call i64 @ipr_is_gata(%struct.ipr_resource_entry* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %88

34:                                               ; preds = %30
  %35 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %5, align 8
  %36 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32 %39, i64 %40)
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.ipr_sata_port* @kzalloc(i32 24, i32 %42)
  store %struct.ipr_sata_port* %43, %struct.ipr_sata_port** %6, align 8
  %44 = load %struct.ipr_sata_port*, %struct.ipr_sata_port** %6, align 8
  %45 = icmp ne %struct.ipr_sata_port* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %34
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %96

49:                                               ; preds = %34
  %50 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %5, align 8
  %51 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %50, i32 0, i32 1
  %52 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %53 = call %struct.ata_port* @ata_sas_port_alloc(i32* %51, i32* @sata_port_info, %struct.Scsi_Host* %52)
  store %struct.ata_port* %53, %struct.ata_port** %7, align 8
  %54 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %55 = icmp ne %struct.ata_port* %54, null
  br i1 %55, label %56, label %82

56:                                               ; preds = %49
  %57 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %5, align 8
  %58 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i64, i64* %9, align 8
  %63 = call i32 @spin_lock_irqsave(i32 %61, i64 %62)
  %64 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %5, align 8
  %65 = load %struct.ipr_sata_port*, %struct.ipr_sata_port** %6, align 8
  %66 = getelementptr inbounds %struct.ipr_sata_port, %struct.ipr_sata_port* %65, i32 0, i32 2
  store %struct.ipr_ioa_cfg* %64, %struct.ipr_ioa_cfg** %66, align 8
  %67 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %68 = load %struct.ipr_sata_port*, %struct.ipr_sata_port** %6, align 8
  %69 = getelementptr inbounds %struct.ipr_sata_port, %struct.ipr_sata_port* %68, i32 0, i32 1
  store %struct.ata_port* %67, %struct.ata_port** %69, align 8
  %70 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %8, align 8
  %71 = load %struct.ipr_sata_port*, %struct.ipr_sata_port** %6, align 8
  %72 = getelementptr inbounds %struct.ipr_sata_port, %struct.ipr_sata_port* %71, i32 0, i32 0
  store %struct.ipr_resource_entry* %70, %struct.ipr_resource_entry** %72, align 8
  %73 = load %struct.ipr_sata_port*, %struct.ipr_sata_port** %6, align 8
  %74 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %8, align 8
  %75 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %74, i32 0, i32 0
  store %struct.ipr_sata_port* %73, %struct.ipr_sata_port** %75, align 8
  %76 = load %struct.ipr_sata_port*, %struct.ipr_sata_port** %6, align 8
  %77 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %78 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %77, i32 0, i32 0
  store %struct.ipr_sata_port* %76, %struct.ipr_sata_port** %78, align 8
  %79 = load %struct.ipr_sata_port*, %struct.ipr_sata_port** %6, align 8
  %80 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %81 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %80, i32 0, i32 0
  store %struct.ipr_sata_port* %79, %struct.ipr_sata_port** %81, align 8
  br label %87

82:                                               ; preds = %49
  %83 = load %struct.ipr_sata_port*, %struct.ipr_sata_port** %6, align 8
  %84 = call i32 @kfree(%struct.ipr_sata_port* %83)
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %96

87:                                               ; preds = %56
  br label %88

88:                                               ; preds = %87, %30, %1
  %89 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %5, align 8
  %90 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i64, i64* %9, align 8
  %95 = call i32 @spin_unlock_irqrestore(i32 %93, i64 %94)
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %88, %82, %46
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local %struct.Scsi_Host* @dev_to_shost(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local %struct.ipr_resource_entry* @ipr_find_starget(%struct.scsi_target*) #1

declare dso_local i64 @ipr_is_gata(%struct.ipr_resource_entry*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local %struct.ipr_sata_port* @kzalloc(i32, i32) #1

declare dso_local %struct.ata_port* @ata_sas_port_alloc(i32*, i32*, %struct.Scsi_Host*) #1

declare dso_local i32 @kfree(%struct.ipr_sata_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
