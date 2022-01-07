; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s626.c_s626_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s626.c_s626_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.s626_private* }
%struct.s626_private = type { i64 }

@S626_P_IER = common dso_local global i64 0, align 8
@S626_IRQ_GPIO3 = common dso_local global i32 0, align 4
@S626_IRQ_RPS1 = common dso_local global i32 0, align 4
@S626_P_ISR = common dso_local global i64 0, align 8
@S626_MC1_SHUTDOWN = common dso_local global i32 0, align 4
@S626_P_MC1 = common dso_local global i64 0, align 8
@S626_ACON1_BASE = common dso_local global i32 0, align 4
@S626_P_ACON1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @s626_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s626_detach(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.s626_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %4 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 1
  %6 = load %struct.s626_private*, %struct.s626_private** %5, align 8
  store %struct.s626_private* %6, %struct.s626_private** %3, align 8
  %7 = load %struct.s626_private*, %struct.s626_private** %3, align 8
  %8 = icmp ne %struct.s626_private* %7, null
  br i1 %8, label %9, label %49

9:                                                ; preds = %1
  %10 = load %struct.s626_private*, %struct.s626_private** %3, align 8
  %11 = getelementptr inbounds %struct.s626_private, %struct.s626_private* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %48

16:                                               ; preds = %9
  %17 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @S626_P_IER, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel(i32 0, i64 %21)
  %23 = load i32, i32* @S626_IRQ_GPIO3, align 4
  %24 = load i32, i32* @S626_IRQ_RPS1, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %27 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @S626_P_ISR, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i32 %25, i64 %30)
  %32 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %33 = call i32 @s626_write_misc2(%struct.comedi_device* %32, i32 0)
  %34 = load i32, i32* @S626_MC1_SHUTDOWN, align 4
  %35 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %36 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @S626_P_MC1, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel(i32 %34, i64 %39)
  %41 = load i32, i32* @S626_ACON1_BASE, align 4
  %42 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %43 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @S626_P_ACON1, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel(i32 %41, i64 %46)
  br label %48

48:                                               ; preds = %16, %9
  br label %49

49:                                               ; preds = %48, %1
  %50 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %51 = call i32 @comedi_pci_detach(%struct.comedi_device* %50)
  %52 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %53 = call i32 @s626_free_dma_buffers(%struct.comedi_device* %52)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @s626_write_misc2(%struct.comedi_device*, i32) #1

declare dso_local i32 @comedi_pci_detach(%struct.comedi_device*) #1

declare dso_local i32 @s626_free_dma_buffers(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
