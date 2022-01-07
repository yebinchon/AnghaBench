; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_csi_try_crop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_csi_try_crop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csi_priv = type { i64 }
%struct.v4l2_rect = type { i32, i64, i32, i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i64 }
%struct.v4l2_fwnode_endpoint = type { i64 }

@__u32 = common dso_local global i32 0, align 4
@CSI_SRC_PAD_DIRECT = common dso_local global i64 0, align 8
@V4L2_FIELD_ALTERNATE = common dso_local global i64 0, align 8
@V4L2_MBUS_BT656 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csi_priv*, %struct.v4l2_rect*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_mbus_framefmt*, %struct.v4l2_fwnode_endpoint*)* @csi_try_crop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csi_try_crop(%struct.csi_priv* %0, %struct.v4l2_rect* %1, %struct.v4l2_subdev_pad_config* %2, %struct.v4l2_mbus_framefmt* %3, %struct.v4l2_fwnode_endpoint* %4) #0 {
  %6 = alloca %struct.csi_priv*, align 8
  %7 = alloca %struct.v4l2_rect*, align 8
  %8 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %9 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %10 = alloca %struct.v4l2_fwnode_endpoint*, align 8
  %11 = alloca i32, align 4
  store %struct.csi_priv* %0, %struct.csi_priv** %6, align 8
  store %struct.v4l2_rect* %1, %struct.v4l2_rect** %7, align 8
  store %struct.v4l2_subdev_pad_config* %2, %struct.v4l2_subdev_pad_config** %8, align 8
  store %struct.v4l2_mbus_framefmt* %3, %struct.v4l2_mbus_framefmt** %9, align 8
  store %struct.v4l2_fwnode_endpoint* %4, %struct.v4l2_fwnode_endpoint** %10, align 8
  %12 = load i32, i32* @__u32, align 4
  %13 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %14 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i8* @min_t(i32 %12, i32 %15, i32 %18)
  %20 = ptrtoint i8* %19 to i32
  %21 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %25, %29
  %31 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %32 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = icmp sgt i64 %30, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %5
  %37 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %38 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %39, %42
  %44 = sext i32 %43 to i64
  %45 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %36, %5
  %48 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %49 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = and i64 %50, -4
  store i64 %51, i64* %49, align 8
  %52 = load %struct.csi_priv*, %struct.csi_priv** %6, align 8
  %53 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @CSI_SRC_PAD_DIRECT, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %47
  %58 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, -8
  store i32 %61, i32* %59, align 8
  br label %67

62:                                               ; preds = %47
  %63 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %64 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %65, -2
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %62, %57
  %68 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %69 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %11, align 4
  %71 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %72 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @V4L2_FIELD_ALTERNATE, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %67
  %77 = load i32, i32* %11, align 4
  %78 = mul nsw i32 %77, 2
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %76, %67
  %80 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %10, align 8
  %81 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @V4L2_MBUS_BT656, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %107

85:                                               ; preds = %79
  %86 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %87 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = call i64 @V4L2_FIELD_HAS_BOTH(i64 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %85
  %92 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %93 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @V4L2_FIELD_ALTERNATE, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %91, %85
  %98 = load i32, i32* %11, align 4
  %99 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %100 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* %11, align 4
  %102 = icmp eq i32 %101, 480
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 2, i32 0
  %105 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %106 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  br label %135

107:                                              ; preds = %91, %79
  %108 = load i32, i32* @__u32, align 4
  %109 = load i32, i32* %11, align 4
  %110 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %111 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i8* @min_t(i32 %108, i32 %109, i32 %112)
  %114 = ptrtoint i8* %113 to i32
  %115 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %116 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  %117 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %118 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %121 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %119, %122
  %124 = load i32, i32* %11, align 4
  %125 = icmp sgt i32 %123, %124
  br i1 %125, label %126, label %134

126:                                              ; preds = %107
  %127 = load i32, i32* %11, align 4
  %128 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %129 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = sub nsw i32 %127, %130
  %132 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %133 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %132, i32 0, i32 3
  store i32 %131, i32* %133, align 4
  br label %134

134:                                              ; preds = %126, %107
  br label %135

135:                                              ; preds = %134, %97
  ret void
}

declare dso_local i8* @min_t(i32, i32, i32) #1

declare dso_local i64 @V4L2_FIELD_HAS_BOTH(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
