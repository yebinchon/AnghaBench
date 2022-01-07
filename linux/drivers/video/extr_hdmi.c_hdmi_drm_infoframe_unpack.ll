; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/extr_hdmi.c_hdmi_drm_infoframe_unpack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/extr_hdmi.c_hdmi_drm_infoframe_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_drm_infoframe = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@DRM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HDMI_INFOFRAME_TYPE_DRM = common dso_local global i32 0, align 4
@HDMI_DRM_INFOFRAME_SIZE = common dso_local global i32 0, align 4
@HDMI_INFOFRAME_HEADER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdmi_drm_infoframe*, i8*, i64)* @hdmi_drm_infoframe_unpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_drm_infoframe_unpack(%struct.hdmi_drm_infoframe* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdmi_drm_infoframe*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.hdmi_drm_infoframe* %0, %struct.hdmi_drm_infoframe** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %8, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i32, i32* @DRM, align 4
  %20 = call i64 @HDMI_INFOFRAME_SIZE(i32 %19)
  %21 = icmp ult i64 %18, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %184

25:                                               ; preds = %3
  %26 = load i32*, i32** %8, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @HDMI_INFOFRAME_TYPE_DRM, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %42, label %31

31:                                               ; preds = %25
  %32 = load i32*, i32** %8, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %42, label %36

36:                                               ; preds = %31
  %37 = load i32*, i32** %8, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @HDMI_DRM_INFOFRAME_SIZE, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36, %31, %25
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %184

45:                                               ; preds = %36
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* @DRM, align 4
  %48 = call i64 @HDMI_INFOFRAME_SIZE(i32 %47)
  %49 = call i64 @hdmi_infoframe_checksum(i8* %46, i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %184

54:                                               ; preds = %45
  %55 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %5, align 8
  %56 = call i32 @hdmi_drm_infoframe_init(%struct.hdmi_drm_infoframe* %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* %14, align 4
  store i32 %60, i32* %4, align 4
  br label %184

61:                                               ; preds = %54
  %62 = load i32, i32* @HDMI_INFOFRAME_HEADER_SIZE, align 4
  %63 = load i32*, i32** %8, align 8
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  store i32* %65, i32** %8, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 7
  %70 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %5, align 8
  %71 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 7
  %76 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %5, align 8
  %77 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load i32*, i32** %8, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  store i32* %79, i32** %9, align 8
  store i32 0, i32* %15, align 4
  br label %80

80:                                               ; preds = %118, %61
  %81 = load i32, i32* %15, align 4
  %82 = icmp slt i32 %81, 3
  br i1 %82, label %83, label %121

83:                                               ; preds = %80
  %84 = load i32*, i32** %9, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %9, align 8
  %86 = load i32, i32* %84, align 4
  store i32 %86, i32* %10, align 4
  %87 = load i32*, i32** %9, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %9, align 8
  %89 = load i32, i32* %87, align 4
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = shl i32 %90, 8
  %92 = load i32, i32* %10, align 4
  %93 = or i32 %91, %92
  %94 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %5, align 8
  %95 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %94, i32 0, i32 7
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = load i32, i32* %15, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  store i32 %93, i32* %100, align 4
  %101 = load i32*, i32** %9, align 8
  %102 = getelementptr inbounds i32, i32* %101, i32 1
  store i32* %102, i32** %9, align 8
  %103 = load i32, i32* %101, align 4
  store i32 %103, i32* %12, align 4
  %104 = load i32*, i32** %9, align 8
  %105 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %105, i32** %9, align 8
  %106 = load i32, i32* %104, align 4
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %13, align 4
  %108 = shl i32 %107, 8
  %109 = load i32, i32* %12, align 4
  %110 = or i32 %108, %109
  %111 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %5, align 8
  %112 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %111, i32 0, i32 7
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = load i32, i32* %15, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  store i32 %110, i32* %117, align 4
  br label %118

118:                                              ; preds = %83
  %119 = load i32, i32* %15, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %15, align 4
  br label %80

121:                                              ; preds = %80
  %122 = load i32*, i32** %8, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 15
  %124 = load i32, i32* %123, align 4
  %125 = shl i32 %124, 8
  %126 = load i32*, i32** %8, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 14
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %125, %128
  %130 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %5, align 8
  %131 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %130, i32 0, i32 6
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  store i32 %129, i32* %132, align 8
  %133 = load i32*, i32** %8, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 17
  %135 = load i32, i32* %134, align 4
  %136 = shl i32 %135, 8
  %137 = load i32*, i32** %8, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 16
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %136, %139
  %141 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %5, align 8
  %142 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %141, i32 0, i32 6
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  store i32 %140, i32* %143, align 4
  %144 = load i32*, i32** %8, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 19
  %146 = load i32, i32* %145, align 4
  %147 = shl i32 %146, 8
  %148 = load i32*, i32** %8, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 18
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %147, %150
  %152 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %5, align 8
  %153 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 8
  %154 = load i32*, i32** %8, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 21
  %156 = load i32, i32* %155, align 4
  %157 = shl i32 %156, 8
  %158 = load i32*, i32** %8, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 20
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %157, %160
  %162 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %5, align 8
  %163 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %162, i32 0, i32 3
  store i32 %161, i32* %163, align 4
  %164 = load i32*, i32** %8, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 23
  %166 = load i32, i32* %165, align 4
  %167 = shl i32 %166, 8
  %168 = load i32*, i32** %8, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 22
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %167, %170
  %172 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %5, align 8
  %173 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %172, i32 0, i32 4
  store i32 %171, i32* %173, align 8
  %174 = load i32*, i32** %8, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 25
  %176 = load i32, i32* %175, align 4
  %177 = shl i32 %176, 8
  %178 = load i32*, i32** %8, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 24
  %180 = load i32, i32* %179, align 4
  %181 = or i32 %177, %180
  %182 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %5, align 8
  %183 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %182, i32 0, i32 5
  store i32 %181, i32* %183, align 4
  store i32 0, i32* %4, align 4
  br label %184

184:                                              ; preds = %121, %59, %51, %42, %22
  %185 = load i32, i32* %4, align 4
  ret i32 %185
}

declare dso_local i64 @HDMI_INFOFRAME_SIZE(i32) #1

declare dso_local i64 @hdmi_infoframe_checksum(i8*, i64) #1

declare dso_local i32 @hdmi_drm_infoframe_init(%struct.hdmi_drm_infoframe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
