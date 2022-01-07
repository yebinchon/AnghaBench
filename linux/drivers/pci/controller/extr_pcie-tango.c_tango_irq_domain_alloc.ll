; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-tango.c_tango_irq_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-tango.c_tango_irq_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.tango_pcie* }
%struct.tango_pcie = type { i32, i32 }

@MSI_MAX = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@tango_chip = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32, i8*)* @tango_irq_domain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tango_irq_domain_alloc(%struct.irq_domain* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.tango_pcie*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %14 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %13, i32 0, i32 0
  %15 = load %struct.tango_pcie*, %struct.tango_pcie** %14, align 8
  store %struct.tango_pcie* %15, %struct.tango_pcie** %10, align 8
  %16 = load %struct.tango_pcie*, %struct.tango_pcie** %10, align 8
  %17 = getelementptr inbounds %struct.tango_pcie, %struct.tango_pcie* %16, i32 0, i32 0
  %18 = load i64, i64* %11, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.tango_pcie*, %struct.tango_pcie** %10, align 8
  %21 = getelementptr inbounds %struct.tango_pcie, %struct.tango_pcie* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MSI_MAX, align 4
  %24 = call i32 @find_first_zero_bit(i32 %22, i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @MSI_MAX, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %4
  %29 = load %struct.tango_pcie*, %struct.tango_pcie** %10, align 8
  %30 = getelementptr inbounds %struct.tango_pcie, %struct.tango_pcie* %29, i32 0, i32 0
  %31 = load i64, i64* %11, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load i32, i32* @ENOSPC, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %51

35:                                               ; preds = %4
  %36 = load i32, i32* %12, align 4
  %37 = load %struct.tango_pcie*, %struct.tango_pcie** %10, align 8
  %38 = getelementptr inbounds %struct.tango_pcie, %struct.tango_pcie* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @__set_bit(i32 %36, i32 %39)
  %41 = load %struct.tango_pcie*, %struct.tango_pcie** %10, align 8
  %42 = getelementptr inbounds %struct.tango_pcie, %struct.tango_pcie* %41, i32 0, i32 0
  %43 = load i64, i64* %11, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.tango_pcie*, %struct.tango_pcie** %10, align 8
  %49 = load i32, i32* @handle_edge_irq, align 4
  %50 = call i32 @irq_domain_set_info(%struct.irq_domain* %45, i32 %46, i32 %47, i32* @tango_chip, %struct.tango_pcie* %48, i32 %49, i32* null, i32* null)
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %35, %28
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @irq_domain_set_info(%struct.irq_domain*, i32, i32, i32*, %struct.tango_pcie*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
