; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/intelfb/extr_intelfbdrv.c_intelfb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/intelfb/extr_intelfbdrv.c_intelfb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.intelfb_info = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @intelfb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intelfb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca %struct.intelfb_info*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %15 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %16 = call %struct.intelfb_info* @GET_DINFO(%struct.fb_info* %15)
  store %struct.intelfb_info* %16, %struct.intelfb_info** %14, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp ugt i32 %17, 255
  br i1 %18, label %19, label %20

19:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %100

20:                                               ; preds = %6
  %21 = load %struct.intelfb_info*, %struct.intelfb_info** %14, align 8
  %22 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 8
  br i1 %24, label %25, label %39

25:                                               ; preds = %20
  %26 = load i32, i32* %9, align 4
  %27 = lshr i32 %26, 8
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = lshr i32 %28, 8
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = lshr i32 %30, 8
  store i32 %31, i32* %11, align 4
  %32 = load %struct.intelfb_info*, %struct.intelfb_info** %14, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @intelfbhw_setcolreg(%struct.intelfb_info* %32, i32 %33, i32 %34, i32 %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %25, %20
  %40 = load i32, i32* %8, align 4
  %41 = icmp ult i32 %40, 16
  br i1 %41, label %42, label %99

42:                                               ; preds = %39
  %43 = load %struct.intelfb_info*, %struct.intelfb_info** %14, align 8
  %44 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  switch i32 %45, label %98 [
    i32 15, label %46
    i32 16, label %64
    i32 24, label %81
  ]

46:                                               ; preds = %42
  %47 = load i32, i32* %9, align 4
  %48 = and i32 %47, 63488
  %49 = lshr i32 %48, 1
  %50 = load i32, i32* %10, align 4
  %51 = and i32 %50, 63488
  %52 = lshr i32 %51, 6
  %53 = or i32 %49, %52
  %54 = load i32, i32* %11, align 4
  %55 = and i32 %54, 63488
  %56 = lshr i32 %55, 11
  %57 = or i32 %53, %56
  %58 = load %struct.intelfb_info*, %struct.intelfb_info** %14, align 8
  %59 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %57, i32* %63, align 4
  br label %98

64:                                               ; preds = %42
  %65 = load i32, i32* %9, align 4
  %66 = and i32 %65, 63488
  %67 = load i32, i32* %10, align 4
  %68 = and i32 %67, 64512
  %69 = lshr i32 %68, 5
  %70 = or i32 %66, %69
  %71 = load i32, i32* %11, align 4
  %72 = and i32 %71, 63488
  %73 = lshr i32 %72, 11
  %74 = or i32 %70, %73
  %75 = load %struct.intelfb_info*, %struct.intelfb_info** %14, align 8
  %76 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %74, i32* %80, align 4
  br label %98

81:                                               ; preds = %42
  %82 = load i32, i32* %9, align 4
  %83 = and i32 %82, 65280
  %84 = shl i32 %83, 8
  %85 = load i32, i32* %10, align 4
  %86 = and i32 %85, 65280
  %87 = or i32 %84, %86
  %88 = load i32, i32* %11, align 4
  %89 = and i32 %88, 65280
  %90 = lshr i32 %89, 8
  %91 = or i32 %87, %90
  %92 = load %struct.intelfb_info*, %struct.intelfb_info** %14, align 8
  %93 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 %91, i32* %97, align 4
  br label %98

98:                                               ; preds = %42, %81, %64, %46
  br label %99

99:                                               ; preds = %98, %39
  store i32 0, i32* %7, align 4
  br label %100

100:                                              ; preds = %99, %19
  %101 = load i32, i32* %7, align 4
  ret i32 %101
}

declare dso_local %struct.intelfb_info* @GET_DINFO(%struct.fb_info*) #1

declare dso_local i32 @intelfbhw_setcolreg(%struct.intelfb_info*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
