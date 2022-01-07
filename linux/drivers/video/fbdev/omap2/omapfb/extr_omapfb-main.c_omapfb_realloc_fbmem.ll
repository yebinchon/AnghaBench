; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_omapfb_realloc_fbmem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_omapfb_realloc_fbmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.fb_var_screeninfo }
%struct.fb_var_screeninfo = type { i32 }
%struct.omapfb_info = type { i32, %struct.omapfb2_mem_region*, %struct.omapfb2_device* }
%struct.omapfb2_mem_region = type { i64, i64, i32 }
%struct.omapfb2_device = type { i32 }

@OMAPFB_MEMTYPE_SDRAM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"initializing fb %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"omapfb_fb_init failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"omapfb_apply_changes failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omapfb_realloc_fbmem(%struct.fb_info* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.omapfb_info*, align 8
  %9 = alloca %struct.omapfb2_device*, align 8
  %10 = alloca %struct.omapfb2_mem_region*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.fb_var_screeninfo, align 4
  store %struct.fb_info* %0, %struct.fb_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %17 = call %struct.omapfb_info* @FB2OFB(%struct.fb_info* %16)
  store %struct.omapfb_info* %17, %struct.omapfb_info** %8, align 8
  %18 = load %struct.omapfb_info*, %struct.omapfb_info** %8, align 8
  %19 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %18, i32 0, i32 2
  %20 = load %struct.omapfb2_device*, %struct.omapfb2_device** %19, align 8
  store %struct.omapfb2_device* %20, %struct.omapfb2_device** %9, align 8
  %21 = load %struct.omapfb_info*, %struct.omapfb_info** %8, align 8
  %22 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %21, i32 0, i32 1
  %23 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %22, align 8
  store %struct.omapfb2_mem_region* %23, %struct.omapfb2_mem_region** %10, align 8
  %24 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %10, align 8
  %25 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %11, align 8
  %27 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %10, align 8
  %28 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %12, align 8
  %30 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %10, align 8
  %31 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @OMAPFB_MEMTYPE_SDRAM, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %3
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %140

39:                                               ; preds = %3
  %40 = load i64, i64* %6, align 8
  %41 = call i64 @PAGE_ALIGN(i64 %40)
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* %6, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %140

50:                                               ; preds = %45, %39
  %51 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %52 = call i32 @omapfb_free_fbmem(%struct.fb_info* %51)
  %53 = load i64, i64* %6, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %57 = call i32 @clear_fb_info(%struct.fb_info* %56)
  store i32 0, i32* %4, align 4
  br label %140

58:                                               ; preds = %50
  %59 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @omapfb_alloc_fbmem(%struct.fb_info* %59, i64 %60, i64 0)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %58
  %65 = load i64, i64* %11, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* %12, align 8
  %71 = call i32 @omapfb_alloc_fbmem(%struct.fb_info* %68, i64 %69, i64 %70)
  br label %72

72:                                               ; preds = %67, %64
  %73 = load %struct.omapfb2_mem_region*, %struct.omapfb2_mem_region** %10, align 8
  %74 = getelementptr inbounds %struct.omapfb2_mem_region, %struct.omapfb2_mem_region* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %79 = call i32 @clear_fb_info(%struct.fb_info* %78)
  br label %80

80:                                               ; preds = %77, %72
  %81 = load i32, i32* %14, align 4
  store i32 %81, i32* %4, align 4
  br label %140

82:                                               ; preds = %58
  %83 = load i64, i64* %11, align 8
  %84 = load i64, i64* %6, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store i32 0, i32* %4, align 4
  br label %140

87:                                               ; preds = %82
  %88 = load i64, i64* %11, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %110

90:                                               ; preds = %87
  %91 = load %struct.omapfb_info*, %struct.omapfb_info** %8, align 8
  %92 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %93)
  %95 = load %struct.omapfb2_device*, %struct.omapfb2_device** %9, align 8
  %96 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %97 = call i32 @omapfb_fb_init(%struct.omapfb2_device* %95, %struct.fb_info* %96)
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %14, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %90
  %101 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %134

102:                                              ; preds = %90
  %103 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %104 = call i32 @omapfb_apply_changes(%struct.fb_info* %103, i32 1)
  store i32 %104, i32* %14, align 4
  %105 = load i32, i32* %14, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %134

109:                                              ; preds = %102
  br label %131

110:                                              ; preds = %87
  %111 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %112 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %111, i32 0, i32 0
  %113 = call i32 @memcpy(%struct.fb_var_screeninfo* %15, %struct.fb_var_screeninfo* %112, i32 4)
  %114 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %115 = call i32 @check_fb_var(%struct.fb_info* %114, %struct.fb_var_screeninfo* %15)
  store i32 %115, i32* %14, align 4
  %116 = load i32, i32* %14, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %110
  br label %134

119:                                              ; preds = %110
  %120 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %121 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %120, i32 0, i32 0
  %122 = call i32 @memcpy(%struct.fb_var_screeninfo* %121, %struct.fb_var_screeninfo* %15, i32 4)
  %123 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %124 = call i32 @set_fb_fix(%struct.fb_info* %123)
  %125 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %126 = call i32 @setup_vrfb_rotation(%struct.fb_info* %125)
  store i32 %126, i32* %14, align 4
  %127 = load i32, i32* %14, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %119
  br label %134

130:                                              ; preds = %119
  br label %131

131:                                              ; preds = %130, %109
  %132 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %133 = call i32 @omapfb_clear_fb(%struct.fb_info* %132)
  store i32 0, i32* %4, align 4
  br label %140

134:                                              ; preds = %129, %118, %107, %100
  %135 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %136 = call i32 @omapfb_free_fbmem(%struct.fb_info* %135)
  %137 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %138 = call i32 @clear_fb_info(%struct.fb_info* %137)
  %139 = load i32, i32* %14, align 4
  store i32 %139, i32* %4, align 4
  br label %140

140:                                              ; preds = %134, %131, %86, %80, %55, %49, %36
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local %struct.omapfb_info* @FB2OFB(%struct.fb_info*) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i32 @omapfb_free_fbmem(%struct.fb_info*) #1

declare dso_local i32 @clear_fb_info(%struct.fb_info*) #1

declare dso_local i32 @omapfb_alloc_fbmem(%struct.fb_info*, i64, i64) #1

declare dso_local i32 @DBG(i8*, ...) #1

declare dso_local i32 @omapfb_fb_init(%struct.omapfb2_device*, %struct.fb_info*) #1

declare dso_local i32 @omapfb_apply_changes(%struct.fb_info*, i32) #1

declare dso_local i32 @memcpy(%struct.fb_var_screeninfo*, %struct.fb_var_screeninfo*, i32) #1

declare dso_local i32 @check_fb_var(%struct.fb_info*, %struct.fb_var_screeninfo*) #1

declare dso_local i32 @set_fb_fix(%struct.fb_info*) #1

declare dso_local i32 @setup_vrfb_rotation(%struct.fb_info*) #1

declare dso_local i32 @omapfb_clear_fb(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
