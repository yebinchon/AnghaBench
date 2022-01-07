; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i64 }
%struct.nvme_dev = type { %struct.nvme_dev*, i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@NUMA_NO_NODE = common dso_local global i32 0, align 4
@first_memory_node = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@nvme_reset_work = common dso_local global i32 0, align 4
@nvme_remove_dead_ctrl_work = common dso_local global i32 0, align 4
@NVME_MAX_KB_SZ = common dso_local global i32 0, align 4
@NVME_MAX_SEGS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@mempool_kmalloc = common dso_local global i32 0, align 4
@mempool_kfree = common dso_local global i32 0, align 4
@nvme_pci_ctrl_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"pci function %s\0A\00", align 1
@nvme_async_probe = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @nvme_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvme_dev*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %14 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %9, align 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 0
  %18 = call i32 @dev_to_node(i32* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @NUMA_NO_NODE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 0
  %25 = load i32, i32* @first_memory_node, align 4
  %26 = call i32 @set_dev_node(i32* %24, i32 %25)
  br label %27

27:                                               ; preds = %22, %2
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call %struct.nvme_dev* @kzalloc_node(i32 32, i32 %28, i32 %29)
  store %struct.nvme_dev* %30, %struct.nvme_dev** %8, align 8
  %31 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %32 = icmp ne %struct.nvme_dev* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %162

36:                                               ; preds = %27
  %37 = call i32 (...) @max_queue_count()
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call %struct.nvme_dev* @kcalloc_node(i32 %37, i32 4, i32 %38, i32 %39)
  %41 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %42 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %41, i32 0, i32 0
  store %struct.nvme_dev* %40, %struct.nvme_dev** %42, align 8
  %43 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %44 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %43, i32 0, i32 0
  %45 = load %struct.nvme_dev*, %struct.nvme_dev** %44, align 8
  %46 = icmp ne %struct.nvme_dev* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %36
  br label %154

48:                                               ; preds = %36
  %49 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %50 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %49, i32 0, i32 0
  %51 = call i32 @get_device(i32* %50)
  %52 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %53 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %55 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %56 = call i32 @pci_set_drvdata(%struct.pci_dev* %54, %struct.nvme_dev* %55)
  %57 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %58 = call i32 @nvme_dev_map(%struct.nvme_dev* %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %48
  br label %149

62:                                               ; preds = %48
  %63 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %64 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* @nvme_reset_work, align 4
  %67 = call i32 @INIT_WORK(i32* %65, i32 %66)
  %68 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %69 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %68, i32 0, i32 5
  %70 = load i32, i32* @nvme_remove_dead_ctrl_work, align 4
  %71 = call i32 @INIT_WORK(i32* %69, i32 %70)
  %72 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %73 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %72, i32 0, i32 4
  %74 = call i32 @mutex_init(i32* %73)
  %75 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %76 = call i32 @nvme_setup_prp_pools(%struct.nvme_dev* %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %62
  br label %146

80:                                               ; preds = %62
  %81 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %82 = call i64 @check_vendor_combination_bug(%struct.pci_dev* %81)
  %83 = load i64, i64* %9, align 8
  %84 = or i64 %83, %82
  store i64 %84, i64* %9, align 8
  %85 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %86 = load i32, i32* @NVME_MAX_KB_SZ, align 4
  %87 = load i32, i32* @NVME_MAX_SEGS, align 4
  %88 = call i64 @nvme_pci_iod_alloc_size(%struct.nvme_dev* %85, i32 %86, i32 %87, i32 1)
  store i64 %88, i64* %10, align 8
  %89 = load i64, i64* %10, align 8
  %90 = load i64, i64* @PAGE_SIZE, align 8
  %91 = icmp ugt i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 @WARN_ON_ONCE(i32 %92)
  %94 = load i32, i32* @mempool_kmalloc, align 4
  %95 = load i32, i32* @mempool_kfree, align 4
  %96 = load i64, i64* %10, align 8
  %97 = inttoptr i64 %96 to i8*
  %98 = load i32, i32* @GFP_KERNEL, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @mempool_create_node(i32 1, i32 %94, i32 %95, i8* %97, i32 %98, i32 %99)
  %101 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %102 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 4
  %103 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %104 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %80
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %7, align 4
  br label %143

110:                                              ; preds = %80
  %111 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %112 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %111, i32 0, i32 3
  %113 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %114 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %113, i32 0, i32 0
  %115 = load i64, i64* %9, align 8
  %116 = call i32 @nvme_init_ctrl(%struct.TYPE_4__* %112, i32* %114, i32* @nvme_pci_ctrl_ops, i64 %115)
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %110
  br label %138

120:                                              ; preds = %110
  %121 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %122 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %126 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %125, i32 0, i32 0
  %127 = call i32 @dev_name(i32* %126)
  %128 = call i32 @dev_info(i32 %124, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %127)
  %129 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %130 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %129, i32 0, i32 3
  %131 = call i32 @nvme_reset_ctrl(%struct.TYPE_4__* %130)
  %132 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %133 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %132, i32 0, i32 3
  %134 = call i32 @nvme_get_ctrl(%struct.TYPE_4__* %133)
  %135 = load i32, i32* @nvme_async_probe, align 4
  %136 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %137 = call i32 @async_schedule(i32 %135, %struct.nvme_dev* %136)
  store i32 0, i32* %3, align 4
  br label %162

138:                                              ; preds = %119
  %139 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %140 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @mempool_destroy(i32 %141)
  br label %143

143:                                              ; preds = %138, %107
  %144 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %145 = call i32 @nvme_release_prp_pools(%struct.nvme_dev* %144)
  br label %146

146:                                              ; preds = %143, %79
  %147 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %148 = call i32 @nvme_dev_unmap(%struct.nvme_dev* %147)
  br label %149

149:                                              ; preds = %146, %61
  %150 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %151 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @put_device(i32 %152)
  br label %154

154:                                              ; preds = %149, %47
  %155 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %156 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %155, i32 0, i32 0
  %157 = load %struct.nvme_dev*, %struct.nvme_dev** %156, align 8
  %158 = call i32 @kfree(%struct.nvme_dev* %157)
  %159 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %160 = call i32 @kfree(%struct.nvme_dev* %159)
  %161 = load i32, i32* %7, align 4
  store i32 %161, i32* %3, align 4
  br label %162

162:                                              ; preds = %154, %120, %33
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local i32 @dev_to_node(i32*) #1

declare dso_local i32 @set_dev_node(i32*, i32) #1

declare dso_local %struct.nvme_dev* @kzalloc_node(i32, i32, i32) #1

declare dso_local %struct.nvme_dev* @kcalloc_node(i32, i32, i32, i32) #1

declare dso_local i32 @max_queue_count(...) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.nvme_dev*) #1

declare dso_local i32 @nvme_dev_map(%struct.nvme_dev*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @nvme_setup_prp_pools(%struct.nvme_dev*) #1

declare dso_local i64 @check_vendor_combination_bug(%struct.pci_dev*) #1

declare dso_local i64 @nvme_pci_iod_alloc_size(%struct.nvme_dev*, i32, i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @mempool_create_node(i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @nvme_init_ctrl(%struct.TYPE_4__*, i32*, i32*, i64) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @nvme_reset_ctrl(%struct.TYPE_4__*) #1

declare dso_local i32 @nvme_get_ctrl(%struct.TYPE_4__*) #1

declare dso_local i32 @async_schedule(i32, %struct.nvme_dev*) #1

declare dso_local i32 @mempool_destroy(i32) #1

declare dso_local i32 @nvme_release_prp_pools(%struct.nvme_dev*) #1

declare dso_local i32 @nvme_dev_unmap(%struct.nvme_dev*) #1

declare dso_local i32 @put_device(i32) #1

declare dso_local i32 @kfree(%struct.nvme_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
