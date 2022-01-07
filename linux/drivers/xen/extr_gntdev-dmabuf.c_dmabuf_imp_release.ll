; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_gntdev-dmabuf.c_dmabuf_imp_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_gntdev-dmabuf.c_dmabuf_imp_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gntdev_dmabuf_priv = type { i32 }
%struct.gntdev_dmabuf = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, %struct.dma_buf_attachment*, i32 }
%struct.dma_buf_attachment = type { %struct.dma_buf* }
%struct.dma_buf = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Releasing DMA buffer with fd %d\0A\00", align 1
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gntdev_dmabuf_priv*, i32)* @dmabuf_imp_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmabuf_imp_release(%struct.gntdev_dmabuf_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gntdev_dmabuf_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gntdev_dmabuf*, align 8
  %7 = alloca %struct.dma_buf_attachment*, align 8
  %8 = alloca %struct.dma_buf*, align 8
  store %struct.gntdev_dmabuf_priv* %0, %struct.gntdev_dmabuf_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.gntdev_dmabuf_priv*, %struct.gntdev_dmabuf_priv** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.gntdev_dmabuf* @dmabuf_imp_find_unlink(%struct.gntdev_dmabuf_priv* %9, i32 %10)
  store %struct.gntdev_dmabuf* %11, %struct.gntdev_dmabuf** %6, align 8
  %12 = load %struct.gntdev_dmabuf*, %struct.gntdev_dmabuf** %6, align 8
  %13 = call i64 @IS_ERR(%struct.gntdev_dmabuf* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.gntdev_dmabuf*, %struct.gntdev_dmabuf** %6, align 8
  %17 = call i32 @PTR_ERR(%struct.gntdev_dmabuf* %16)
  store i32 %17, i32* %3, align 4
  br label %63

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.gntdev_dmabuf*, %struct.gntdev_dmabuf** %6, align 8
  %22 = getelementptr inbounds %struct.gntdev_dmabuf, %struct.gntdev_dmabuf* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.gntdev_dmabuf*, %struct.gntdev_dmabuf** %6, align 8
  %27 = getelementptr inbounds %struct.gntdev_dmabuf, %struct.gntdev_dmabuf* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dmabuf_imp_end_foreign_access(i32 %25, i32 %28)
  %30 = load %struct.gntdev_dmabuf*, %struct.gntdev_dmabuf** %6, align 8
  %31 = getelementptr inbounds %struct.gntdev_dmabuf, %struct.gntdev_dmabuf* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %33, align 8
  store %struct.dma_buf_attachment* %34, %struct.dma_buf_attachment** %7, align 8
  %35 = load %struct.gntdev_dmabuf*, %struct.gntdev_dmabuf** %6, align 8
  %36 = getelementptr inbounds %struct.gntdev_dmabuf, %struct.gntdev_dmabuf* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %18
  %42 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %7, align 8
  %43 = load %struct.gntdev_dmabuf*, %struct.gntdev_dmabuf** %6, align 8
  %44 = getelementptr inbounds %struct.gntdev_dmabuf, %struct.gntdev_dmabuf* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %49 = call i32 @dma_buf_unmap_attachment(%struct.dma_buf_attachment* %42, i64 %47, i32 %48)
  br label %50

50:                                               ; preds = %41, %18
  %51 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %7, align 8
  %52 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %51, i32 0, i32 0
  %53 = load %struct.dma_buf*, %struct.dma_buf** %52, align 8
  store %struct.dma_buf* %53, %struct.dma_buf** %8, align 8
  %54 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %7, align 8
  %55 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %54, i32 0, i32 0
  %56 = load %struct.dma_buf*, %struct.dma_buf** %55, align 8
  %57 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %7, align 8
  %58 = call i32 @dma_buf_detach(%struct.dma_buf* %56, %struct.dma_buf_attachment* %57)
  %59 = load %struct.dma_buf*, %struct.dma_buf** %8, align 8
  %60 = call i32 @dma_buf_put(%struct.dma_buf* %59)
  %61 = load %struct.gntdev_dmabuf*, %struct.gntdev_dmabuf** %6, align 8
  %62 = call i32 @dmabuf_imp_free_storage(%struct.gntdev_dmabuf* %61)
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %50, %15
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.gntdev_dmabuf* @dmabuf_imp_find_unlink(%struct.gntdev_dmabuf_priv*, i32) #1

declare dso_local i64 @IS_ERR(%struct.gntdev_dmabuf*) #1

declare dso_local i32 @PTR_ERR(%struct.gntdev_dmabuf*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @dmabuf_imp_end_foreign_access(i32, i32) #1

declare dso_local i32 @dma_buf_unmap_attachment(%struct.dma_buf_attachment*, i64, i32) #1

declare dso_local i32 @dma_buf_detach(%struct.dma_buf*, %struct.dma_buf_attachment*) #1

declare dso_local i32 @dma_buf_put(%struct.dma_buf*) #1

declare dso_local i32 @dmabuf_imp_free_storage(%struct.gntdev_dmabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
