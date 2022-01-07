; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_clps711x-fb.c_clps711x_fb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_clps711x-fb.c_clps711x_fb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__, %struct.clps711x_fb_info* }
%struct.TYPE_2__ = type { i32 }
%struct.clps711x_fb_info = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@CLPS711X_PALLSW = common dso_local global i64 0, align 8
@CLPS711X_PALMSW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i64, i64, %struct.fb_info*)* @clps711x_fb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clps711x_fb_setcolreg(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca %struct.clps711x_fb_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %18 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %19 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %18, i32 0, i32 1
  %20 = load %struct.clps711x_fb_info*, %struct.clps711x_fb_info** %19, align 8
  store %struct.clps711x_fb_info* %20, %struct.clps711x_fb_info** %14, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %23 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @BIT(i32 %25)
  %27 = icmp sge i64 %21, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %6
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %87

31:                                               ; preds = %6
  %32 = load i64, i64* %8, align 8
  %33 = and i64 %32, 7
  %34 = mul nsw i64 4, %33
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %17, align 4
  %36 = load i32, i32* %17, align 4
  %37 = shl i32 15, %36
  store i32 %37, i32* %16, align 4
  %38 = load i64, i64* %9, align 8
  %39 = mul nsw i64 %38, 77
  %40 = load i64, i64* %10, align 8
  %41 = mul nsw i64 %40, 151
  %42 = add nsw i64 %39, %41
  %43 = load i64, i64* %11, align 8
  %44 = mul nsw i64 %43, 28
  %45 = add nsw i64 %42, %44
  %46 = ashr i64 %45, 20
  %47 = load i32, i32* %17, align 4
  %48 = zext i32 %47 to i64
  %49 = shl i64 %46, %48
  %50 = load i32, i32* %16, align 4
  %51 = sext i32 %50 to i64
  %52 = and i64 %49, %51
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %15, align 4
  %54 = load %struct.clps711x_fb_info*, %struct.clps711x_fb_info** %14, align 8
  %55 = getelementptr inbounds %struct.clps711x_fb_info, %struct.clps711x_fb_info* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %31
  %59 = load i32, i32* %15, align 4
  %60 = sub nsw i32 15, %59
  store i32 %60, i32* %15, align 4
  br label %61

61:                                               ; preds = %58, %31
  %62 = load i64, i64* %8, align 8
  %63 = icmp slt i64 %62, 8
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i64, i64* @CLPS711X_PALLSW, align 8
  br label %68

66:                                               ; preds = %61
  %67 = load i64, i64* @CLPS711X_PALMSW, align 8
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i64 [ %65, %64 ], [ %67, %66 ]
  store i64 %69, i64* %8, align 8
  %70 = load %struct.clps711x_fb_info*, %struct.clps711x_fb_info** %14, align 8
  %71 = getelementptr inbounds %struct.clps711x_fb_info, %struct.clps711x_fb_info* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %8, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @readl(i64 %74)
  %76 = load i32, i32* %16, align 4
  %77 = xor i32 %76, -1
  %78 = and i32 %75, %77
  %79 = load i32, i32* %15, align 4
  %80 = or i32 %78, %79
  %81 = load %struct.clps711x_fb_info*, %struct.clps711x_fb_info** %14, align 8
  %82 = getelementptr inbounds %struct.clps711x_fb_info, %struct.clps711x_fb_info* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %8, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @writel(i32 %80, i64 %85)
  store i32 0, i32* %7, align 4
  br label %87

87:                                               ; preds = %68, %28
  %88 = load i32, i32* %7, align 4
  ret i32 %88
}

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
