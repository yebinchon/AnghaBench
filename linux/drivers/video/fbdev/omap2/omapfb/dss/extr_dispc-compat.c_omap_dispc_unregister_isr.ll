; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc-compat.c_omap_dispc_unregister_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc-compat.c_omap_dispc_unregister_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.omap_dispc_isr_data* }
%struct.omap_dispc_isr_data = type { i8*, i64, i32* }

@EINVAL = common dso_local global i32 0, align 4
@dispc_compat = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@DISPC_MAX_NR_ISRS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_dispc_unregister_isr(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.omap_dispc_isr_data*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %9, align 4
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dispc_compat, i32 0, i32 0), i64 %13)
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %49, %3
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @DISPC_MAX_NR_ISRS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %52

19:                                               ; preds = %15
  %20 = load %struct.omap_dispc_isr_data*, %struct.omap_dispc_isr_data** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dispc_compat, i32 0, i32 1), align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.omap_dispc_isr_data, %struct.omap_dispc_isr_data* %20, i64 %22
  store %struct.omap_dispc_isr_data* %23, %struct.omap_dispc_isr_data** %10, align 8
  %24 = load %struct.omap_dispc_isr_data*, %struct.omap_dispc_isr_data** %10, align 8
  %25 = getelementptr inbounds %struct.omap_dispc_isr_data, %struct.omap_dispc_isr_data* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = icmp ne i32* %26, %27
  br i1 %28, label %41, label %29

29:                                               ; preds = %19
  %30 = load %struct.omap_dispc_isr_data*, %struct.omap_dispc_isr_data** %10, align 8
  %31 = getelementptr inbounds %struct.omap_dispc_isr_data, %struct.omap_dispc_isr_data* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = icmp ne i8* %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.omap_dispc_isr_data*, %struct.omap_dispc_isr_data** %10, align 8
  %37 = getelementptr inbounds %struct.omap_dispc_isr_data, %struct.omap_dispc_isr_data* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35, %29, %19
  br label %49

42:                                               ; preds = %35
  %43 = load %struct.omap_dispc_isr_data*, %struct.omap_dispc_isr_data** %10, align 8
  %44 = getelementptr inbounds %struct.omap_dispc_isr_data, %struct.omap_dispc_isr_data* %43, i32 0, i32 2
  store i32* null, i32** %44, align 8
  %45 = load %struct.omap_dispc_isr_data*, %struct.omap_dispc_isr_data** %10, align 8
  %46 = getelementptr inbounds %struct.omap_dispc_isr_data, %struct.omap_dispc_isr_data* %45, i32 0, i32 0
  store i8* null, i8** %46, align 8
  %47 = load %struct.omap_dispc_isr_data*, %struct.omap_dispc_isr_data** %10, align 8
  %48 = getelementptr inbounds %struct.omap_dispc_isr_data, %struct.omap_dispc_isr_data* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  store i32 0, i32* %9, align 4
  br label %52

49:                                               ; preds = %41
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %15

52:                                               ; preds = %42, %15
  %53 = load i32, i32* %9, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = call i32 (...) @_omap_dispc_set_irqs()
  br label %57

57:                                               ; preds = %55, %52
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dispc_compat, i32 0, i32 0), i64 %58)
  %60 = load i32, i32* %9, align 4
  ret i32 %60
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @_omap_dispc_set_irqs(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
