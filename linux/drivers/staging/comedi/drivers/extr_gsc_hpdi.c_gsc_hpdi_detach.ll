; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_gsc_hpdi.c_gsc_hpdi_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_gsc_hpdi.c_gsc_hpdi_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i64, %struct.hpdi_private* }
%struct.hpdi_private = type { i64 }

@PLX_REG_INTCSR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @gsc_hpdi_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gsc_hpdi_detach(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.hpdi_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %4 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 2
  %6 = load %struct.hpdi_private*, %struct.hpdi_private** %5, align 8
  store %struct.hpdi_private* %6, %struct.hpdi_private** %3, align 8
  %7 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %16 = call i32 @free_irq(i64 %14, %struct.comedi_device* %15)
  br label %17

17:                                               ; preds = %11, %1
  %18 = load %struct.hpdi_private*, %struct.hpdi_private** %3, align 8
  %19 = icmp ne %struct.hpdi_private* %18, null
  br i1 %19, label %20, label %47

20:                                               ; preds = %17
  %21 = load %struct.hpdi_private*, %struct.hpdi_private** %3, align 8
  %22 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  %26 = load %struct.hpdi_private*, %struct.hpdi_private** %3, align 8
  %27 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PLX_REG_INTCSR, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i32 0, i64 %30)
  %32 = load %struct.hpdi_private*, %struct.hpdi_private** %3, align 8
  %33 = getelementptr inbounds %struct.hpdi_private, %struct.hpdi_private* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @iounmap(i64 %34)
  br label %36

36:                                               ; preds = %25, %20
  %37 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %38 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %43 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @iounmap(i64 %44)
  br label %46

46:                                               ; preds = %41, %36
  br label %47

47:                                               ; preds = %46, %17
  %48 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %49 = call i32 @comedi_pci_disable(%struct.comedi_device* %48)
  %50 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %51 = call i32 @gsc_hpdi_free_dma(%struct.comedi_device* %50)
  ret void
}

declare dso_local i32 @free_irq(i64, %struct.comedi_device*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @comedi_pci_disable(%struct.comedi_device*) #1

declare dso_local i32 @gsc_hpdi_free_dma(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
