; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_acornfb.c_acornfb_init_fbinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_acornfb.c_acornfb_init_fbinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, %struct.TYPE_7__, i32, i32* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i64, %struct.TYPE_9__, %struct.TYPE_9__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i64, i64, i64, i32, i32 }
%struct.TYPE_12__ = type { i32, i64, i64, i32 }

@acornfb_init_fbinfo.first = internal global i32 1, align 4
@acornfb_ops = common dso_local global i32 0, align 4
@fb_info = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@FBINFO_DEFAULT = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_YPAN = common dso_local global i32 0, align 4
@current_par = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str = private unnamed_addr constant [6 x i8] c"Acorn\00", align 1
@FB_TYPE_PACKED_PIXELS = common dso_local global i32 0, align 4
@FB_ACCEL_NONE = common dso_local global i32 0, align 4
@FB_ACTIVATE_NOW = common dso_local global i32 0, align 4
@FB_VMODE_NONINTERLACED = common dso_local global i32 0, align 4
@FB_ACCELF_TEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @acornfb_init_fbinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acornfb_init_fbinfo() #0 {
  %1 = load i32, i32* @acornfb_init_fbinfo.first, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  br label %17

4:                                                ; preds = %0
  store i32 0, i32* @acornfb_init_fbinfo.first, align 4
  store i32* @acornfb_ops, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fb_info, i32 0, i32 4), align 8
  %5 = load i32, i32* @FBINFO_DEFAULT, align 4
  %6 = load i32, i32* @FBINFO_HWACCEL_YPAN, align 4
  %7 = or i32 %5, %6
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fb_info, i32 0, i32 0), align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @current_par, i32 0, i32 3), align 8
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fb_info, i32 0, i32 3), align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fb_info, i32 0, i32 2, i32 7), align 4
  %10 = call i32 @strcpy(i32 %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @FB_TYPE_PACKED_PIXELS, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fb_info, i32 0, i32 2, i32 6), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fb_info, i32 0, i32 2, i32 5), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fb_info, i32 0, i32 2, i32 4), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fb_info, i32 0, i32 2, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fb_info, i32 0, i32 2, i32 1), align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fb_info, i32 0, i32 2, i32 3), align 8
  %12 = load i32, i32* @FB_ACCEL_NONE, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fb_info, i32 0, i32 2, i32 2), align 8
  %13 = call i32 @memset(%struct.TYPE_10__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fb_info, i32 0, i32 1), i32 0, i32 48)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_9__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fb_info, i32 0, i32 1, i32 8) to i8*), i8* align 8 bitcast (%struct.TYPE_9__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fb_info, i32 0, i32 1, i32 6) to i8*), i64 4, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_9__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fb_info, i32 0, i32 1, i32 7) to i8*), i8* align 8 bitcast (%struct.TYPE_9__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fb_info, i32 0, i32 1, i32 6) to i8*), i64 4, i1 false)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fb_info, i32 0, i32 1, i32 5), align 8
  %14 = load i32, i32* @FB_ACTIVATE_NOW, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fb_info, i32 0, i32 1, i32 4), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fb_info, i32 0, i32 1, i32 0), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fb_info, i32 0, i32 1, i32 1), align 4
  %15 = load i32, i32* @FB_VMODE_NONINTERLACED, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fb_info, i32 0, i32 1, i32 3), align 4
  %16 = load i32, i32* @FB_ACCELF_TEXT, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fb_info, i32 0, i32 1, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @current_par, i32 0, i32 2), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @current_par, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @current_par, i32 0, i32 1), align 8
  br label %17

17:                                               ; preds = %4, %3
  ret void
}

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
