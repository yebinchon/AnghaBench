; ModuleID = '/home/carl/AnghaBench/linux/drivers/uio/extr_uio_pci_generic.c_irqhandler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/uio/extr_uio_pci_generic.c_irqhandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uio_info = type { i32 }
%struct.uio_pci_generic_dev = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.uio_info*)* @irqhandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @irqhandler(i32 %0, %struct.uio_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.uio_info*, align 8
  %6 = alloca %struct.uio_pci_generic_dev*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.uio_info* %1, %struct.uio_info** %5, align 8
  %7 = load %struct.uio_info*, %struct.uio_info** %5, align 8
  %8 = call %struct.uio_pci_generic_dev* @to_uio_pci_generic_dev(%struct.uio_info* %7)
  store %struct.uio_pci_generic_dev* %8, %struct.uio_pci_generic_dev** %6, align 8
  %9 = load %struct.uio_pci_generic_dev*, %struct.uio_pci_generic_dev** %6, align 8
  %10 = getelementptr inbounds %struct.uio_pci_generic_dev, %struct.uio_pci_generic_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @pci_check_and_mask_intx(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @IRQ_NONE, align 4
  store i32 %15, i32* %3, align 4
  br label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local %struct.uio_pci_generic_dev* @to_uio_pci_generic_dev(%struct.uio_info*) #1

declare dso_local i32 @pci_check_and_mask_intx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
