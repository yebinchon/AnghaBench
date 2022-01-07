; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_gntdev-dmabuf.c_dmabuf_exp_ops_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_gntdev-dmabuf.c_dmabuf_exp_ops_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf = type { i32 }
%struct.dma_buf_attachment = type { %struct.sg_table*, i32 }
%struct.sg_table = type { i32, i32, i32, %struct.sg_table* }
%struct.gntdev_dmabuf_attachment = type { i32, i32, i32, %struct.gntdev_dmabuf_attachment* }

@DMA_NONE = common dso_local global i32 0, align 4
@DMA_ATTR_SKIP_CPU_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_buf*, %struct.dma_buf_attachment*)* @dmabuf_exp_ops_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmabuf_exp_ops_detach(%struct.dma_buf* %0, %struct.dma_buf_attachment* %1) #0 {
  %3 = alloca %struct.dma_buf*, align 8
  %4 = alloca %struct.dma_buf_attachment*, align 8
  %5 = alloca %struct.gntdev_dmabuf_attachment*, align 8
  %6 = alloca %struct.sg_table*, align 8
  store %struct.dma_buf* %0, %struct.dma_buf** %3, align 8
  store %struct.dma_buf_attachment* %1, %struct.dma_buf_attachment** %4, align 8
  %7 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %8 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %7, i32 0, i32 0
  %9 = load %struct.sg_table*, %struct.sg_table** %8, align 8
  %10 = bitcast %struct.sg_table* %9 to %struct.gntdev_dmabuf_attachment*
  store %struct.gntdev_dmabuf_attachment* %10, %struct.gntdev_dmabuf_attachment** %5, align 8
  %11 = load %struct.gntdev_dmabuf_attachment*, %struct.gntdev_dmabuf_attachment** %5, align 8
  %12 = icmp ne %struct.gntdev_dmabuf_attachment* %11, null
  br i1 %12, label %13, label %52

13:                                               ; preds = %2
  %14 = load %struct.gntdev_dmabuf_attachment*, %struct.gntdev_dmabuf_attachment** %5, align 8
  %15 = getelementptr inbounds %struct.gntdev_dmabuf_attachment, %struct.gntdev_dmabuf_attachment* %14, i32 0, i32 3
  %16 = load %struct.gntdev_dmabuf_attachment*, %struct.gntdev_dmabuf_attachment** %15, align 8
  %17 = bitcast %struct.gntdev_dmabuf_attachment* %16 to %struct.sg_table*
  store %struct.sg_table* %17, %struct.sg_table** %6, align 8
  %18 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %19 = icmp ne %struct.sg_table* %18, null
  br i1 %19, label %20, label %44

20:                                               ; preds = %13
  %21 = load %struct.gntdev_dmabuf_attachment*, %struct.gntdev_dmabuf_attachment** %5, align 8
  %22 = getelementptr inbounds %struct.gntdev_dmabuf_attachment, %struct.gntdev_dmabuf_attachment* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @DMA_NONE, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %20
  %27 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %28 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %31 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %34 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.gntdev_dmabuf_attachment*, %struct.gntdev_dmabuf_attachment** %5, align 8
  %37 = getelementptr inbounds %struct.gntdev_dmabuf_attachment, %struct.gntdev_dmabuf_attachment* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @DMA_ATTR_SKIP_CPU_SYNC, align 4
  %40 = call i32 @dma_unmap_sg_attrs(i32 %29, i32 %32, i32 %35, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %26, %20
  %42 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %43 = call i32 @sg_free_table(%struct.sg_table* %42)
  br label %44

44:                                               ; preds = %41, %13
  %45 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %46 = call i32 @kfree(%struct.sg_table* %45)
  %47 = load %struct.gntdev_dmabuf_attachment*, %struct.gntdev_dmabuf_attachment** %5, align 8
  %48 = bitcast %struct.gntdev_dmabuf_attachment* %47 to %struct.sg_table*
  %49 = call i32 @kfree(%struct.sg_table* %48)
  %50 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %51 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %50, i32 0, i32 0
  store %struct.sg_table* null, %struct.sg_table** %51, align 8
  br label %52

52:                                               ; preds = %44, %2
  ret void
}

declare dso_local i32 @dma_unmap_sg_attrs(i32, i32, i32, i32, i32) #1

declare dso_local i32 @sg_free_table(%struct.sg_table*) #1

declare dso_local i32 @kfree(%struct.sg_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
