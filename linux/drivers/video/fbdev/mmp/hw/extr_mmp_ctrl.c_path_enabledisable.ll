; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/mmp/hw/extr_mmp_ctrl.c_path_enabledisable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/mmp/hw/extr_mmp_ctrl.c_path_enabledisable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmp_path = type { i32 }

@SCLK_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmp_path*, i32)* @path_enabledisable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @path_enabledisable(%struct.mmp_path* %0, i32 %1) #0 {
  %3 = alloca %struct.mmp_path*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mmp_path* %0, %struct.mmp_path** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mmp_path*, %struct.mmp_path** %3, align 8
  %7 = getelementptr inbounds %struct.mmp_path, %struct.mmp_path* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.mmp_path*, %struct.mmp_path** %3, align 8
  %10 = call i64 @ctrl_regs(%struct.mmp_path* %9)
  %11 = load %struct.mmp_path*, %struct.mmp_path** %3, align 8
  %12 = call i64 @LCD_SCLK(%struct.mmp_path* %11)
  %13 = add nsw i64 %10, %12
  %14 = call i32 @readl_relaxed(i64 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i32, i32* @SCLK_DISABLE, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %5, align 4
  br label %26

22:                                               ; preds = %2
  %23 = load i32, i32* @SCLK_DISABLE, align 4
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %22, %17
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.mmp_path*, %struct.mmp_path** %3, align 8
  %29 = call i64 @ctrl_regs(%struct.mmp_path* %28)
  %30 = load %struct.mmp_path*, %struct.mmp_path** %3, align 8
  %31 = call i64 @LCD_SCLK(%struct.mmp_path* %30)
  %32 = add nsw i64 %29, %31
  %33 = call i32 @writel_relaxed(i32 %27, i64 %32)
  %34 = load %struct.mmp_path*, %struct.mmp_path** %3, align 8
  %35 = getelementptr inbounds %struct.mmp_path, %struct.mmp_path* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i64 @ctrl_regs(%struct.mmp_path*) #1

declare dso_local i64 @LCD_SCLK(%struct.mmp_path*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
