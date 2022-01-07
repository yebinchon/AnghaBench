; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/i810/extr_i810_dvt.c_i810fb_encode_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/i810/extr_i810_dvt.c_i810fb_encode_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.fb_var_screeninfo = type { i64, i64, i64 }
%struct.i810fb_par = type { i64, %struct.TYPE_2__ }

@std_modes = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i810fb_encode_registers(%struct.fb_var_screeninfo* %0, %struct.i810fb_par* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.fb_var_screeninfo*, align 8
  %6 = alloca %struct.i810fb_par*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %5, align 8
  store %struct.i810fb_par* %1, %struct.i810fb_par** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* %8, align 8
  %12 = load %struct.i810fb_par*, %struct.i810fb_par** %6, align 8
  %13 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @i810fb_find_best_mode(i64 %10, i64 %11, i32 %15)
  store i64 %16, i64* %9, align 8
  %17 = load %struct.i810fb_par*, %struct.i810fb_par** %6, align 8
  %18 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @std_modes, align 8
  %20 = load i64, i64* %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = bitcast %struct.TYPE_2__* %18 to i8*
  %23 = bitcast %struct.TYPE_2__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 4 %23, i64 4, i1 false)
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %26 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %24, %27
  %29 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %30 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add i64 %28, %31
  %33 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %34 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %32, %35
  %37 = sub i64 %36, 32
  %38 = load i64, i64* %7, align 8
  %39 = sub i64 %38, 32
  %40 = shl i64 %39, 16
  %41 = or i64 %37, %40
  %42 = load %struct.i810fb_par*, %struct.i810fb_par** %6, align 8
  %43 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  ret void
}

declare dso_local i64 @i810fb_find_best_mode(i64, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
