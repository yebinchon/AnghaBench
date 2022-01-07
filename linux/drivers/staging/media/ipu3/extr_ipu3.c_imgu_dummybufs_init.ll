; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3.c_imgu_dummybufs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3.c_imgu_dummybufs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imgu_device = type { %struct.imgu_media_pipe* }
%struct.imgu_media_pipe = type { %struct.TYPE_11__*, %struct.TYPE_9__*, i32* }
%struct.TYPE_11__ = type { %struct.TYPE_12__, i32* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.v4l2_pix_format_mplane, %struct.v4l2_meta_format }
%struct.v4l2_pix_format_mplane = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.v4l2_meta_format = type { i64 }

@IPU3_CSS_QUEUES = common dso_local global i32 0, align 4
@IMGU_QUEUE_MASTER = common dso_local global i32 0, align 4
@IMGU_NODE_VF = common dso_local global i64 0, align 8
@IPU3_CSS_QUEUE_VF = common dso_local global i32 0, align 4
@IMGU_NODE_STAT_3A = common dso_local global i32 0, align 4
@IMGU_NODE_PARAMS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IMGU_MAX_QUEUE_DEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imgu_device*, i32)* @imgu_dummybufs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imgu_dummybufs_init(%struct.imgu_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.imgu_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %7 = alloca %struct.v4l2_meta_format*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.imgu_media_pipe*, align 8
  store %struct.imgu_device* %0, %struct.imgu_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.imgu_device*, %struct.imgu_device** %4, align 8
  %14 = getelementptr inbounds %struct.imgu_device, %struct.imgu_device* %13, i32 0, i32 0
  %15 = load %struct.imgu_media_pipe*, %struct.imgu_media_pipe** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.imgu_media_pipe, %struct.imgu_media_pipe* %15, i64 %17
  store %struct.imgu_media_pipe* %18, %struct.imgu_media_pipe** %12, align 8
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %141, %2
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @IPU3_CSS_QUEUES, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %144

23:                                               ; preds = %19
  %24 = load %struct.imgu_device*, %struct.imgu_device** %4, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @imgu_map_node(%struct.imgu_device* %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.imgu_media_pipe*, %struct.imgu_media_pipe** %12, align 8
  %28 = getelementptr inbounds %struct.imgu_media_pipe, %struct.imgu_media_pipe* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %23
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @IMGU_QUEUE_MASTER, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %23
  br label %141

40:                                               ; preds = %35
  %41 = load %struct.imgu_media_pipe*, %struct.imgu_media_pipe** %12, align 8
  %42 = getelementptr inbounds %struct.imgu_media_pipe, %struct.imgu_media_pipe* %41, i32 0, i32 1
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = load i64, i64* @IMGU_NODE_VF, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @IPU3_CSS_QUEUE_VF, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %141

54:                                               ; preds = %49, %40
  %55 = load %struct.imgu_media_pipe*, %struct.imgu_media_pipe** %12, align 8
  %56 = getelementptr inbounds %struct.imgu_media_pipe, %struct.imgu_media_pipe* %55, i32 0, i32 1
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  store %struct.v4l2_meta_format* %63, %struct.v4l2_meta_format** %7, align 8
  %64 = load %struct.imgu_media_pipe*, %struct.imgu_media_pipe** %12, align 8
  %65 = getelementptr inbounds %struct.imgu_media_pipe, %struct.imgu_media_pipe* %64, i32 0, i32 1
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  store %struct.v4l2_pix_format_mplane* %72, %struct.v4l2_pix_format_mplane** %6, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @IMGU_NODE_STAT_3A, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %80, label %76

76:                                               ; preds = %54
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @IMGU_NODE_PARAMS, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %76, %54
  %81 = load %struct.v4l2_meta_format*, %struct.v4l2_meta_format** %7, align 8
  %82 = getelementptr inbounds %struct.v4l2_meta_format, %struct.v4l2_meta_format* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %11, align 8
  br label %91

84:                                               ; preds = %76
  %85 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %86 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %85, i32 0, i32 0
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i64 0
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %11, align 8
  br label %91

91:                                               ; preds = %84, %80
  %92 = load %struct.imgu_device*, %struct.imgu_device** %4, align 8
  %93 = load %struct.imgu_media_pipe*, %struct.imgu_media_pipe** %12, align 8
  %94 = getelementptr inbounds %struct.imgu_media_pipe, %struct.imgu_media_pipe* %93, i32 0, i32 0
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load i64, i64* %11, align 8
  %101 = call i64 @imgu_css_dma_buffer_resize(%struct.imgu_device* %92, %struct.TYPE_12__* %99, i64 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %91
  %104 = load %struct.imgu_device*, %struct.imgu_device** %4, align 8
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @imgu_dummybufs_cleanup(%struct.imgu_device* %104, i32 %105)
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %145

109:                                              ; preds = %91
  store i32 0, i32* %9, align 4
  br label %110

110:                                              ; preds = %137, %109
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @IMGU_MAX_QUEUE_DEPTH, align 4
  %113 = icmp ult i32 %111, %112
  br i1 %113, label %114, label %140

114:                                              ; preds = %110
  %115 = load %struct.imgu_media_pipe*, %struct.imgu_media_pipe** %12, align 8
  %116 = getelementptr inbounds %struct.imgu_media_pipe, %struct.imgu_media_pipe* %115, i32 0, i32 0
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %9, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %8, align 4
  %127 = load %struct.imgu_media_pipe*, %struct.imgu_media_pipe** %12, align 8
  %128 = getelementptr inbounds %struct.imgu_media_pipe, %struct.imgu_media_pipe* %127, i32 0, i32 0
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %128, align 8
  %130 = load i32, i32* %8, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @imgu_css_buf_init(i32* %125, i32 %126, i32 %135)
  br label %137

137:                                              ; preds = %114
  %138 = load i32, i32* %9, align 4
  %139 = add i32 %138, 1
  store i32 %139, i32* %9, align 4
  br label %110

140:                                              ; preds = %110
  br label %141

141:                                              ; preds = %140, %53, %39
  %142 = load i32, i32* %8, align 4
  %143 = add i32 %142, 1
  store i32 %143, i32* %8, align 4
  br label %19

144:                                              ; preds = %19
  store i32 0, i32* %3, align 4
  br label %145

145:                                              ; preds = %144, %103
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @imgu_map_node(%struct.imgu_device*, i32) #1

declare dso_local i64 @imgu_css_dma_buffer_resize(%struct.imgu_device*, %struct.TYPE_12__*, i64) #1

declare dso_local i32 @imgu_dummybufs_cleanup(%struct.imgu_device*, i32) #1

declare dso_local i32 @imgu_css_buf_init(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
