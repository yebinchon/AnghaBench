; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/tegra-vde/extr_vde.c_tegra_vde_attach_dmabufs_to_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/tegra-vde/extr_vde.c_tegra_vde_attach_dmabufs_to_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_vde = type { i32 }
%struct.video_frame = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tegra_vde_h264_frame = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@SZ_256 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_vde*, %struct.video_frame*, %struct.tegra_vde_h264_frame*, i32, i32, i64, i64)* @tegra_vde_attach_dmabufs_to_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_vde_attach_dmabufs_to_frame(%struct.tegra_vde* %0, %struct.video_frame* %1, %struct.tegra_vde_h264_frame* %2, i32 %3, i32 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.tegra_vde*, align 8
  %10 = alloca %struct.video_frame*, align 8
  %11 = alloca %struct.tegra_vde_h264_frame*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.tegra_vde* %0, %struct.tegra_vde** %9, align 8
  store %struct.video_frame* %1, %struct.video_frame** %10, align 8
  store %struct.tegra_vde_h264_frame* %2, %struct.tegra_vde_h264_frame** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %17 = load %struct.tegra_vde*, %struct.tegra_vde** %9, align 8
  %18 = load %struct.tegra_vde_h264_frame*, %struct.tegra_vde_h264_frame** %11, align 8
  %19 = getelementptr inbounds %struct.tegra_vde_h264_frame, %struct.tegra_vde_h264_frame* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.tegra_vde_h264_frame*, %struct.tegra_vde_h264_frame** %11, align 8
  %22 = getelementptr inbounds %struct.tegra_vde_h264_frame, %struct.tegra_vde_h264_frame* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* %14, align 8
  %25 = load i32, i32* @SZ_256, align 4
  %26 = load %struct.video_frame*, %struct.video_frame** %10, align 8
  %27 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %26, i32 0, i32 4
  %28 = load %struct.video_frame*, %struct.video_frame** %10, align 8
  %29 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %28, i32 0, i32 0
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @tegra_vde_attach_dmabuf(%struct.tegra_vde* %17, i32 %20, i32 %23, i64 %24, i32 %25, i32* %27, i32* %29, i32* null, i32 %30)
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %16, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %7
  %35 = load i32, i32* %16, align 4
  store i32 %35, i32* %8, align 4
  br label %119

36:                                               ; preds = %7
  %37 = load %struct.tegra_vde*, %struct.tegra_vde** %9, align 8
  %38 = load %struct.tegra_vde_h264_frame*, %struct.tegra_vde_h264_frame** %11, align 8
  %39 = getelementptr inbounds %struct.tegra_vde_h264_frame, %struct.tegra_vde_h264_frame* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.tegra_vde_h264_frame*, %struct.tegra_vde_h264_frame** %11, align 8
  %42 = getelementptr inbounds %struct.tegra_vde_h264_frame, %struct.tegra_vde_h264_frame* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %15, align 8
  %45 = load i32, i32* @SZ_256, align 4
  %46 = load %struct.video_frame*, %struct.video_frame** %10, align 8
  %47 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %46, i32 0, i32 5
  %48 = load %struct.video_frame*, %struct.video_frame** %10, align 8
  %49 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %48, i32 0, i32 1
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @tegra_vde_attach_dmabuf(%struct.tegra_vde* %37, i32 %40, i32 %43, i64 %44, i32 %45, i32* %47, i32* %49, i32* null, i32 %50)
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %16, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %36
  br label %112

55:                                               ; preds = %36
  %56 = load %struct.tegra_vde*, %struct.tegra_vde** %9, align 8
  %57 = load %struct.tegra_vde_h264_frame*, %struct.tegra_vde_h264_frame** %11, align 8
  %58 = getelementptr inbounds %struct.tegra_vde_h264_frame, %struct.tegra_vde_h264_frame* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.tegra_vde_h264_frame*, %struct.tegra_vde_h264_frame** %11, align 8
  %61 = getelementptr inbounds %struct.tegra_vde_h264_frame, %struct.tegra_vde_h264_frame* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* %15, align 8
  %64 = load i32, i32* @SZ_256, align 4
  %65 = load %struct.video_frame*, %struct.video_frame** %10, align 8
  %66 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %65, i32 0, i32 6
  %67 = load %struct.video_frame*, %struct.video_frame** %10, align 8
  %68 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %67, i32 0, i32 2
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @tegra_vde_attach_dmabuf(%struct.tegra_vde* %56, i32 %59, i32 %62, i64 %63, i32 %64, i32* %66, i32* %68, i32* null, i32 %69)
  store i32 %70, i32* %16, align 4
  %71 = load i32, i32* %16, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %55
  br label %106

74:                                               ; preds = %55
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load %struct.video_frame*, %struct.video_frame** %10, align 8
  %79 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %78, i32 0, i32 3
  store i32 1692314880, i32* %79, align 4
  store i32 0, i32* %8, align 4
  br label %119

80:                                               ; preds = %74
  %81 = load %struct.tegra_vde*, %struct.tegra_vde** %9, align 8
  %82 = load %struct.tegra_vde_h264_frame*, %struct.tegra_vde_h264_frame** %11, align 8
  %83 = getelementptr inbounds %struct.tegra_vde_h264_frame, %struct.tegra_vde_h264_frame* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.tegra_vde_h264_frame*, %struct.tegra_vde_h264_frame** %11, align 8
  %86 = getelementptr inbounds %struct.tegra_vde_h264_frame, %struct.tegra_vde_h264_frame* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i64, i64* %15, align 8
  %89 = load i32, i32* @SZ_256, align 4
  %90 = load %struct.video_frame*, %struct.video_frame** %10, align 8
  %91 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %90, i32 0, i32 7
  %92 = load %struct.video_frame*, %struct.video_frame** %10, align 8
  %93 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %92, i32 0, i32 3
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @tegra_vde_attach_dmabuf(%struct.tegra_vde* %81, i32 %84, i32 %87, i64 %88, i32 %89, i32* %91, i32* %93, i32* null, i32 %94)
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* %16, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %80
  br label %100

99:                                               ; preds = %80
  store i32 0, i32* %8, align 4
  br label %119

100:                                              ; preds = %98
  %101 = load %struct.tegra_vde*, %struct.tegra_vde** %9, align 8
  %102 = load %struct.video_frame*, %struct.video_frame** %10, align 8
  %103 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @tegra_vde_dmabuf_cache_unmap(%struct.tegra_vde* %101, i32 %104, i32 1)
  br label %106

106:                                              ; preds = %100, %73
  %107 = load %struct.tegra_vde*, %struct.tegra_vde** %9, align 8
  %108 = load %struct.video_frame*, %struct.video_frame** %10, align 8
  %109 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @tegra_vde_dmabuf_cache_unmap(%struct.tegra_vde* %107, i32 %110, i32 1)
  br label %112

112:                                              ; preds = %106, %54
  %113 = load %struct.tegra_vde*, %struct.tegra_vde** %9, align 8
  %114 = load %struct.video_frame*, %struct.video_frame** %10, align 8
  %115 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @tegra_vde_dmabuf_cache_unmap(%struct.tegra_vde* %113, i32 %116, i32 1)
  %118 = load i32, i32* %16, align 4
  store i32 %118, i32* %8, align 4
  br label %119

119:                                              ; preds = %112, %99, %77, %34
  %120 = load i32, i32* %8, align 4
  ret i32 %120
}

declare dso_local i32 @tegra_vde_attach_dmabuf(%struct.tegra_vde*, i32, i32, i64, i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @tegra_vde_dmabuf_cache_unmap(%struct.tegra_vde*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
