; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tunnel.c_tb_pci_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tunnel.c_tb_pci_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_tunnel = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_tunnel*, i32)* @tb_pci_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tb_pci_activate(%struct.tb_tunnel* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tb_tunnel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tb_tunnel* %0, %struct.tb_tunnel** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.tb_tunnel*, %struct.tb_tunnel** %4, align 8
  %8 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @tb_pci_port_enable(i32 %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %29

16:                                               ; preds = %2
  %17 = load %struct.tb_tunnel*, %struct.tb_tunnel** %4, align 8
  %18 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @tb_port_is_pcie_up(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load %struct.tb_tunnel*, %struct.tb_tunnel** %4, align 8
  %24 = getelementptr inbounds %struct.tb_tunnel, %struct.tb_tunnel* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @tb_pci_port_enable(i32 %25, i32 %26)
  store i32 %27, i32* %3, align 4
  br label %29

28:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %22, %14
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @tb_pci_port_enable(i32, i32) #1

declare dso_local i64 @tb_port_is_pcie_up(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
