; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_csi_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_csi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csi_priv = type { i64, i64, i32, %struct.TYPE_11__*, %struct.TYPE_10__, %struct.v4l2_rect, %struct.TYPE_12__, %struct.v4l2_mbus_framefmt*, %struct.imx_media_pixfmt** }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.v4l2_rect = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32 }
%struct.imx_media_pixfmt = type { i32 }
%struct.v4l2_mbus_config = type { i32, i32 }

@CSI_SINK_PAD = common dso_local global i64 0, align 8
@IPU_CSI_DEST_IDMAC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csi_priv*)* @csi_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csi_setup(%struct.csi_priv* %0) #0 {
  %2 = alloca %struct.csi_priv*, align 8
  %3 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %4 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %5 = alloca %struct.imx_media_pixfmt*, align 8
  %6 = alloca %struct.v4l2_mbus_config, align 4
  %7 = alloca %struct.v4l2_mbus_framefmt, align 4
  %8 = alloca %struct.v4l2_rect, align 4
  store %struct.csi_priv* %0, %struct.csi_priv** %2, align 8
  %9 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %10 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %9, i32 0, i32 7
  %11 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %12 = load i64, i64* @CSI_SINK_PAD, align 8
  %13 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %11, i64 %12
  store %struct.v4l2_mbus_framefmt* %13, %struct.v4l2_mbus_framefmt** %3, align 8
  %14 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %15 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %14, i32 0, i32 8
  %16 = load %struct.imx_media_pixfmt**, %struct.imx_media_pixfmt*** %15, align 8
  %17 = load i64, i64* @CSI_SINK_PAD, align 8
  %18 = getelementptr inbounds %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %16, i64 %17
  %19 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %18, align 8
  store %struct.imx_media_pixfmt* %19, %struct.imx_media_pixfmt** %5, align 8
  %20 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %21 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %20, i32 0, i32 7
  %22 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %21, align 8
  %23 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %24 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %22, i64 %25
  store %struct.v4l2_mbus_framefmt* %26, %struct.v4l2_mbus_framefmt** %4, align 8
  %27 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %28 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %27, i32 0, i32 6
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.v4l2_mbus_config, %struct.v4l2_mbus_config* %6, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %33 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %32, i32 0, i32 6
  %34 = call i64 @is_parallel_bus(%struct.TYPE_12__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %1
  %37 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %38 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %37, i32 0, i32 6
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  br label %50

43:                                               ; preds = %1
  %44 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %45 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %44, i32 0, i32 6
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  br label %50

50:                                               ; preds = %43, %36
  %51 = phi i32 [ %42, %36 ], [ %49, %43 ]
  %52 = getelementptr inbounds %struct.v4l2_mbus_config, %struct.v4l2_mbus_config* %6, i32 0, i32 0
  store i32 %51, i32* %52, align 4
  %53 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %3, align 8
  %54 = bitcast %struct.v4l2_mbus_framefmt* %7 to i8*
  %55 = bitcast %struct.v4l2_mbus_framefmt* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %54, i8* align 4 %55, i64 4, i1 false)
  %56 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %57 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %56, i32 0, i32 5
  %58 = bitcast %struct.v4l2_rect* %8 to i8*
  %59 = bitcast %struct.v4l2_rect* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %58, i8* align 8 %59, i64 8, i1 false)
  %60 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %61 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %60, i32 0, i32 6
  %62 = call i64 @is_parallel_bus(%struct.TYPE_12__* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %50
  %65 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %5, align 8
  %66 = getelementptr inbounds %struct.imx_media_pixfmt, %struct.imx_media_pixfmt* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %64
  %70 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %5, align 8
  %71 = getelementptr inbounds %struct.imx_media_pixfmt, %struct.imx_media_pixfmt* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %7, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 %74, %72
  store i32 %75, i32* %73, align 4
  %76 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %5, align 8
  %77 = getelementptr inbounds %struct.imx_media_pixfmt, %struct.imx_media_pixfmt* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %8, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %80, %78
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %69, %64, %50
  %83 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %84 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @ipu_csi_set_window(i32 %85, %struct.v4l2_rect* %8)
  %87 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %88 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %91 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %95 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = mul nsw i32 2, %97
  %99 = icmp eq i32 %93, %98
  %100 = zext i1 %99 to i32
  %101 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %102 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %101, i32 0, i32 5
  %103 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %106 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i32 2, %108
  %110 = icmp eq i32 %104, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 @ipu_csi_set_downsize(i32 %89, i32 %100, i32 %111)
  %113 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %114 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %117 = call i32 @ipu_csi_init_interface(i32 %115, %struct.v4l2_mbus_config* %6, %struct.v4l2_mbus_framefmt* %7, %struct.v4l2_mbus_framefmt* %116)
  %118 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %119 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %122 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @ipu_csi_set_dest(i32 %120, i64 %123)
  %125 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %126 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @IPU_CSI_DEST_IDMAC, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %146

130:                                              ; preds = %82
  %131 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %132 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %135 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %134, i32 0, i32 3
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %140 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %139, i32 0, i32 3
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = sub nsw i64 %143, 1
  %145 = call i32 @ipu_csi_set_skip_smfc(i32 %133, i32 %138, i64 %144, i32 0)
  br label %146

146:                                              ; preds = %130, %82
  %147 = load %struct.csi_priv*, %struct.csi_priv** %2, align 8
  %148 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @ipu_csi_dump(i32 %149)
  ret i32 0
}

declare dso_local i64 @is_parallel_bus(%struct.TYPE_12__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ipu_csi_set_window(i32, %struct.v4l2_rect*) #1

declare dso_local i32 @ipu_csi_set_downsize(i32, i32, i32) #1

declare dso_local i32 @ipu_csi_init_interface(i32, %struct.v4l2_mbus_config*, %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt*) #1

declare dso_local i32 @ipu_csi_set_dest(i32, i64) #1

declare dso_local i32 @ipu_csi_set_skip_smfc(i32, i32, i64, i32) #1

declare dso_local i32 @ipu_csi_dump(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
