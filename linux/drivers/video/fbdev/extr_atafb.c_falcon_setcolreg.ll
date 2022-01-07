; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_atafb.c_falcon_setcolreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_atafb.c_falcon_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.fb_info = type { i64 }

@f030_col = common dso_local global i32* null, align 8
@shifter_tt = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @falcon_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @falcon_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
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
  %15 = icmp ugt i32 %14, 255
  br i1 %15, label %16, label %17

16:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %83

17:                                               ; preds = %6
  %18 = load i32, i32* %9, align 4
  %19 = and i32 %18, 64512
  %20 = shl i32 %19, 16
  %21 = load i32, i32* %10, align 4
  %22 = and i32 %21, 64512
  %23 = shl i32 %22, 8
  %24 = or i32 %20, %23
  %25 = load i32, i32* %11, align 4
  %26 = and i32 %25, 64512
  %27 = lshr i32 %26, 8
  %28 = or i32 %24, %27
  %29 = load i32*, i32** @f030_col, align 8
  %30 = load i32, i32* %8, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 %28, i32* %32, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ult i32 %33, 16
  br i1 %34, label %35, label %82

35:                                               ; preds = %17
  %36 = load i32, i32* %9, align 4
  %37 = and i32 %36, 57344
  %38 = lshr i32 %37, 13
  %39 = load i32, i32* %9, align 4
  %40 = and i32 %39, 4096
  %41 = lshr i32 %40, 12
  %42 = shl i32 %41, 8
  %43 = or i32 %38, %42
  %44 = load i32, i32* %10, align 4
  %45 = and i32 %44, 57344
  %46 = lshr i32 %45, 13
  %47 = load i32, i32* %10, align 4
  %48 = and i32 %47, 4096
  %49 = lshr i32 %48, 12
  %50 = shl i32 %49, 4
  %51 = or i32 %46, %50
  %52 = or i32 %43, %51
  %53 = load i32, i32* %11, align 4
  %54 = and i32 %53, 57344
  %55 = lshr i32 %54, 13
  %56 = or i32 %52, %55
  %57 = load i32, i32* %11, align 4
  %58 = and i32 %57, 4096
  %59 = lshr i32 %58, 12
  %60 = or i32 %56, %59
  %61 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @shifter_tt, i32 0, i32 0), align 8
  %62 = load i32, i32* %8, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %60, i32* %64, align 4
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
  %75 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %76 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to i32*
  %79 = load i32, i32* %8, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %74, i32* %81, align 4
  br label %82

82:                                               ; preds = %35, %17
  store i32 0, i32* %7, align 4
  br label %83

83:                                               ; preds = %82, %16
  %84 = load i32, i32* %7, align 4
  ret i32 %84
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
