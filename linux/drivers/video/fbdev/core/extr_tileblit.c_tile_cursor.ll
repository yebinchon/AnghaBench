; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_tileblit.c_tile_cursor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_tileblit.c_tile_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i32, i32 }
%struct.fb_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.fb_info*, %struct.fb_tilecursor*)* }
%struct.fb_tilecursor = type { i32, i32, i32, i32, i32, i32 }

@CM_ERASE = common dso_local global i32 0, align 4
@FB_TILE_CURSOR_NONE = common dso_local global i32 0, align 4
@FB_TILE_CURSOR_UNDERLINE = common dso_local global i32 0, align 4
@FB_TILE_CURSOR_LOWER_THIRD = common dso_local global i32 0, align 4
@FB_TILE_CURSOR_LOWER_HALF = common dso_local global i32 0, align 4
@FB_TILE_CURSOR_TWO_THIRDS = common dso_local global i32 0, align 4
@FB_TILE_CURSOR_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, %struct.fb_info*, i32, i32, i32, i32)* @tile_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tile_cursor(%struct.vc_data* %0, %struct.fb_info* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.vc_data*, align 8
  %8 = alloca %struct.fb_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_tilecursor, align 4
  %14 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %7, align 8
  store %struct.fb_info* %1, %struct.fb_info** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %16 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 16
  store i32 %18, i32* %14, align 4
  %19 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %20 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.fb_tilecursor, %struct.fb_tilecursor* %13, i32 0, i32 5
  store i32 %21, i32* %22, align 4
  %23 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %24 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.fb_tilecursor, %struct.fb_tilecursor* %13, i32 0, i32 4
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @CM_ERASE, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %33, label %30

30:                                               ; preds = %6
  %31 = load i32, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  br label %33

33:                                               ; preds = %30, %6
  %34 = phi i1 [ true, %6 ], [ %32, %30 ]
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 0, i32 1
  %37 = getelementptr inbounds %struct.fb_tilecursor, %struct.fb_tilecursor* %13, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %11, align 4
  %39 = getelementptr inbounds %struct.fb_tilecursor, %struct.fb_tilecursor* %13, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %12, align 4
  %41 = getelementptr inbounds %struct.fb_tilecursor, %struct.fb_tilecursor* %13, i32 0, i32 2
  store i32 %40, i32* %41, align 4
  %42 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %43 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 15
  switch i32 %45, label %62 [
    i32 130, label %46
    i32 128, label %49
    i32 131, label %52
    i32 132, label %55
    i32 129, label %58
    i32 133, label %61
  ]

46:                                               ; preds = %33
  %47 = load i32, i32* @FB_TILE_CURSOR_NONE, align 4
  %48 = getelementptr inbounds %struct.fb_tilecursor, %struct.fb_tilecursor* %13, i32 0, i32 3
  store i32 %47, i32* %48, align 4
  br label %65

49:                                               ; preds = %33
  %50 = load i32, i32* @FB_TILE_CURSOR_UNDERLINE, align 4
  %51 = getelementptr inbounds %struct.fb_tilecursor, %struct.fb_tilecursor* %13, i32 0, i32 3
  store i32 %50, i32* %51, align 4
  br label %65

52:                                               ; preds = %33
  %53 = load i32, i32* @FB_TILE_CURSOR_LOWER_THIRD, align 4
  %54 = getelementptr inbounds %struct.fb_tilecursor, %struct.fb_tilecursor* %13, i32 0, i32 3
  store i32 %53, i32* %54, align 4
  br label %65

55:                                               ; preds = %33
  %56 = load i32, i32* @FB_TILE_CURSOR_LOWER_HALF, align 4
  %57 = getelementptr inbounds %struct.fb_tilecursor, %struct.fb_tilecursor* %13, i32 0, i32 3
  store i32 %56, i32* %57, align 4
  br label %65

58:                                               ; preds = %33
  %59 = load i32, i32* @FB_TILE_CURSOR_TWO_THIRDS, align 4
  %60 = getelementptr inbounds %struct.fb_tilecursor, %struct.fb_tilecursor* %13, i32 0, i32 3
  store i32 %59, i32* %60, align 4
  br label %65

61:                                               ; preds = %33
  br label %62

62:                                               ; preds = %33, %61
  %63 = load i32, i32* @FB_TILE_CURSOR_BLOCK, align 4
  %64 = getelementptr inbounds %struct.fb_tilecursor, %struct.fb_tilecursor* %13, i32 0, i32 3
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %62, %58, %55, %52, %49, %46
  %66 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %67 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32 (%struct.fb_info*, %struct.fb_tilecursor*)*, i32 (%struct.fb_info*, %struct.fb_tilecursor*)** %69, align 8
  %71 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %72 = call i32 %70(%struct.fb_info* %71, %struct.fb_tilecursor* %13)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
