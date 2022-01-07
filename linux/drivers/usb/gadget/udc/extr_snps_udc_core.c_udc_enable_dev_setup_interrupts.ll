; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_snps_udc_core.c_udc_enable_dev_setup_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_snps_udc_core.c_udc_enable_dev_setup_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"enable device interrupts for setup data\0A\00", align 1
@UDC_DEVINT_SI = common dso_local global i32 0, align 4
@UDC_DEVINT_SC = common dso_local global i32 0, align 4
@UDC_DEVINT_UR = common dso_local global i32 0, align 4
@UDC_DEVINT_SVC = common dso_local global i32 0, align 4
@UDC_DEVINT_ENUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udc_enable_dev_setup_interrupts(%struct.udc* %0) #0 {
  %2 = alloca %struct.udc*, align 8
  %3 = alloca i32, align 4
  store %struct.udc* %0, %struct.udc** %2, align 8
  %4 = load %struct.udc*, %struct.udc** %2, align 8
  %5 = call i32 @DBG(%struct.udc* %4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.udc*, %struct.udc** %2, align 8
  %7 = getelementptr inbounds %struct.udc, %struct.udc* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @readl(i32* %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @UDC_DEVINT_SI, align 4
  %12 = call i32 @AMD_UNMASK_BIT(i32 %11)
  %13 = load i32, i32* @UDC_DEVINT_SC, align 4
  %14 = call i32 @AMD_UNMASK_BIT(i32 %13)
  %15 = and i32 %12, %14
  %16 = load i32, i32* @UDC_DEVINT_UR, align 4
  %17 = call i32 @AMD_UNMASK_BIT(i32 %16)
  %18 = and i32 %15, %17
  %19 = load i32, i32* @UDC_DEVINT_SVC, align 4
  %20 = call i32 @AMD_UNMASK_BIT(i32 %19)
  %21 = and i32 %18, %20
  %22 = load i32, i32* @UDC_DEVINT_ENUM, align 4
  %23 = call i32 @AMD_UNMASK_BIT(i32 %22)
  %24 = and i32 %21, %23
  %25 = load i32, i32* %3, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.udc*, %struct.udc** %2, align 8
  %29 = getelementptr inbounds %struct.udc, %struct.udc* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @writel(i32 %27, i32* %31)
  ret i32 0
}

declare dso_local i32 @DBG(%struct.udc*, i8*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @AMD_UNMASK_BIT(i32) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
