; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_chipsfb.c_init_chips.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_chipsfb.c_init_chips.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.fb_info = type { i32, i32, i32*, i32, %struct.TYPE_2__, i32 }

@chipsfb_fix = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@chipsfb_var = common dso_local global i32 0, align 4
@chipsfb_ops = common dso_local global i32 0, align 4
@FBINFO_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, i64)* @init_chips to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_chips(%struct.fb_info* %0, i64 %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca i64, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %6 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @memset(i32 %7, i32 0, i32 1048576)
  %9 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 4
  %11 = bitcast %struct.TYPE_2__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.TYPE_2__* @chipsfb_fix to i8*), i64 8, i1 false)
  %12 = load i64, i64* %4, align 8
  %13 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i64 %12, i64* %15, align 8
  %16 = load i32, i32* @chipsfb_var, align 4
  %17 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %18 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 8
  %19 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %20 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %19, i32 0, i32 2
  store i32* @chipsfb_ops, i32** %20, align 8
  %21 = load i32, i32* @FBINFO_DEFAULT, align 4
  %22 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %23 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %25 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %24, i32 0, i32 0
  %26 = call i32 @fb_alloc_cmap(i32* %25, i32 256, i32 0)
  %27 = call i32 (...) @chips_hw_init()
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fb_alloc_cmap(i32*, i32, i32) #1

declare dso_local i32 @chips_hw_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
