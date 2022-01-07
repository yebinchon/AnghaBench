; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_gntdev-dmabuf.c_dmabuf_exp_ops_map_dma_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_gntdev-dmabuf.c_dmabuf_exp_ops_map_dma_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sg_table = type { i32, i32 }
%struct.dma_buf_attachment = type { i32, %struct.TYPE_2__*, %struct.gntdev_dmabuf_attachment* }
%struct.TYPE_2__ = type { %struct.gntdev_dmabuf* }
%struct.gntdev_dmabuf = type { i32, i32 }
%struct.gntdev_dmabuf_attachment = type { i32, %struct.sg_table* }

@.str = private unnamed_addr constant [29 x i8] c"Mapping %d pages for dev %p\0A\00", align 1
@DMA_NONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@DMA_ATTR_SKIP_CPU_SYNC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to map sg table for dev %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sg_table* (%struct.dma_buf_attachment*, i32)* @dmabuf_exp_ops_map_dma_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sg_table* @dmabuf_exp_ops_map_dma_buf(%struct.dma_buf_attachment* %0, i32 %1) #0 {
  %3 = alloca %struct.sg_table*, align 8
  %4 = alloca %struct.dma_buf_attachment*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gntdev_dmabuf_attachment*, align 8
  %7 = alloca %struct.gntdev_dmabuf*, align 8
  %8 = alloca %struct.sg_table*, align 8
  store %struct.dma_buf_attachment* %0, %struct.dma_buf_attachment** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %10 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %9, i32 0, i32 2
  %11 = load %struct.gntdev_dmabuf_attachment*, %struct.gntdev_dmabuf_attachment** %10, align 8
  store %struct.gntdev_dmabuf_attachment* %11, %struct.gntdev_dmabuf_attachment** %6, align 8
  %12 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %13 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.gntdev_dmabuf*, %struct.gntdev_dmabuf** %15, align 8
  store %struct.gntdev_dmabuf* %16, %struct.gntdev_dmabuf** %7, align 8
  %17 = load %struct.gntdev_dmabuf*, %struct.gntdev_dmabuf** %7, align 8
  %18 = getelementptr inbounds %struct.gntdev_dmabuf, %struct.gntdev_dmabuf* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %21 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @DMA_NONE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load %struct.gntdev_dmabuf_attachment*, %struct.gntdev_dmabuf_attachment** %6, align 8
  %29 = icmp ne %struct.gntdev_dmabuf_attachment* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %27, %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.sg_table* @ERR_PTR(i32 %32)
  store %struct.sg_table* %33, %struct.sg_table** %3, align 8
  br label %106

34:                                               ; preds = %27
  %35 = load %struct.gntdev_dmabuf_attachment*, %struct.gntdev_dmabuf_attachment** %6, align 8
  %36 = getelementptr inbounds %struct.gntdev_dmabuf_attachment, %struct.gntdev_dmabuf_attachment* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.gntdev_dmabuf_attachment*, %struct.gntdev_dmabuf_attachment** %6, align 8
  %42 = getelementptr inbounds %struct.gntdev_dmabuf_attachment, %struct.gntdev_dmabuf_attachment* %41, i32 0, i32 1
  %43 = load %struct.sg_table*, %struct.sg_table** %42, align 8
  store %struct.sg_table* %43, %struct.sg_table** %3, align 8
  br label %106

44:                                               ; preds = %34
  %45 = load %struct.gntdev_dmabuf_attachment*, %struct.gntdev_dmabuf_attachment** %6, align 8
  %46 = getelementptr inbounds %struct.gntdev_dmabuf_attachment, %struct.gntdev_dmabuf_attachment* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @DMA_NONE, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32, i32* @EBUSY, align 4
  %52 = sub nsw i32 0, %51
  %53 = call %struct.sg_table* @ERR_PTR(i32 %52)
  store %struct.sg_table* %53, %struct.sg_table** %3, align 8
  br label %106

54:                                               ; preds = %44
  %55 = load %struct.gntdev_dmabuf*, %struct.gntdev_dmabuf** %7, align 8
  %56 = getelementptr inbounds %struct.gntdev_dmabuf, %struct.gntdev_dmabuf* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.gntdev_dmabuf*, %struct.gntdev_dmabuf** %7, align 8
  %59 = getelementptr inbounds %struct.gntdev_dmabuf, %struct.gntdev_dmabuf* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call %struct.sg_table* @dmabuf_pages_to_sgt(i32 %57, i32 %60)
  store %struct.sg_table* %61, %struct.sg_table** %8, align 8
  %62 = load %struct.sg_table*, %struct.sg_table** %8, align 8
  %63 = call i64 @IS_ERR(%struct.sg_table* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %95, label %65

65:                                               ; preds = %54
  %66 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %67 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.sg_table*, %struct.sg_table** %8, align 8
  %70 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.sg_table*, %struct.sg_table** %8, align 8
  %73 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @DMA_ATTR_SKIP_CPU_SYNC, align 4
  %77 = call i32 @dma_map_sg_attrs(i32 %68, i32 %71, i32 %74, i32 %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %65
  %80 = load %struct.sg_table*, %struct.sg_table** %8, align 8
  %81 = call i32 @sg_free_table(%struct.sg_table* %80)
  %82 = load %struct.sg_table*, %struct.sg_table** %8, align 8
  %83 = call i32 @kfree(%struct.sg_table* %82)
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  %86 = call %struct.sg_table* @ERR_PTR(i32 %85)
  store %struct.sg_table* %86, %struct.sg_table** %8, align 8
  br label %94

87:                                               ; preds = %65
  %88 = load %struct.sg_table*, %struct.sg_table** %8, align 8
  %89 = load %struct.gntdev_dmabuf_attachment*, %struct.gntdev_dmabuf_attachment** %6, align 8
  %90 = getelementptr inbounds %struct.gntdev_dmabuf_attachment, %struct.gntdev_dmabuf_attachment* %89, i32 0, i32 1
  store %struct.sg_table* %88, %struct.sg_table** %90, align 8
  %91 = load i32, i32* %5, align 4
  %92 = load %struct.gntdev_dmabuf_attachment*, %struct.gntdev_dmabuf_attachment** %6, align 8
  %93 = getelementptr inbounds %struct.gntdev_dmabuf_attachment, %struct.gntdev_dmabuf_attachment* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  br label %94

94:                                               ; preds = %87, %79
  br label %95

95:                                               ; preds = %94, %54
  %96 = load %struct.sg_table*, %struct.sg_table** %8, align 8
  %97 = call i64 @IS_ERR(%struct.sg_table* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %101 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %99, %95
  %105 = load %struct.sg_table*, %struct.sg_table** %8, align 8
  store %struct.sg_table* %105, %struct.sg_table** %3, align 8
  br label %106

106:                                              ; preds = %104, %50, %40, %30
  %107 = load %struct.sg_table*, %struct.sg_table** %3, align 8
  ret %struct.sg_table* %107
}

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local %struct.sg_table* @ERR_PTR(i32) #1

declare dso_local %struct.sg_table* @dmabuf_pages_to_sgt(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.sg_table*) #1

declare dso_local i32 @dma_map_sg_attrs(i32, i32, i32, i32, i32) #1

declare dso_local i32 @sg_free_table(%struct.sg_table*) #1

declare dso_local i32 @kfree(%struct.sg_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
