; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_tileblit.c_tile_putcs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_tileblit.c_tile_putcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i64 }
%struct.fb_info = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.fb_info*, %struct.fb_tileblit*)* }
%struct.fb_tileblit = type { i32, i32, i32, i32, i32, i32, i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, %struct.fb_info*, i16*, i32, i32, i32, i32, i32)* @tile_putcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tile_putcs(%struct.vc_data* %0, %struct.fb_info* %1, i16* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.vc_data*, align 8
  %10 = alloca %struct.fb_info*, align 8
  %11 = alloca i16*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.fb_tileblit, align 8
  %18 = alloca i16, align 2
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %9, align 8
  store %struct.fb_info* %1, %struct.fb_info** %10, align 8
  store i16* %2, i16** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %21 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %22 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 511, i32 255
  %27 = trunc i32 %26 to i16
  store i16 %27, i16* %18, align 2
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 8, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %19, align 4
  %32 = load i32, i32* %14, align 4
  %33 = getelementptr inbounds %struct.fb_tileblit, %struct.fb_tileblit* %17, i32 0, i32 0
  store i32 %32, i32* %33, align 8
  %34 = load i32, i32* %13, align 4
  %35 = getelementptr inbounds %struct.fb_tileblit, %struct.fb_tileblit* %17, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %12, align 4
  %37 = getelementptr inbounds %struct.fb_tileblit, %struct.fb_tileblit* %17, i32 0, i32 2
  store i32 %36, i32* %37, align 8
  %38 = getelementptr inbounds %struct.fb_tileblit, %struct.fb_tileblit* %17, i32 0, i32 3
  store i32 1, i32* %38, align 4
  %39 = load i32, i32* %15, align 4
  %40 = getelementptr inbounds %struct.fb_tileblit, %struct.fb_tileblit* %17, i32 0, i32 4
  store i32 %39, i32* %40, align 8
  %41 = load i32, i32* %16, align 4
  %42 = getelementptr inbounds %struct.fb_tileblit, %struct.fb_tileblit* %17, i32 0, i32 5
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %12, align 4
  %44 = getelementptr inbounds %struct.fb_tileblit, %struct.fb_tileblit* %17, i32 0, i32 6
  store i32 %43, i32* %44, align 8
  %45 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %46 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %47 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %46, i32 0, i32 1
  %48 = load i32, i32* %19, align 4
  %49 = call i64 @fb_get_buffer_offset(%struct.fb_info* %45, i32* %47, i32 %48)
  %50 = inttoptr i64 %49 to i64*
  %51 = getelementptr inbounds %struct.fb_tileblit, %struct.fb_tileblit* %17, i32 0, i32 7
  store i64* %50, i64** %51, align 8
  store i32 0, i32* %20, align 4
  br label %52

52:                                               ; preds = %71, %8
  %53 = load i32, i32* %20, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %74

56:                                               ; preds = %52
  %57 = load i16*, i16** %11, align 8
  %58 = getelementptr inbounds i16, i16* %57, i32 1
  store i16* %58, i16** %11, align 8
  %59 = ptrtoint i16* %57 to i32
  %60 = call zeroext i16 @scr_readw(i32 %59)
  %61 = zext i16 %60 to i32
  %62 = load i16, i16* %18, align 2
  %63 = zext i16 %62 to i32
  %64 = and i32 %61, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.fb_tileblit, %struct.fb_tileblit* %17, i32 0, i32 7
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %20, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  store i64 %65, i64* %70, align 8
  br label %71

71:                                               ; preds = %56
  %72 = load i32, i32* %20, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %20, align 4
  br label %52

74:                                               ; preds = %52
  %75 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %76 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32 (%struct.fb_info*, %struct.fb_tileblit*)*, i32 (%struct.fb_info*, %struct.fb_tileblit*)** %78, align 8
  %80 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %81 = call i32 %79(%struct.fb_info* %80, %struct.fb_tileblit* %17)
  ret void
}

declare dso_local i64 @fb_get_buffer_offset(%struct.fb_info*, i32*, i32) #1

declare dso_local zeroext i16 @scr_readw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
