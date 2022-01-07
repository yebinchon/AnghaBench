; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxa3xx-gcu.c_pxa3xx_gcu_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxa3xx-gcu.c_pxa3xx_gcu_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.pxa3xx_gcu_priv = type { i32 }

@ENOSYS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i64)* @pxa3xx_gcu_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pxa3xx_gcu_ioctl(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.pxa3xx_gcu_priv*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.pxa3xx_gcu_priv* @to_pxa3xx_gcu_priv(%struct.file* %10)
  store %struct.pxa3xx_gcu_priv* %11, %struct.pxa3xx_gcu_priv** %9, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %27 [
    i32 129, label %13
    i32 128, label %24
  ]

13:                                               ; preds = %3
  %14 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %9, align 8
  %15 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %14, i32 0, i32 0
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %9, align 8
  %19 = call i32 @pxa3xx_gcu_reset(%struct.pxa3xx_gcu_priv* %18)
  %20 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %9, align 8
  %21 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %20, i32 0, i32 0
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  store i64 0, i64* %4, align 8
  br label %30

24:                                               ; preds = %3
  %25 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %9, align 8
  %26 = call i64 @pxa3xx_gcu_wait_idle(%struct.pxa3xx_gcu_priv* %25)
  store i64 %26, i64* %4, align 8
  br label %30

27:                                               ; preds = %3
  %28 = load i64, i64* @ENOSYS, align 8
  %29 = sub nsw i64 0, %28
  store i64 %29, i64* %4, align 8
  br label %30

30:                                               ; preds = %27, %24, %13
  %31 = load i64, i64* %4, align 8
  ret i64 %31
}

declare dso_local %struct.pxa3xx_gcu_priv* @to_pxa3xx_gcu_priv(%struct.file*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pxa3xx_gcu_reset(%struct.pxa3xx_gcu_priv*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @pxa3xx_gcu_wait_idle(%struct.pxa3xx_gcu_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
