; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_gntdev-dmabuf.c_dmabuf_exp_from_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_gntdev-dmabuf.c_dmabuf_exp_from_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.gntdev_dmabuf*, i32, i32*, i64, i32 }
%struct.gntdev_dmabuf = type { i32, i32, i32*, %struct.TYPE_13__*, i32, %struct.TYPE_10__, i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.gntdev_dmabuf_export_args = type { i32, i32, %struct.TYPE_13__*, %struct.TYPE_12__*, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }

@exp_info = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i64 0, align 8
@dmabuf_exp_ops = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Exporting DMA buffer with fd %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gntdev_dmabuf_export_args*)* @dmabuf_exp_from_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmabuf_exp_from_pages(%struct.gntdev_dmabuf_export_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gntdev_dmabuf_export_args*, align 8
  %4 = alloca %struct.gntdev_dmabuf*, align 8
  %5 = alloca i32, align 4
  store %struct.gntdev_dmabuf_export_args* %0, %struct.gntdev_dmabuf_export_args** %3, align 8
  %6 = call i32 @DEFINE_DMA_BUF_EXPORT_INFO(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 @exp_info)
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.gntdev_dmabuf* @kzalloc(i32 48, i32 %7)
  store %struct.gntdev_dmabuf* %8, %struct.gntdev_dmabuf** %4, align 8
  %9 = load %struct.gntdev_dmabuf*, %struct.gntdev_dmabuf** %4, align 8
  %10 = icmp ne %struct.gntdev_dmabuf* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %153

14:                                               ; preds = %1
  %15 = load %struct.gntdev_dmabuf*, %struct.gntdev_dmabuf** %4, align 8
  %16 = getelementptr inbounds %struct.gntdev_dmabuf, %struct.gntdev_dmabuf* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  %19 = call i32 @kref_init(i32* %18)
  %20 = load %struct.gntdev_dmabuf_export_args*, %struct.gntdev_dmabuf_export_args** %3, align 8
  %21 = getelementptr inbounds %struct.gntdev_dmabuf_export_args, %struct.gntdev_dmabuf_export_args* %20, i32 0, i32 2
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %23 = load %struct.gntdev_dmabuf*, %struct.gntdev_dmabuf** %4, align 8
  %24 = getelementptr inbounds %struct.gntdev_dmabuf, %struct.gntdev_dmabuf* %23, i32 0, i32 3
  store %struct.TYPE_13__* %22, %struct.TYPE_13__** %24, align 8
  %25 = load %struct.gntdev_dmabuf_export_args*, %struct.gntdev_dmabuf_export_args** %3, align 8
  %26 = getelementptr inbounds %struct.gntdev_dmabuf_export_args, %struct.gntdev_dmabuf_export_args* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.gntdev_dmabuf*, %struct.gntdev_dmabuf** %4, align 8
  %29 = getelementptr inbounds %struct.gntdev_dmabuf, %struct.gntdev_dmabuf* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.gntdev_dmabuf_export_args*, %struct.gntdev_dmabuf_export_args** %3, align 8
  %31 = getelementptr inbounds %struct.gntdev_dmabuf_export_args, %struct.gntdev_dmabuf_export_args* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.gntdev_dmabuf*, %struct.gntdev_dmabuf** %4, align 8
  %34 = getelementptr inbounds %struct.gntdev_dmabuf, %struct.gntdev_dmabuf* %33, i32 0, i32 6
  store i32 %32, i32* %34, align 8
  %35 = load %struct.gntdev_dmabuf_export_args*, %struct.gntdev_dmabuf_export_args** %3, align 8
  %36 = getelementptr inbounds %struct.gntdev_dmabuf_export_args, %struct.gntdev_dmabuf_export_args* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.gntdev_dmabuf*, %struct.gntdev_dmabuf** %4, align 8
  %39 = getelementptr inbounds %struct.gntdev_dmabuf, %struct.gntdev_dmabuf* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  store i32 %37, i32* %41, align 4
  %42 = load %struct.gntdev_dmabuf_export_args*, %struct.gntdev_dmabuf_export_args** %3, align 8
  %43 = getelementptr inbounds %struct.gntdev_dmabuf_export_args, %struct.gntdev_dmabuf_export_args* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.gntdev_dmabuf*, %struct.gntdev_dmabuf** %4, align 8
  %46 = getelementptr inbounds %struct.gntdev_dmabuf, %struct.gntdev_dmabuf* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  store i32 %44, i32* %48, align 4
  %49 = load i32, i32* @KBUILD_MODNAME, align 4
  store i32 %49, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @exp_info, i32 0, i32 5), align 8
  %50 = load %struct.gntdev_dmabuf_export_args*, %struct.gntdev_dmabuf_export_args** %3, align 8
  %51 = getelementptr inbounds %struct.gntdev_dmabuf_export_args, %struct.gntdev_dmabuf_export_args* %50, i32 0, i32 3
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = icmp ne %struct.TYPE_11__* %54, null
  br i1 %55, label %56, label %73

56:                                               ; preds = %14
  %57 = load %struct.gntdev_dmabuf_export_args*, %struct.gntdev_dmabuf_export_args** %3, align 8
  %58 = getelementptr inbounds %struct.gntdev_dmabuf_export_args, %struct.gntdev_dmabuf_export_args* %57, i32 0, i32 3
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %56
  %66 = load %struct.gntdev_dmabuf_export_args*, %struct.gntdev_dmabuf_export_args** %3, align 8
  %67 = getelementptr inbounds %struct.gntdev_dmabuf_export_args, %struct.gntdev_dmabuf_export_args* %66, i32 0, i32 3
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @exp_info, i32 0, i32 4), align 8
  br label %75

73:                                               ; preds = %56, %14
  %74 = load i64, i64* @THIS_MODULE, align 8
  store i64 %74, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @exp_info, i32 0, i32 4), align 8
  br label %75

75:                                               ; preds = %73, %65
  store i32* @dmabuf_exp_ops, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @exp_info, i32 0, i32 3), align 8
  %76 = load %struct.gntdev_dmabuf_export_args*, %struct.gntdev_dmabuf_export_args** %3, align 8
  %77 = getelementptr inbounds %struct.gntdev_dmabuf_export_args, %struct.gntdev_dmabuf_export_args* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @PAGE_SHIFT, align 4
  %80 = shl i32 %78, %79
  store i32 %80, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @exp_info, i32 0, i32 0), align 8
  %81 = load i32, i32* @O_RDWR, align 4
  store i32 %81, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @exp_info, i32 0, i32 2), align 8
  %82 = load %struct.gntdev_dmabuf*, %struct.gntdev_dmabuf** %4, align 8
  store %struct.gntdev_dmabuf* %82, %struct.gntdev_dmabuf** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @exp_info, i32 0, i32 1), align 8
  %83 = call i32* @dma_buf_export(%struct.TYPE_14__* @exp_info)
  %84 = load %struct.gntdev_dmabuf*, %struct.gntdev_dmabuf** %4, align 8
  %85 = getelementptr inbounds %struct.gntdev_dmabuf, %struct.gntdev_dmabuf* %84, i32 0, i32 2
  store i32* %83, i32** %85, align 8
  %86 = load %struct.gntdev_dmabuf*, %struct.gntdev_dmabuf** %4, align 8
  %87 = getelementptr inbounds %struct.gntdev_dmabuf, %struct.gntdev_dmabuf* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = call i64 @IS_ERR(i32* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %75
  %92 = load %struct.gntdev_dmabuf*, %struct.gntdev_dmabuf** %4, align 8
  %93 = getelementptr inbounds %struct.gntdev_dmabuf, %struct.gntdev_dmabuf* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @PTR_ERR(i32* %94)
  store i32 %95, i32* %5, align 4
  %96 = load %struct.gntdev_dmabuf*, %struct.gntdev_dmabuf** %4, align 8
  %97 = getelementptr inbounds %struct.gntdev_dmabuf, %struct.gntdev_dmabuf* %96, i32 0, i32 2
  store i32* null, i32** %97, align 8
  br label %139

98:                                               ; preds = %75
  %99 = load %struct.gntdev_dmabuf*, %struct.gntdev_dmabuf** %4, align 8
  %100 = getelementptr inbounds %struct.gntdev_dmabuf, %struct.gntdev_dmabuf* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* @O_CLOEXEC, align 4
  %103 = call i32 @dma_buf_fd(i32* %101, i32 %102)
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %5, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  br label %139

107:                                              ; preds = %98
  %108 = load i32, i32* %5, align 4
  %109 = load %struct.gntdev_dmabuf*, %struct.gntdev_dmabuf** %4, align 8
  %110 = getelementptr inbounds %struct.gntdev_dmabuf, %struct.gntdev_dmabuf* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* %5, align 4
  %112 = load %struct.gntdev_dmabuf_export_args*, %struct.gntdev_dmabuf_export_args** %3, align 8
  %113 = getelementptr inbounds %struct.gntdev_dmabuf_export_args, %struct.gntdev_dmabuf_export_args* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %114)
  %116 = load %struct.gntdev_dmabuf_export_args*, %struct.gntdev_dmabuf_export_args** %3, align 8
  %117 = getelementptr inbounds %struct.gntdev_dmabuf_export_args, %struct.gntdev_dmabuf_export_args* %116, i32 0, i32 2
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 1
  %120 = call i32 @mutex_lock(i32* %119)
  %121 = load %struct.gntdev_dmabuf*, %struct.gntdev_dmabuf** %4, align 8
  %122 = getelementptr inbounds %struct.gntdev_dmabuf, %struct.gntdev_dmabuf* %121, i32 0, i32 4
  %123 = load %struct.gntdev_dmabuf_export_args*, %struct.gntdev_dmabuf_export_args** %3, align 8
  %124 = getelementptr inbounds %struct.gntdev_dmabuf_export_args, %struct.gntdev_dmabuf_export_args* %123, i32 0, i32 2
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 2
  %127 = call i32 @list_add(i32* %122, i32* %126)
  %128 = load %struct.gntdev_dmabuf_export_args*, %struct.gntdev_dmabuf_export_args** %3, align 8
  %129 = getelementptr inbounds %struct.gntdev_dmabuf_export_args, %struct.gntdev_dmabuf_export_args* %128, i32 0, i32 2
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 1
  %132 = call i32 @mutex_unlock(i32* %131)
  %133 = load %struct.gntdev_dmabuf*, %struct.gntdev_dmabuf** %4, align 8
  %134 = getelementptr inbounds %struct.gntdev_dmabuf, %struct.gntdev_dmabuf* %133, i32 0, i32 3
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @get_file(i32 %137)
  store i32 0, i32* %2, align 4
  br label %153

139:                                              ; preds = %106, %91
  %140 = load %struct.gntdev_dmabuf*, %struct.gntdev_dmabuf** %4, align 8
  %141 = getelementptr inbounds %struct.gntdev_dmabuf, %struct.gntdev_dmabuf* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = icmp ne i32* %142, null
  br i1 %143, label %144, label %149

144:                                              ; preds = %139
  %145 = load %struct.gntdev_dmabuf*, %struct.gntdev_dmabuf** %4, align 8
  %146 = getelementptr inbounds %struct.gntdev_dmabuf, %struct.gntdev_dmabuf* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = call i32 @dma_buf_put(i32* %147)
  br label %149

149:                                              ; preds = %144, %139
  %150 = load %struct.gntdev_dmabuf*, %struct.gntdev_dmabuf** %4, align 8
  %151 = call i32 @kfree(%struct.gntdev_dmabuf* %150)
  %152 = load i32, i32* %5, align 4
  store i32 %152, i32* %2, align 4
  br label %153

153:                                              ; preds = %149, %107, %11
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local i32 @DEFINE_DMA_BUF_EXPORT_INFO(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8) #1

declare dso_local %struct.gntdev_dmabuf* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32* @dma_buf_export(%struct.TYPE_14__*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @dma_buf_fd(i32*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @get_file(i32) #1

declare dso_local i32 @dma_buf_put(i32*) #1

declare dso_local i32 @kfree(%struct.gntdev_dmabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
