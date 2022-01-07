; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/intel/extr_ntb_hw_gen1.c_ndev_init_debugfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/intel/extr_ntb_hw_gen1.c_ndev_init_debugfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_ntb_dev = type { i32*, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@debugfs_dir = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"info\00", align 1
@S_IRUSR = common dso_local global i32 0, align 4
@intel_ntb_debugfs_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_ntb_dev*)* @ndev_init_debugfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ndev_init_debugfs(%struct.intel_ntb_dev* %0) #0 {
  %2 = alloca %struct.intel_ntb_dev*, align 8
  store %struct.intel_ntb_dev* %0, %struct.intel_ntb_dev** %2, align 8
  %3 = load i32, i32* @debugfs_dir, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %2, align 8
  %7 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %6, i32 0, i32 0
  store i32* null, i32** %7, align 8
  %8 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %2, align 8
  %9 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %8, i32 0, i32 1
  store i32* null, i32** %9, align 8
  br label %37

10:                                               ; preds = %1
  %11 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %2, align 8
  %12 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @pci_name(i32 %14)
  %16 = load i32, i32* @debugfs_dir, align 4
  %17 = call i32* @debugfs_create_dir(i32 %15, i32 %16)
  %18 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %2, align 8
  %19 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %18, i32 0, i32 0
  store i32* %17, i32** %19, align 8
  %20 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %2, align 8
  %21 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %10
  %25 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %2, align 8
  %26 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %25, i32 0, i32 1
  store i32* null, i32** %26, align 8
  br label %36

27:                                               ; preds = %10
  %28 = load i32, i32* @S_IRUSR, align 4
  %29 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %2, align 8
  %30 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %2, align 8
  %33 = call i32* @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %28, i32* %31, %struct.intel_ntb_dev* %32, i32* @intel_ntb_debugfs_info)
  %34 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %2, align 8
  %35 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %34, i32 0, i32 1
  store i32* %33, i32** %35, align 8
  br label %36

36:                                               ; preds = %27, %24
  br label %37

37:                                               ; preds = %36, %5
  ret void
}

declare dso_local i32* @debugfs_create_dir(i32, i32) #1

declare dso_local i32 @pci_name(i32) #1

declare dso_local i32* @debugfs_create_file(i8*, i32, i32*, %struct.intel_ntb_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
