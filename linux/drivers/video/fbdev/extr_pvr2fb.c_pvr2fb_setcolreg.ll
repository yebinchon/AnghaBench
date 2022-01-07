; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pvr2fb.c_pvr2fb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pvr2fb.c_pvr2fb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.pvr2fb_par = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Invalid bit depth %d?!?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @pvr2fb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2fb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca %struct.pvr2fb_par*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %16 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %17 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.pvr2fb_par*
  store %struct.pvr2fb_par* %19, %struct.pvr2fb_par** %14, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %22 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ugt i32 %20, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %101

27:                                               ; preds = %6
  %28 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %29 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %82 [
    i32 16, label %32
    i32 24, label %47
    i32 32, label %61
  ]

32:                                               ; preds = %27
  %33 = load i32, i32* %9, align 4
  %34 = and i32 %33, 63488
  %35 = load i32, i32* %10, align 4
  %36 = and i32 %35, 64512
  %37 = lshr i32 %36, 5
  %38 = or i32 %34, %37
  %39 = load i32, i32* %11, align 4
  %40 = and i32 %39, 63488
  %41 = lshr i32 %40, 11
  %42 = or i32 %38, %41
  store i32 %42, i32* %15, align 4
  %43 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %14, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %15, align 4
  %46 = call i32 @pvr2fb_set_pal_entry(%struct.pvr2fb_par* %43, i32 %44, i32 %45)
  br label %88

47:                                               ; preds = %27
  %48 = load i32, i32* %9, align 4
  %49 = lshr i32 %48, 8
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = lshr i32 %50, 8
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = lshr i32 %52, 8
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %9, align 4
  %55 = shl i32 %54, 16
  %56 = load i32, i32* %10, align 4
  %57 = shl i32 %56, 8
  %58 = or i32 %55, %57
  %59 = load i32, i32* %11, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %15, align 4
  br label %88

61:                                               ; preds = %27
  %62 = load i32, i32* %9, align 4
  %63 = lshr i32 %62, 8
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = lshr i32 %64, 8
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %11, align 4
  %67 = lshr i32 %66, 8
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %12, align 4
  %69 = shl i32 %68, 24
  %70 = load i32, i32* %9, align 4
  %71 = shl i32 %70, 16
  %72 = or i32 %69, %71
  %73 = load i32, i32* %10, align 4
  %74 = shl i32 %73, 8
  %75 = or i32 %72, %74
  %76 = load i32, i32* %11, align 4
  %77 = or i32 %75, %76
  store i32 %77, i32* %15, align 4
  %78 = load %struct.pvr2fb_par*, %struct.pvr2fb_par** %14, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %15, align 4
  %81 = call i32 @pvr2fb_set_pal_entry(%struct.pvr2fb_par* %78, i32 %79, i32 %80)
  br label %88

82:                                               ; preds = %27
  %83 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %84 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %86)
  store i32 1, i32* %7, align 4
  br label %101

88:                                               ; preds = %61, %47, %32
  %89 = load i32, i32* %8, align 4
  %90 = icmp ult i32 %89, 16
  br i1 %90, label %91, label %100

91:                                               ; preds = %88
  %92 = load i32, i32* %15, align 4
  %93 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %94 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to i32*
  %97 = load i32, i32* %8, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 %92, i32* %99, align 4
  br label %100

100:                                              ; preds = %91, %88
  store i32 0, i32* %7, align 4
  br label %101

101:                                              ; preds = %100, %82, %26
  %102 = load i32, i32* %7, align 4
  ret i32 %102
}

declare dso_local i32 @pvr2fb_set_pal_entry(%struct.pvr2fb_par*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
