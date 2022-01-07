; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/matrox/extr_matroxfb_misc.c_parse_pins3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/matrox/extr_matroxfb_misc.c_parse_pins3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrox_fb_info = type { %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.matrox_bios = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.matrox_fb_info*, %struct.matrox_bios*)* @parse_pins3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_pins3(%struct.matrox_fb_info* %0, %struct.matrox_bios* %1) #0 {
  %3 = alloca %struct.matrox_fb_info*, align 8
  %4 = alloca %struct.matrox_bios*, align 8
  store %struct.matrox_fb_info* %0, %struct.matrox_fb_info** %3, align 8
  store %struct.matrox_bios* %1, %struct.matrox_bios** %4, align 8
  %5 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %6 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 36
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 255
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %20

12:                                               ; preds = %2
  %13 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %14 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 36
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 100
  %19 = mul nsw i32 %18, 1000
  br label %20

20:                                               ; preds = %12, %11
  %21 = phi i32 [ 230000, %11 ], [ %19, %12 ]
  %22 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %23 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  store i32 %21, i32* %25, align 4
  %26 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %27 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i32 %21, i32* %29, align 4
  %30 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %31 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 48
  %34 = call i32 @get_unaligned_le32(i32* %33)
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %37

36:                                               ; preds = %20
  br label %43

37:                                               ; preds = %20
  %38 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %39 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 48
  %42 = call i32 @get_unaligned_le32(i32* %41)
  br label %43

43:                                               ; preds = %37, %36
  %44 = phi i32 [ 19204641, %36 ], [ %42, %37 ]
  %45 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %46 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  store i32 %44, i32* %48, align 4
  %49 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %50 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 57
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 21
  %55 = and i32 %54, 503316480
  %56 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %57 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 57
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 22
  %62 = and i32 %61, 12582912
  %63 = or i32 %55, %62
  %64 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %65 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 56
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %68, 1
  %70 = and i32 %69, 480
  %71 = or i32 %63, %70
  %72 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %73 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 56
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 15
  %78 = or i32 %71, %77
  %79 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %80 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  store i32 %78, i32* %82, align 4
  %83 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %84 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 54
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 7
  %89 = shl i32 %88, 10
  %90 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %91 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 2
  store i32 %89, i32* %93, align 4
  %94 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %95 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 58
  %98 = load i32, i32* %97, align 4
  %99 = shl i32 %98, 12
  %100 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %101 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 3
  store i32 %99, i32* %103, align 4
  %104 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %105 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 52
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, 32
  %110 = icmp ne i32 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i32 14318, i32 27000
  %113 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %114 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  store i32 %112, i32* %116, align 4
  ret i32 0
}

declare dso_local i32 @get_unaligned_le32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
