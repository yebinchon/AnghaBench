; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_core.c_mtu3_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_core.c_mtu3_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtu3 = type { i32, i32 }

@U3D_LV1ISR = common dso_local global i32 0, align 4
@U3D_LV1IER = common dso_local global i32 0, align 4
@EP_CTRL_INTR = common dso_local global i32 0, align 4
@MAC2_INTR = common dso_local global i32 0, align 4
@MAC3_INTR = common dso_local global i32 0, align 4
@BMU_INTR = common dso_local global i32 0, align 4
@QMU_INTR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mtu3_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtu3_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mtu3*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.mtu3*
  store %struct.mtu3* %9, %struct.mtu3** %5, align 8
  %10 = load %struct.mtu3*, %struct.mtu3** %5, align 8
  %11 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %10, i32 0, i32 0
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.mtu3*, %struct.mtu3** %5, align 8
  %15 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @U3D_LV1ISR, align 4
  %18 = call i32 @mtu3_readl(i32 %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.mtu3*, %struct.mtu3** %5, align 8
  %20 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @U3D_LV1IER, align 4
  %23 = call i32 @mtu3_readl(i32 %21, i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @EP_CTRL_INTR, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load %struct.mtu3*, %struct.mtu3** %5, align 8
  %32 = call i32 @mtu3_link_isr(%struct.mtu3* %31)
  br label %33

33:                                               ; preds = %30, %2
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @MAC2_INTR, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.mtu3*, %struct.mtu3** %5, align 8
  %40 = call i32 @mtu3_u2_common_isr(%struct.mtu3* %39)
  br label %41

41:                                               ; preds = %38, %33
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @MAC3_INTR, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.mtu3*, %struct.mtu3** %5, align 8
  %48 = call i32 @mtu3_u3_ltssm_isr(%struct.mtu3* %47)
  br label %49

49:                                               ; preds = %46, %41
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @BMU_INTR, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.mtu3*, %struct.mtu3** %5, align 8
  %56 = call i32 @mtu3_ep0_isr(%struct.mtu3* %55)
  br label %57

57:                                               ; preds = %54, %49
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @QMU_INTR, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load %struct.mtu3*, %struct.mtu3** %5, align 8
  %64 = call i32 @mtu3_qmu_isr(%struct.mtu3* %63)
  br label %65

65:                                               ; preds = %62, %57
  %66 = load %struct.mtu3*, %struct.mtu3** %5, align 8
  %67 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %66, i32 0, i32 0
  %68 = load i64, i64* %6, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  %70 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %70
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mtu3_readl(i32, i32) #1

declare dso_local i32 @mtu3_link_isr(%struct.mtu3*) #1

declare dso_local i32 @mtu3_u2_common_isr(%struct.mtu3*) #1

declare dso_local i32 @mtu3_u3_ltssm_isr(%struct.mtu3*) #1

declare dso_local i32 @mtu3_ep0_isr(%struct.mtu3*) #1

declare dso_local i32 @mtu3_qmu_isr(%struct.mtu3*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
