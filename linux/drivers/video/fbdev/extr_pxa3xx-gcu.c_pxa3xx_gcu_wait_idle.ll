; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxa3xx-gcu.c_pxa3xx_gcu_wait_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxa3xx-gcu.c_pxa3xx_gcu_wait_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa3xx_gcu_priv = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i64, i32 }

@.str = private unnamed_addr constant [20 x i8] c"Waiting for idle...\00", align 1
@REG_GCRBEXHR = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"TIMEOUT\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"done\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxa3xx_gcu_priv*)* @pxa3xx_gcu_wait_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa3xx_gcu_wait_idle(%struct.pxa3xx_gcu_priv* %0) #0 {
  %2 = alloca %struct.pxa3xx_gcu_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.pxa3xx_gcu_priv* %0, %struct.pxa3xx_gcu_priv** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = call i32 @QDUMP(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %2, align 8
  %8 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 8
  br label %13

13:                                               ; preds = %64, %1
  %14 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %2, align 8
  %15 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %65

20:                                               ; preds = %13
  %21 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %2, align 8
  %22 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %4, align 4
  %26 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %2, align 8
  %27 = load i32, i32* @REG_GCRBEXHR, align 4
  %28 = call i64 @gc_readl(%struct.pxa3xx_gcu_priv* %26, i32 %27)
  store i64 %28, i64* %5, align 8
  %29 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %2, align 8
  %30 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %2, align 8
  %33 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* @HZ, align 4
  %41 = mul nsw i32 %40, 4
  %42 = call i32 @wait_event_interruptible_timeout(i32 %31, i32 %39, i32 %41)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %20
  br label %65

46:                                               ; preds = %20
  %47 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %2, align 8
  %48 = load i32, i32* @REG_GCRBEXHR, align 4
  %49 = call i64 @gc_readl(%struct.pxa3xx_gcu_priv* %47, i32 %48)
  %50 = load i64, i64* %5, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %46
  %53 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %2, align 8
  %54 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = call i32 @QERROR(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @ETIMEDOUT, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %65

64:                                               ; preds = %52, %46
  br label %13

65:                                               ; preds = %60, %45, %13
  %66 = call i32 @QDUMP(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @QDUMP(i8*) #1

declare dso_local i64 @gc_readl(%struct.pxa3xx_gcu_priv*, i32) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @QERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
