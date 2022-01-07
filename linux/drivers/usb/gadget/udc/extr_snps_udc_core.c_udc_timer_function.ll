; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_snps_udc_core.c_udc_timer_function.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_snps_udc_core.c_udc_timer_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i8* }
%struct.timer_list = type { i32 }

@udc_irq_spinlock = common dso_local global i32 0, align 4
@set_rde = common dso_local global i32 0, align 4
@udc = common dso_local global %struct.TYPE_7__* null, align 8
@UDC_DEVCTL_RDE = common dso_local global i32 0, align 4
@UDC_DEVSTS_RXFIFO_EMPTY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@HZ = common dso_local global i32 0, align 4
@UDC_RDE_TIMER_DIV = common dso_local global i32 0, align 4
@udc_timer = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@stop_timer = common dso_local global i64 0, align 8
@UDC_RDE_TIMER_SECONDS = common dso_local global i32 0, align 4
@on_exit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @udc_timer_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udc_timer_function(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = call i32 @spin_lock_irq(i32* @udc_irq_spinlock)
  %5 = load i32, i32* @set_rde, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %64

7:                                                ; preds = %1
  %8 = load i32, i32* @set_rde, align 4
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %26

10:                                               ; preds = %7
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** @udc, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = call i32 @readl(i32* %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @UDC_DEVCTL_RDE, align 4
  %17 = call i32 @AMD_BIT(i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** @udc, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = call i32 @writel(i32 %20, i32* %24)
  store i32 -1, i32* @set_rde, align 4
  br label %63

26:                                               ; preds = %7
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** @udc, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = call i32 @readl(i32* %30)
  %32 = load i32, i32* @UDC_DEVSTS_RXFIFO_EMPTY, align 4
  %33 = call i32 @AMD_BIT(i32 %32)
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %26
  %37 = load i8*, i8** @jiffies, align 8
  %38 = load i32, i32* @HZ, align 4
  %39 = load i32, i32* @UDC_RDE_TIMER_DIV, align 4
  %40 = sdiv i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr i8, i8* %37, i64 %41
  store i8* %42, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @udc_timer, i32 0, i32 0), align 8
  %43 = load i64, i64* @stop_timer, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %36
  %46 = call i32 @add_timer(%struct.TYPE_6__* @udc_timer)
  br label %47

47:                                               ; preds = %45, %36
  br label %62

48:                                               ; preds = %26
  %49 = load i32, i32* @set_rde, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* @set_rde, align 4
  %51 = load i8*, i8** @jiffies, align 8
  %52 = load i32, i32* @HZ, align 4
  %53 = load i32, i32* @UDC_RDE_TIMER_SECONDS, align 4
  %54 = mul nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr i8, i8* %51, i64 %55
  store i8* %56, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @udc_timer, i32 0, i32 0), align 8
  %57 = load i64, i64* @stop_timer, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %48
  %60 = call i32 @add_timer(%struct.TYPE_6__* @udc_timer)
  br label %61

61:                                               ; preds = %59, %48
  br label %62

62:                                               ; preds = %61, %47
  br label %63

63:                                               ; preds = %62, %10
  br label %65

64:                                               ; preds = %1
  store i32 -1, i32* @set_rde, align 4
  br label %65

65:                                               ; preds = %64, %63
  %66 = call i32 @spin_unlock_irq(i32* @udc_irq_spinlock)
  %67 = load i64, i64* @stop_timer, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = call i32 @complete(i32* @on_exit)
  br label %71

71:                                               ; preds = %69, %65
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @AMD_BIT(i32) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @add_timer(%struct.TYPE_6__*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
