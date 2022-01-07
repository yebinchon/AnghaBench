; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/i810/extr_i810_main.c_i810_init_monspecs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/i810/extr_i810_main.c_i810_init_monspecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i64 }

@hsync1 = common dso_local global i64 0, align 8
@HFMIN = common dso_local global i64 0, align 8
@hsync2 = common dso_local global i64 0, align 8
@HFMAX = common dso_local global i64 0, align 8
@vsync1 = common dso_local global i32 0, align 4
@VFMIN = common dso_local global i32 0, align 4
@vsync2 = common dso_local global i32 0, align 4
@VFMAX = common dso_local global i32 0, align 4
@IS_DVT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @i810_init_monspecs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i810_init_monspecs(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %3 = load i64, i64* @hsync1, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load i64, i64* @HFMIN, align 8
  store i64 %6, i64* @hsync1, align 8
  br label %7

7:                                                ; preds = %5, %1
  %8 = load i64, i64* @hsync2, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = load i64, i64* @HFMAX, align 8
  store i64 %11, i64* @hsync2, align 8
  br label %12

12:                                               ; preds = %10, %7
  %13 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %12
  %19 = load i64, i64* @hsync2, align 8
  %20 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  store i64 %19, i64* %22, align 8
  br label %23

23:                                               ; preds = %18, %12
  %24 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %25 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %23
  %30 = load i64, i64* @hsync1, align 8
  %31 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %32 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  store i64 %30, i64* %33, align 8
  br label %34

34:                                               ; preds = %29, %23
  %35 = load i64, i64* @hsync2, align 8
  %36 = load i64, i64* @hsync1, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i64, i64* @hsync2, align 8
  %40 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %41 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  store i64 %39, i64* %42, align 8
  br label %43

43:                                               ; preds = %38, %34
  %44 = load i32, i32* @vsync1, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* @VFMIN, align 4
  store i32 %47, i32* @vsync1, align 4
  br label %48

48:                                               ; preds = %46, %43
  %49 = load i32, i32* @vsync2, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* @VFMAX, align 4
  store i32 %52, i32* @vsync2, align 4
  br label %53

53:                                               ; preds = %51, %48
  %54 = load i64, i64* @IS_DVT, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32, i32* @vsync1, align 4
  %58 = icmp slt i32 %57, 60
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 60, i32* @vsync1, align 4
  br label %60

60:                                               ; preds = %59, %56, %53
  %61 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %62 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* @vsync2, align 4
  %68 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %69 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  br label %71

71:                                               ; preds = %66, %60
  %72 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %73 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %71
  %78 = load i32, i32* @vsync1, align 4
  %79 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %80 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  br label %82

82:                                               ; preds = %77, %71
  %83 = load i32, i32* @vsync2, align 4
  %84 = load i32, i32* @vsync1, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load i32, i32* @vsync2, align 4
  %88 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %89 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  store i32 %87, i32* %90, align 4
  br label %91

91:                                               ; preds = %86, %82
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
