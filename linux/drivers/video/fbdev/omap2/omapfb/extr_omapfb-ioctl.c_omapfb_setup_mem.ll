; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-ioctl.c_omapfb_setup_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-ioctl.c_omapfb_setup_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.omapfb_mem_info = type { i64, i32 }
%struct.omapfb_info = type { i32, %struct.omap_overlay**, %struct.omapfb2_mem_region*, %struct.omapfb2_device* }
%struct.omap_overlay = type { i64 (%struct.omap_overlay*)* }
%struct.omapfb2_mem_region = type { i64, i64, i32, i32, i32, i32 }
%struct.omapfb2_device = type { i32, i32, %struct.fb_info** }
%struct.omap_dss_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.omap_dss_device*)* }

@OMAPFB_MEMTYPE_SDRAM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"realloc fbmem failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.omapfb_mem_info*)* @omapfb_setup_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omapfb_setup_mem(%struct.fb_info* %0, %struct.omapfb_mem_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.omapfb_mem_info*, align 8
  %6 = alloca %struct.omapfb_info*, align 8
  %7 = alloca %struct.omapfb2_device*, align 8
  %8 = alloca %struct.omap_dss_device*, align 8
  %9 = alloca %struct.omapfb2_mem_region*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.omapfb_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.omap_overlay*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store %struct.omapfb_mem_info* %1, %struct.omapfb_mem_info** %5, align 8
  %16 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %17 = call %struct.omapfb_info* @FB2OFB(%struct.fb_info* %16)
  store %struct.omapfb_info* %17, %struct.omapfb_info** %6, align 8
  %18 = load %struct.omapfb_info*, %struct.omapfb_info** %6, align 8
  %19 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %18, i32 0, i32 3
  %20 = load %struct.omapfb2_device*, %struct.omapfb2_device** %19, align 8
  store %struct.omapfb2_device* %20, %struct.omapfb2_device** %7, align 8
  %21 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %22 = call %struct.omap_dss_device* @fb2display(%struct.fb_info* %21)
  store %struct.omap_dss_device* %22, %struct.omap_dss_device** %8, align 8
  store i32 0, i32* %10, align 4
  %23 = load %struct.omapfb_mem_info*, %struct.omapfb_mem_info** %5, align 8
  %24 = getelementptr inbounds %struct.omapfb_mem_info, %struct.omapfb_mem_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @OMAPFB_MEMTYPE_SDRAM, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %165

31:                                               ; preds = %2
  %32 = load %struct.omapfb_mem_info*, %struct.omapfb_mem_info** %5, align 8
  %33 = getelementptr inbounds %struct.omapfb_mem_info, %struct.omapfb_mem_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @PAGE_ALIGN(i32 %34)
  store i64 %35, i64* %12, align 8
  %36 = load %struct.omap_dss_device*, %struct.omap_dss_device** %8, align 8
  %37 = icmp ne %struct.omap_dss_device* %36, null
  br i1 %37, label %38, label %53

38:                                               ; preds = %31
  %39 = load %struct.omap_dss_device*, %struct.omap_dss_device** %8, align 8
  %40 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %42, align 8
  %44 = icmp ne i32 (%struct.omap_dss_device*)* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %38
  %46 = load %struct.omap_dss_device*, %struct.omap_dss_device** %8, align 8
  %47 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %49, align 8
  %51 = load %struct.omap_dss_device*, %struct.omap_dss_device** %8, align 8
  %52 = call i32 %50(%struct.omap_dss_device* %51)
  br label %53

53:                                               ; preds = %45, %38, %31
  %54 = load %struct.omapfb_info*, %struct.omapfb_info** %6, align 8
  %55 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %54, i32 0, i32 2
  %56 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %55, align 8
  store %struct.omapfb2_mem_region* %56, %struct.omapfb2_mem_region** %9, align 8
  %57 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %9, align 8
  %58 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %57, i32 0, i32 2
  %59 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %9, align 8
  %60 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @down_write_nested(i32* %58, i32 %61)
  %63 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %9, align 8
  %64 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %63, i32 0, i32 3
  %65 = call i32 @atomic_inc(i32* %64)
  %66 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %9, align 8
  %67 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %12, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %53
  %72 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %9, align 8
  %73 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.omapfb_mem_info*, %struct.omapfb_mem_info** %5, align 8
  %76 = getelementptr inbounds %struct.omapfb_mem_info, %struct.omapfb_mem_info* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %74, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %157

80:                                               ; preds = %71, %53
  %81 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %9, align 8
  %82 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %81, i32 0, i32 4
  %83 = call i64 @atomic_read(i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i32, i32* @EBUSY, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %10, align 4
  br label %157

88:                                               ; preds = %80
  store i32 0, i32* %11, align 4
  br label %89

89:                                               ; preds = %139, %88
  %90 = load i32, i32* %11, align 4
  %91 = load %struct.omapfb2_device*, %struct.omapfb2_device** %7, align 8
  %92 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %142

95:                                               ; preds = %89
  %96 = load %struct.omapfb2_device*, %struct.omapfb2_device** %7, align 8
  %97 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %96, i32 0, i32 2
  %98 = load %struct.fb_info**, %struct.fb_info*** %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %98, i64 %100
  %102 = load %struct.fb_info*, %struct.fb_info** %101, align 8
  %103 = call %struct.omapfb_info* @FB2OFB(%struct.fb_info* %102)
  store %struct.omapfb_info* %103, %struct.omapfb_info** %13, align 8
  %104 = load %struct.omapfb_info*, %struct.omapfb_info** %13, align 8
  %105 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %104, i32 0, i32 2
  %106 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %105, align 8
  %107 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %9, align 8
  %108 = icmp ne %struct.omapfb2_mem_region* %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %95
  br label %139

110:                                              ; preds = %95
  store i32 0, i32* %14, align 4
  br label %111

111:                                              ; preds = %135, %110
  %112 = load i32, i32* %14, align 4
  %113 = load %struct.omapfb_info*, %struct.omapfb_info** %13, align 8
  %114 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp slt i32 %112, %115
  br i1 %116, label %117, label %138

117:                                              ; preds = %111
  %118 = load %struct.omapfb_info*, %struct.omapfb_info** %13, align 8
  %119 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %118, i32 0, i32 1
  %120 = load %struct.omap_overlay**, %struct.omap_overlay*** %119, align 8
  %121 = load i32, i32* %14, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.omap_overlay*, %struct.omap_overlay** %120, i64 %122
  %124 = load %struct.omap_overlay*, %struct.omap_overlay** %123, align 8
  store %struct.omap_overlay* %124, %struct.omap_overlay** %15, align 8
  %125 = load %struct.omap_overlay*, %struct.omap_overlay** %15, align 8
  %126 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %125, i32 0, i32 0
  %127 = load i64 (%struct.omap_overlay*)*, i64 (%struct.omap_overlay*)** %126, align 8
  %128 = load %struct.omap_overlay*, %struct.omap_overlay** %15, align 8
  %129 = call i64 %127(%struct.omap_overlay* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %117
  %132 = load i32, i32* @EBUSY, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %10, align 4
  br label %157

134:                                              ; preds = %117
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %14, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %14, align 4
  br label %111

138:                                              ; preds = %111
  br label %139

139:                                              ; preds = %138, %109
  %140 = load i32, i32* %11, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %11, align 4
  br label %89

142:                                              ; preds = %89
  %143 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %144 = load i64, i64* %12, align 8
  %145 = load %struct.omapfb_mem_info*, %struct.omapfb_mem_info** %5, align 8
  %146 = getelementptr inbounds %struct.omapfb_mem_info, %struct.omapfb_mem_info* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @omapfb_realloc_fbmem(%struct.fb_info* %143, i64 %144, i64 %147)
  store i32 %148, i32* %10, align 4
  %149 = load i32, i32* %10, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %142
  %152 = load %struct.omapfb2_device*, %struct.omapfb2_device** %7, align 8
  %153 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @dev_err(i32 %154, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %157

156:                                              ; preds = %142
  br label %157

157:                                              ; preds = %156, %151, %131, %85, %79
  %158 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %9, align 8
  %159 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %158, i32 0, i32 3
  %160 = call i32 @atomic_dec(i32* %159)
  %161 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %9, align 8
  %162 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %161, i32 0, i32 2
  %163 = call i32 @up_write(i32* %162)
  %164 = load i32, i32* %10, align 4
  store i32 %164, i32* %3, align 4
  br label %165

165:                                              ; preds = %157, %28
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local %struct.omapfb_info* @FB2OFB(%struct.fb_info*) #1

declare dso_local %struct.omap_dss_device* @fb2display(%struct.fb_info*) #1

declare dso_local i64 @PAGE_ALIGN(i32) #1

declare dso_local i32 @down_write_nested(i32*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @omapfb_realloc_fbmem(%struct.fb_info*, i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
