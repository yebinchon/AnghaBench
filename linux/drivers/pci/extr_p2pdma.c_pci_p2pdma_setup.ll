; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_p2pdma.c_pci_p2pdma_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_p2pdma.c_pci_p2pdma_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_5__, %struct.pci_p2pdma* }
%struct.TYPE_5__ = type { i32 }
%struct.pci_p2pdma = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@pci_p2pdma_release = common dso_local global i32 0, align 4
@p2pmem_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @pci_p2pdma_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_p2pdma_setup(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_p2pdma*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %6 = load i32, i32* @ENOMEM, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %4, align 4
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.pci_p2pdma* @devm_kzalloc(%struct.TYPE_5__* %9, i32 8, i32 %10)
  store %struct.pci_p2pdma* %11, %struct.pci_p2pdma** %5, align 8
  %12 = load %struct.pci_p2pdma*, %struct.pci_p2pdma** %5, align 8
  %13 = icmp ne %struct.pci_p2pdma* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %67

17:                                               ; preds = %1
  %18 = load %struct.pci_p2pdma*, %struct.pci_p2pdma** %5, align 8
  %19 = getelementptr inbounds %struct.pci_p2pdma, %struct.pci_p2pdma* %18, i32 0, i32 1
  %20 = call i32 @xa_init(i32* %19)
  %21 = load i32, i32* @PAGE_SHIFT, align 4
  %22 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  %24 = call i32 @dev_to_node(%struct.TYPE_5__* %23)
  %25 = call i32 @gen_pool_create(i32 %21, i32 %24)
  %26 = load %struct.pci_p2pdma*, %struct.pci_p2pdma** %5, align 8
  %27 = getelementptr inbounds %struct.pci_p2pdma, %struct.pci_p2pdma* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.pci_p2pdma*, %struct.pci_p2pdma** %5, align 8
  %29 = getelementptr inbounds %struct.pci_p2pdma, %struct.pci_p2pdma* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %17
  br label %61

33:                                               ; preds = %17
  %34 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 0
  %36 = load i32, i32* @pci_p2pdma_release, align 4
  %37 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %38 = call i32 @devm_add_action_or_reset(%struct.TYPE_5__* %35, i32 %36, %struct.pci_dev* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %54

42:                                               ; preds = %33
  %43 = load %struct.pci_p2pdma*, %struct.pci_p2pdma** %5, align 8
  %44 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 1
  store %struct.pci_p2pdma* %43, %struct.pci_p2pdma** %45, align 8
  %46 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = call i32 @sysfs_create_group(i32* %48, i32* @p2pmem_group)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %54

53:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %67

54:                                               ; preds = %52, %41
  %55 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %56 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %55, i32 0, i32 1
  store %struct.pci_p2pdma* null, %struct.pci_p2pdma** %56, align 8
  %57 = load %struct.pci_p2pdma*, %struct.pci_p2pdma** %5, align 8
  %58 = getelementptr inbounds %struct.pci_p2pdma, %struct.pci_p2pdma* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @gen_pool_destroy(i32 %59)
  br label %61

61:                                               ; preds = %54, %32
  %62 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %63 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %62, i32 0, i32 0
  %64 = load %struct.pci_p2pdma*, %struct.pci_p2pdma** %5, align 8
  %65 = call i32 @devm_kfree(%struct.TYPE_5__* %63, %struct.pci_p2pdma* %64)
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %61, %53, %14
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.pci_p2pdma* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @xa_init(i32*) #1

declare dso_local i32 @gen_pool_create(i32, i32) #1

declare dso_local i32 @dev_to_node(%struct.TYPE_5__*) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.TYPE_5__*, i32, %struct.pci_dev*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @gen_pool_destroy(i32) #1

declare dso_local i32 @devm_kfree(%struct.TYPE_5__*, %struct.pci_p2pdma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
