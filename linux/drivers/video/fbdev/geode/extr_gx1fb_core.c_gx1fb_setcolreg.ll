; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/geode/extr_gx1fb_core.c_gx1fb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/geode/extr_gx1fb_core.c_gx1fb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_5__, i32*, %struct.TYPE_4__, %struct.geodefb_par* }
%struct.TYPE_5__ = type { i32, i32, i32, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.geodefb_par = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.fb_info*, i32, i32, i32, i32)* }

@FB_VISUAL_TRUECOLOR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @gx1fb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gx1fb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca %struct.geodefb_par*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %17 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %18 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %17, i32 0, i32 3
  %19 = load %struct.geodefb_par*, %struct.geodefb_par** %18, align 8
  store %struct.geodefb_par* %19, %struct.geodefb_par** %14, align 8
  %20 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %6
  %26 = load i32, i32* %9, align 4
  %27 = mul i32 %26, 77
  %28 = load i32, i32* %10, align 4
  %29 = mul i32 %28, 151
  %30 = add i32 %27, %29
  %31 = load i32, i32* %11, align 4
  %32 = mul i32 %31, 28
  %33 = add i32 %30, %32
  %34 = lshr i32 %33, 8
  store i32 %34, i32* %11, align 4
  store i32 %34, i32* %10, align 4
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %25, %6
  %36 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %37 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @FB_VISUAL_TRUECOLOR, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %76

42:                                               ; preds = %35
  %43 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %44 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %15, align 8
  %46 = load i32, i32* %8, align 4
  %47 = icmp uge i32 %46, 16
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  br label %95

51:                                               ; preds = %42
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %54 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = call i32 @chan_to_field(i32 %52, i32* %55)
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %59 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = call i32 @chan_to_field(i32 %57, i32* %60)
  %62 = load i32, i32* %16, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %66 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = call i32 @chan_to_field(i32 %64, i32* %67)
  %69 = load i32, i32* %16, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %16, align 4
  %71 = load i32, i32* %16, align 4
  %72 = load i32*, i32** %15, align 8
  %73 = load i32, i32* %8, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %71, i32* %75, align 4
  br label %94

76:                                               ; preds = %35
  %77 = load i32, i32* %8, align 4
  %78 = icmp uge i32 %77, 256
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %7, align 4
  br label %95

82:                                               ; preds = %76
  %83 = load %struct.geodefb_par*, %struct.geodefb_par** %14, align 8
  %84 = getelementptr inbounds %struct.geodefb_par, %struct.geodefb_par* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32 (%struct.fb_info*, i32, i32, i32, i32)*, i32 (%struct.fb_info*, i32, i32, i32, i32)** %86, align 8
  %88 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %11, align 4
  %93 = call i32 %87(%struct.fb_info* %88, i32 %89, i32 %90, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %82, %51
  store i32 0, i32* %7, align 4
  br label %95

95:                                               ; preds = %94, %79, %48
  %96 = load i32, i32* %7, align 4
  ret i32 %96
}

declare dso_local i32 @chan_to_field(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
