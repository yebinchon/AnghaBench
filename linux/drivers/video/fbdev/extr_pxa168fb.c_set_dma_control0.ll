; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxa168fb.c_set_dma_control0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxa168fb.c_set_dma_control0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa168fb_info = type { i32, i32, i64, i64 }

@LCD_SPU_DMA_CTRL0 = common dso_local global i64 0, align 8
@CFG_GRA_ENA_MASK = common dso_local global i32 0, align 4
@PIX_FMT_PSEUDOCOLOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa168fb_info*)* @set_dma_control0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_dma_control0(%struct.pxa168fb_info* %0) #0 {
  %2 = alloca %struct.pxa168fb_info*, align 8
  %3 = alloca i32, align 4
  store %struct.pxa168fb_info* %0, %struct.pxa168fb_info** %2, align 8
  %4 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %2, align 8
  %5 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @LCD_SPU_DMA_CTRL0, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readl(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @CFG_GRA_ENA_MASK, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %2, align 8
  %15 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = call i32 @CFG_GRA_ENA(i32 1)
  br label %22

20:                                               ; preds = %1
  %21 = call i32 @CFG_GRA_ENA(i32 0)
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %2, align 8
  %27 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @PIX_FMT_PSEUDOCOLOR, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %32, 268435456
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %31, %22
  %35 = load i32, i32* %3, align 4
  %36 = and i32 %35, -983041
  store i32 %36, i32* %3, align 4
  %37 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %2, align 8
  %38 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = ashr i32 %39, 1
  %41 = shl i32 %40, 16
  %42 = load i32, i32* %3, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = and i32 %44, -4097
  store i32 %45, i32* %3, align 4
  %46 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %2, align 8
  %47 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, 1
  %50 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %2, align 8
  %51 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = xor i32 %49, %52
  %54 = shl i32 %53, 12
  %55 = load i32, i32* %3, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %3, align 4
  %58 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %2, align 8
  %59 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @LCD_SPU_DMA_CTRL0, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @writel(i32 %57, i64 %62)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @CFG_GRA_ENA(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
