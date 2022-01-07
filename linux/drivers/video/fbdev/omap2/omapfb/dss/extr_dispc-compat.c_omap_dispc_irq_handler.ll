; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc-compat.c_omap_dispc_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc-compat.c_omap_dispc_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.omap_dispc_isr_data = type { i32, i32, i32 (i32, i32)* }

@DISPC_MAX_NR_ISRS = common dso_local global i32 0, align 4
@dispc_compat = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @omap_dispc_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_dispc_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.omap_dispc_isr_data*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* @DISPC_MAX_NR_ISRS, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %12, align 8
  %18 = alloca %struct.omap_dispc_isr_data, i64 %16, align 16
  store i64 %16, i64* %13, align 8
  %19 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc_compat, i32 0, i32 2))
  %20 = call i32 (...) @dispc_read_irqstatus()
  store i32 %20, i32* %7, align 4
  %21 = call i32 (...) @dispc_read_irqenable()
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc_compat, i32 0, i32 2))
  %28 = load i32, i32* @IRQ_NONE, align 4
  store i32 %28, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %101

29:                                               ; preds = %2
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @print_irq_status(i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @dispc_clear_irqstatus(i32 %32)
  %34 = call i32 (...) @dispc_read_irqstatus()
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc_compat, i32 0, i32 4), align 4
  %36 = mul nuw i64 16, %16
  %37 = trunc i64 %36 to i32
  %38 = call i32 @memcpy(%struct.omap_dispc_isr_data* %18, i32 %35, i32 %37)
  %39 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc_compat, i32 0, i32 2))
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %75, %29
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @DISPC_MAX_NR_ISRS, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %78

44:                                               ; preds = %40
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.omap_dispc_isr_data, %struct.omap_dispc_isr_data* %18, i64 %46
  store %struct.omap_dispc_isr_data* %47, %struct.omap_dispc_isr_data** %11, align 8
  %48 = load %struct.omap_dispc_isr_data*, %struct.omap_dispc_isr_data** %11, align 8
  %49 = getelementptr inbounds %struct.omap_dispc_isr_data, %struct.omap_dispc_isr_data* %48, i32 0, i32 2
  %50 = load i32 (i32, i32)*, i32 (i32, i32)** %49, align 8
  %51 = icmp ne i32 (i32, i32)* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %44
  br label %75

53:                                               ; preds = %44
  %54 = load %struct.omap_dispc_isr_data*, %struct.omap_dispc_isr_data** %11, align 8
  %55 = getelementptr inbounds %struct.omap_dispc_isr_data, %struct.omap_dispc_isr_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %53
  %61 = load %struct.omap_dispc_isr_data*, %struct.omap_dispc_isr_data** %11, align 8
  %62 = getelementptr inbounds %struct.omap_dispc_isr_data, %struct.omap_dispc_isr_data* %61, i32 0, i32 2
  %63 = load i32 (i32, i32)*, i32 (i32, i32)** %62, align 8
  %64 = load %struct.omap_dispc_isr_data*, %struct.omap_dispc_isr_data** %11, align 8
  %65 = getelementptr inbounds %struct.omap_dispc_isr_data, %struct.omap_dispc_isr_data* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 %63(i32 %66, i32 %67)
  %69 = load %struct.omap_dispc_isr_data*, %struct.omap_dispc_isr_data** %11, align 8
  %70 = getelementptr inbounds %struct.omap_dispc_isr_data, %struct.omap_dispc_isr_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %60, %53
  br label %75

75:                                               ; preds = %74, %52
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %40

78:                                               ; preds = %40
  %79 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc_compat, i32 0, i32 2))
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %9, align 4
  %82 = xor i32 %81, -1
  %83 = and i32 %80, %82
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc_compat, i32 0, i32 0), align 4
  %85 = and i32 %83, %84
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %78
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc_compat, i32 0, i32 1), align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc_compat, i32 0, i32 1), align 4
  %92 = load i32, i32* %10, align 4
  %93 = xor i32 %92, -1
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc_compat, i32 0, i32 0), align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc_compat, i32 0, i32 0), align 4
  %96 = call i32 (...) @_omap_dispc_set_irqs()
  %97 = call i32 @schedule_work(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc_compat, i32 0, i32 3))
  br label %98

98:                                               ; preds = %88, %78
  %99 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc_compat, i32 0, i32 2))
  %100 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %100, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %101

101:                                              ; preds = %98, %26
  %102 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %102)
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i32 @dispc_read_irqstatus(...) #2

declare dso_local i32 @dispc_read_irqenable(...) #2

declare dso_local i32 @spin_unlock(i32*) #2

declare dso_local i32 @print_irq_status(i32) #2

declare dso_local i32 @dispc_clear_irqstatus(i32) #2

declare dso_local i32 @memcpy(%struct.omap_dispc_isr_data*, i32, i32) #2

declare dso_local i32 @_omap_dispc_set_irqs(...) #2

declare dso_local i32 @schedule_work(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
