; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_p2pdma.c___host_bridge_whitelist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_p2pdma.c___host_bridge_whitelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_p2pdma_whitelist_entry = type { i16, i16, i32 }
%struct.pci_host_bridge = type { i32 }
%struct.pci_dev = type { i16, i16 }

@pci_p2pdma_whitelist = common dso_local global %struct.pci_p2pdma_whitelist_entry* null, align 8
@REQ_SAME_HOST_BRIDGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_host_bridge*, i32)* @__host_bridge_whitelist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__host_bridge_whitelist(%struct.pci_host_bridge* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_host_bridge*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.pci_p2pdma_whitelist_entry*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  store %struct.pci_host_bridge* %0, %struct.pci_host_bridge** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %4, align 8
  %11 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @PCI_DEVFN(i32 0, i32 0)
  %14 = call %struct.pci_dev* @pci_get_slot(i32 %12, i32 %13)
  store %struct.pci_dev* %14, %struct.pci_dev** %6, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %16 = icmp ne %struct.pci_dev* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %66

18:                                               ; preds = %2
  %19 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 0
  %21 = load i16, i16* %20, align 2
  store i16 %21, i16* %8, align 2
  %22 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 1
  %24 = load i16, i16* %23, align 2
  store i16 %24, i16* %9, align 2
  %25 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %26 = call i32 @pci_dev_put(%struct.pci_dev* %25)
  %27 = load %struct.pci_p2pdma_whitelist_entry*, %struct.pci_p2pdma_whitelist_entry** @pci_p2pdma_whitelist, align 8
  store %struct.pci_p2pdma_whitelist_entry* %27, %struct.pci_p2pdma_whitelist_entry** %7, align 8
  br label %28

28:                                               ; preds = %62, %18
  %29 = load %struct.pci_p2pdma_whitelist_entry*, %struct.pci_p2pdma_whitelist_entry** %7, align 8
  %30 = getelementptr inbounds %struct.pci_p2pdma_whitelist_entry, %struct.pci_p2pdma_whitelist_entry* %29, i32 0, i32 0
  %31 = load i16, i16* %30, align 4
  %32 = icmp ne i16 %31, 0
  br i1 %32, label %33, label %65

33:                                               ; preds = %28
  %34 = load i16, i16* %8, align 2
  %35 = zext i16 %34 to i32
  %36 = load %struct.pci_p2pdma_whitelist_entry*, %struct.pci_p2pdma_whitelist_entry** %7, align 8
  %37 = getelementptr inbounds %struct.pci_p2pdma_whitelist_entry, %struct.pci_p2pdma_whitelist_entry* %36, i32 0, i32 0
  %38 = load i16, i16* %37, align 4
  %39 = sext i16 %38 to i32
  %40 = icmp ne i32 %35, %39
  br i1 %40, label %49, label %41

41:                                               ; preds = %33
  %42 = load i16, i16* %9, align 2
  %43 = zext i16 %42 to i32
  %44 = load %struct.pci_p2pdma_whitelist_entry*, %struct.pci_p2pdma_whitelist_entry** %7, align 8
  %45 = getelementptr inbounds %struct.pci_p2pdma_whitelist_entry, %struct.pci_p2pdma_whitelist_entry* %44, i32 0, i32 1
  %46 = load i16, i16* %45, align 2
  %47 = zext i16 %46 to i32
  %48 = icmp ne i32 %43, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41, %33
  br label %62

50:                                               ; preds = %41
  %51 = load %struct.pci_p2pdma_whitelist_entry*, %struct.pci_p2pdma_whitelist_entry** %7, align 8
  %52 = getelementptr inbounds %struct.pci_p2pdma_whitelist_entry, %struct.pci_p2pdma_whitelist_entry* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @REQ_SAME_HOST_BRIDGE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %66

61:                                               ; preds = %57, %50
  store i32 1, i32* %3, align 4
  br label %66

62:                                               ; preds = %49
  %63 = load %struct.pci_p2pdma_whitelist_entry*, %struct.pci_p2pdma_whitelist_entry** %7, align 8
  %64 = getelementptr inbounds %struct.pci_p2pdma_whitelist_entry, %struct.pci_p2pdma_whitelist_entry* %63, i32 1
  store %struct.pci_p2pdma_whitelist_entry* %64, %struct.pci_p2pdma_whitelist_entry** %7, align 8
  br label %28

65:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %61, %60, %17
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.pci_dev* @pci_get_slot(i32, i32) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
