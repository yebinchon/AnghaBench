; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa27x_udc.c_pxa_udc_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa27x_udc.c_pxa_udc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_udc = type { i32 }

@UDCISR0 = common dso_local global i32 0, align 4
@UDCISR1 = common dso_local global i32 0, align 4
@UDCCR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Interrupt, UDCISR0:0x%08x, UDCISR1:0x%08x, UDCCR:0x%08x\0A\00", align 1
@UDCISR1_IRSU = common dso_local global i32 0, align 4
@UDCISR1_IRRU = common dso_local global i32 0, align 4
@UDCISR1_IRCC = common dso_local global i32 0, align 4
@UDCISR1_IRRS = common dso_local global i32 0, align 4
@UDCCISR0_EP_MASK = common dso_local global i32 0, align 4
@UDCCISR1_EP_MASK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pxa_udc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_udc_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pxa_udc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.pxa_udc*
  store %struct.pxa_udc* %11, %struct.pxa_udc** %5, align 8
  %12 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %13 = load i32, i32* @UDCISR0, align 4
  %14 = call i32 @udc_readl(%struct.pxa_udc* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %16 = load i32, i32* @UDCISR1, align 4
  %17 = call i32 @udc_readl(%struct.pxa_udc* %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %19 = load i32, i32* @UDCCR, align 4
  %20 = call i32 @udc_readl(%struct.pxa_udc* %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %22 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @dev_vdbg(i32 %23, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, -134217728
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @UDCISR1_IRSU, align 4
  %32 = and i32 %30, %31
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %37 = call i32 @irq_udc_suspend(%struct.pxa_udc* %36)
  br label %38

38:                                               ; preds = %35, %2
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @UDCISR1_IRRU, align 4
  %41 = and i32 %39, %40
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %46 = call i32 @irq_udc_resume(%struct.pxa_udc* %45)
  br label %47

47:                                               ; preds = %44, %38
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @UDCISR1_IRCC, align 4
  %50 = and i32 %48, %49
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %55 = call i32 @irq_udc_reconfig(%struct.pxa_udc* %54)
  br label %56

56:                                               ; preds = %53, %47
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @UDCISR1_IRRS, align 4
  %59 = and i32 %57, %58
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %64 = call i32 @irq_udc_reset(%struct.pxa_udc* %63)
  br label %65

65:                                               ; preds = %62, %56
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @UDCCISR0_EP_MASK, align 4
  %68 = and i32 %66, %67
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @UDCCISR1_EP_MASK, align 4
  %71 = and i32 %69, %70
  %72 = or i32 %68, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %65
  %75 = load i32, i32* %3, align 4
  %76 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %77 = call i32 @irq_handle_data(i32 %75, %struct.pxa_udc* %76)
  br label %78

78:                                               ; preds = %74, %65
  %79 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %79
}

declare dso_local i32 @udc_readl(%struct.pxa_udc*, i32) #1

declare dso_local i32 @dev_vdbg(i32, i8*, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @irq_udc_suspend(%struct.pxa_udc*) #1

declare dso_local i32 @irq_udc_resume(%struct.pxa_udc*) #1

declare dso_local i32 @irq_udc_reconfig(%struct.pxa_udc*) #1

declare dso_local i32 @irq_udc_reset(%struct.pxa_udc*) #1

declare dso_local i32 @irq_handle_data(i32, %struct.pxa_udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
