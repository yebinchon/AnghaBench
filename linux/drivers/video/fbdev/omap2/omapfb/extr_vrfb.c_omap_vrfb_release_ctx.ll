; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_vrfb.c_omap_vrfb_release_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_vrfb.c_omap_vrfb_release_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vrfb = type { i32, i64* }

@.str = private unnamed_addr constant [16 x i8] c"release ctx %d\0A\00", align 1
@ctx_lock = common dso_local global i32 0, align 4
@ctx_map = common dso_local global i32 0, align 4
@OMAP_VRFB_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_vrfb_release_ctx(%struct.vrfb* %0) #0 {
  %2 = alloca %struct.vrfb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.vrfb* %0, %struct.vrfb** %2, align 8
  %5 = load %struct.vrfb*, %struct.vrfb** %2, align 8
  %6 = getelementptr inbounds %struct.vrfb, %struct.vrfb* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 255
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %61

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = call i32 @mutex_lock(i32* @ctx_lock)
  %15 = load i32, i32* @ctx_map, align 4
  %16 = load i32, i32* %4, align 4
  %17 = shl i32 1, %16
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @clear_bit(i32 %23, i32* @ctx_map)
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %54, %11
  %26 = load i32, i32* %3, align 4
  %27 = icmp slt i32 %26, 4
  br i1 %27, label %28, label %57

28:                                               ; preds = %25
  %29 = load %struct.vrfb*, %struct.vrfb** %2, align 8
  %30 = getelementptr inbounds %struct.vrfb, %struct.vrfb* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %28
  %38 = load %struct.vrfb*, %struct.vrfb** %2, align 8
  %39 = getelementptr inbounds %struct.vrfb, %struct.vrfb* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @OMAP_VRFB_SIZE, align 4
  %46 = call i32 @release_mem_region(i64 %44, i32 %45)
  %47 = load %struct.vrfb*, %struct.vrfb** %2, align 8
  %48 = getelementptr inbounds %struct.vrfb, %struct.vrfb* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %37, %28
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %25

57:                                               ; preds = %25
  %58 = load %struct.vrfb*, %struct.vrfb** %2, align 8
  %59 = getelementptr inbounds %struct.vrfb, %struct.vrfb* %58, i32 0, i32 0
  store i32 255, i32* %59, align 8
  %60 = call i32 @mutex_unlock(i32* @ctx_lock)
  br label %61

61:                                               ; preds = %57, %10
  ret void
}

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @release_mem_region(i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
