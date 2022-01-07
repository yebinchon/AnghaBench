; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_remove_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_remove_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.scsi_qla_host = type { i32, i64 }

@ql4xdisablesysfsboot = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @qla4xxx_remove_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla4xxx_remove_adapter(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.scsi_qla_host*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call i32 @pci_is_enabled(%struct.pci_dev* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %53

8:                                                ; preds = %1
  %9 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %10 = call %struct.scsi_qla_host* @pci_get_drvdata(%struct.pci_dev* %9)
  store %struct.scsi_qla_host* %10, %struct.scsi_qla_host** %3, align 8
  %11 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %12 = call i64 @is_qla40XX(%struct.scsi_qla_host* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %16 = call i32 @qla4xxx_prevent_other_port_reinit(%struct.scsi_qla_host* %15)
  br label %17

17:                                               ; preds = %14, %8
  %18 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %19 = call i32 @qla4xxx_destroy_ifaces(%struct.scsi_qla_host* %18)
  %20 = load i32, i32* @ql4xdisablesysfsboot, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %17
  %23 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %24 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %29 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @iscsi_boot_destroy_kset(i64 %30)
  br label %32

32:                                               ; preds = %27, %22, %17
  %33 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %34 = call i32 @qla4xxx_destroy_fw_ddb_session(%struct.scsi_qla_host* %33)
  %35 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %36 = call i32 @qla4_8xxx_free_sysfs_attr(%struct.scsi_qla_host* %35)
  %37 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %38 = call i32 @qla4xxx_sysfs_ddb_remove(%struct.scsi_qla_host* %37)
  %39 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %40 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @scsi_remove_host(i32 %41)
  %43 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %44 = call i32 @qla4xxx_free_adapter(%struct.scsi_qla_host* %43)
  %45 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %46 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @scsi_host_put(i32 %47)
  %49 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %50 = call i32 @pci_disable_pcie_error_reporting(%struct.pci_dev* %49)
  %51 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %52 = call i32 @pci_disable_device(%struct.pci_dev* %51)
  br label %53

53:                                               ; preds = %32, %7
  ret void
}

declare dso_local i32 @pci_is_enabled(%struct.pci_dev*) #1

declare dso_local %struct.scsi_qla_host* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i64 @is_qla40XX(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4xxx_prevent_other_port_reinit(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4xxx_destroy_ifaces(%struct.scsi_qla_host*) #1

declare dso_local i32 @iscsi_boot_destroy_kset(i64) #1

declare dso_local i32 @qla4xxx_destroy_fw_ddb_session(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4_8xxx_free_sysfs_attr(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4xxx_sysfs_ddb_remove(%struct.scsi_qla_host*) #1

declare dso_local i32 @scsi_remove_host(i32) #1

declare dso_local i32 @qla4xxx_free_adapter(%struct.scsi_qla_host*) #1

declare dso_local i32 @scsi_host_put(i32) #1

declare dso_local i32 @pci_disable_pcie_error_reporting(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
