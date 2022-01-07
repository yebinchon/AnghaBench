; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-tango.c_update_msi_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-tango.c_update_msi_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32, %struct.tango_pcie* }
%struct.tango_pcie = type { i32, i32 }

@SMP8759_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*, i32)* @update_msi_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_msi_enable(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.tango_pcie*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %11 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %10, i32 0, i32 1
  %12 = load %struct.tango_pcie*, %struct.tango_pcie** %11, align 8
  store %struct.tango_pcie* %12, %struct.tango_pcie** %6, align 8
  %13 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %14 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sdiv i32 %15, 32
  %17 = mul nsw i32 %16, 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %19 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = srem i32 %20, 32
  %22 = call i32 @BIT(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.tango_pcie*, %struct.tango_pcie** %6, align 8
  %24 = getelementptr inbounds %struct.tango_pcie, %struct.tango_pcie* %23, i32 0, i32 1
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.tango_pcie*, %struct.tango_pcie** %6, align 8
  %28 = getelementptr inbounds %struct.tango_pcie, %struct.tango_pcie* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SMP8759_ENABLE, align 4
  %31 = add nsw i32 %29, %30
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %31, %32
  %34 = call i32 @readl_relaxed(i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %2
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %38, %39
  br label %46

41:                                               ; preds = %2
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %42, %44
  br label %46

46:                                               ; preds = %41, %37
  %47 = phi i32 [ %40, %37 ], [ %45, %41 ]
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.tango_pcie*, %struct.tango_pcie** %6, align 8
  %50 = getelementptr inbounds %struct.tango_pcie, %struct.tango_pcie* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @SMP8759_ENABLE, align 4
  %53 = add nsw i32 %51, %52
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %53, %54
  %56 = call i32 @writel_relaxed(i32 %48, i32 %55)
  %57 = load %struct.tango_pcie*, %struct.tango_pcie** %6, align 8
  %58 = getelementptr inbounds %struct.tango_pcie, %struct.tango_pcie* %57, i32 0, i32 1
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl_relaxed(i32) #1

declare dso_local i32 @writel_relaxed(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
