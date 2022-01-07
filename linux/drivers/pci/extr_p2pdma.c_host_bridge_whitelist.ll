; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_p2pdma.c_host_bridge_whitelist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_p2pdma.c_host_bridge_whitelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_host_bridge = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_dev*)* @host_bridge_whitelist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @host_bridge_whitelist(%struct.pci_dev* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.pci_host_bridge*, align 8
  %7 = alloca %struct.pci_host_bridge*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.pci_host_bridge* @pci_find_host_bridge(i32 %10)
  store %struct.pci_host_bridge* %11, %struct.pci_host_bridge** %6, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.pci_host_bridge* @pci_find_host_bridge(i32 %14)
  store %struct.pci_host_bridge* %15, %struct.pci_host_bridge** %7, align 8
  %16 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %6, align 8
  %17 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %7, align 8
  %18 = icmp eq %struct.pci_host_bridge* %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %6, align 8
  %21 = call i32 @__host_bridge_whitelist(%struct.pci_host_bridge* %20, i32 1)
  store i32 %21, i32* %3, align 4
  br label %32

22:                                               ; preds = %2
  %23 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %6, align 8
  %24 = call i32 @__host_bridge_whitelist(%struct.pci_host_bridge* %23, i32 0)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %7, align 8
  %28 = call i32 @__host_bridge_whitelist(%struct.pci_host_bridge* %27, i32 0)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %32

31:                                               ; preds = %26, %22
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %30, %19
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.pci_host_bridge* @pci_find_host_bridge(i32) #1

declare dso_local i32 @__host_bridge_whitelist(%struct.pci_host_bridge*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
