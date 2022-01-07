; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_mx3fb.c_mx3fb_must_set_par.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_mx3fb.c_mx3fb_must_set_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.fb_var_screeninfo, %struct.mx3fb_info* }
%struct.fb_var_screeninfo = type { i32, i32, i32 }
%struct.mx3fb_info = type { %struct.fb_var_screeninfo }

@FB_ACTIVATE_FORCE = common dso_local global i32 0, align 4
@FB_ACTIVATE_MASK = common dso_local global i32 0, align 4
@FB_ACTIVATE_NOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @mx3fb_must_set_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mx3fb_must_set_par(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.mx3fb_info*, align 8
  %5 = alloca %struct.fb_var_screeninfo, align 4
  %6 = alloca %struct.fb_var_screeninfo, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 1
  %9 = load %struct.mx3fb_info*, %struct.mx3fb_info** %8, align 8
  store %struct.mx3fb_info* %9, %struct.mx3fb_info** %4, align 8
  %10 = load %struct.mx3fb_info*, %struct.mx3fb_info** %4, align 8
  %11 = getelementptr inbounds %struct.mx3fb_info, %struct.mx3fb_info* %10, i32 0, i32 0
  %12 = bitcast %struct.fb_var_screeninfo* %5 to i8*
  %13 = bitcast %struct.fb_var_screeninfo* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 12, i1 false)
  %14 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %15 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %14, i32 0, i32 0
  %16 = bitcast %struct.fb_var_screeninfo* %6 to i8*
  %17 = bitcast %struct.fb_var_screeninfo* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 8 %17, i64 12, i1 false)
  %18 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %19 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @FB_ACTIVATE_FORCE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %1
  %26 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %27 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @FB_ACTIVATE_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @FB_ACTIVATE_NOW, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %47

35:                                               ; preds = %25, %1
  %36 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %6, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %5, i32 0, i32 2
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %6, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %5, i32 0, i32 1
  store i32 %40, i32* %41, align 4
  %42 = call i32 @memcmp(%struct.fb_var_screeninfo* %5, %struct.fb_var_screeninfo* %6, i32 12)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %35, %34
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memcmp(%struct.fb_var_screeninfo*, %struct.fb_var_screeninfo*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
