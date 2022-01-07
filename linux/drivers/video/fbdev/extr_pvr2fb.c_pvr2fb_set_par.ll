; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pvr2fb.c_pvr2fb_set_par.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pvr2fb.c_pvr2fb_set_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__, %struct.fb_var_screeninfo, i64 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.pvr2fb_par = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@cable_type = common dso_local global i64 0, align 8
@CT_VGA = common dso_local global i64 0, align 8
@video_output = common dso_local global i64 0, align 8
@VO_VGA = common dso_local global i64 0, align 8
@FB_VMODE_MASK = common dso_local global i32 0, align 4
@FB_VMODE_INTERLACED = common dso_local global i32 0, align 4
@FB_VMODE_DOUBLE = common dso_local global i32 0, align 4
@FB_SYNC_BROADCAST = common dso_local global i32 0, align 4
@PAL_VTOTAL = common dso_local global i32 0, align 4
@NTSC_VTOTAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @pvr2fb_set_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2fb_set_par(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.pvr2fb_par*, align 8
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.pvr2fb_par*
  store %struct.pvr2fb_par* %10, %struct.pvr2fb_par** %3, align 8
  %11 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 1
  store %struct.fb_var_screeninfo* %12, %struct.fb_var_screeninfo** %4, align 8
  %13 = call i64 (...) @pvr2_init_cable()
  store i64 %13, i64* @cable_type, align 8
  %14 = load i64, i64* @cable_type, align 8
  %15 = load i64, i64* @CT_VGA, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load i64, i64* @video_output, align 8
  %19 = load i64, i64* @VO_VGA, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i64, i64* @VO_VGA, align 8
  store i64 %22, i64* @video_output, align 8
  br label %23

23:                                               ; preds = %21, %17, %1
  %24 = load i32, i32* @FB_VMODE_MASK, align 4
  %25 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %26 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %30 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @FB_VMODE_INTERLACED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %23
  %36 = load i64, i64* @video_output, align 8
  %37 = load i64, i64* @VO_VGA, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %3, align 8
  %41 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  br label %42

42:                                               ; preds = %39, %35, %23
  %43 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %44 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @FB_VMODE_DOUBLE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %42
  %50 = load i64, i64* @video_output, align 8
  %51 = load i64, i64* @VO_VGA, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %3, align 8
  %55 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %54, i32 0, i32 1
  store i32 1, i32* %55, align 4
  br label %56

56:                                               ; preds = %53, %49, %42
  %57 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %58 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %61 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %59, %62
  %64 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %65 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %63, %66
  %68 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %69 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %67, %70
  %72 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %3, align 8
  %73 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %75 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %78 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %76, %79
  %81 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %82 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %80, %83
  %85 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %86 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %85, i32 0, i32 8
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %84, %87
  %89 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %3, align 8
  %90 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  %91 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %92 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %91, i32 0, i32 9
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @FB_SYNC_BROADCAST, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %126

97:                                               ; preds = %56
  %98 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %3, align 8
  %99 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %6, align 4
  %101 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %3, align 8
  %102 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %97
  %106 = load i32, i32* %6, align 4
  %107 = udiv i32 %106, 2
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %105, %97
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @PAL_VTOTAL, align 4
  %111 = load i32, i32* @NTSC_VTOTAL, align 4
  %112 = add nsw i32 %110, %111
  %113 = sdiv i32 %112, 2
  %114 = icmp ugt i32 %109, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %108
  %116 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %3, align 8
  %117 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %116, i32 0, i32 4
  store i32 116, i32* %117, align 8
  %118 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %3, align 8
  %119 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %118, i32 0, i32 5
  store i32 44, i32* %119, align 4
  br label %125

120:                                              ; preds = %108
  %121 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %3, align 8
  %122 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %121, i32 0, i32 4
  store i32 126, i32* %122, align 8
  %123 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %3, align 8
  %124 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %123, i32 0, i32 5
  store i32 18, i32* %124, align 4
  br label %125

125:                                              ; preds = %120, %115
  br label %131

126:                                              ; preds = %56
  %127 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %3, align 8
  %128 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %127, i32 0, i32 4
  store i32 126, i32* %128, align 8
  %129 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %3, align 8
  %130 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %129, i32 0, i32 5
  store i32 40, i32* %130, align 4
  br label %131

131:                                              ; preds = %126, %125
  %132 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %3, align 8
  %133 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %136 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %134, %137
  %139 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %3, align 8
  %140 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %139, i32 0, i32 6
  store i32 %138, i32* %140, align 8
  %141 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %3, align 8
  %142 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %145 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %143, %146
  %148 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %3, align 8
  %149 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %148, i32 0, i32 7
  store i32 %147, i32* %149, align 4
  %150 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %3, align 8
  %151 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %150, i32 0, i32 6
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %154 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = add nsw i32 %152, %155
  %157 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %158 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %156, %159
  %161 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %3, align 8
  %162 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %161, i32 0, i32 8
  store i32 %160, i32* %162, align 8
  %163 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %3, align 8
  %164 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %163, i32 0, i32 7
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %167 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 8
  %169 = add nsw i32 %165, %168
  %170 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %171 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %170, i32 0, i32 7
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %169, %172
  %174 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %3, align 8
  %175 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %174, i32 0, i32 9
  store i32 %173, i32* %175, align 4
  %176 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %3, align 8
  %177 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %185, label %180

180:                                              ; preds = %131
  %181 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %3, align 8
  %182 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %181, i32 0, i32 9
  %183 = load i32, i32* %182, align 4
  %184 = sdiv i32 %183, 2
  store i32 %184, i32* %182, align 4
  br label %185

185:                                              ; preds = %180, %131
  %186 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %187 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = icmp slt i32 %189, 640
  br i1 %190, label %191, label %194

191:                                              ; preds = %185
  %192 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %3, align 8
  %193 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %192, i32 0, i32 10
  store i32 1, i32* %193, align 8
  br label %194

194:                                              ; preds = %191, %185
  %195 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %196 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %195, i32 0, i32 12
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %199 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %198, i32 0, i32 11
  %200 = load i32, i32* %199, align 8
  %201 = call i64 @get_line_length(i32 %197, i32 %200)
  store i64 %201, i64* %5, align 8
  %202 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %203 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* %5, align 8
  %207 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %208 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %207, i32 0, i32 10
  %209 = load i64, i64* %208, align 8
  %210 = mul i64 %206, %209
  %211 = load i64, i64* %5, align 8
  %212 = mul i64 %210, %211
  %213 = add i64 %205, %212
  %214 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %3, align 8
  %215 = getelementptr inbounds %struct.pvr2fb_par, %struct.pvr2fb_par* %214, i32 0, i32 11
  store i64 %213, i64* %215, align 8
  %216 = load i64, i64* %5, align 8
  %217 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %218 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 0
  store i64 %216, i64* %219, align 8
  ret i32 0
}

declare dso_local i64 @pvr2_init_cable(...) #1

declare dso_local i64 @get_line_length(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
