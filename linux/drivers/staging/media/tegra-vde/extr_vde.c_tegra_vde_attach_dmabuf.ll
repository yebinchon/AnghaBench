; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/tegra-vde/extr_vde.c_tegra_vde_attach_dmabuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/tegra-vde/extr_vde.c_tegra_vde_attach_dmabuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_vde = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.dma_buf_attachment = type { i32 }
%struct.dma_buf = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"Invalid dmabuf FD\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Unaligned dmabuf 0x%zX, should be aligned to 0x%zX\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"Too small dmabuf size %zu @0x%lX, should be at least %zu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_vde*, i32, i64, i64, i64, %struct.dma_buf_attachment**, i64*, i64*, i32)* @tegra_vde_attach_dmabuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_vde_attach_dmabuf(%struct.tegra_vde* %0, i32 %1, i64 %2, i64 %3, i64 %4, %struct.dma_buf_attachment** %5, i64* %6, i64* %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.tegra_vde*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.dma_buf_attachment**, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.device*, align 8
  %21 = alloca %struct.dma_buf*, align 8
  %22 = alloca i32, align 4
  store %struct.tegra_vde* %0, %struct.tegra_vde** %11, align 8
  store i32 %1, i32* %12, align 4
  store i64 %2, i64* %13, align 8
  store i64 %3, i64* %14, align 8
  store i64 %4, i64* %15, align 8
  store %struct.dma_buf_attachment** %5, %struct.dma_buf_attachment*** %16, align 8
  store i64* %6, i64** %17, align 8
  store i64* %7, i64** %18, align 8
  store i32 %8, i32* %19, align 4
  %23 = load %struct.tegra_vde*, %struct.tegra_vde** %11, align 8
  %24 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.device*, %struct.device** %25, align 8
  store %struct.device* %26, %struct.device** %20, align 8
  %27 = load i32, i32* %12, align 4
  %28 = call %struct.dma_buf* @dma_buf_get(i32 %27)
  store %struct.dma_buf* %28, %struct.dma_buf** %21, align 8
  %29 = load %struct.dma_buf*, %struct.dma_buf** %21, align 8
  %30 = call i64 @IS_ERR(%struct.dma_buf* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %9
  %33 = load %struct.device*, %struct.device** %20, align 8
  %34 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.dma_buf*, %struct.dma_buf** %21, align 8
  %36 = call i32 @PTR_ERR(%struct.dma_buf* %35)
  store i32 %36, i32* %10, align 4
  br label %102

37:                                               ; preds = %9
  %38 = load %struct.dma_buf*, %struct.dma_buf** %21, align 8
  %39 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %15, align 8
  %42 = sub i64 %41, 1
  %43 = and i64 %40, %42
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %37
  %46 = load %struct.device*, %struct.device** %20, align 8
  %47 = load %struct.dma_buf*, %struct.dma_buf** %21, align 8
  %48 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %15, align 8
  %51 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %46, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %49, i64 %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %10, align 4
  br label %102

54:                                               ; preds = %37
  %55 = load i64, i64* %13, align 8
  %56 = load i64, i64* %14, align 8
  %57 = add i64 %55, %56
  %58 = load %struct.dma_buf*, %struct.dma_buf** %21, align 8
  %59 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ugt i64 %57, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %54
  %63 = load %struct.device*, %struct.device** %20, align 8
  %64 = load %struct.dma_buf*, %struct.dma_buf** %21, align 8
  %65 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %13, align 8
  %68 = load i64, i64* %14, align 8
  %69 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %63, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i64 %66, i64 %67, i64 %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %10, align 4
  br label %102

72:                                               ; preds = %54
  %73 = load %struct.tegra_vde*, %struct.tegra_vde** %11, align 8
  %74 = load %struct.dma_buf*, %struct.dma_buf** %21, align 8
  %75 = load i32, i32* %19, align 4
  %76 = load %struct.dma_buf_attachment**, %struct.dma_buf_attachment*** %16, align 8
  %77 = load i64*, i64** %17, align 8
  %78 = call i32 @tegra_vde_dmabuf_cache_map(%struct.tegra_vde* %73, %struct.dma_buf* %74, i32 %75, %struct.dma_buf_attachment** %76, i64* %77)
  store i32 %78, i32* %22, align 4
  %79 = load i32, i32* %22, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  br label %98

82:                                               ; preds = %72
  %83 = load i64*, i64** %17, align 8
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %13, align 8
  %86 = add i64 %84, %85
  %87 = load i64*, i64** %17, align 8
  store i64 %86, i64* %87, align 8
  %88 = load i64*, i64** %18, align 8
  %89 = icmp ne i64* %88, null
  br i1 %89, label %90, label %97

90:                                               ; preds = %82
  %91 = load %struct.dma_buf*, %struct.dma_buf** %21, align 8
  %92 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %13, align 8
  %95 = sub i64 %93, %94
  %96 = load i64*, i64** %18, align 8
  store i64 %95, i64* %96, align 8
  br label %97

97:                                               ; preds = %90, %82
  store i32 0, i32* %10, align 4
  br label %102

98:                                               ; preds = %81
  %99 = load %struct.dma_buf*, %struct.dma_buf** %21, align 8
  %100 = call i32 @dma_buf_put(%struct.dma_buf* %99)
  %101 = load i32, i32* %22, align 4
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %98, %97, %62, %45, %32
  %103 = load i32, i32* %10, align 4
  ret i32 %103
}

declare dso_local %struct.dma_buf* @dma_buf_get(i32) #1

declare dso_local i64 @IS_ERR(%struct.dma_buf*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.dma_buf*) #1

declare dso_local i32 @tegra_vde_dmabuf_cache_map(%struct.tegra_vde*, %struct.dma_buf*, i32, %struct.dma_buf_attachment**, i64*) #1

declare dso_local i32 @dma_buf_put(%struct.dma_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
