; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_ism_drv.c_ism_dev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_ism_drv.c_ism_dev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ism_dev = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@PCI_IRQ_MSI = common dso_local global i32 0, align 4
@ism_handle_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ism_dev*)* @ism_dev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ism_dev_init(%struct.ism_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ism_dev*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.ism_dev* %0, %struct.ism_dev** %3, align 8
  %6 = load %struct.ism_dev*, %struct.ism_dev** %3, align 8
  %7 = getelementptr inbounds %struct.ism_dev, %struct.ism_dev* %6, i32 0, i32 1
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %4, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = load i32, i32* @PCI_IRQ_MSI, align 4
  %11 = call i32 @pci_alloc_irq_vectors(%struct.pci_dev* %9, i32 1, i32 1, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp sle i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %69

15:                                               ; preds = %1
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = call i32 @pci_irq_vector(%struct.pci_dev* %16, i32 0)
  %18 = load i32, i32* @ism_handle_irq, align 4
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = call i32 @pci_name(%struct.pci_dev* %19)
  %21 = load %struct.ism_dev*, %struct.ism_dev** %3, align 8
  %22 = call i32 @request_irq(i32 %17, i32 %18, i32 0, i32 %20, %struct.ism_dev* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  br label %66

26:                                               ; preds = %15
  %27 = load %struct.ism_dev*, %struct.ism_dev** %3, align 8
  %28 = call i32 @register_sba(%struct.ism_dev* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %61

32:                                               ; preds = %26
  %33 = load %struct.ism_dev*, %struct.ism_dev** %3, align 8
  %34 = call i32 @register_ieq(%struct.ism_dev* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %58

38:                                               ; preds = %32
  %39 = load %struct.ism_dev*, %struct.ism_dev** %3, align 8
  %40 = call i32 @ism_read_local_gid(%struct.ism_dev* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %55

44:                                               ; preds = %38
  %45 = load %struct.ism_dev*, %struct.ism_dev** %3, align 8
  %46 = getelementptr inbounds %struct.ism_dev, %struct.ism_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @smcd_register_dev(i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %55

52:                                               ; preds = %44
  %53 = load %struct.ism_dev*, %struct.ism_dev** %3, align 8
  %54 = call i32 @query_info(%struct.ism_dev* %53)
  store i32 0, i32* %2, align 4
  br label %71

55:                                               ; preds = %51, %43
  %56 = load %struct.ism_dev*, %struct.ism_dev** %3, align 8
  %57 = call i32 @unregister_ieq(%struct.ism_dev* %56)
  br label %58

58:                                               ; preds = %55, %37
  %59 = load %struct.ism_dev*, %struct.ism_dev** %3, align 8
  %60 = call i32 @unregister_sba(%struct.ism_dev* %59)
  br label %61

61:                                               ; preds = %58, %31
  %62 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %63 = call i32 @pci_irq_vector(%struct.pci_dev* %62, i32 0)
  %64 = load %struct.ism_dev*, %struct.ism_dev** %3, align 8
  %65 = call i32 @free_irq(i32 %63, %struct.ism_dev* %64)
  br label %66

66:                                               ; preds = %61, %25
  %67 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %68 = call i32 @pci_free_irq_vectors(%struct.pci_dev* %67)
  br label %69

69:                                               ; preds = %66, %14
  %70 = load i32, i32* %5, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %69, %52
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @pci_alloc_irq_vectors(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.ism_dev*) #1

declare dso_local i32 @pci_irq_vector(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @register_sba(%struct.ism_dev*) #1

declare dso_local i32 @register_ieq(%struct.ism_dev*) #1

declare dso_local i32 @ism_read_local_gid(%struct.ism_dev*) #1

declare dso_local i32 @smcd_register_dev(i32) #1

declare dso_local i32 @query_info(%struct.ism_dev*) #1

declare dso_local i32 @unregister_ieq(%struct.ism_dev*) #1

declare dso_local i32 @unregister_sba(%struct.ism_dev*) #1

declare dso_local i32 @free_irq(i32, %struct.ism_dev*) #1

declare dso_local i32 @pci_free_irq_vectors(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
