; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-sysfs.c_store_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-sysfs.c_store_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.fb_info = type { i32 }
%struct.omapfb_info = type { i32, %struct.omapfb2_mem_region*, %struct.omap_overlay**, %struct.omapfb2_device* }
%struct.omapfb2_mem_region = type { i64, i32, i32, i32, i32, i32 }
%struct.omap_overlay = type { i64 (%struct.omap_overlay*)* }
%struct.omapfb2_device = type { i32, %struct.fb_info** }
%struct.omap_dss_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.omap_dss_device*)* }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"realloc fbmem failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_size(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.fb_info*, align 8
  %11 = alloca %struct.omapfb_info*, align 8
  %12 = alloca %struct.omapfb2_device*, align 8
  %13 = alloca %struct.omap_dss_device*, align 8
  %14 = alloca %struct.omapfb2_mem_region*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.omapfb_info*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.omap_overlay*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = call %struct.fb_info* @dev_get_drvdata(%struct.device* %21)
  store %struct.fb_info* %22, %struct.fb_info** %10, align 8
  %23 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %24 = call %struct.omapfb_info* @FB2OFB(%struct.fb_info* %23)
  store %struct.omapfb_info* %24, %struct.omapfb_info** %11, align 8
  %25 = load %struct.omapfb_info*, %struct.omapfb_info** %11, align 8
  %26 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %25, i32 0, i32 3
  %27 = load %struct.omapfb2_device*, %struct.omapfb2_device** %26, align 8
  store %struct.omapfb2_device* %27, %struct.omapfb2_device** %12, align 8
  %28 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %29 = call %struct.omap_dss_device* @fb2display(%struct.fb_info* %28)
  store %struct.omap_dss_device* %29, %struct.omap_dss_device** %13, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @kstrtoul(i8* %30, i32 0, i64* %15)
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %16, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %4
  %35 = load i32, i32* %16, align 4
  store i32 %35, i32* %5, align 4
  br label %168

36:                                               ; preds = %4
  %37 = load i64, i64* %15, align 8
  %38 = call i64 @PAGE_ALIGN(i64 %37)
  store i64 %38, i64* %15, align 8
  %39 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %40 = call i32 @lock_fb_info(%struct.fb_info* %39)
  %41 = load %struct.omap_dss_device*, %struct.omap_dss_device** %13, align 8
  %42 = icmp ne %struct.omap_dss_device* %41, null
  br i1 %42, label %43, label %58

43:                                               ; preds = %36
  %44 = load %struct.omap_dss_device*, %struct.omap_dss_device** %13, align 8
  %45 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %47, align 8
  %49 = icmp ne i32 (%struct.omap_dss_device*)* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %43
  %51 = load %struct.omap_dss_device*, %struct.omap_dss_device** %13, align 8
  %52 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %54, align 8
  %56 = load %struct.omap_dss_device*, %struct.omap_dss_device** %13, align 8
  %57 = call i32 %55(%struct.omap_dss_device* %56)
  br label %58

58:                                               ; preds = %50, %43, %36
  %59 = load %struct.omapfb_info*, %struct.omapfb_info** %11, align 8
  %60 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %59, i32 0, i32 1
  %61 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %60, align 8
  store %struct.omapfb2_mem_region* %61, %struct.omapfb2_mem_region** %14, align 8
  %62 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %14, align 8
  %63 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %62, i32 0, i32 1
  %64 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %14, align 8
  %65 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @down_write_nested(i32* %63, i32 %66)
  %68 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %14, align 8
  %69 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %68, i32 0, i32 2
  %70 = call i32 @atomic_inc(i32* %69)
  %71 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %14, align 8
  %72 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %71, i32 0, i32 4
  %73 = call i64 @atomic_read(i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %58
  %76 = load i32, i32* @EBUSY, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %16, align 4
  br label %158

78:                                               ; preds = %58
  store i32 0, i32* %17, align 4
  br label %79

79:                                               ; preds = %129, %78
  %80 = load i32, i32* %17, align 4
  %81 = load %struct.omapfb2_device*, %struct.omapfb2_device** %12, align 8
  %82 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %132

85:                                               ; preds = %79
  %86 = load %struct.omapfb2_device*, %struct.omapfb2_device** %12, align 8
  %87 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %86, i32 0, i32 1
  %88 = load %struct.fb_info**, %struct.fb_info*** %87, align 8
  %89 = load i32, i32* %17, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %88, i64 %90
  %92 = load %struct.fb_info*, %struct.fb_info** %91, align 8
  %93 = call %struct.omapfb_info* @FB2OFB(%struct.fb_info* %92)
  store %struct.omapfb_info* %93, %struct.omapfb_info** %18, align 8
  %94 = load %struct.omapfb_info*, %struct.omapfb_info** %18, align 8
  %95 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %94, i32 0, i32 1
  %96 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %95, align 8
  %97 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %14, align 8
  %98 = icmp ne %struct.omapfb2_mem_region* %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %85
  br label %129

100:                                              ; preds = %85
  store i32 0, i32* %19, align 4
  br label %101

101:                                              ; preds = %125, %100
  %102 = load i32, i32* %19, align 4
  %103 = load %struct.omapfb_info*, %struct.omapfb_info** %18, align 8
  %104 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %128

107:                                              ; preds = %101
  %108 = load %struct.omapfb_info*, %struct.omapfb_info** %18, align 8
  %109 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %108, i32 0, i32 2
  %110 = load %struct.omap_overlay**, %struct.omap_overlay*** %109, align 8
  %111 = load i32, i32* %19, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.omap_overlay*, %struct.omap_overlay** %110, i64 %112
  %114 = load %struct.omap_overlay*, %struct.omap_overlay** %113, align 8
  store %struct.omap_overlay* %114, %struct.omap_overlay** %20, align 8
  %115 = load %struct.omap_overlay*, %struct.omap_overlay** %20, align 8
  %116 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %115, i32 0, i32 0
  %117 = load i64 (%struct.omap_overlay*)*, i64 (%struct.omap_overlay*)** %116, align 8
  %118 = load %struct.omap_overlay*, %struct.omap_overlay** %20, align 8
  %119 = call i64 %117(%struct.omap_overlay* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %107
  %122 = load i32, i32* @EBUSY, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %16, align 4
  br label %158

124:                                              ; preds = %107
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %19, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %19, align 4
  br label %101

128:                                              ; preds = %101
  br label %129

129:                                              ; preds = %128, %99
  %130 = load i32, i32* %17, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %17, align 4
  br label %79

132:                                              ; preds = %79
  %133 = load i64, i64* %15, align 8
  %134 = load %struct.omapfb_info*, %struct.omapfb_info** %11, align 8
  %135 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %134, i32 0, i32 1
  %136 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %135, align 8
  %137 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %133, %138
  br i1 %139, label %140, label %155

140:                                              ; preds = %132
  %141 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %142 = load i64, i64* %15, align 8
  %143 = load %struct.omapfb_info*, %struct.omapfb_info** %11, align 8
  %144 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %143, i32 0, i32 1
  %145 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %144, align 8
  %146 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @omapfb_realloc_fbmem(%struct.fb_info* %141, i64 %142, i32 %147)
  store i32 %148, i32* %16, align 4
  %149 = load i32, i32* %16, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %140
  %152 = load %struct.device*, %struct.device** %6, align 8
  %153 = call i32 @dev_err(%struct.device* %152, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %158

154:                                              ; preds = %140
  br label %155

155:                                              ; preds = %154, %132
  %156 = load i64, i64* %9, align 8
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %16, align 4
  br label %158

158:                                              ; preds = %155, %151, %121, %75
  %159 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %14, align 8
  %160 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %159, i32 0, i32 2
  %161 = call i32 @atomic_dec(i32* %160)
  %162 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %14, align 8
  %163 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %162, i32 0, i32 1
  %164 = call i32 @up_write(i32* %163)
  %165 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %166 = call i32 @unlock_fb_info(%struct.fb_info* %165)
  %167 = load i32, i32* %16, align 4
  store i32 %167, i32* %5, align 4
  br label %168

168:                                              ; preds = %158, %34
  %169 = load i32, i32* %5, align 4
  ret i32 %169
}

declare dso_local %struct.fb_info* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.omapfb_info* @FB2OFB(%struct.fb_info*) #1

declare dso_local %struct.omap_dss_device* @fb2display(%struct.fb_info*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i32 @lock_fb_info(%struct.fb_info*) #1

declare dso_local i32 @down_write_nested(i32*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @omapfb_realloc_fbmem(%struct.fb_info*, i64, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @unlock_fb_info(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
