; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_udlfb.c_dlfb_var_color_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_udlfb.c_dlfb_var_color_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_var_screeninfo = type { i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield }

@__const.dlfb_var_color_format.red = private unnamed_addr constant %struct.fb_bitfield { i32 11, i32 5, i32 0 }, align 4
@__const.dlfb_var_color_format.green = private unnamed_addr constant %struct.fb_bitfield { i32 5, i32 6, i32 0 }, align 4
@__const.dlfb_var_color_format.blue = private unnamed_addr constant %struct.fb_bitfield { i32 0, i32 5, i32 0 }, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_var_screeninfo*)* @dlfb_var_color_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dlfb_var_color_format(%struct.fb_var_screeninfo* %0) #0 {
  %2 = alloca %struct.fb_var_screeninfo*, align 8
  %3 = alloca %struct.fb_bitfield, align 4
  %4 = alloca %struct.fb_bitfield, align 4
  %5 = alloca %struct.fb_bitfield, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %2, align 8
  %6 = bitcast %struct.fb_bitfield* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.fb_bitfield* @__const.dlfb_var_color_format.red to i8*), i64 12, i1 false)
  %7 = bitcast %struct.fb_bitfield* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.fb_bitfield* @__const.dlfb_var_color_format.green to i8*), i64 12, i1 false)
  %8 = bitcast %struct.fb_bitfield* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.fb_bitfield* @__const.dlfb_var_color_format.blue to i8*), i64 12, i1 false)
  %9 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %10 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %9, i32 0, i32 0
  store i32 16, i32* %10, align 4
  %11 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %12 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %11, i32 0, i32 3
  %13 = bitcast %struct.fb_bitfield* %12 to i8*
  %14 = bitcast %struct.fb_bitfield* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 12, i1 false)
  %15 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %16 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %15, i32 0, i32 2
  %17 = bitcast %struct.fb_bitfield* %16 to i8*
  %18 = bitcast %struct.fb_bitfield* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 12, i1 false)
  %19 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %20 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %19, i32 0, i32 1
  %21 = bitcast %struct.fb_bitfield* %20 to i8*
  %22 = bitcast %struct.fb_bitfield* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 12, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
