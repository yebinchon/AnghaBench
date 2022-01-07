; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_omapfb_main.c_omapfb_setup_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_omapfb_main.c_omapfb_setup_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, %struct.TYPE_8__, %struct.fb_var_screeninfo, %struct.omapfb_plane_struct* }
%struct.TYPE_8__ = type { i64, i64 }
%struct.fb_var_screeninfo = type { i32 }
%struct.omapfb_plane_struct = type { i64, %struct.TYPE_6__, %struct.omapfb_device* }
%struct.TYPE_6__ = type { i64 }
%struct.omapfb_device = type { %struct.TYPE_7__*, %struct.fb_var_screeninfo, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 (i64, i64, i64, i64*)*, i32 (...)* }
%struct.TYPE_5__ = type { %struct.omapfb_mem_region* }
%struct.omapfb_mem_region = type { i64, i64, i64 }
%struct.omapfb_mem_info = type { i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@OMAPFB_MEMTYPE_SDRAM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.omapfb_mem_info*)* @omapfb_setup_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omapfb_setup_mem(%struct.fb_info* %0, %struct.omapfb_mem_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.omapfb_mem_info*, align 8
  %6 = alloca %struct.omapfb_plane_struct*, align 8
  %7 = alloca %struct.omapfb_device*, align 8
  %8 = alloca %struct.omapfb_mem_region*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.fb_var_screeninfo*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store %struct.omapfb_mem_info* %1, %struct.omapfb_mem_info** %5, align 8
  %15 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 3
  %17 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %16, align 8
  store %struct.omapfb_plane_struct* %17, %struct.omapfb_plane_struct** %6, align 8
  %18 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %6, align 8
  %19 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %18, i32 0, i32 2
  %20 = load %struct.omapfb_device*, %struct.omapfb_device** %19, align 8
  store %struct.omapfb_device* %20, %struct.omapfb_device** %7, align 8
  %21 = load %struct.omapfb_device*, %struct.omapfb_device** %7, align 8
  %22 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %23, align 8
  %25 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %6, align 8
  %26 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %24, i64 %27
  store %struct.omapfb_mem_region* %28, %struct.omapfb_mem_region** %8, align 8
  store i32 0, i32* %10, align 4
  %29 = load %struct.omapfb_device*, %struct.omapfb_device** %7, align 8
  %30 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32 (i64, i64, i64, i64*)*, i32 (i64, i64, i64, i64*)** %32, align 8
  %34 = icmp eq i32 (i64, i64, i64, i64*)* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %189

38:                                               ; preds = %2
  %39 = load %struct.omapfb_mem_info*, %struct.omapfb_mem_info** %5, align 8
  %40 = getelementptr inbounds %struct.omapfb_mem_info, %struct.omapfb_mem_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @OMAPFB_MEMTYPE_SDRAM, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %189

47:                                               ; preds = %38
  %48 = load %struct.omapfb_mem_info*, %struct.omapfb_mem_info** %5, align 8
  %49 = getelementptr inbounds %struct.omapfb_mem_info, %struct.omapfb_mem_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @PAGE_ALIGN(i32 %50)
  store i64 %51, i64* %9, align 8
  %52 = load %struct.omapfb_device*, %struct.omapfb_device** %7, align 8
  %53 = call i32 @omapfb_rqueue_lock(%struct.omapfb_device* %52)
  %54 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %6, align 8
  %55 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %47
  %60 = load i32, i32* @EBUSY, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %10, align 4
  br label %185

62:                                               ; preds = %47
  %63 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %8, align 8
  %64 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %9, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %76, label %68

68:                                               ; preds = %62
  %69 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %8, align 8
  %70 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.omapfb_mem_info*, %struct.omapfb_mem_info** %5, align 8
  %73 = getelementptr inbounds %struct.omapfb_mem_info, %struct.omapfb_mem_info* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %71, %74
  br i1 %75, label %76, label %184

76:                                               ; preds = %68, %62
  %77 = load %struct.omapfb_device*, %struct.omapfb_device** %7, align 8
  %78 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %77, i32 0, i32 1
  store %struct.fb_var_screeninfo* %78, %struct.fb_var_screeninfo** %11, align 8
  %79 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %8, align 8
  %80 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %12, align 8
  %82 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %8, align 8
  %83 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %13, align 8
  %85 = load i64, i64* %9, align 8
  %86 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %8, align 8
  %87 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load %struct.omapfb_mem_info*, %struct.omapfb_mem_info** %5, align 8
  %89 = getelementptr inbounds %struct.omapfb_mem_info, %struct.omapfb_mem_info* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %8, align 8
  %92 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %91, i32 0, i32 1
  store i64 %90, i64* %92, align 8
  %93 = load i64, i64* %12, align 8
  %94 = load i64, i64* %9, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %115

96:                                               ; preds = %76
  %97 = load i64, i64* %9, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %115

99:                                               ; preds = %96
  %100 = load i64, i64* %9, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %114

102:                                              ; preds = %99
  %103 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %11, align 8
  %104 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %105 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %104, i32 0, i32 2
  %106 = call i32 @memcpy(%struct.fb_var_screeninfo* %103, %struct.fb_var_screeninfo* %105, i32 4)
  %107 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %108 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %11, align 8
  %109 = call i32 @set_fb_var(%struct.fb_info* %107, %struct.fb_var_screeninfo* %108)
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %102
  br label %185

113:                                              ; preds = %102
  br label %114

114:                                              ; preds = %113, %99
  br label %115

115:                                              ; preds = %114, %96, %76
  %116 = load %struct.omapfb_device*, %struct.omapfb_device** %7, align 8
  %117 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %116, i32 0, i32 0
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = load i32 (...)*, i32 (...)** %119, align 8
  %121 = icmp ne i32 (...)* %120, null
  br i1 %121, label %122, label %129

122:                                              ; preds = %115
  %123 = load %struct.omapfb_device*, %struct.omapfb_device** %7, align 8
  %124 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %123, i32 0, i32 0
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 1
  %127 = load i32 (...)*, i32 (...)** %126, align 8
  %128 = call i32 (...) %127()
  br label %129

129:                                              ; preds = %122, %115
  %130 = load %struct.omapfb_device*, %struct.omapfb_device** %7, align 8
  %131 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %130, i32 0, i32 0
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i32 (i64, i64, i64, i64*)*, i32 (i64, i64, i64, i64*)** %133, align 8
  %135 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %6, align 8
  %136 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %9, align 8
  %139 = load %struct.omapfb_mem_info*, %struct.omapfb_mem_info** %5, align 8
  %140 = getelementptr inbounds %struct.omapfb_mem_info, %struct.omapfb_mem_info* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = call i32 %134(i64 %137, i64 %138, i64 %141, i64* %14)
  store i32 %142, i32* %10, align 4
  %143 = load i32, i32* %10, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %129
  %146 = load i64, i64* %12, align 8
  %147 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %8, align 8
  %148 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %147, i32 0, i32 0
  store i64 %146, i64* %148, align 8
  %149 = load i64, i64* %13, align 8
  %150 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %8, align 8
  %151 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %150, i32 0, i32 1
  store i64 %149, i64* %151, align 8
  br label %185

152:                                              ; preds = %129
  %153 = load i64, i64* %14, align 8
  %154 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %8, align 8
  %155 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %154, i32 0, i32 2
  store i64 %153, i64* %155, align 8
  %156 = load i64, i64* %12, align 8
  %157 = load i64, i64* %9, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %183

159:                                              ; preds = %152
  %160 = load i64, i64* %9, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %159
  %163 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %164 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %163, i32 0, i32 2
  %165 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %11, align 8
  %166 = call i32 @memcpy(%struct.fb_var_screeninfo* %164, %struct.fb_var_screeninfo* %165, i32 4)
  %167 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %168 = call i32 @set_fb_fix(%struct.fb_info* %167, i32 0)
  br label %182

169:                                              ; preds = %159
  %170 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %171 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %170, i32 0, i32 0
  %172 = call i32 @mutex_lock(i32* %171)
  %173 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %174 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 1
  store i64 0, i64* %175, align 8
  %176 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %177 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  store i64 0, i64* %178, align 8
  %179 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %180 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %179, i32 0, i32 0
  %181 = call i32 @mutex_unlock(i32* %180)
  br label %182

182:                                              ; preds = %169, %162
  br label %183

183:                                              ; preds = %182, %152
  br label %184

184:                                              ; preds = %183, %68
  br label %185

185:                                              ; preds = %184, %145, %112, %59
  %186 = load %struct.omapfb_device*, %struct.omapfb_device** %7, align 8
  %187 = call i32 @omapfb_rqueue_unlock(%struct.omapfb_device* %186)
  %188 = load i32, i32* %10, align 4
  store i32 %188, i32* %3, align 4
  br label %189

189:                                              ; preds = %185, %44, %35
  %190 = load i32, i32* %3, align 4
  ret i32 %190
}

declare dso_local i64 @PAGE_ALIGN(i32) #1

declare dso_local i32 @omapfb_rqueue_lock(%struct.omapfb_device*) #1

declare dso_local i32 @memcpy(%struct.fb_var_screeninfo*, %struct.fb_var_screeninfo*, i32) #1

declare dso_local i32 @set_fb_var(%struct.fb_info*, %struct.fb_var_screeninfo*) #1

declare dso_local i32 @set_fb_fix(%struct.fb_info*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @omapfb_rqueue_unlock(%struct.omapfb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
