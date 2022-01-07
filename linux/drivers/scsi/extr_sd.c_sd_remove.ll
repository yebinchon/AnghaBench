; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.scsi_disk = type { i32, i32, i32, i32 }

@scsi_sd_pm_domain = common dso_local global i32 0, align 4
@SD_MINORS = common dso_local global i32 0, align 4
@sd_default_probe = common dso_local global i32 0, align 4
@sd_ref_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @sd_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.scsi_disk*, align 8
  %4 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.scsi_disk* @dev_get_drvdata(%struct.device* %5)
  store %struct.scsi_disk* %6, %struct.scsi_disk** %3, align 8
  %7 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %8 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @disk_devt(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %12 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @scsi_autopm_get_device(i32 %13)
  %15 = call i32 @async_synchronize_full_domain(i32* @scsi_sd_pm_domain)
  %16 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %17 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %16, i32 0, i32 0
  %18 = call i32 @device_del(i32* %17)
  %19 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %20 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @del_gendisk(i32 %21)
  %23 = load %struct.device*, %struct.device** %2, align 8
  %24 = call i32 @sd_shutdown(%struct.device* %23)
  %25 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %26 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @free_opal_dev(i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @SD_MINORS, align 4
  %31 = load i32, i32* @sd_default_probe, align 4
  %32 = call i32 @blk_register_region(i32 %29, i32 %30, i32* null, i32 %31, i32* null, i32* null)
  %33 = call i32 @mutex_lock(i32* @sd_ref_mutex)
  %34 = load %struct.device*, %struct.device** %2, align 8
  %35 = call i32 @dev_set_drvdata(%struct.device* %34, i32* null)
  %36 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %37 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %36, i32 0, i32 0
  %38 = call i32 @put_device(i32* %37)
  %39 = call i32 @mutex_unlock(i32* @sd_ref_mutex)
  ret i32 0
}

declare dso_local %struct.scsi_disk* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @disk_devt(i32) #1

declare dso_local i32 @scsi_autopm_get_device(i32) #1

declare dso_local i32 @async_synchronize_full_domain(i32*) #1

declare dso_local i32 @device_del(i32*) #1

declare dso_local i32 @del_gendisk(i32) #1

declare dso_local i32 @sd_shutdown(%struct.device*) #1

declare dso_local i32 @free_opal_dev(i32) #1

declare dso_local i32 @blk_register_region(i32, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, i32*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
