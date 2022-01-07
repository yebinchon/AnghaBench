; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_vpd.c_pcie_vpd_create_sysfs_dev_files.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_vpd.c_pcie_vpd_create_sysfs_dev_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.bin_attribute* }
%struct.bin_attribute = type { i32, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.TYPE_5__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"vpd\00", align 1
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@read_vpd_attr = common dso_local global i32 0, align 4
@write_vpd_attr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pcie_vpd_create_sysfs_dev_files(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bin_attribute*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 0
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = icmp ne %struct.TYPE_6__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %52

10:                                               ; preds = %1
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call %struct.bin_attribute* @kzalloc(i32 32, i32 %11)
  store %struct.bin_attribute* %12, %struct.bin_attribute** %4, align 8
  %13 = load %struct.bin_attribute*, %struct.bin_attribute** %4, align 8
  %14 = icmp ne %struct.bin_attribute* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  br label %52

16:                                               ; preds = %10
  %17 = load %struct.bin_attribute*, %struct.bin_attribute** %4, align 8
  %18 = call i32 @sysfs_bin_attr_init(%struct.bin_attribute* %17)
  %19 = load %struct.bin_attribute*, %struct.bin_attribute** %4, align 8
  %20 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %19, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = load %struct.bin_attribute*, %struct.bin_attribute** %4, align 8
  %22 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %23, align 8
  %24 = load i32, i32* @S_IRUSR, align 4
  %25 = load i32, i32* @S_IWUSR, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.bin_attribute*, %struct.bin_attribute** %4, align 8
  %28 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 8
  %30 = load i32, i32* @read_vpd_attr, align 4
  %31 = load %struct.bin_attribute*, %struct.bin_attribute** %4, align 8
  %32 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @write_vpd_attr, align 4
  %34 = load %struct.bin_attribute*, %struct.bin_attribute** %4, align 8
  %35 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.bin_attribute*, %struct.bin_attribute** %4, align 8
  %40 = call i32 @sysfs_create_bin_file(i32* %38, %struct.bin_attribute* %39)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %16
  %44 = load %struct.bin_attribute*, %struct.bin_attribute** %4, align 8
  %45 = call i32 @kfree(%struct.bin_attribute* %44)
  br label %52

46:                                               ; preds = %16
  %47 = load %struct.bin_attribute*, %struct.bin_attribute** %4, align 8
  %48 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store %struct.bin_attribute* %47, %struct.bin_attribute** %51, align 8
  br label %52

52:                                               ; preds = %46, %43, %15, %9
  ret void
}

declare dso_local %struct.bin_attribute* @kzalloc(i32, i32) #1

declare dso_local i32 @sysfs_bin_attr_init(%struct.bin_attribute*) #1

declare dso_local i32 @sysfs_create_bin_file(i32*, %struct.bin_attribute*) #1

declare dso_local i32 @kfree(%struct.bin_attribute*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
