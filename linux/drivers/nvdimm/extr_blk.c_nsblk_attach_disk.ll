; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_blk.c_nsblk_attach_disk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_blk.c_nsblk_attach_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_namespace_blk = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.request_queue = type { i32, i32, %struct.request_queue*, i32*, i64, %struct.nd_namespace_blk* }
%struct.gendisk = type { i32, i32, %struct.gendisk*, i32*, i64, %struct.nd_namespace_blk* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nd_blk_release_queue = common dso_local global i32 0, align 4
@nd_blk_make_request = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@QUEUE_FLAG_NONROT = common dso_local global i32 0, align 4
@nd_blk_fops = common dso_local global i32 0, align 4
@GENHD_FL_EXT_DEVT = common dso_local global i32 0, align 4
@nd_blk_release_disk = common dso_local global i32 0, align 4
@SECTOR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nd_namespace_blk*)* @nsblk_attach_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsblk_attach_disk(%struct.nd_namespace_blk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nd_namespace_blk*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca %struct.gendisk*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nd_namespace_blk* %0, %struct.nd_namespace_blk** %3, align 8
  %10 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %3, align 8
  %11 = getelementptr inbounds %struct.nd_namespace_blk, %struct.nd_namespace_blk* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %3, align 8
  %14 = getelementptr inbounds %struct.nd_namespace_blk, %struct.nd_namespace_blk* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %3, align 8
  %17 = call i32 @nsblk_internal_lbasize(%struct.nd_namespace_blk* %16)
  %18 = call i32 @div_u64(i32 %15, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %3, align 8
  %21 = call i32 @nsblk_sector_size(%struct.nd_namespace_blk* %20)
  %22 = mul nsw i32 %19, %21
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.request_queue* @blk_alloc_queue(i32 %23)
  store %struct.request_queue* %24, %struct.request_queue** %6, align 8
  %25 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %26 = icmp ne %struct.request_queue* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %119

30:                                               ; preds = %1
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = load i32, i32* @nd_blk_release_queue, align 4
  %33 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %34 = call i64 @devm_add_action_or_reset(%struct.device* %31, i32 %32, %struct.request_queue* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %119

39:                                               ; preds = %30
  %40 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %41 = load i32, i32* @nd_blk_make_request, align 4
  %42 = call i32 @blk_queue_make_request(%struct.request_queue* %40, i32 %41)
  %43 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %44 = load i32, i32* @UINT_MAX, align 4
  %45 = call i32 @blk_queue_max_hw_sectors(%struct.request_queue* %43, i32 %44)
  %46 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %47 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %3, align 8
  %48 = call i32 @nsblk_sector_size(%struct.nd_namespace_blk* %47)
  %49 = call i32 @blk_queue_logical_block_size(%struct.request_queue* %46, i32 %48)
  %50 = load i32, i32* @QUEUE_FLAG_NONROT, align 4
  %51 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %52 = call i32 @blk_queue_flag_set(i32 %50, %struct.request_queue* %51)
  %53 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %3, align 8
  %54 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %55 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %54, i32 0, i32 5
  store %struct.nd_namespace_blk* %53, %struct.nd_namespace_blk** %55, align 8
  %56 = call %struct.request_queue* @alloc_disk(i32 0)
  %57 = bitcast %struct.request_queue* %56 to %struct.gendisk*
  store %struct.gendisk* %57, %struct.gendisk** %7, align 8
  %58 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %59 = icmp ne %struct.gendisk* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %39
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %119

63:                                               ; preds = %39
  %64 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %65 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %64, i32 0, i32 4
  store i64 0, i64* %65, align 8
  %66 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %67 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %66, i32 0, i32 3
  store i32* @nd_blk_fops, i32** %67, align 8
  %68 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %69 = bitcast %struct.request_queue* %68 to %struct.gendisk*
  %70 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %71 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %70, i32 0, i32 2
  store %struct.gendisk* %69, %struct.gendisk** %71, align 8
  %72 = load i32, i32* @GENHD_FL_EXT_DEVT, align 4
  %73 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %74 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %3, align 8
  %76 = getelementptr inbounds %struct.nd_namespace_blk, %struct.nd_namespace_blk* %75, i32 0, i32 0
  %77 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %78 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @nvdimm_namespace_disk_name(%struct.TYPE_2__* %76, i32 %79)
  %81 = load %struct.device*, %struct.device** %4, align 8
  %82 = load i32, i32* @nd_blk_release_disk, align 4
  %83 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %84 = bitcast %struct.gendisk* %83 to %struct.request_queue*
  %85 = call i64 @devm_add_action_or_reset(%struct.device* %81, i32 %82, %struct.request_queue* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %63
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %119

90:                                               ; preds = %63
  %91 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %3, align 8
  %92 = call i64 @nsblk_meta_size(%struct.nd_namespace_blk* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %90
  %95 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %96 = bitcast %struct.gendisk* %95 to %struct.request_queue*
  %97 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %3, align 8
  %98 = call i64 @nsblk_meta_size(%struct.nd_namespace_blk* %97)
  %99 = call i32 @nd_integrity_init(%struct.request_queue* %96, i64 %98)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %94
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* %2, align 4
  br label %119

104:                                              ; preds = %94
  br label %105

105:                                              ; preds = %104, %90
  %106 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %107 = bitcast %struct.gendisk* %106 to %struct.request_queue*
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @SECTOR_SHIFT, align 4
  %110 = ashr i32 %108, %109
  %111 = call i32 @set_capacity(%struct.request_queue* %107, i32 %110)
  %112 = load %struct.device*, %struct.device** %4, align 8
  %113 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %114 = bitcast %struct.gendisk* %113 to %struct.request_queue*
  %115 = call i32 @device_add_disk(%struct.device* %112, %struct.request_queue* %114, i32* null)
  %116 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %117 = bitcast %struct.gendisk* %116 to %struct.request_queue*
  %118 = call i32 @revalidate_disk(%struct.request_queue* %117)
  store i32 0, i32* %2, align 4
  br label %119

119:                                              ; preds = %105, %102, %87, %60, %36, %27
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @nsblk_internal_lbasize(%struct.nd_namespace_blk*) #1

declare dso_local i32 @nsblk_sector_size(%struct.nd_namespace_blk*) #1

declare dso_local %struct.request_queue* @blk_alloc_queue(i32) #1

declare dso_local i64 @devm_add_action_or_reset(%struct.device*, i32, %struct.request_queue*) #1

declare dso_local i32 @blk_queue_make_request(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_queue_max_hw_sectors(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_queue_logical_block_size(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_queue_flag_set(i32, %struct.request_queue*) #1

declare dso_local %struct.request_queue* @alloc_disk(i32) #1

declare dso_local i32 @nvdimm_namespace_disk_name(%struct.TYPE_2__*, i32) #1

declare dso_local i64 @nsblk_meta_size(%struct.nd_namespace_blk*) #1

declare dso_local i32 @nd_integrity_init(%struct.request_queue*, i64) #1

declare dso_local i32 @set_capacity(%struct.request_queue*, i32) #1

declare dso_local i32 @device_add_disk(%struct.device*, %struct.request_queue*, i32*) #1

declare dso_local i32 @revalidate_disk(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
