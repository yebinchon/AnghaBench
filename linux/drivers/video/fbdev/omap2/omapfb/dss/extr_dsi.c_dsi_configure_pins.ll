; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_configure_pins.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_configure_pins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32 }
%struct.omap_dsi_pin_config = type { i32, i32* }
%struct.platform_device = type { i32 }
%struct.dsi_data = type { i32, i32, i32 }
%struct.dsi_lane_config = type { i32, i64 }

@DSI_MAX_NR_LANES = common dso_local global i32 0, align 4
@dsi_configure_pins.functions = internal constant [5 x i32] [i32 132, i32 131, i32 130, i32 129, i32 128], align 16
@EINVAL = common dso_local global i32 0, align 4
@DSI_LANE_UNUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dss_device*, %struct.omap_dsi_pin_config*)* @dsi_configure_pins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_configure_pins(%struct.omap_dss_device* %0, %struct.omap_dsi_pin_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_dss_device*, align 8
  %5 = alloca %struct.omap_dsi_pin_config*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.dsi_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %4, align 8
  store %struct.omap_dsi_pin_config* %1, %struct.omap_dsi_pin_config** %5, align 8
  %19 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %20 = call %struct.platform_device* @dsi_get_dsidev_from_dssdev(%struct.omap_dss_device* %19)
  store %struct.platform_device* %20, %struct.platform_device** %6, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %22 = call %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device* %21)
  store %struct.dsi_data* %22, %struct.dsi_data** %7, align 8
  %23 = load i32, i32* @DSI_MAX_NR_LANES, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %10, align 8
  %26 = alloca %struct.dsi_lane_config, i64 %24, align 16
  store i64 %24, i64* %11, align 8
  %27 = load %struct.omap_dsi_pin_config*, %struct.omap_dsi_pin_config** %5, align 8
  %28 = getelementptr inbounds %struct.omap_dsi_pin_config, %struct.omap_dsi_pin_config* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %8, align 4
  %30 = load %struct.omap_dsi_pin_config*, %struct.omap_dsi_pin_config** %5, align 8
  %31 = getelementptr inbounds %struct.omap_dsi_pin_config, %struct.omap_dsi_pin_config* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %9, align 8
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 4
  br i1 %34, label %46, label %35

35:                                               ; preds = %2
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %38 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %39, 2
  %41 = icmp sgt i32 %36, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* %8, align 4
  %44 = srem i32 %43, 2
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42, %35, %2
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %156

49:                                               ; preds = %42
  store i32 0, i32* %13, align 4
  br label %50

50:                                               ; preds = %60, %49
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @DSI_MAX_NR_LANES, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load i32, i32* @DSI_LANE_UNUSED, align 4
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.dsi_lane_config, %struct.dsi_lane_config* %26, i64 %57
  %59 = getelementptr inbounds %struct.dsi_lane_config, %struct.dsi_lane_config* %58, i32 0, i32 0
  store i32 %55, i32* %59, align 16
  br label %60

60:                                               ; preds = %54
  %61 = load i32, i32* %13, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %13, align 4
  br label %50

63:                                               ; preds = %50
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %64

64:                                               ; preds = %145, %63
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %148

68:                                               ; preds = %64
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %17, align 4
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %18, align 4
  %80 = load i32, i32* %17, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %68
  %83 = load i32, i32* %17, align 4
  %84 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %85 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = mul nsw i32 %86, 2
  %88 = icmp sge i32 %83, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %82, %68
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %156

92:                                               ; preds = %82
  %93 = load i32, i32* %18, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %18, align 4
  %97 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %98 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 %99, 2
  %101 = icmp sge i32 %96, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %95, %92
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %156

105:                                              ; preds = %95
  %106 = load i32, i32* %17, align 4
  %107 = and i32 %106, 1
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %105
  %110 = load i32, i32* %18, align 4
  %111 = load i32, i32* %17, align 4
  %112 = sub nsw i32 %111, 1
  %113 = icmp ne i32 %110, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %156

117:                                              ; preds = %109
  store i64 1, i64* %16, align 8
  br label %127

118:                                              ; preds = %105
  %119 = load i32, i32* %18, align 4
  %120 = load i32, i32* %17, align 4
  %121 = add nsw i32 %120, 1
  %122 = icmp ne i32 %119, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %156

126:                                              ; preds = %118
  store i64 0, i64* %16, align 8
  br label %127

127:                                              ; preds = %126, %117
  %128 = load i32, i32* %17, align 4
  %129 = sdiv i32 %128, 2
  %130 = sext i32 %129 to i64
  store i64 %130, i64* %15, align 8
  %131 = load i32, i32* %13, align 4
  %132 = sdiv i32 %131, 2
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [5 x i32], [5 x i32]* @dsi_configure_pins.functions, i64 0, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load i64, i64* %15, align 8
  %137 = getelementptr inbounds %struct.dsi_lane_config, %struct.dsi_lane_config* %26, i64 %136
  %138 = getelementptr inbounds %struct.dsi_lane_config, %struct.dsi_lane_config* %137, i32 0, i32 0
  store i32 %135, i32* %138, align 16
  %139 = load i64, i64* %16, align 8
  %140 = load i64, i64* %15, align 8
  %141 = getelementptr inbounds %struct.dsi_lane_config, %struct.dsi_lane_config* %26, i64 %140
  %142 = getelementptr inbounds %struct.dsi_lane_config, %struct.dsi_lane_config* %141, i32 0, i32 1
  store i64 %139, i64* %142, align 8
  %143 = load i32, i32* %12, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %12, align 4
  br label %145

145:                                              ; preds = %127
  %146 = load i32, i32* %13, align 4
  %147 = add nsw i32 %146, 2
  store i32 %147, i32* %13, align 4
  br label %64

148:                                              ; preds = %64
  %149 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %150 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @memcpy(i32 %151, %struct.dsi_lane_config* %26, i32 4)
  %153 = load i32, i32* %12, align 4
  %154 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %155 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %156

156:                                              ; preds = %148, %123, %114, %102, %89, %46
  %157 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %157)
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local %struct.platform_device* @dsi_get_dsidev_from_dssdev(%struct.omap_dss_device*) #1

declare dso_local %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i32, %struct.dsi_lane_config*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
