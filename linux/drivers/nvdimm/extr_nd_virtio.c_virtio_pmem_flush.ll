; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_nd_virtio.c_virtio_pmem_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_nd_virtio.c_virtio_pmem_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_region = type { %struct.virtio_device* }
%struct.virtio_device = type { i32, %struct.virtio_pmem* }
%struct.virtio_pmem = type { i32, i32, i32 }
%struct.virtio_pmem_request = type { i32, i32, %struct.TYPE_4__, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.scatterlist = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VIRTIO_PMEM_REQ_TYPE_FLUSH = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"failed to send command to virtio pmem device, no free slots in the virtqueue\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"failed to send command to virtio pmem device\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nd_region*)* @virtio_pmem_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtio_pmem_flush(%struct.nd_region* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nd_region*, align 8
  %4 = alloca %struct.virtio_device*, align 8
  %5 = alloca %struct.virtio_pmem*, align 8
  %6 = alloca %struct.virtio_pmem_request*, align 8
  %7 = alloca [2 x %struct.scatterlist*], align 16
  %8 = alloca %struct.scatterlist, align 4
  %9 = alloca %struct.scatterlist, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nd_region* %0, %struct.nd_region** %3, align 8
  %13 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %14 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %13, i32 0, i32 0
  %15 = load %struct.virtio_device*, %struct.virtio_device** %14, align 8
  store %struct.virtio_device* %15, %struct.virtio_device** %4, align 8
  %16 = load %struct.virtio_device*, %struct.virtio_device** %4, align 8
  %17 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %16, i32 0, i32 1
  %18 = load %struct.virtio_pmem*, %struct.virtio_pmem** %17, align 8
  store %struct.virtio_pmem* %18, %struct.virtio_pmem** %5, align 8
  %19 = call i32 (...) @might_sleep()
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.virtio_pmem_request* @kmalloc(i32 28, i32 %20)
  store %struct.virtio_pmem_request* %21, %struct.virtio_pmem_request** %6, align 8
  %22 = load %struct.virtio_pmem_request*, %struct.virtio_pmem_request** %6, align 8
  %23 = icmp ne %struct.virtio_pmem_request* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %132

27:                                               ; preds = %1
  %28 = load %struct.virtio_pmem_request*, %struct.virtio_pmem_request** %6, align 8
  %29 = getelementptr inbounds %struct.virtio_pmem_request, %struct.virtio_pmem_request* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  %30 = load %struct.virtio_pmem_request*, %struct.virtio_pmem_request** %6, align 8
  %31 = getelementptr inbounds %struct.virtio_pmem_request, %struct.virtio_pmem_request* %30, i32 0, i32 3
  %32 = call i32 @init_waitqueue_head(i32* %31)
  %33 = load %struct.virtio_pmem_request*, %struct.virtio_pmem_request** %6, align 8
  %34 = getelementptr inbounds %struct.virtio_pmem_request, %struct.virtio_pmem_request* %33, i32 0, i32 4
  %35 = call i32 @init_waitqueue_head(i32* %34)
  %36 = load %struct.virtio_pmem_request*, %struct.virtio_pmem_request** %6, align 8
  %37 = getelementptr inbounds %struct.virtio_pmem_request, %struct.virtio_pmem_request* %36, i32 0, i32 5
  %38 = call i32 @INIT_LIST_HEAD(i32* %37)
  %39 = load i32, i32* @VIRTIO_PMEM_REQ_TYPE_FLUSH, align 4
  %40 = call i32 @cpu_to_le32(i32 %39)
  %41 = load %struct.virtio_pmem_request*, %struct.virtio_pmem_request** %6, align 8
  %42 = getelementptr inbounds %struct.virtio_pmem_request, %struct.virtio_pmem_request* %41, i32 0, i32 6
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  %44 = load %struct.virtio_pmem_request*, %struct.virtio_pmem_request** %6, align 8
  %45 = getelementptr inbounds %struct.virtio_pmem_request, %struct.virtio_pmem_request* %44, i32 0, i32 6
  %46 = call i32 @sg_init_one(%struct.scatterlist* %8, %struct.TYPE_5__* %45, i32 4)
  %47 = getelementptr inbounds [2 x %struct.scatterlist*], [2 x %struct.scatterlist*]* %7, i64 0, i64 0
  store %struct.scatterlist* %8, %struct.scatterlist** %47, align 16
  %48 = load %struct.virtio_pmem_request*, %struct.virtio_pmem_request** %6, align 8
  %49 = getelementptr inbounds %struct.virtio_pmem_request, %struct.virtio_pmem_request* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = call i32 @sg_init_one(%struct.scatterlist* %9, %struct.TYPE_5__* %50, i32 4)
  %52 = getelementptr inbounds [2 x %struct.scatterlist*], [2 x %struct.scatterlist*]* %7, i64 0, i64 1
  store %struct.scatterlist* %9, %struct.scatterlist** %52, align 8
  %53 = load %struct.virtio_pmem*, %struct.virtio_pmem** %5, align 8
  %54 = getelementptr inbounds %struct.virtio_pmem, %struct.virtio_pmem* %53, i32 0, i32 0
  %55 = load i64, i64* %10, align 8
  %56 = call i32 @spin_lock_irqsave(i32* %54, i64 %55)
  br label %57

57:                                               ; preds = %68, %27
  %58 = load %struct.virtio_pmem*, %struct.virtio_pmem** %5, align 8
  %59 = getelementptr inbounds %struct.virtio_pmem, %struct.virtio_pmem* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds [2 x %struct.scatterlist*], [2 x %struct.scatterlist*]* %7, i64 0, i64 0
  %62 = load %struct.virtio_pmem_request*, %struct.virtio_pmem_request** %6, align 8
  %63 = load i32, i32* @GFP_ATOMIC, align 4
  %64 = call i32 @virtqueue_add_sgs(i32 %60, %struct.scatterlist** %61, i32 1, i32 1, %struct.virtio_pmem_request* %62, i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* @ENOSPC, align 4
  %66 = sub nsw i32 0, %65
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %94

68:                                               ; preds = %57
  %69 = load %struct.virtio_device*, %struct.virtio_device** %4, align 8
  %70 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %69, i32 0, i32 0
  %71 = call i32 @dev_info(i32* %70, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0))
  %72 = load %struct.virtio_pmem_request*, %struct.virtio_pmem_request** %6, align 8
  %73 = getelementptr inbounds %struct.virtio_pmem_request, %struct.virtio_pmem_request* %72, i32 0, i32 1
  store i32 0, i32* %73, align 4
  %74 = load %struct.virtio_pmem_request*, %struct.virtio_pmem_request** %6, align 8
  %75 = getelementptr inbounds %struct.virtio_pmem_request, %struct.virtio_pmem_request* %74, i32 0, i32 5
  %76 = load %struct.virtio_pmem*, %struct.virtio_pmem** %5, align 8
  %77 = getelementptr inbounds %struct.virtio_pmem, %struct.virtio_pmem* %76, i32 0, i32 2
  %78 = call i32 @list_add_tail(i32* %75, i32* %77)
  %79 = load %struct.virtio_pmem*, %struct.virtio_pmem** %5, align 8
  %80 = getelementptr inbounds %struct.virtio_pmem, %struct.virtio_pmem* %79, i32 0, i32 0
  %81 = load i64, i64* %10, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i64 %81)
  %83 = load %struct.virtio_pmem_request*, %struct.virtio_pmem_request** %6, align 8
  %84 = getelementptr inbounds %struct.virtio_pmem_request, %struct.virtio_pmem_request* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.virtio_pmem_request*, %struct.virtio_pmem_request** %6, align 8
  %87 = getelementptr inbounds %struct.virtio_pmem_request, %struct.virtio_pmem_request* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @wait_event(i32 %85, i32 %88)
  %90 = load %struct.virtio_pmem*, %struct.virtio_pmem** %5, align 8
  %91 = getelementptr inbounds %struct.virtio_pmem, %struct.virtio_pmem* %90, i32 0, i32 0
  %92 = load i64, i64* %10, align 8
  %93 = call i32 @spin_lock_irqsave(i32* %91, i64 %92)
  br label %57

94:                                               ; preds = %57
  %95 = load %struct.virtio_pmem*, %struct.virtio_pmem** %5, align 8
  %96 = getelementptr inbounds %struct.virtio_pmem, %struct.virtio_pmem* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @virtqueue_kick(i32 %97)
  store i32 %98, i32* %12, align 4
  %99 = load %struct.virtio_pmem*, %struct.virtio_pmem** %5, align 8
  %100 = getelementptr inbounds %struct.virtio_pmem, %struct.virtio_pmem* %99, i32 0, i32 0
  %101 = load i64, i64* %10, align 8
  %102 = call i32 @spin_unlock_irqrestore(i32* %100, i64 %101)
  %103 = load i32, i32* %11, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %94
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %105, %94
  %109 = load %struct.virtio_device*, %struct.virtio_device** %4, align 8
  %110 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %109, i32 0, i32 0
  %111 = call i32 @dev_info(i32* %110, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %112 = load i32, i32* @EIO, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %11, align 4
  br label %128

114:                                              ; preds = %105
  %115 = load %struct.virtio_pmem_request*, %struct.virtio_pmem_request** %6, align 8
  %116 = getelementptr inbounds %struct.virtio_pmem_request, %struct.virtio_pmem_request* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.virtio_pmem_request*, %struct.virtio_pmem_request** %6, align 8
  %119 = getelementptr inbounds %struct.virtio_pmem_request, %struct.virtio_pmem_request* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @wait_event(i32 %117, i32 %120)
  %122 = load %struct.virtio_pmem_request*, %struct.virtio_pmem_request** %6, align 8
  %123 = getelementptr inbounds %struct.virtio_pmem_request, %struct.virtio_pmem_request* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @le32_to_cpu(i32 %126)
  store i32 %127, i32* %11, align 4
  br label %128

128:                                              ; preds = %114, %108
  %129 = load %struct.virtio_pmem_request*, %struct.virtio_pmem_request** %6, align 8
  %130 = call i32 @kfree(%struct.virtio_pmem_request* %129)
  %131 = load i32, i32* %11, align 4
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %128, %24
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local %struct.virtio_pmem_request* @kmalloc(i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @virtqueue_add_sgs(i32, %struct.scatterlist**, i32, i32, %struct.virtio_pmem_request*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @virtqueue_kick(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @kfree(%struct.virtio_pmem_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
