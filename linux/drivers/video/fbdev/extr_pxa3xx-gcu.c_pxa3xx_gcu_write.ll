; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxa3xx-gcu.c_pxa3xx_gcu_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxa3xx-gcu.c_pxa3xx_gcu_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.pxa3xx_gcu_batch = type { i32*, i32, %struct.pxa3xx_gcu_batch* }
%struct.pxa3xx_gcu_priv = type { i32, %struct.TYPE_2__*, %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@PXA3XX_GCU_BATCH_WORDS = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i64, i32*)* @pxa3xx_gcu_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa3xx_gcu_write(%struct.file* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.pxa3xx_gcu_batch*, align 8
  %13 = alloca %struct.pxa3xx_gcu_priv*, align 8
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.file*, %struct.file** %6, align 8
  %16 = call %struct.pxa3xx_gcu_priv* @to_pxa3xx_gcu_priv(%struct.file* %15)
  store %struct.pxa3xx_gcu_priv* %16, %struct.pxa3xx_gcu_priv** %13, align 8
  %17 = load i64, i64* %8, align 8
  %18 = udiv i64 %17, 4
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %14, align 4
  %20 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %13, align 8
  %21 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* %14, align 4
  %27 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %13, align 8
  %28 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, %26
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* @PXA3XX_GCU_BATCH_WORDS, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %4
  %37 = load i32, i32* @E2BIG, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %153

39:                                               ; preds = %4
  %40 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %13, align 8
  %41 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %40, i32 0, i32 4
  %42 = load %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch** %41, align 8
  %43 = icmp ne %struct.pxa3xx_gcu_batch* %42, null
  br i1 %43, label %52, label %44

44:                                               ; preds = %39
  %45 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %13, align 8
  %46 = call i32 @pxa3xx_gcu_wait_free(%struct.pxa3xx_gcu_priv* %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %5, align 4
  br label %153

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %39
  %53 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %13, align 8
  %54 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %53, i32 0, i32 0
  %55 = load i64, i64* %11, align 8
  %56 = call i32 @spin_lock_irqsave(i32* %54, i64 %55)
  %57 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %13, align 8
  %58 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %57, i32 0, i32 4
  %59 = load %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch** %58, align 8
  store %struct.pxa3xx_gcu_batch* %59, %struct.pxa3xx_gcu_batch** %12, align 8
  %60 = load %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch** %12, align 8
  %61 = getelementptr inbounds %struct.pxa3xx_gcu_batch, %struct.pxa3xx_gcu_batch* %60, i32 0, i32 2
  %62 = load %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch** %61, align 8
  %63 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %13, align 8
  %64 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %63, i32 0, i32 4
  store %struct.pxa3xx_gcu_batch* %62, %struct.pxa3xx_gcu_batch** %64, align 8
  %65 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %13, align 8
  %66 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %65, i32 0, i32 0
  %67 = load i64, i64* %11, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  %69 = load %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch** %12, align 8
  %70 = getelementptr inbounds %struct.pxa3xx_gcu_batch, %struct.pxa3xx_gcu_batch* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = load i32, i32* %14, align 4
  %74 = mul nsw i32 %73, 4
  %75 = call i32 @copy_from_user(i32* %71, i8* %72, i32 %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %97

78:                                               ; preds = %52
  %79 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %13, align 8
  %80 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %79, i32 0, i32 0
  %81 = load i64, i64* %11, align 8
  %82 = call i32 @spin_lock_irqsave(i32* %80, i64 %81)
  %83 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %13, align 8
  %84 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %83, i32 0, i32 4
  %85 = load %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch** %84, align 8
  %86 = load %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch** %12, align 8
  %87 = getelementptr inbounds %struct.pxa3xx_gcu_batch, %struct.pxa3xx_gcu_batch* %86, i32 0, i32 2
  store %struct.pxa3xx_gcu_batch* %85, %struct.pxa3xx_gcu_batch** %87, align 8
  %88 = load %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch** %12, align 8
  %89 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %13, align 8
  %90 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %89, i32 0, i32 4
  store %struct.pxa3xx_gcu_batch* %88, %struct.pxa3xx_gcu_batch** %90, align 8
  %91 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %13, align 8
  %92 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %91, i32 0, i32 0
  %93 = load i64, i64* %11, align 8
  %94 = call i32 @spin_unlock_irqrestore(i32* %92, i64 %93)
  %95 = load i32, i32* @EFAULT, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %5, align 4
  br label %153

97:                                               ; preds = %52
  %98 = load i32, i32* %14, align 4
  %99 = load %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch** %12, align 8
  %100 = getelementptr inbounds %struct.pxa3xx_gcu_batch, %struct.pxa3xx_gcu_batch* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 8
  %101 = load %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch** %12, align 8
  %102 = getelementptr inbounds %struct.pxa3xx_gcu_batch, %struct.pxa3xx_gcu_batch* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %14, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32 16777216, i32* %106, align 4
  %107 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %13, align 8
  %108 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %107, i32 0, i32 0
  %109 = load i64, i64* %11, align 8
  %110 = call i32 @spin_lock_irqsave(i32* %108, i64 %109)
  %111 = load %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch** %12, align 8
  %112 = getelementptr inbounds %struct.pxa3xx_gcu_batch, %struct.pxa3xx_gcu_batch* %111, i32 0, i32 2
  store %struct.pxa3xx_gcu_batch* null, %struct.pxa3xx_gcu_batch** %112, align 8
  %113 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %13, align 8
  %114 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %113, i32 0, i32 3
  %115 = load %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch** %114, align 8
  %116 = icmp ne %struct.pxa3xx_gcu_batch* %115, null
  br i1 %116, label %117, label %129

117:                                              ; preds = %97
  %118 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %13, align 8
  %119 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %118, i32 0, i32 2
  %120 = load %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch** %119, align 8
  %121 = icmp eq %struct.pxa3xx_gcu_batch* %120, null
  %122 = zext i1 %121 to i32
  %123 = call i32 @BUG_ON(i32 %122)
  %124 = load %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch** %12, align 8
  %125 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %13, align 8
  %126 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %125, i32 0, i32 2
  %127 = load %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch** %126, align 8
  %128 = getelementptr inbounds %struct.pxa3xx_gcu_batch, %struct.pxa3xx_gcu_batch* %127, i32 0, i32 2
  store %struct.pxa3xx_gcu_batch* %124, %struct.pxa3xx_gcu_batch** %128, align 8
  br label %133

129:                                              ; preds = %97
  %130 = load %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch** %12, align 8
  %131 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %13, align 8
  %132 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %131, i32 0, i32 3
  store %struct.pxa3xx_gcu_batch* %130, %struct.pxa3xx_gcu_batch** %132, align 8
  br label %133

133:                                              ; preds = %129, %117
  %134 = load %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch** %12, align 8
  %135 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %13, align 8
  %136 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %135, i32 0, i32 2
  store %struct.pxa3xx_gcu_batch* %134, %struct.pxa3xx_gcu_batch** %136, align 8
  %137 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %13, align 8
  %138 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %137, i32 0, i32 1
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %133
  %144 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %13, align 8
  %145 = call i32 @run_ready(%struct.pxa3xx_gcu_priv* %144)
  br label %146

146:                                              ; preds = %143, %133
  %147 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %13, align 8
  %148 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %147, i32 0, i32 0
  %149 = load i64, i64* %11, align 8
  %150 = call i32 @spin_unlock_irqrestore(i32* %148, i64 %149)
  %151 = load i32, i32* %14, align 4
  %152 = mul nsw i32 %151, 4
  store i32 %152, i32* %5, align 4
  br label %153

153:                                              ; preds = %146, %78, %49, %36
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local %struct.pxa3xx_gcu_priv* @to_pxa3xx_gcu_priv(%struct.file*) #1

declare dso_local i32 @pxa3xx_gcu_wait_free(%struct.pxa3xx_gcu_priv*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @copy_from_user(i32*, i8*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @run_ready(%struct.pxa3xx_gcu_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
