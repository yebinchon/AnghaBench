; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aer_inject.c_aer_inj_write_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aer_inject.c_aer_inj_write_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }
%struct.aer_error = type { i32 }

@inject_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32)* @aer_inj_write_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aer_inj_write_config(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.aer_error*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load i64, i64* %14, align 8
  %19 = call i32 @spin_lock_irqsave(i32* @inject_lock, i64 %18)
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ne i64 %21, 4
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  br label %61

24:                                               ; preds = %5
  %25 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %26 = call i32 @pci_domain_nr(%struct.pci_bus* %25)
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %16, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %61

30:                                               ; preds = %24
  %31 = load i32, i32* %16, align 4
  %32 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %33 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call %struct.aer_error* @__find_aer_error(i32 %31, i32 %34, i32 %35)
  store %struct.aer_error* %36, %struct.aer_error** %13, align 8
  %37 = load %struct.aer_error*, %struct.aer_error** %13, align 8
  %38 = icmp ne %struct.aer_error* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  br label %61

40:                                               ; preds = %30
  %41 = load %struct.aer_error*, %struct.aer_error** %13, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32* @find_pci_config_dword(%struct.aer_error* %41, i32 %42, i32* %15)
  store i32* %43, i32** %12, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %60

46:                                               ; preds = %40
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i32, i32* %11, align 4
  %51 = load i32*, i32** %12, align 8
  %52 = load i32, i32* %51, align 4
  %53 = xor i32 %52, %50
  store i32 %53, i32* %51, align 4
  br label %57

54:                                               ; preds = %46
  %55 = load i32, i32* %11, align 4
  %56 = load i32*, i32** %12, align 8
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %54, %49
  %58 = load i64, i64* %14, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* @inject_lock, i64 %58)
  store i32 0, i32* %6, align 4
  br label %71

60:                                               ; preds = %40
  br label %61

61:                                               ; preds = %60, %39, %29, %23
  %62 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @aer_inj_write(%struct.pci_bus* %62, i32 %63, i32 %64, i32 %65, i32 %66)
  store i32 %67, i32* %17, align 4
  %68 = load i64, i64* %14, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* @inject_lock, i64 %68)
  %70 = load i32, i32* %17, align 4
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %61, %57
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pci_domain_nr(%struct.pci_bus*) #1

declare dso_local %struct.aer_error* @__find_aer_error(i32, i32, i32) #1

declare dso_local i32* @find_pci_config_dword(%struct.aer_error*, i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @aer_inj_write(%struct.pci_bus*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
