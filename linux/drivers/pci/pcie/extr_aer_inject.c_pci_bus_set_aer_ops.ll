; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aer_inject.c_pci_bus_set_aer_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aer_inject.c_pci_bus_set_aer_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_ops = type { i32 }
%struct.pci_bus = type { i32 }
%struct.pci_bus_ops = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@aer_inj_pci_ops = common dso_local global %struct.pci_ops zeroinitializer, align 4
@inject_lock = common dso_local global i32 0, align 4
@pci_bus_ops_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*)* @pci_bus_set_aer_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_bus_set_aer_ops(%struct.pci_bus* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_bus*, align 8
  %4 = alloca %struct.pci_ops*, align 8
  %5 = alloca %struct.pci_bus_ops*, align 8
  %6 = alloca i64, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.pci_bus_ops* @kmalloc(i32 4, i32 %7)
  store %struct.pci_bus_ops* %8, %struct.pci_bus_ops** %5, align 8
  %9 = load %struct.pci_bus_ops*, %struct.pci_bus_ops** %5, align 8
  %10 = icmp ne %struct.pci_bus_ops* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %35

14:                                               ; preds = %1
  %15 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %16 = call %struct.pci_ops* @pci_bus_set_ops(%struct.pci_bus* %15, %struct.pci_ops* @aer_inj_pci_ops)
  store %struct.pci_ops* %16, %struct.pci_ops** %4, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @spin_lock_irqsave(i32* @inject_lock, i64 %17)
  %19 = load %struct.pci_ops*, %struct.pci_ops** %4, align 8
  %20 = icmp eq %struct.pci_ops* %19, @aer_inj_pci_ops
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %30

22:                                               ; preds = %14
  %23 = load %struct.pci_bus_ops*, %struct.pci_bus_ops** %5, align 8
  %24 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %25 = load %struct.pci_ops*, %struct.pci_ops** %4, align 8
  %26 = call i32 @pci_bus_ops_init(%struct.pci_bus_ops* %23, %struct.pci_bus* %24, %struct.pci_ops* %25)
  %27 = load %struct.pci_bus_ops*, %struct.pci_bus_ops** %5, align 8
  %28 = getelementptr inbounds %struct.pci_bus_ops, %struct.pci_bus_ops* %27, i32 0, i32 0
  %29 = call i32 @list_add(i32* %28, i32* @pci_bus_ops_list)
  store %struct.pci_bus_ops* null, %struct.pci_bus_ops** %5, align 8
  br label %30

30:                                               ; preds = %22, %21
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* @inject_lock, i64 %31)
  %33 = load %struct.pci_bus_ops*, %struct.pci_bus_ops** %5, align 8
  %34 = call i32 @kfree(%struct.pci_bus_ops* %33)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %30, %11
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.pci_bus_ops* @kmalloc(i32, i32) #1

declare dso_local %struct.pci_ops* @pci_bus_set_ops(%struct.pci_bus*, %struct.pci_ops*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pci_bus_ops_init(%struct.pci_bus_ops*, %struct.pci_bus*, %struct.pci_ops*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.pci_bus_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
