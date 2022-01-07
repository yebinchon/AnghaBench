; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-mv-usb.c_mv_otg_init_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-mv-usb.c_mv_otg_init_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_otg = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32*, i32* }

@OTGSC_INTR_A_SESSION_VALID = common dso_local global i32 0, align 4
@OTGSC_INTR_A_VBUS_VALID = common dso_local global i32 0, align 4
@OTGSC_INTSTS_A_SESSION_VALID = common dso_local global i32 0, align 4
@OTGSC_INTSTS_A_VBUS_VALID = common dso_local global i32 0, align 4
@OTGSC_INTR_B_SESSION_VALID = common dso_local global i32 0, align 4
@OTGSC_INTR_B_SESSION_END = common dso_local global i32 0, align 4
@OTGSC_INTSTS_B_SESSION_VALID = common dso_local global i32 0, align 4
@OTGSC_INTSTS_B_SESSION_END = common dso_local global i32 0, align 4
@OTGSC_INTR_USB_ID = common dso_local global i32 0, align 4
@OTGSC_INTSTS_USB_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv_otg*)* @mv_otg_init_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_otg_init_irq(%struct.mv_otg* %0) #0 {
  %2 = alloca %struct.mv_otg*, align 8
  %3 = alloca i32, align 4
  store %struct.mv_otg* %0, %struct.mv_otg** %2, align 8
  %4 = load i32, i32* @OTGSC_INTR_A_SESSION_VALID, align 4
  %5 = load i32, i32* @OTGSC_INTR_A_VBUS_VALID, align 4
  %6 = or i32 %4, %5
  %7 = load %struct.mv_otg*, %struct.mv_otg** %2, align 8
  %8 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 8
  %9 = load i32, i32* @OTGSC_INTSTS_A_SESSION_VALID, align 4
  %10 = load i32, i32* @OTGSC_INTSTS_A_VBUS_VALID, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.mv_otg*, %struct.mv_otg** %2, align 8
  %13 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load %struct.mv_otg*, %struct.mv_otg** %2, align 8
  %15 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %14, i32 0, i32 3
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %35

20:                                               ; preds = %1
  %21 = load i32, i32* @OTGSC_INTR_B_SESSION_VALID, align 4
  %22 = load i32, i32* @OTGSC_INTR_B_SESSION_END, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.mv_otg*, %struct.mv_otg** %2, align 8
  %25 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load i32, i32* @OTGSC_INTSTS_B_SESSION_VALID, align 4
  %29 = load i32, i32* @OTGSC_INTSTS_B_SESSION_END, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.mv_otg*, %struct.mv_otg** %2, align 8
  %32 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %20, %1
  %36 = load %struct.mv_otg*, %struct.mv_otg** %2, align 8
  %37 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %36, i32 0, i32 3
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %53

42:                                               ; preds = %35
  %43 = load i32, i32* @OTGSC_INTR_USB_ID, align 4
  %44 = load %struct.mv_otg*, %struct.mv_otg** %2, align 8
  %45 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load i32, i32* @OTGSC_INTSTS_USB_ID, align 4
  %49 = load %struct.mv_otg*, %struct.mv_otg** %2, align 8
  %50 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %42, %35
  %54 = load %struct.mv_otg*, %struct.mv_otg** %2, align 8
  %55 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %54, i32 0, i32 2
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = call i32 @readl(i32* %57)
  store i32 %58, i32* %3, align 4
  %59 = load %struct.mv_otg*, %struct.mv_otg** %2, align 8
  %60 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* %3, align 4
  %65 = load %struct.mv_otg*, %struct.mv_otg** %2, align 8
  %66 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %65, i32 0, i32 2
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = call i32 @writel(i32 %64, i32* %68)
  ret void
}

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
