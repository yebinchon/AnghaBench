; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/i810/extr_i810_main.c_i810_fix_offsets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/i810/extr_i810_main.c_i810_fix_offsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i810fb_par = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@vram = common dso_local global i32 0, align 4
@v_offset_default = common dso_local global i32 0, align 4
@RINGBUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i810fb_par*)* @i810_fix_offsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i810_fix_offsets(%struct.i810fb_par* %0) #0 {
  %2 = alloca %struct.i810fb_par*, align 8
  store %struct.i810fb_par* %0, %struct.i810fb_par** %2, align 8
  %3 = load i32, i32* @vram, align 4
  %4 = add nsw i32 %3, 1
  %5 = load %struct.i810fb_par*, %struct.i810fb_par** %2, align 8
  %6 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = ashr i32 %8, 20
  %10 = icmp sgt i32 %4, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.i810fb_par*, %struct.i810fb_par** %2, align 8
  %13 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = ashr i32 %15, 20
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* @vram, align 4
  br label %18

18:                                               ; preds = %11, %1
  %19 = load i32, i32* @v_offset_default, align 4
  %20 = load %struct.i810fb_par*, %struct.i810fb_par** %2, align 8
  %21 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %23, 20
  %25 = icmp sgt i32 %19, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load %struct.i810fb_par*, %struct.i810fb_par** %2, align 8
  %28 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %30, 20
  store i32 %31, i32* @v_offset_default, align 4
  br label %32

32:                                               ; preds = %26, %18
  %33 = load i32, i32* @vram, align 4
  %34 = load i32, i32* @v_offset_default, align 4
  %35 = add nsw i32 %33, %34
  %36 = add nsw i32 %35, 1
  %37 = load %struct.i810fb_par*, %struct.i810fb_par** %2, align 8
  %38 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %40, 20
  %42 = icmp sgt i32 %36, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %32
  %44 = load %struct.i810fb_par*, %struct.i810fb_par** %2, align 8
  %45 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = ashr i32 %47, 20
  %49 = load i32, i32* @vram, align 4
  %50 = add nsw i32 %49, 1
  %51 = sub nsw i32 %48, %50
  store i32 %51, i32* @v_offset_default, align 4
  br label %52

52:                                               ; preds = %43, %32
  %53 = load i32, i32* @vram, align 4
  %54 = shl i32 %53, 20
  %55 = load %struct.i810fb_par*, %struct.i810fb_par** %2, align 8
  %56 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* @v_offset_default, align 4
  %59 = shl i32 %58, 20
  %60 = load %struct.i810fb_par*, %struct.i810fb_par** %2, align 8
  %61 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 4
  %63 = load %struct.i810fb_par*, %struct.i810fb_par** %2, align 8
  %64 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %66, 12
  store i32 %67, i32* %65, align 4
  %68 = load %struct.i810fb_par*, %struct.i810fb_par** %2, align 8
  %69 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.i810fb_par*, %struct.i810fb_par** %2, align 8
  %73 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = ashr i32 %75, 12
  %77 = add nsw i32 %71, %76
  %78 = load %struct.i810fb_par*, %struct.i810fb_par** %2, align 8
  %79 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 4
  %81 = load i32, i32* @RINGBUFFER_SIZE, align 4
  %82 = load %struct.i810fb_par*, %struct.i810fb_par** %2, align 8
  %83 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  store i32 %81, i32* %84, align 4
  %85 = load %struct.i810fb_par*, %struct.i810fb_par** %2, align 8
  %86 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @RINGBUFFER_SIZE, align 4
  %90 = ashr i32 %89, 12
  %91 = add nsw i32 %88, %90
  %92 = load %struct.i810fb_par*, %struct.i810fb_par** %2, align 8
  %93 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 4
  %95 = load %struct.i810fb_par*, %struct.i810fb_par** %2, align 8
  %96 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  store i32 4096, i32* %97, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
