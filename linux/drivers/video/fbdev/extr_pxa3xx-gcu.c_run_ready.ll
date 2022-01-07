; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxa3xx-gcu.c_run_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxa3xx-gcu.c_run_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa3xx_gcu_priv = type { i32*, %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_shared* }
%struct.pxa3xx_gcu_batch = type { i32, %struct.pxa3xx_gcu_batch* }
%struct.pxa3xx_gcu_shared = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"Start\00", align 1
@REG_GCRBLR = common dso_local global i32 0, align 4
@REG_GCRBBR = common dso_local global i32 0, align 4
@REG_GCRBTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa3xx_gcu_priv*)* @run_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_ready(%struct.pxa3xx_gcu_priv* %0) #0 {
  %2 = alloca %struct.pxa3xx_gcu_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pxa3xx_gcu_shared*, align 8
  %5 = alloca %struct.pxa3xx_gcu_batch*, align 8
  store %struct.pxa3xx_gcu_priv* %0, %struct.pxa3xx_gcu_priv** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %2, align 8
  %7 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %6, i32 0, i32 3
  %8 = load %struct.pxa3xx_gcu_shared*, %struct.pxa3xx_gcu_shared** %7, align 8
  store %struct.pxa3xx_gcu_shared* %8, %struct.pxa3xx_gcu_shared** %4, align 8
  %9 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %2, align 8
  %10 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %9, i32 0, i32 1
  %11 = load %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch** %10, align 8
  store %struct.pxa3xx_gcu_batch* %11, %struct.pxa3xx_gcu_batch** %5, align 8
  %12 = call i32 @QDUMP(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch** %5, align 8
  %14 = icmp ne %struct.pxa3xx_gcu_batch* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.pxa3xx_gcu_shared*, %struct.pxa3xx_gcu_shared** %4, align 8
  %19 = getelementptr inbounds %struct.pxa3xx_gcu_shared, %struct.pxa3xx_gcu_shared* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = add i32 %21, 1
  store i32 %22, i32* %3, align 4
  %23 = zext i32 %21 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  store i32 83886080, i32* %24, align 4
  br label %25

25:                                               ; preds = %28, %1
  %26 = load %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch** %5, align 8
  %27 = icmp ne %struct.pxa3xx_gcu_batch* %26, null
  br i1 %27, label %28, label %49

28:                                               ; preds = %25
  %29 = load %struct.pxa3xx_gcu_shared*, %struct.pxa3xx_gcu_shared** %4, align 8
  %30 = getelementptr inbounds %struct.pxa3xx_gcu_shared, %struct.pxa3xx_gcu_shared* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %3, align 4
  %34 = zext i32 %32 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  store i32 1, i32* %35, align 4
  %36 = load %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch** %5, align 8
  %37 = getelementptr inbounds %struct.pxa3xx_gcu_batch, %struct.pxa3xx_gcu_batch* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.pxa3xx_gcu_shared*, %struct.pxa3xx_gcu_shared** %4, align 8
  %40 = getelementptr inbounds %struct.pxa3xx_gcu_shared, %struct.pxa3xx_gcu_shared* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %3, align 4
  %44 = zext i32 %42 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  store i32 %38, i32* %45, align 4
  %46 = load %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch** %5, align 8
  %47 = getelementptr inbounds %struct.pxa3xx_gcu_batch, %struct.pxa3xx_gcu_batch* %46, i32 0, i32 1
  %48 = load %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch** %47, align 8
  store %struct.pxa3xx_gcu_batch* %48, %struct.pxa3xx_gcu_batch** %5, align 8
  br label %25

49:                                               ; preds = %25
  %50 = load %struct.pxa3xx_gcu_shared*, %struct.pxa3xx_gcu_shared** %4, align 8
  %51 = getelementptr inbounds %struct.pxa3xx_gcu_shared, %struct.pxa3xx_gcu_shared* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %3, align 4
  %55 = zext i32 %53 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  store i32 83886080, i32* %56, align 4
  %57 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %2, align 8
  %58 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %57, i32 0, i32 1
  %59 = load %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch** %58, align 8
  %60 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %2, align 8
  %61 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %60, i32 0, i32 2
  store %struct.pxa3xx_gcu_batch* %59, %struct.pxa3xx_gcu_batch** %61, align 8
  %62 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %2, align 8
  %63 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %62, i32 0, i32 0
  store i32* null, i32** %63, align 8
  %64 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %2, align 8
  %65 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %64, i32 0, i32 1
  store %struct.pxa3xx_gcu_batch* null, %struct.pxa3xx_gcu_batch** %65, align 8
  %66 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %2, align 8
  %67 = load i32, i32* @REG_GCRBLR, align 4
  %68 = call i32 @gc_writel(%struct.pxa3xx_gcu_priv* %66, i32 %67, i32 0)
  %69 = load %struct.pxa3xx_gcu_shared*, %struct.pxa3xx_gcu_shared** %4, align 8
  %70 = getelementptr inbounds %struct.pxa3xx_gcu_shared, %struct.pxa3xx_gcu_shared* %69, i32 0, i32 1
  store i32 1, i32* %70, align 8
  %71 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %2, align 8
  %72 = load i32, i32* @REG_GCRBBR, align 4
  %73 = load %struct.pxa3xx_gcu_shared*, %struct.pxa3xx_gcu_shared** %4, align 8
  %74 = getelementptr inbounds %struct.pxa3xx_gcu_shared, %struct.pxa3xx_gcu_shared* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @gc_writel(%struct.pxa3xx_gcu_priv* %71, i32 %72, i32 %75)
  %77 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %2, align 8
  %78 = load i32, i32* @REG_GCRBTR, align 4
  %79 = load %struct.pxa3xx_gcu_shared*, %struct.pxa3xx_gcu_shared** %4, align 8
  %80 = getelementptr inbounds %struct.pxa3xx_gcu_shared, %struct.pxa3xx_gcu_shared* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %3, align 4
  %83 = mul i32 %82, 4
  %84 = add i32 %81, %83
  %85 = call i32 @gc_writel(%struct.pxa3xx_gcu_priv* %77, i32 %78, i32 %84)
  %86 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %2, align 8
  %87 = load i32, i32* @REG_GCRBLR, align 4
  %88 = load i32, i32* %3, align 4
  %89 = add i32 %88, 63
  %90 = and i32 %89, -64
  %91 = mul i32 %90, 4
  %92 = call i32 @gc_writel(%struct.pxa3xx_gcu_priv* %86, i32 %87, i32 %91)
  ret void
}

declare dso_local i32 @QDUMP(i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @gc_writel(%struct.pxa3xx_gcu_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
