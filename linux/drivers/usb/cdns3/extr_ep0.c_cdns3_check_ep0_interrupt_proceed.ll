; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_ep0.c_cdns3_check_ep0_interrupt_proceed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_ep0.c_cdns3_check_ep0_interrupt_proceed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3_device = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EP_STS_SETUP = common dso_local global i32 0, align 4
@EP_STS_IOC = common dso_local global i32 0, align 4
@EP_STS_ISP = common dso_local global i32 0, align 4
@EP_STS_DESCMIS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cdns3_check_ep0_interrupt_proceed(%struct.cdns3_device* %0, i32 %1) #0 {
  %3 = alloca %struct.cdns3_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cdns3_device* %0, %struct.cdns3_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @cdns3_select_ep(%struct.cdns3_device* %6, i32 %7)
  %9 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %10 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %9, i32 0, i32 3
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @readl(i32* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %16 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @writel(i32 %14, i32* %18)
  %20 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @trace_cdns3_ep0_irq(%struct.cdns3_device* %20, i32 %21)
  %23 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %24 = call i32 @__pending_setup_status_handler(%struct.cdns3_device* %23)
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @EP_STS_SETUP, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %31 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  br label %32

32:                                               ; preds = %29, %2
  %33 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %34 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @EP_STS_IOC, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %44 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  %45 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %46 = call i32 @cdns3_allow_enable_l1(%struct.cdns3_device* %45, i32 0)
  %47 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %48 = call i32 @cdns3_ep0_setup_phase(%struct.cdns3_device* %47)
  br label %66

49:                                               ; preds = %37, %32
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @EP_STS_IOC, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @EP_STS_ISP, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54, %49
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %62 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %64 = call i32 @cdns3_transfer_completed(%struct.cdns3_device* %63)
  br label %65

65:                                               ; preds = %59, %54
  br label %66

66:                                               ; preds = %65, %42
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @EP_STS_DESCMIS, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %66
  %72 = load i32, i32* %4, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %76 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  %80 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %81 = call i32 @cdns3_prepare_setup_packet(%struct.cdns3_device* %80)
  br label %82

82:                                               ; preds = %79, %74, %71
  br label %83

83:                                               ; preds = %82, %66
  ret void
}

declare dso_local i32 @cdns3_select_ep(%struct.cdns3_device*, i32) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @trace_cdns3_ep0_irq(%struct.cdns3_device*, i32) #1

declare dso_local i32 @__pending_setup_status_handler(%struct.cdns3_device*) #1

declare dso_local i32 @cdns3_allow_enable_l1(%struct.cdns3_device*, i32) #1

declare dso_local i32 @cdns3_ep0_setup_phase(%struct.cdns3_device*) #1

declare dso_local i32 @cdns3_transfer_completed(%struct.cdns3_device*) #1

declare dso_local i32 @cdns3_prepare_setup_packet(%struct.cdns3_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
