; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_fb-puv3.c_unifb_fillrect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_fb-puv3.c_unifb_fillrect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.fb_fillrect = type { i32, i32, i32, i32 }

@FBINFO_HWACCEL_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_fillrect*)* @unifb_fillrect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unifb_fillrect(%struct.fb_info* %0, %struct.fb_fillrect* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_fillrect*, align 8
  %5 = alloca %struct.fb_fillrect, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_fillrect* %1, %struct.fb_fillrect** %4, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @FBINFO_HWACCEL_DISABLED, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %16 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %17 = call i32 @sys_fillrect(%struct.fb_info* %15, %struct.fb_fillrect* %16)
  br label %78

18:                                               ; preds = %2
  %19 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %20 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  %23 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %24 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  %27 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %28 = call i32 @memcpy(%struct.fb_fillrect* %5, %struct.fb_fillrect* %27, i32 16)
  %29 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %5, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %18
  %33 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %5, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %5, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %5, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %41, %36, %32, %18
  br label %78

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %5, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %5, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %49, %51
  %53 = load i32, i32* %6, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %47
  %56 = load i32, i32* %6, align 4
  %57 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %5, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %56, %58
  %60 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %5, i32 0, i32 0
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %55, %47
  %62 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %5, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %5, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %63, %65
  %67 = load i32, i32* %7, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %61
  %70 = load i32, i32* %7, align 4
  %71 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %5, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %70, %72
  %74 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %5, i32 0, i32 1
  store i32 %73, i32* %74, align 4
  br label %75

75:                                               ; preds = %69, %61
  %76 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %77 = call i32 @unifb_prim_fillrect(%struct.fb_info* %76, %struct.fb_fillrect* %5)
  br label %78

78:                                               ; preds = %75, %46, %14
  ret void
}

declare dso_local i32 @sys_fillrect(%struct.fb_info*, %struct.fb_fillrect*) #1

declare dso_local i32 @memcpy(%struct.fb_fillrect*, %struct.fb_fillrect*, i32) #1

declare dso_local i32 @unifb_prim_fillrect(%struct.fb_info*, %struct.fb_fillrect*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
