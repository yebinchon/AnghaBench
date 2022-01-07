; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/mmp/hw/extr_mmp_ctrl.c_ctrl_set_default.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/mmp/hw/extr_mmp_ctrl.c_ctrl_set_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmphw_ctrl = type { i64 }

@LCD_TOP_CTRL = common dso_local global i64 0, align 8
@SPU_IRQ_ENA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmphw_ctrl*)* @ctrl_set_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctrl_set_default(%struct.mmphw_ctrl* %0) #0 {
  %2 = alloca %struct.mmphw_ctrl*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mmphw_ctrl* %0, %struct.mmphw_ctrl** %2, align 8
  %5 = load %struct.mmphw_ctrl*, %struct.mmphw_ctrl** %2, align 8
  %6 = getelementptr inbounds %struct.mmphw_ctrl, %struct.mmphw_ctrl* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @LCD_TOP_CTRL, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @readl_relaxed(i64 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = or i32 %11, 65520
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.mmphw_ctrl*, %struct.mmphw_ctrl** %2, align 8
  %15 = getelementptr inbounds %struct.mmphw_ctrl, %struct.mmphw_ctrl* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @LCD_TOP_CTRL, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writel_relaxed(i32 %13, i64 %18)
  %20 = call i32 @path_imasks(i32 0)
  %21 = call i32 @err_imask(i32 0)
  %22 = or i32 %20, %21
  %23 = call i32 @path_imasks(i32 1)
  %24 = or i32 %22, %23
  %25 = call i32 @err_imask(i32 1)
  %26 = or i32 %24, %25
  store i32 %26, i32* %4, align 4
  %27 = load %struct.mmphw_ctrl*, %struct.mmphw_ctrl** %2, align 8
  %28 = getelementptr inbounds %struct.mmphw_ctrl, %struct.mmphw_ctrl* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SPU_IRQ_ENA, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @readl_relaxed(i64 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %4, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %3, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %3, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load %struct.mmphw_ctrl*, %struct.mmphw_ctrl** %2, align 8
  %42 = getelementptr inbounds %struct.mmphw_ctrl, %struct.mmphw_ctrl* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SPU_IRQ_ENA, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel_relaxed(i32 %40, i64 %45)
  ret void
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @path_imasks(i32) #1

declare dso_local i32 @err_imask(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
