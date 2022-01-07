; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/kyro/extr_fbdev.c_kyro_dev_overlay_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/kyro/extr_fbdev.c_kyro_dev_overlay_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@deviceInfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@GLOBAL_ALPHA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @kyro_dev_overlay_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kyro_dev_overlay_create(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @deviceInfo, i32 0, i32 0), align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %57

16:                                               ; preds = %3
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @deviceInfo, i32 0, i32 4), align 4
  %18 = call i32 @ResetOverlayRegisters(i32 %17)
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @deviceInfo, i32 0, i32 1), align 4
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %20, 31
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, 32
  %27 = and i64 %26, 4294967264
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %23, %16
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @deviceInfo, i32 0, i32 4), align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i64 @CreateOverlaySurface(i32 %30, i32 %31, i32 %32, i32 %33, i32 %34, i32* %9, i32* %10)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %57

40:                                               ; preds = %29
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @deviceInfo, i32 0, i32 0), align 4
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @deviceInfo, i32 0, i32 2), align 4
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @deviceInfo, i32 0, i32 3), align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %9, align 4
  %47 = mul nsw i32 %45, %46
  %48 = add nsw i32 %44, %47
  %49 = load i32, i32* %6, align 4
  %50 = mul nsw i32 %49, 2
  %51 = load i32, i32* %10, align 4
  %52 = mul nsw i32 %50, %51
  %53 = add nsw i32 %48, %52
  store i32 %53, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @deviceInfo, i32 0, i32 1), align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @deviceInfo, i32 0, i32 4), align 4
  %55 = load i32, i32* @GLOBAL_ALPHA, align 4
  %56 = call i32 @SetOverlayBlendMode(i32 %54, i32 %55, i32 15, i32 0)
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %40, %37, %13
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @ResetOverlayRegisters(i32) #1

declare dso_local i64 @CreateOverlaySurface(i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @SetOverlayBlendMode(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
