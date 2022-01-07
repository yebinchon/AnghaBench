; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pm2fb.c_pm2fb_copyarea.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pm2fb.c_pm2fb_copyarea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, i32, %struct.TYPE_2__, %struct.pm2fb_par* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.pm2fb_par = type { i32 }
%struct.fb_copyarea = type { i64, i64, i64, i64, i64, i64 }

@FBINFO_STATE_RUNNING = common dso_local global i64 0, align 8
@FBINFO_HWACCEL_DISABLED = common dso_local global i32 0, align 4
@PM2R_CONFIG = common dso_local global i32 0, align 4
@PM2F_CONFIG_FB_WRITE_ENABLE = common dso_local global i32 0, align 4
@PM2F_CONFIG_FB_READ_SOURCE_ENABLE = common dso_local global i32 0, align 4
@PM2R_FB_SOURCE_DELTA = common dso_local global i32 0, align 4
@PM2R_RECTANGLE_ORIGIN = common dso_local global i32 0, align 4
@PM2R_RECTANGLE_SIZE = common dso_local global i32 0, align 4
@PM2R_RENDER = common dso_local global i32 0, align 4
@PM2F_RENDER_RECTANGLE = common dso_local global i32 0, align 4
@PM2F_INCREASE_X = common dso_local global i32 0, align 4
@PM2F_INCREASE_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_copyarea*)* @pm2fb_copyarea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm2fb_copyarea(%struct.fb_info* %0, %struct.fb_copyarea* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_copyarea*, align 8
  %5 = alloca %struct.pm2fb_par*, align 8
  %6 = alloca %struct.fb_copyarea, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_copyarea* %1, %struct.fb_copyarea** %4, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 3
  %11 = load %struct.pm2fb_par*, %struct.pm2fb_par** %10, align 8
  store %struct.pm2fb_par* %11, %struct.pm2fb_par** %5, align 8
  %12 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %13 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @FBINFO_STATE_RUNNING, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %198

18:                                               ; preds = %2
  %19 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %20 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @FBINFO_HWACCEL_DISABLED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %27 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %28 = call i32 @cfb_copyarea(%struct.fb_info* %26, %struct.fb_copyarea* %27)
  br label %198

29:                                               ; preds = %18
  %30 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %31 = call i32 @memcpy(%struct.fb_copyarea* %6, %struct.fb_copyarea* %30, i32 48)
  %32 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %33 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %7, align 8
  %36 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %37 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %8, align 8
  %40 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %67

43:                                               ; preds = %29
  %44 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = icmp sge i64 %49, %50
  br i1 %51, label %67, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = icmp sge i64 %54, %55
  br i1 %56, label %67, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %7, align 8
  %61 = icmp sge i64 %59, %60
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %8, align 8
  %66 = icmp sge i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %62, %57, %52, %47, %43, %29
  br label %198

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %70, %72
  %74 = load i64, i64* %7, align 8
  %75 = icmp sgt i64 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %68
  %77 = load i64, i64* %7, align 8
  %78 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = sub nsw i64 %77, %79
  %81 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 0
  store i64 %80, i64* %81, align 8
  br label %82

82:                                               ; preds = %76, %68
  %83 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %84, %86
  %88 = load i64, i64* %7, align 8
  %89 = icmp sgt i64 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %82
  %91 = load i64, i64* %7, align 8
  %92 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = sub nsw i64 %91, %93
  %95 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 0
  store i64 %94, i64* %95, align 8
  br label %96

96:                                               ; preds = %90, %82
  %97 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %98, %100
  %102 = load i64, i64* %8, align 8
  %103 = icmp sgt i64 %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %96
  %105 = load i64, i64* %8, align 8
  %106 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = sub nsw i64 %105, %107
  %109 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 1
  store i64 %108, i64* %109, align 8
  br label %110

110:                                              ; preds = %104, %96
  %111 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 5
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %112, %114
  %116 = load i64, i64* %8, align 8
  %117 = icmp sgt i64 %115, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %110
  %119 = load i64, i64* %8, align 8
  %120 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 5
  %121 = load i64, i64* %120, align 8
  %122 = sub nsw i64 %119, %121
  %123 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 1
  store i64 %122, i64* %123, align 8
  br label %124

124:                                              ; preds = %118, %110
  %125 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %126 = call i32 @WAIT_FIFO(%struct.pm2fb_par* %125, i32 5)
  %127 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %128 = load i32, i32* @PM2R_CONFIG, align 4
  %129 = load i32, i32* @PM2F_CONFIG_FB_WRITE_ENABLE, align 4
  %130 = load i32, i32* @PM2F_CONFIG_FB_READ_SOURCE_ENABLE, align 4
  %131 = or i32 %129, %130
  %132 = call i32 @pm2_WR(%struct.pm2fb_par* %127, i32 %128, i32 %131)
  %133 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %134 = load i32, i32* @PM2R_FB_SOURCE_DELTA, align 4
  %135 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 5
  %138 = load i64, i64* %137, align 8
  %139 = sub nsw i64 %136, %138
  %140 = and i64 %139, 4095
  %141 = shl i64 %140, 16
  %142 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  %146 = sub nsw i64 %143, %145
  %147 = and i64 %146, 4095
  %148 = or i64 %141, %147
  %149 = trunc i64 %148 to i32
  %150 = call i32 @pm2_WR(%struct.pm2fb_par* %133, i32 %134, i32 %149)
  %151 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %152 = load i32, i32* @PM2R_RECTANGLE_ORIGIN, align 4
  %153 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 5
  %154 = load i64, i64* %153, align 8
  %155 = shl i64 %154, 16
  %156 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 4
  %157 = load i64, i64* %156, align 8
  %158 = or i64 %155, %157
  %159 = trunc i64 %158 to i32
  %160 = call i32 @pm2_WR(%struct.pm2fb_par* %151, i32 %152, i32 %159)
  %161 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %162 = load i32, i32* @PM2R_RECTANGLE_SIZE, align 4
  %163 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = shl i64 %164, 16
  %166 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = or i64 %165, %167
  %169 = trunc i64 %168 to i32
  %170 = call i32 @pm2_WR(%struct.pm2fb_par* %161, i32 %162, i32 %169)
  %171 = call i32 (...) @wmb()
  %172 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %173 = load i32, i32* @PM2R_RENDER, align 4
  %174 = load i32, i32* @PM2F_RENDER_RECTANGLE, align 4
  %175 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 4
  %176 = load i64, i64* %175, align 8
  %177 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = icmp slt i64 %176, %178
  br i1 %179, label %180, label %182

180:                                              ; preds = %124
  %181 = load i32, i32* @PM2F_INCREASE_X, align 4
  br label %183

182:                                              ; preds = %124
  br label %183

183:                                              ; preds = %182, %180
  %184 = phi i32 [ %181, %180 ], [ 0, %182 ]
  %185 = or i32 %174, %184
  %186 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 5
  %187 = load i64, i64* %186, align 8
  %188 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %6, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  %190 = icmp slt i64 %187, %189
  br i1 %190, label %191, label %193

191:                                              ; preds = %183
  %192 = load i32, i32* @PM2F_INCREASE_Y, align 4
  br label %194

193:                                              ; preds = %183
  br label %194

194:                                              ; preds = %193, %191
  %195 = phi i32 [ %192, %191 ], [ 0, %193 ]
  %196 = or i32 %185, %195
  %197 = call i32 @pm2_WR(%struct.pm2fb_par* %172, i32 %173, i32 %196)
  br label %198

198:                                              ; preds = %194, %67, %25, %17
  ret void
}

declare dso_local i32 @cfb_copyarea(%struct.fb_info*, %struct.fb_copyarea*) #1

declare dso_local i32 @memcpy(%struct.fb_copyarea*, %struct.fb_copyarea*, i32) #1

declare dso_local i32 @WAIT_FIFO(%struct.pm2fb_par*, i32) #1

declare dso_local i32 @pm2_WR(%struct.pm2fb_par*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
