; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcie = type { i32 }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"pcie\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@tegra_pcie_ports_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_pcie*)* @tegra_pcie_debugfs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pcie_debugfs_init(%struct.tegra_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_pcie*, align 8
  %4 = alloca %struct.dentry*, align 8
  store %struct.tegra_pcie* %0, %struct.tegra_pcie** %3, align 8
  %5 = call i32 @debugfs_create_dir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null)
  %6 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %7 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 4
  %8 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %9 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %33

15:                                               ; preds = %1
  %16 = load i32, i32* @S_IFREG, align 4
  %17 = load i32, i32* @S_IRUGO, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %20 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %23 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 %21, %struct.tegra_pcie* %22, i32* @tegra_pcie_ports_ops)
  store %struct.dentry* %23, %struct.dentry** %4, align 8
  %24 = load %struct.dentry*, %struct.dentry** %4, align 8
  %25 = icmp ne %struct.dentry* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %15
  br label %28

27:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %33

28:                                               ; preds = %26
  %29 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %30 = call i32 @tegra_pcie_debugfs_exit(%struct.tegra_pcie* %29)
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %28, %27, %12
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @debugfs_create_dir(i8*, i32*) #1

declare dso_local %struct.dentry* @debugfs_create_file(i8*, i32, i32, %struct.tegra_pcie*, i32*) #1

declare dso_local i32 @tegra_pcie_debugfs_exit(%struct.tegra_pcie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
