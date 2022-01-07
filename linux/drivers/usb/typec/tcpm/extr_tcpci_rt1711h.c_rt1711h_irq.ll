; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpci_rt1711h.c_rt1711h_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpci_rt1711h.c_rt1711h_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt1711h_chip = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@TCPC_ALERT = common dso_local global i32 0, align 4
@TCPC_ALERT_CC_STATUS = common dso_local global i32 0, align 4
@TCPC_CC_STATUS = common dso_local global i32 0, align 4
@TCPC_CC_STATUS_TOGGLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rt1711h_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt1711h_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rt1711h_chip*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.rt1711h_chip*
  store %struct.rt1711h_chip* %11, %struct.rt1711h_chip** %9, align 8
  %12 = load %struct.rt1711h_chip*, %struct.rt1711h_chip** %9, align 8
  %13 = getelementptr inbounds %struct.rt1711h_chip, %struct.rt1711h_chip* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %17, i32* %3, align 4
  br label %54

18:                                               ; preds = %2
  %19 = load %struct.rt1711h_chip*, %struct.rt1711h_chip** %9, align 8
  %20 = load i32, i32* @TCPC_ALERT, align 4
  %21 = call i32 @rt1711h_read16(%struct.rt1711h_chip* %19, i32 %20, i32* %7)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %49

25:                                               ; preds = %18
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @TCPC_ALERT_CC_STATUS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %25
  %31 = load %struct.rt1711h_chip*, %struct.rt1711h_chip** %9, align 8
  %32 = load i32, i32* @TCPC_CC_STATUS, align 4
  %33 = call i32 @rt1711h_read8(%struct.rt1711h_chip* %31, i32 %32, i32* %8)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %49

37:                                               ; preds = %30
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @TCPC_CC_STATUS_TOGGLING, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.rt1711h_chip*, %struct.rt1711h_chip** %9, align 8
  %44 = load i32, i32* @TCPC_ALERT, align 4
  %45 = load i32, i32* @TCPC_ALERT_CC_STATUS, align 4
  %46 = call i32 @rt1711h_write8(%struct.rt1711h_chip* %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %42, %37
  br label %48

48:                                               ; preds = %47, %25
  br label %49

49:                                               ; preds = %48, %36, %24
  %50 = load %struct.rt1711h_chip*, %struct.rt1711h_chip** %9, align 8
  %51 = getelementptr inbounds %struct.rt1711h_chip, %struct.rt1711h_chip* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @tcpci_irq(i32 %52)
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %49, %16
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @rt1711h_read16(%struct.rt1711h_chip*, i32, i32*) #1

declare dso_local i32 @rt1711h_read8(%struct.rt1711h_chip*, i32, i32*) #1

declare dso_local i32 @rt1711h_write8(%struct.rt1711h_chip*, i32, i32) #1

declare dso_local i32 @tcpci_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
