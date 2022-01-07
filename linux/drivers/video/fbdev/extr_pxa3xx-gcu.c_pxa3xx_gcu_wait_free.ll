; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxa3xx-gcu.c_pxa3xx_gcu_wait_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxa3xx-gcu.c_pxa3xx_gcu_wait_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa3xx_gcu_priv = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Waiting for free...\00", align 1
@REG_GCRBEXHR = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"TIMEOUT\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"done\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxa3xx_gcu_priv*)* @pxa3xx_gcu_wait_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa3xx_gcu_wait_free(%struct.pxa3xx_gcu_priv* %0) #0 {
  %2 = alloca %struct.pxa3xx_gcu_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.pxa3xx_gcu_priv* %0, %struct.pxa3xx_gcu_priv** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = call i32 @QDUMP(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %2, align 8
  %7 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %9, align 4
  br label %12

12:                                               ; preds = %48, %37, %1
  %13 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %2, align 8
  %14 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br i1 %17, label %18, label %49

18:                                               ; preds = %12
  %19 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %2, align 8
  %20 = load i32, i32* @REG_GCRBEXHR, align 4
  %21 = call i64 @gc_readl(%struct.pxa3xx_gcu_priv* %19, i32 %20)
  store i64 %21, i64* %4, align 8
  %22 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %2, align 8
  %23 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %2, align 8
  %26 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @HZ, align 4
  %29 = mul nsw i32 %28, 4
  %30 = call i32 @wait_event_interruptible_timeout(i32 %24, i32 %27, i32 %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %18
  br label %49

34:                                               ; preds = %18
  %35 = load i32, i32* %3, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %12

38:                                               ; preds = %34
  %39 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %2, align 8
  %40 = load i32, i32* @REG_GCRBEXHR, align 4
  %41 = call i64 @gc_readl(%struct.pxa3xx_gcu_priv* %39, i32 %40)
  %42 = load i64, i64* %4, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = call i32 @QERROR(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @ETIMEDOUT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %49

48:                                               ; preds = %38
  br label %12

49:                                               ; preds = %44, %33, %12
  %50 = call i32 @QDUMP(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* %3, align 4
  ret i32 %51
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
