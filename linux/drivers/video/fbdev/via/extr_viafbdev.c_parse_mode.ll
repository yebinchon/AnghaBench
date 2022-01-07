; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_viafbdev.c_parse_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_viafbdev.c_parse_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.fb_videomode = type { i64, i64 }

@VIA_CRT = common dso_local global i64 0, align 8
@viaparinfo = common dso_local global %struct.TYPE_4__* null, align 8
@VIA_DVP1 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64*, i64*)* @parse_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_mode(i8* %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.fb_videomode*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store %struct.fb_videomode* null, %struct.fb_videomode** %10, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %60, label %14

14:                                               ; preds = %4
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @VIA_CRT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @viaparinfo, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.fb_videomode* @via_aux_get_preferred_mode(i32 %23)
  store %struct.fb_videomode* %24, %struct.fb_videomode** %10, align 8
  br label %37

25:                                               ; preds = %14
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @VIA_DVP1, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @viaparinfo, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.fb_videomode* @via_aux_get_preferred_mode(i32 %34)
  store %struct.fb_videomode* %35, %struct.fb_videomode** %10, align 8
  br label %36

36:                                               ; preds = %29, %25
  br label %37

37:                                               ; preds = %36, %18
  %38 = load %struct.fb_videomode*, %struct.fb_videomode** %10, align 8
  %39 = icmp ne %struct.fb_videomode* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load %struct.fb_videomode*, %struct.fb_videomode** %10, align 8
  %42 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** %8, align 8
  store i64 %43, i64* %44, align 8
  %45 = load %struct.fb_videomode*, %struct.fb_videomode** %10, align 8
  %46 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** %9, align 8
  store i64 %47, i64* %48, align 8
  br label %59

49:                                               ; preds = %37
  %50 = call i64 (...) @machine_is_olpc()
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i64*, i64** %8, align 8
  store i64 1200, i64* %53, align 8
  %54 = load i64*, i64** %9, align 8
  store i64 900, i64* %54, align 8
  br label %58

55:                                               ; preds = %49
  %56 = load i64*, i64** %8, align 8
  store i64 640, i64* %56, align 8
  %57 = load i64*, i64** %9, align 8
  store i64 480, i64* %57, align 8
  br label %58

58:                                               ; preds = %55, %52
  br label %59

59:                                               ; preds = %58, %40
  store i32 0, i32* %5, align 4
  br label %85

60:                                               ; preds = %4
  %61 = load i8*, i8** %6, align 8
  %62 = call i64 @simple_strtoul(i8* %61, i8** %11, i32 10)
  %63 = load i64*, i64** %8, align 8
  store i64 %62, i64* %63, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 120
  br i1 %68, label %69, label %72

69:                                               ; preds = %60
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %85

72:                                               ; preds = %60
  %73 = load i8*, i8** %11, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  %75 = call i64 @simple_strtoul(i8* %74, i8** %11, i32 10)
  %76 = load i64*, i64** %9, align 8
  store i64 %75, i64* %76, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  %79 = load i8, i8* %78, align 1
  %80 = icmp ne i8 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %72
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %5, align 4
  br label %85

84:                                               ; preds = %72
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %84, %81, %69, %59
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local %struct.fb_videomode* @via_aux_get_preferred_mode(i32) #1

declare dso_local i64 @machine_is_olpc(...) #1

declare dso_local i64 @simple_strtoul(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
