; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_btt.c_btt_blk_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_btt.c_btt_blk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btt = type { i32, i32, %struct.TYPE_16__*, %struct.nd_btt*, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { %struct.TYPE_17__*, i32, %struct.btt*, i32*, i64, i32 }
%struct.nd_btt = type { i32, i32, %struct.nd_namespace_common* }
%struct.nd_namespace_common = type { i32 }
%struct.TYPE_17__ = type { %struct.btt*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@btt_fops = common dso_local global i32 0, align 4
@GENHD_FL_EXT_DEVT = common dso_local global i32 0, align 4
@BDI_CAP_SYNCHRONOUS_IO = common dso_local global i32 0, align 4
@btt_make_request = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@QUEUE_FLAG_NONROT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btt*)* @btt_blk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btt_blk_init(%struct.btt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btt*, align 8
  %4 = alloca %struct.nd_btt*, align 8
  %5 = alloca %struct.nd_namespace_common*, align 8
  %6 = alloca i32, align 4
  store %struct.btt* %0, %struct.btt** %3, align 8
  %7 = load %struct.btt*, %struct.btt** %3, align 8
  %8 = getelementptr inbounds %struct.btt, %struct.btt* %7, i32 0, i32 3
  %9 = load %struct.nd_btt*, %struct.nd_btt** %8, align 8
  store %struct.nd_btt* %9, %struct.nd_btt** %4, align 8
  %10 = load %struct.nd_btt*, %struct.nd_btt** %4, align 8
  %11 = getelementptr inbounds %struct.nd_btt, %struct.nd_btt* %10, i32 0, i32 2
  %12 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %11, align 8
  store %struct.nd_namespace_common* %12, %struct.nd_namespace_common** %5, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.TYPE_17__* @blk_alloc_queue(i32 %13)
  %15 = load %struct.btt*, %struct.btt** %3, align 8
  %16 = getelementptr inbounds %struct.btt, %struct.btt* %15, i32 0, i32 4
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %16, align 8
  %17 = load %struct.btt*, %struct.btt** %3, align 8
  %18 = getelementptr inbounds %struct.btt, %struct.btt* %17, i32 0, i32 4
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %20 = icmp ne %struct.TYPE_17__* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %173

24:                                               ; preds = %1
  %25 = call %struct.TYPE_16__* @alloc_disk(i32 0)
  %26 = load %struct.btt*, %struct.btt** %3, align 8
  %27 = getelementptr inbounds %struct.btt, %struct.btt* %26, i32 0, i32 2
  store %struct.TYPE_16__* %25, %struct.TYPE_16__** %27, align 8
  %28 = load %struct.btt*, %struct.btt** %3, align 8
  %29 = getelementptr inbounds %struct.btt, %struct.btt* %28, i32 0, i32 2
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %31 = icmp ne %struct.TYPE_16__* %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %24
  %33 = load %struct.btt*, %struct.btt** %3, align 8
  %34 = getelementptr inbounds %struct.btt, %struct.btt* %33, i32 0, i32 4
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %34, align 8
  %36 = call i32 @blk_cleanup_queue(%struct.TYPE_17__* %35)
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %173

39:                                               ; preds = %24
  %40 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %5, align 8
  %41 = load %struct.btt*, %struct.btt** %3, align 8
  %42 = getelementptr inbounds %struct.btt, %struct.btt* %41, i32 0, i32 2
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @nvdimm_namespace_disk_name(%struct.nd_namespace_common* %40, i32 %45)
  %47 = load %struct.btt*, %struct.btt** %3, align 8
  %48 = getelementptr inbounds %struct.btt, %struct.btt* %47, i32 0, i32 2
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 4
  store i64 0, i64* %50, align 8
  %51 = load %struct.btt*, %struct.btt** %3, align 8
  %52 = getelementptr inbounds %struct.btt, %struct.btt* %51, i32 0, i32 2
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 3
  store i32* @btt_fops, i32** %54, align 8
  %55 = load %struct.btt*, %struct.btt** %3, align 8
  %56 = load %struct.btt*, %struct.btt** %3, align 8
  %57 = getelementptr inbounds %struct.btt, %struct.btt* %56, i32 0, i32 2
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 2
  store %struct.btt* %55, %struct.btt** %59, align 8
  %60 = load %struct.btt*, %struct.btt** %3, align 8
  %61 = getelementptr inbounds %struct.btt, %struct.btt* %60, i32 0, i32 4
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %61, align 8
  %63 = load %struct.btt*, %struct.btt** %3, align 8
  %64 = getelementptr inbounds %struct.btt, %struct.btt* %63, i32 0, i32 2
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  store %struct.TYPE_17__* %62, %struct.TYPE_17__** %66, align 8
  %67 = load i32, i32* @GENHD_FL_EXT_DEVT, align 4
  %68 = load %struct.btt*, %struct.btt** %3, align 8
  %69 = getelementptr inbounds %struct.btt, %struct.btt* %68, i32 0, i32 2
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 1
  store i32 %67, i32* %71, align 8
  %72 = load i32, i32* @BDI_CAP_SYNCHRONOUS_IO, align 4
  %73 = load %struct.btt*, %struct.btt** %3, align 8
  %74 = getelementptr inbounds %struct.btt, %struct.btt* %73, i32 0, i32 2
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %72
  store i32 %82, i32* %80, align 4
  %83 = load %struct.btt*, %struct.btt** %3, align 8
  %84 = getelementptr inbounds %struct.btt, %struct.btt* %83, i32 0, i32 4
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %84, align 8
  %86 = load i32, i32* @btt_make_request, align 4
  %87 = call i32 @blk_queue_make_request(%struct.TYPE_17__* %85, i32 %86)
  %88 = load %struct.btt*, %struct.btt** %3, align 8
  %89 = getelementptr inbounds %struct.btt, %struct.btt* %88, i32 0, i32 4
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %89, align 8
  %91 = load %struct.btt*, %struct.btt** %3, align 8
  %92 = getelementptr inbounds %struct.btt, %struct.btt* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @blk_queue_logical_block_size(%struct.TYPE_17__* %90, i32 %93)
  %95 = load %struct.btt*, %struct.btt** %3, align 8
  %96 = getelementptr inbounds %struct.btt, %struct.btt* %95, i32 0, i32 4
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %96, align 8
  %98 = load i32, i32* @UINT_MAX, align 4
  %99 = call i32 @blk_queue_max_hw_sectors(%struct.TYPE_17__* %97, i32 %98)
  %100 = load i32, i32* @QUEUE_FLAG_NONROT, align 4
  %101 = load %struct.btt*, %struct.btt** %3, align 8
  %102 = getelementptr inbounds %struct.btt, %struct.btt* %101, i32 0, i32 4
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %102, align 8
  %104 = call i32 @blk_queue_flag_set(i32 %100, %struct.TYPE_17__* %103)
  %105 = load %struct.btt*, %struct.btt** %3, align 8
  %106 = load %struct.btt*, %struct.btt** %3, align 8
  %107 = getelementptr inbounds %struct.btt, %struct.btt* %106, i32 0, i32 4
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 0
  store %struct.btt* %105, %struct.btt** %109, align 8
  %110 = load %struct.btt*, %struct.btt** %3, align 8
  %111 = call i64 @btt_meta_size(%struct.btt* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %137

113:                                              ; preds = %39
  %114 = load %struct.btt*, %struct.btt** %3, align 8
  %115 = getelementptr inbounds %struct.btt, %struct.btt* %114, i32 0, i32 2
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %115, align 8
  %117 = load %struct.btt*, %struct.btt** %3, align 8
  %118 = call i64 @btt_meta_size(%struct.btt* %117)
  %119 = call i32 @nd_integrity_init(%struct.TYPE_16__* %116, i64 %118)
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %6, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %136

122:                                              ; preds = %113
  %123 = load %struct.btt*, %struct.btt** %3, align 8
  %124 = getelementptr inbounds %struct.btt, %struct.btt* %123, i32 0, i32 2
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %124, align 8
  %126 = call i32 @del_gendisk(%struct.TYPE_16__* %125)
  %127 = load %struct.btt*, %struct.btt** %3, align 8
  %128 = getelementptr inbounds %struct.btt, %struct.btt* %127, i32 0, i32 2
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %128, align 8
  %130 = call i32 @put_disk(%struct.TYPE_16__* %129)
  %131 = load %struct.btt*, %struct.btt** %3, align 8
  %132 = getelementptr inbounds %struct.btt, %struct.btt* %131, i32 0, i32 4
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %132, align 8
  %134 = call i32 @blk_cleanup_queue(%struct.TYPE_17__* %133)
  %135 = load i32, i32* %6, align 4
  store i32 %135, i32* %2, align 4
  br label %173

136:                                              ; preds = %113
  br label %137

137:                                              ; preds = %136, %39
  %138 = load %struct.btt*, %struct.btt** %3, align 8
  %139 = getelementptr inbounds %struct.btt, %struct.btt* %138, i32 0, i32 2
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %139, align 8
  %141 = load %struct.btt*, %struct.btt** %3, align 8
  %142 = getelementptr inbounds %struct.btt, %struct.btt* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.btt*, %struct.btt** %3, align 8
  %145 = getelementptr inbounds %struct.btt, %struct.btt* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = mul nsw i32 %143, %146
  %148 = ashr i32 %147, 9
  %149 = call i32 @set_capacity(%struct.TYPE_16__* %140, i32 %148)
  %150 = load %struct.btt*, %struct.btt** %3, align 8
  %151 = getelementptr inbounds %struct.btt, %struct.btt* %150, i32 0, i32 3
  %152 = load %struct.nd_btt*, %struct.nd_btt** %151, align 8
  %153 = getelementptr inbounds %struct.nd_btt, %struct.nd_btt* %152, i32 0, i32 1
  %154 = load %struct.btt*, %struct.btt** %3, align 8
  %155 = getelementptr inbounds %struct.btt, %struct.btt* %154, i32 0, i32 2
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %155, align 8
  %157 = call i32 @device_add_disk(i32* %153, %struct.TYPE_16__* %156, i32* null)
  %158 = load %struct.btt*, %struct.btt** %3, align 8
  %159 = getelementptr inbounds %struct.btt, %struct.btt* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.btt*, %struct.btt** %3, align 8
  %162 = getelementptr inbounds %struct.btt, %struct.btt* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = mul nsw i32 %160, %163
  %165 = load %struct.btt*, %struct.btt** %3, align 8
  %166 = getelementptr inbounds %struct.btt, %struct.btt* %165, i32 0, i32 3
  %167 = load %struct.nd_btt*, %struct.nd_btt** %166, align 8
  %168 = getelementptr inbounds %struct.nd_btt, %struct.nd_btt* %167, i32 0, i32 0
  store i32 %164, i32* %168, align 8
  %169 = load %struct.btt*, %struct.btt** %3, align 8
  %170 = getelementptr inbounds %struct.btt, %struct.btt* %169, i32 0, i32 2
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %170, align 8
  %172 = call i32 @revalidate_disk(%struct.TYPE_16__* %171)
  store i32 0, i32* %2, align 4
  br label %173

173:                                              ; preds = %137, %122, %32, %21
  %174 = load i32, i32* %2, align 4
  ret i32 %174
}

declare dso_local %struct.TYPE_17__* @blk_alloc_queue(i32) #1

declare dso_local %struct.TYPE_16__* @alloc_disk(i32) #1

declare dso_local i32 @blk_cleanup_queue(%struct.TYPE_17__*) #1

declare dso_local i32 @nvdimm_namespace_disk_name(%struct.nd_namespace_common*, i32) #1

declare dso_local i32 @blk_queue_make_request(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @blk_queue_logical_block_size(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @blk_queue_max_hw_sectors(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @blk_queue_flag_set(i32, %struct.TYPE_17__*) #1

declare dso_local i64 @btt_meta_size(%struct.btt*) #1

declare dso_local i32 @nd_integrity_init(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @del_gendisk(%struct.TYPE_16__*) #1

declare dso_local i32 @put_disk(%struct.TYPE_16__*) #1

declare dso_local i32 @set_capacity(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @device_add_disk(i32*, %struct.TYPE_16__*, i32*) #1

declare dso_local i32 @revalidate_disk(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
