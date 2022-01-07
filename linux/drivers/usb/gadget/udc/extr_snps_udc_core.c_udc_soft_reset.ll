; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_snps_udc_core.c_udc_soft_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_snps_udc_core.c_udc_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"Soft reset\0A\00", align 1
@UDC_EPINT_MSK_DISABLE_ALL = common dso_local global i32 0, align 4
@UDC_DEV_MSK_DISABLE = common dso_local global i32 0, align 4
@UDC_BCM_REV = common dso_local global i64 0, align 8
@udc_irq_spinlock = common dso_local global i32 0, align 4
@UDC_DEVCFG_SOFTRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.udc*)* @udc_soft_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udc_soft_reset(%struct.udc* %0) #0 {
  %2 = alloca %struct.udc*, align 8
  %3 = alloca i64, align 8
  store %struct.udc* %0, %struct.udc** %2, align 8
  %4 = load %struct.udc*, %struct.udc** %2, align 8
  %5 = call i32 @DBG(%struct.udc* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @UDC_EPINT_MSK_DISABLE_ALL, align 4
  %7 = load %struct.udc*, %struct.udc** %2, align 8
  %8 = getelementptr inbounds %struct.udc, %struct.udc* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = call i32 @writel(i32 %6, i32* %10)
  %12 = load i32, i32* @UDC_DEV_MSK_DISABLE, align 4
  %13 = load %struct.udc*, %struct.udc** %2, align 8
  %14 = getelementptr inbounds %struct.udc, %struct.udc* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = call i32 @writel(i32 %12, i32* %16)
  %18 = load %struct.udc*, %struct.udc** %2, align 8
  %19 = getelementptr inbounds %struct.udc, %struct.udc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @UDC_BCM_REV, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %1
  %24 = load i64, i64* %3, align 8
  %25 = call i32 @spin_lock_irqsave(i32* @udc_irq_spinlock, i64 %24)
  %26 = load i32, i32* @UDC_DEVCFG_SOFTRESET, align 4
  %27 = call i32 @AMD_BIT(i32 %26)
  %28 = load %struct.udc*, %struct.udc** %2, align 8
  %29 = getelementptr inbounds %struct.udc, %struct.udc* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @writel(i32 %27, i32* %31)
  %33 = load %struct.udc*, %struct.udc** %2, align 8
  %34 = getelementptr inbounds %struct.udc, %struct.udc* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @readl(i32* %36)
  %38 = load i64, i64* %3, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* @udc_irq_spinlock, i64 %38)
  br label %40

40:                                               ; preds = %23, %1
  ret void
}

declare dso_local i32 @DBG(%struct.udc*, i8*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @AMD_BIT(i32) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
