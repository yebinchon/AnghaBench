; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_next_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_next_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }
%struct.pci_dev = type { i64 }

@PCI_EXT_CAP_ID_ARI = common dso_local global i32 0, align 4
@PCI_ARI_CAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, %struct.pci_dev*, i32)* @next_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next_fn(%struct.pci_bus* %0, %struct.pci_dev* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_bus*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %5, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %12 = call i64 @pci_ari_enabled(%struct.pci_bus* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %3
  %15 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %16 = icmp ne %struct.pci_dev* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %53

18:                                               ; preds = %14
  %19 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %20 = load i32, i32* @PCI_EXT_CAP_ID_ARI, align 4
  %21 = call i32 @pci_find_ext_capability(%struct.pci_dev* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %53

25:                                               ; preds = %18
  %26 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* @PCI_ARI_CAP, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @pci_read_config_word(%struct.pci_dev* %26, i64 %30, i32* %9)
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @PCI_ARI_CAP_NFN(i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ule i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %53

38:                                               ; preds = %25
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %4, align 4
  br label %53

40:                                               ; preds = %3
  %41 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %42 = icmp ne %struct.pci_dev* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43, %40
  %49 = load i32, i32* %7, align 4
  %50 = add i32 %49, 1
  %51 = urem i32 %50, 8
  store i32 %51, i32* %4, align 4
  br label %53

52:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %48, %38, %37, %24, %17
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i64 @pci_ari_enabled(%struct.pci_bus*) #1

declare dso_local i32 @pci_find_ext_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @PCI_ARI_CAP_NFN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
