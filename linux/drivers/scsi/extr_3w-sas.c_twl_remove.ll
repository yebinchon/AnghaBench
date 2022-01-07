; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_3w-sas.c_twl_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_3w-sas.c_twl_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.Scsi_Host = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@twl_sysfs_aen_read_attr = common dso_local global i32 0, align 4
@twl_sysfs_compat_info_attr = common dso_local global i32 0, align 4
@twl_major = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"twl\00", align 1
@TW_USING_MSI = common dso_local global i32 0, align 4
@twl_device_extension_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @twl_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twl_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.Scsi_Host* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.Scsi_Host* %6, %struct.Scsi_Host** %3, align 8
  %7 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %8 = icmp ne %struct.Scsi_Host* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %66

10:                                               ; preds = %1
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %12 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %4, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %10
  br label %66

20:                                               ; preds = %10
  %21 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %22 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = call i32 @sysfs_remove_bin_file(i32* %23, i32* @twl_sysfs_aen_read_attr)
  %25 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %26 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = call i32 @sysfs_remove_bin_file(i32* %27, i32* @twl_sysfs_compat_info_attr)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @scsi_remove_host(i32 %31)
  %33 = load i32, i32* @twl_major, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %20
  %36 = load i32, i32* @twl_major, align 4
  %37 = call i32 @unregister_chrdev(i32 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* @twl_major, align 4
  br label %38

38:                                               ; preds = %35, %20
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = call i32 @__twl_shutdown(%struct.TYPE_6__* %39)
  %41 = load i32, i32* @TW_USING_MSI, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = call i64 @test_bit(i32 %41, i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %48 = call i32 @pci_disable_msi(%struct.pci_dev* %47)
  br label %49

49:                                               ; preds = %46, %38
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @iounmap(i32 %52)
  %54 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %55 = call i32 @pci_release_regions(%struct.pci_dev* %54)
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %57 = call i32 @twl_free_device_extension(%struct.TYPE_6__* %56)
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @scsi_host_put(i32 %60)
  %62 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %63 = call i32 @pci_disable_device(%struct.pci_dev* %62)
  %64 = load i32, i32* @twl_device_extension_count, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* @twl_device_extension_count, align 4
  br label %66

66:                                               ; preds = %49, %19, %9
  ret void
}

declare dso_local %struct.Scsi_Host* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @sysfs_remove_bin_file(i32*, i32*) #1

declare dso_local i32 @scsi_remove_host(i32) #1

declare dso_local i32 @unregister_chrdev(i32, i8*) #1

declare dso_local i32 @__twl_shutdown(%struct.TYPE_6__*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @pci_disable_msi(%struct.pci_dev*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @twl_free_device_extension(%struct.TYPE_6__*) #1

declare dso_local i32 @scsi_host_put(i32) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
