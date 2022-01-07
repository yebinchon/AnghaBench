; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_bus_wait_crs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_bus_wait_crs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"pci %04x:%02x:%02x.%d: not ready after %dms; giving up\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"pci %04x:%02x:%02x.%d: not ready after %dms; waiting\0A\00", align 1
@PCI_VENDOR_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"pci %04x:%02x:%02x.%d: ready after %dms\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32*, i32)* @pci_bus_wait_crs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_bus_wait_crs(%struct.pci_bus* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %11 = load i32*, i32** %8, align 8
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @pci_bus_crs_vendor_id(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %89

16:                                               ; preds = %4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %89

20:                                               ; preds = %16
  br label %21

21:                                               ; preds = %71, %20
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @pci_bus_crs_vendor_id(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %72

26:                                               ; preds = %21
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %32 = call i32 @pci_domain_nr(%struct.pci_bus* %31)
  %33 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %34 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @PCI_SLOT(i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @PCI_FUNC(i32 %38)
  %40 = load i32, i32* %10, align 4
  %41 = sub nsw i32 %40, 1
  %42 = call i32 @pr_warn(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35, i32 %37, i32 %39, i32 %41)
  store i32 0, i32* %5, align 4
  br label %89

43:                                               ; preds = %26
  %44 = load i32, i32* %10, align 4
  %45 = icmp sge i32 %44, 1000
  br i1 %45, label %46, label %59

46:                                               ; preds = %43
  %47 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %48 = call i32 @pci_domain_nr(%struct.pci_bus* %47)
  %49 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %50 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @PCI_SLOT(i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @PCI_FUNC(i32 %54)
  %56 = load i32, i32* %10, align 4
  %57 = sub nsw i32 %56, 1
  %58 = call i32 @pr_info(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %51, i32 %53, i32 %55, i32 %57)
  br label %59

59:                                               ; preds = %46, %43
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @msleep(i32 %60)
  %62 = load i32, i32* %10, align 4
  %63 = mul nsw i32 %62, 2
  store i32 %63, i32* %10, align 4
  %64 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @PCI_VENDOR_ID, align 4
  %67 = load i32*, i32** %8, align 8
  %68 = call i64 @pci_bus_read_config_dword(%struct.pci_bus* %64, i32 %65, i32 %66, i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %59
  store i32 0, i32* %5, align 4
  br label %89

71:                                               ; preds = %59
  br label %21

72:                                               ; preds = %21
  %73 = load i32, i32* %10, align 4
  %74 = icmp sge i32 %73, 1000
  br i1 %74, label %75, label %88

75:                                               ; preds = %72
  %76 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %77 = call i32 @pci_domain_nr(%struct.pci_bus* %76)
  %78 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %79 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @PCI_SLOT(i32 %81)
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @PCI_FUNC(i32 %83)
  %85 = load i32, i32* %10, align 4
  %86 = sub nsw i32 %85, 1
  %87 = call i32 @pr_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %77, i32 %80, i32 %82, i32 %84, i32 %86)
  br label %88

88:                                               ; preds = %75, %72
  store i32 1, i32* %5, align 4
  br label %89

89:                                               ; preds = %88, %70, %30, %19, %15
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i64 @pci_bus_crs_vendor_id(i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pci_domain_nr(%struct.pci_bus*) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @pci_bus_read_config_dword(%struct.pci_bus*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
