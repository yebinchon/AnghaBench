; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_tileblit.c_tile_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_tileblit.c_tile_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i64 }
%struct.fb_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.fb_info*, %struct.fb_tilerect*)* }
%struct.fb_tilerect = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@ROP_COPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, %struct.fb_info*, i32, i32, i32, i32)* @tile_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tile_clear(%struct.vc_data* %0, %struct.fb_info* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.vc_data*, align 8
  %8 = alloca %struct.fb_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_tilerect, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %7, align 8
  store %struct.fb_info* %1, %struct.fb_info** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %17 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 13, i32 12
  store i32 %21, i32* %14, align 4
  %22 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %23 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 9, i32 8
  store i32 %27, i32* %15, align 4
  %28 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %29 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %32 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 511, i32 255
  %37 = and i32 %30, %36
  %38 = getelementptr inbounds %struct.fb_tilerect, %struct.fb_tilerect* %13, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %15, align 4
  %40 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %41 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %42 = call i32 @attr_fgcol_ec(i32 %39, %struct.vc_data* %40, %struct.fb_info* %41)
  %43 = getelementptr inbounds %struct.fb_tilerect, %struct.fb_tilerect* %13, i32 0, i32 7
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* %14, align 4
  %45 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %46 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %47 = call i32 @attr_bgcol_ec(i32 %44, %struct.vc_data* %45, %struct.fb_info* %46)
  %48 = getelementptr inbounds %struct.fb_tilerect, %struct.fb_tilerect* %13, i32 0, i32 6
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %10, align 4
  %50 = getelementptr inbounds %struct.fb_tilerect, %struct.fb_tilerect* %13, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* %9, align 4
  %52 = getelementptr inbounds %struct.fb_tilerect, %struct.fb_tilerect* %13, i32 0, i32 2
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %12, align 4
  %54 = getelementptr inbounds %struct.fb_tilerect, %struct.fb_tilerect* %13, i32 0, i32 3
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* %11, align 4
  %56 = getelementptr inbounds %struct.fb_tilerect, %struct.fb_tilerect* %13, i32 0, i32 4
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* @ROP_COPY, align 4
  %58 = getelementptr inbounds %struct.fb_tilerect, %struct.fb_tilerect* %13, i32 0, i32 5
  store i32 %57, i32* %58, align 4
  %59 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %60 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32 (%struct.fb_info*, %struct.fb_tilerect*)*, i32 (%struct.fb_info*, %struct.fb_tilerect*)** %62, align 8
  %64 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %65 = call i32 %63(%struct.fb_info* %64, %struct.fb_tilerect* %13)
  ret void
}

declare dso_local i32 @attr_fgcol_ec(i32, %struct.vc_data*, %struct.fb_info*) #1

declare dso_local i32 @attr_bgcol_ec(i32, %struct.vc_data*, %struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
