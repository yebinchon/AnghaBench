; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s3c-fb.c_s3c_fb_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s3c-fb.c_s3c_fb_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c_fb = type { i32, i32, i64 }

@VIDCON0 = common dso_local global i64 0, align 8
@VIDCON0_ENVID = common dso_local global i32 0, align 4
@VIDCON0_ENVID_F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c_fb*, i32)* @s3c_fb_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c_fb_enable(%struct.s3c_fb* %0, i32 %1) #0 {
  %3 = alloca %struct.s3c_fb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.s3c_fb* %0, %struct.s3c_fb** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.s3c_fb*, %struct.s3c_fb** %3, align 8
  %7 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @VIDCON0, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl(i64 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load %struct.s3c_fb*, %struct.s3c_fb** %3, align 8
  %16 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load %struct.s3c_fb*, %struct.s3c_fb** %3, align 8
  %21 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pm_runtime_get_sync(i32 %22)
  br label %24

24:                                               ; preds = %19, %14, %2
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i32, i32* @VIDCON0_ENVID, align 4
  %29 = load i32, i32* @VIDCON0_ENVID_F, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  br label %47

33:                                               ; preds = %24
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @VIDCON0_ENVID, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load i32, i32* @VIDCON0_ENVID, align 4
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* @VIDCON0_ENVID_F, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %5, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %38, %33
  br label %47

47:                                               ; preds = %46, %27
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.s3c_fb*, %struct.s3c_fb** %3, align 8
  %50 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @VIDCON0, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writel(i32 %48, i64 %53)
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %47
  %58 = load %struct.s3c_fb*, %struct.s3c_fb** %3, align 8
  %59 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.s3c_fb*, %struct.s3c_fb** %3, align 8
  %64 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @pm_runtime_put_sync(i32 %65)
  br label %67

67:                                               ; preds = %62, %57, %47
  %68 = load i32, i32* %4, align 4
  %69 = load %struct.s3c_fb*, %struct.s3c_fb** %3, align 8
  %70 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
