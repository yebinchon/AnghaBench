; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_imsttfb.c_imsttfb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_imsttfb.c_imsttfb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_4__, %struct.imstt_par* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.imstt_par = type { i32*, i32* }

@PADDRW = common dso_local global i64 0, align 8
@PDATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @imsttfb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imsttfb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca %struct.imstt_par*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %17 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %18 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %17, i32 0, i32 1
  %19 = load %struct.imstt_par*, %struct.imstt_par** %18, align 8
  store %struct.imstt_par* %19, %struct.imstt_par** %14, align 8
  %20 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp sgt i32 %24, 255
  br i1 %25, label %26, label %27

26:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %119

27:                                               ; preds = %6
  %28 = load i32, i32* %9, align 4
  %29 = ashr i32 %28, 8
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = ashr i32 %30, 8
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = ashr i32 %32, 8
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.imstt_par*, %struct.imstt_par** %14, align 8
  %36 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @PADDRW, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32 %34, i32* %39, align 4
  %40 = call i32 (...) @eieio()
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.imstt_par*, %struct.imstt_par** %14, align 8
  %43 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @PDATA, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32 %41, i32* %46, align 4
  %47 = call i32 (...) @eieio()
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.imstt_par*, %struct.imstt_par** %14, align 8
  %50 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @PDATA, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32 %48, i32* %53, align 4
  %54 = call i32 (...) @eieio()
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.imstt_par*, %struct.imstt_par** %14, align 8
  %57 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @PDATA, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32 %55, i32* %60, align 4
  %61 = call i32 (...) @eieio()
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 16
  br i1 %63, label %64, label %118

64:                                               ; preds = %27
  %65 = load i32, i32* %15, align 4
  switch i32 %65, label %117 [
    i32 16, label %66
    i32 24, label %88
    i32 32, label %102
  ]

66:                                               ; preds = %64
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %69 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 5
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 10, i32 11
  %76 = shl i32 %67, %75
  %77 = load i32, i32* %8, align 4
  %78 = shl i32 %77, 5
  %79 = or i32 %76, %78
  %80 = load i32, i32* %8, align 4
  %81 = or i32 %79, %80
  %82 = load %struct.imstt_par*, %struct.imstt_par** %14, align 8
  %83 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %81, i32* %87, align 4
  br label %117

88:                                               ; preds = %64
  %89 = load i32, i32* %8, align 4
  %90 = shl i32 %89, 16
  %91 = load i32, i32* %8, align 4
  %92 = shl i32 %91, 8
  %93 = or i32 %90, %92
  %94 = load i32, i32* %8, align 4
  %95 = or i32 %93, %94
  %96 = load %struct.imstt_par*, %struct.imstt_par** %14, align 8
  %97 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 %95, i32* %101, align 4
  br label %117

102:                                              ; preds = %64
  %103 = load i32, i32* %8, align 4
  %104 = shl i32 %103, 8
  %105 = load i32, i32* %8, align 4
  %106 = or i32 %104, %105
  store i32 %106, i32* %16, align 4
  %107 = load i32, i32* %16, align 4
  %108 = shl i32 %107, 16
  %109 = load i32, i32* %16, align 4
  %110 = or i32 %108, %109
  %111 = load %struct.imstt_par*, %struct.imstt_par** %14, align 8
  %112 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32 %110, i32* %116, align 4
  br label %117

117:                                              ; preds = %64, %102, %88, %66
  br label %118

118:                                              ; preds = %117, %27
  store i32 0, i32* %7, align 4
  br label %119

119:                                              ; preds = %118, %26
  %120 = load i32, i32* %7, align 4
  ret i32 %120
}

declare dso_local i32 @eieio(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
