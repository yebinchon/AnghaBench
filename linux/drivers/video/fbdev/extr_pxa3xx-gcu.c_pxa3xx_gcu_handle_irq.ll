; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxa3xx-gcu.c_pxa3xx_gcu_handle_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxa3xx-gcu.c_pxa3xx_gcu_handle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa3xx_gcu_priv = type { i32, i32, i64, i32, %struct.pxa3xx_gcu_shared* }
%struct.pxa3xx_gcu_shared = type { i32, i64, i32, i32 }

@REG_GCISCR = common dso_local global i32 0, align 4
@IE_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"-Interrupt\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@IE_EEOB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c" [EEOB]\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c" '-> Idle.\00", align 1
@REG_GCRBLR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c" [???]\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pxa3xx_gcu_handle_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa3xx_gcu_handle_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pxa3xx_gcu_priv*, align 8
  %7 = alloca %struct.pxa3xx_gcu_shared*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.pxa3xx_gcu_priv*
  store %struct.pxa3xx_gcu_priv* %10, %struct.pxa3xx_gcu_priv** %6, align 8
  %11 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %6, align 8
  %12 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %11, i32 0, i32 4
  %13 = load %struct.pxa3xx_gcu_shared*, %struct.pxa3xx_gcu_shared** %12, align 8
  store %struct.pxa3xx_gcu_shared* %13, %struct.pxa3xx_gcu_shared** %7, align 8
  %14 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %6, align 8
  %15 = load i32, i32* @REG_GCISCR, align 4
  %16 = call i32 @gc_readl(%struct.pxa3xx_gcu_priv* %14, i32 %15)
  %17 = load i32, i32* @IE_ALL, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %8, align 4
  %19 = call i32 @QDUMP(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @IRQ_NONE, align 4
  store i32 %23, i32* %3, align 4
  br label %82

24:                                               ; preds = %2
  %25 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %6, align 8
  %26 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %25, i32 0, i32 0
  %27 = call i32 @spin_lock(i32* %26)
  %28 = load %struct.pxa3xx_gcu_shared*, %struct.pxa3xx_gcu_shared** %7, align 8
  %29 = getelementptr inbounds %struct.pxa3xx_gcu_shared, %struct.pxa3xx_gcu_shared* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @IE_EEOB, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %69

36:                                               ; preds = %24
  %37 = call i32 @QDUMP(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %6, align 8
  %39 = call i32 @flush_running(%struct.pxa3xx_gcu_priv* %38)
  %40 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %6, align 8
  %41 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %40, i32 0, i32 3
  %42 = call i32 @wake_up_all(i32* %41)
  %43 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %6, align 8
  %44 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %36
  %48 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %6, align 8
  %49 = call i32 @run_ready(%struct.pxa3xx_gcu_priv* %48)
  br label %64

50:                                               ; preds = %36
  %51 = load %struct.pxa3xx_gcu_shared*, %struct.pxa3xx_gcu_shared** %7, align 8
  %52 = getelementptr inbounds %struct.pxa3xx_gcu_shared, %struct.pxa3xx_gcu_shared* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  %55 = load %struct.pxa3xx_gcu_shared*, %struct.pxa3xx_gcu_shared** %7, align 8
  %56 = getelementptr inbounds %struct.pxa3xx_gcu_shared, %struct.pxa3xx_gcu_shared* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = call i32 @QDUMP(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %58 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %6, align 8
  %59 = load i32, i32* @REG_GCRBLR, align 4
  %60 = call i32 @gc_writel(%struct.pxa3xx_gcu_priv* %58, i32 %59, i32 0)
  %61 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %6, align 8
  %62 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %61, i32 0, i32 1
  %63 = call i32 @wake_up_all(i32* %62)
  br label %64

64:                                               ; preds = %50, %47
  %65 = load %struct.pxa3xx_gcu_shared*, %struct.pxa3xx_gcu_shared** %7, align 8
  %66 = getelementptr inbounds %struct.pxa3xx_gcu_shared, %struct.pxa3xx_gcu_shared* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  br label %73

69:                                               ; preds = %24
  %70 = call i32 @QERROR(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %71 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %6, align 8
  %72 = call i32 @dump_whole_state(%struct.pxa3xx_gcu_priv* %71)
  br label %73

73:                                               ; preds = %69, %64
  %74 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %6, align 8
  %75 = load i32, i32* @REG_GCISCR, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @gc_writel(%struct.pxa3xx_gcu_priv* %74, i32 %75, i32 %76)
  %78 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %6, align 8
  %79 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %78, i32 0, i32 0
  %80 = call i32 @spin_unlock(i32* %79)
  %81 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %73, %22
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @gc_readl(%struct.pxa3xx_gcu_priv*, i32) #1

declare dso_local i32 @QDUMP(i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @flush_running(%struct.pxa3xx_gcu_priv*) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @run_ready(%struct.pxa3xx_gcu_priv*) #1

declare dso_local i32 @gc_writel(%struct.pxa3xx_gcu_priv*, i32, i32) #1

declare dso_local i32 @QERROR(i8*) #1

declare dso_local i32 @dump_whole_state(%struct.pxa3xx_gcu_priv*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
