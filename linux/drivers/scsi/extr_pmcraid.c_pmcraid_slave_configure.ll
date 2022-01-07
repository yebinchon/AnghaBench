; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_slave_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_slave_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i64, i32, i64, i32, i64, i32, i32, %struct.TYPE_2__*, %struct.pmcraid_resource_entry* }
%struct.TYPE_2__ = type { i32 }
%struct.pmcraid_resource_entry = type { i32 }

@TYPE_ENCLOSURE = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"configuring %x:%x:%x:%x\0A\00", align 1
@PMCRAID_VSET_IO_TIMEOUT = common dso_local global i32 0, align 4
@PMCRAID_VSET_MAX_SECTORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @pmcraid_slave_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmcraid_slave_configure(%struct.scsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.pmcraid_resource_entry*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  %5 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %6 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %5, i32 0, i32 8
  %7 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %6, align 8
  store %struct.pmcraid_resource_entry* %7, %struct.pmcraid_resource_entry** %4, align 8
  %8 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %4, align 8
  %9 = icmp ne %struct.pmcraid_resource_entry* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %87

11:                                               ; preds = %1
  %12 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %4, align 8
  %13 = getelementptr inbounds %struct.pmcraid_resource_entry, %struct.pmcraid_resource_entry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @RES_IS_GSCSI(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %11
  %18 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %19 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @TYPE_ENCLOSURE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @ENXIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %87

26:                                               ; preds = %17, %11
  %27 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %28 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %27, i32 0, i32 7
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %33 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %36 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %39 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @pmcraid_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %34, i32 %37, i32 %41)
  %43 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %4, align 8
  %44 = getelementptr inbounds %struct.pmcraid_resource_entry, %struct.pmcraid_resource_entry* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @RES_IS_GSCSI(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %26
  %49 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %50 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %49, i32 0, i32 1
  store i32 1, i32* %50, align 8
  br label %71

51:                                               ; preds = %26
  %52 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %4, align 8
  %53 = getelementptr inbounds %struct.pmcraid_resource_entry, %struct.pmcraid_resource_entry* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @RES_IS_VSET(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %51
  %58 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %59 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %58, i32 0, i32 1
  store i32 1, i32* %59, align 8
  %60 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %61 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @PMCRAID_VSET_IO_TIMEOUT, align 4
  %64 = call i32 @blk_queue_rq_timeout(i32 %62, i32 %63)
  %65 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %66 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @PMCRAID_VSET_MAX_SECTORS, align 4
  %69 = call i32 @blk_queue_max_hw_sectors(i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %57, %51
  br label %71

71:                                               ; preds = %70, %48
  %72 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %4, align 8
  %73 = getelementptr inbounds %struct.pmcraid_resource_entry, %struct.pmcraid_resource_entry* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @RES_IS_GSCSI(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %71
  %78 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %4, align 8
  %79 = getelementptr inbounds %struct.pmcraid_resource_entry, %struct.pmcraid_resource_entry* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @RES_IS_VSET(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %77
  %84 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %85 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %84, i32 0, i32 2
  store i64 0, i64* %85, align 8
  br label %86

86:                                               ; preds = %83, %77, %71
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %86, %23, %10
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i64 @RES_IS_GSCSI(i32) #1

declare dso_local i32 @pmcraid_info(i8*, i32, i32, i32, i32) #1

declare dso_local i64 @RES_IS_VSET(i32) #1

declare dso_local i32 @blk_queue_rq_timeout(i32, i32) #1

declare dso_local i32 @blk_queue_max_hw_sectors(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
