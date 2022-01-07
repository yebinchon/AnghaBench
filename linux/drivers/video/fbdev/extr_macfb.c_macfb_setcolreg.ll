; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_macfb.c_macfb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_macfb.c_macfb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_10__, i64, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @macfb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macfb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp uge i32 %14, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %146

21:                                               ; preds = %6
  %22 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %23 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sle i32 %25, 8
  br i1 %26, label %27, label %47

27:                                               ; preds = %21
  %28 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %29 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %46 [
    i32 1, label %32
    i32 2, label %33
    i32 4, label %33
    i32 8, label %33
  ]

32:                                               ; preds = %27
  br label %46

33:                                               ; preds = %27, %27, %27
  br i1 true, label %34, label %44

34:                                               ; preds = %33
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = lshr i32 %36, 8
  %38 = load i32, i32* %10, align 4
  %39 = lshr i32 %38, 8
  %40 = load i32, i32* %11, align 4
  %41 = lshr i32 %40, 8
  %42 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %43 = call i32 @macfb_setpalette(i32 %35, i32 %37, i32 %39, i32 %41, %struct.fb_info* %42)
  br label %45

44:                                               ; preds = %33
  store i32 1, i32* %7, align 4
  br label %146

45:                                               ; preds = %34
  br label %46

46:                                               ; preds = %27, %45, %32
  br label %145

47:                                               ; preds = %21
  %48 = load i32, i32* %8, align 4
  %49 = icmp ult i32 %48, 16
  br i1 %49, label %50, label %144

50:                                               ; preds = %47
  %51 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %52 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %143 [
    i32 16, label %55
    i32 24, label %106
    i32 32, label %106
  ]

55:                                               ; preds = %50
  %56 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %57 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 10
  br i1 %61, label %62, label %86

62:                                               ; preds = %55
  %63 = load i32, i32* %9, align 4
  %64 = and i32 %63, 63488
  %65 = lshr i32 %64, 1
  %66 = load i32, i32* %10, align 4
  %67 = and i32 %66, 63488
  %68 = lshr i32 %67, 6
  %69 = or i32 %65, %68
  %70 = load i32, i32* %11, align 4
  %71 = and i32 %70, 63488
  %72 = lshr i32 %71, 11
  %73 = or i32 %69, %72
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i32
  %77 = shl i32 %76, 15
  %78 = or i32 %73, %77
  %79 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %80 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to i32*
  %83 = load i32, i32* %8, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 %78, i32* %85, align 4
  br label %105

86:                                               ; preds = %55
  %87 = load i32, i32* %9, align 4
  %88 = and i32 %87, 63488
  %89 = lshr i32 %88, 0
  %90 = load i32, i32* %10, align 4
  %91 = and i32 %90, 64512
  %92 = lshr i32 %91, 5
  %93 = or i32 %89, %92
  %94 = load i32, i32* %11, align 4
  %95 = and i32 %94, 63488
  %96 = lshr i32 %95, 11
  %97 = or i32 %93, %96
  %98 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %99 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to i32*
  %102 = load i32, i32* %8, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 %97, i32* %104, align 4
  br label %105

105:                                              ; preds = %86, %62
  br label %143

106:                                              ; preds = %50, %50
  %107 = load i32, i32* %9, align 4
  %108 = lshr i32 %107, 8
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %10, align 4
  %110 = lshr i32 %109, 8
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %11, align 4
  %112 = lshr i32 %111, 8
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %9, align 4
  %114 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %115 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = shl i32 %113, %118
  %120 = load i32, i32* %10, align 4
  %121 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %122 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = shl i32 %120, %125
  %127 = or i32 %119, %126
  %128 = load i32, i32* %11, align 4
  %129 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %130 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = shl i32 %128, %133
  %135 = or i32 %127, %134
  %136 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %137 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = inttoptr i64 %138 to i32*
  %140 = load i32, i32* %8, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  store i32 %135, i32* %142, align 4
  br label %143

143:                                              ; preds = %50, %106, %105
  br label %144

144:                                              ; preds = %143, %47
  br label %145

145:                                              ; preds = %144, %46
  store i32 0, i32* %7, align 4
  br label %146

146:                                              ; preds = %145, %44, %20
  %147 = load i32, i32* %7, align 4
  ret i32 %147
}

declare dso_local i32 @macfb_setpalette(i32, i32, i32, i32, %struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
