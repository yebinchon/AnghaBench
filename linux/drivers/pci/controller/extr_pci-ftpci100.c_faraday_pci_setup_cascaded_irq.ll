; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-ftpci100.c_faraday_pci_setup_cascaded_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-ftpci100.c_faraday_pci_setup_cascaded_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.faraday_pci = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"missing child interrupt-controller node\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to get parent IRQ\0A\00", align 1
@PCI_NUM_INTX = common dso_local global i32 0, align 4
@faraday_pci_irqdomain_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"failed to create Gemini PCI IRQ domain\0A\00", align 1
@faraday_pci_irq_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.faraday_pci*)* @faraday_pci_setup_cascaded_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @faraday_pci_setup_cascaded_irq(%struct.faraday_pci* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.faraday_pci*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.faraday_pci* %0, %struct.faraday_pci** %3, align 8
  %7 = load %struct.faraday_pci*, %struct.faraday_pci** %3, align 8
  %8 = getelementptr inbounds %struct.faraday_pci, %struct.faraday_pci* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.device_node* @of_get_next_child(i32 %11, i32* null)
  store %struct.device_node* %12, %struct.device_node** %4, align 8
  %13 = load %struct.device_node*, %struct.device_node** %4, align 8
  %14 = icmp ne %struct.device_node* %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %1
  %16 = load %struct.faraday_pci*, %struct.faraday_pci** %3, align 8
  %17 = getelementptr inbounds %struct.faraday_pci, %struct.faraday_pci* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = call i32 @dev_err(%struct.TYPE_2__* %18, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %80

22:                                               ; preds = %1
  %23 = load %struct.device_node*, %struct.device_node** %4, align 8
  %24 = call i32 @of_irq_get(%struct.device_node* %23, i32 0)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %22
  %28 = load %struct.faraday_pci*, %struct.faraday_pci** %3, align 8
  %29 = getelementptr inbounds %struct.faraday_pci, %struct.faraday_pci* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = call i32 @dev_err(%struct.TYPE_2__* %30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.device_node*, %struct.device_node** %4, align 8
  %33 = call i32 @of_node_put(%struct.device_node* %32)
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %40

37:                                               ; preds = %27
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  br label %40

40:                                               ; preds = %37, %36
  %41 = phi i32 [ %34, %36 ], [ %39, %37 ]
  store i32 %41, i32* %2, align 4
  br label %80

42:                                               ; preds = %22
  %43 = load %struct.device_node*, %struct.device_node** %4, align 8
  %44 = load i32, i32* @PCI_NUM_INTX, align 4
  %45 = load %struct.faraday_pci*, %struct.faraday_pci** %3, align 8
  %46 = call i32 @irq_domain_add_linear(%struct.device_node* %43, i32 %44, i32* @faraday_pci_irqdomain_ops, %struct.faraday_pci* %45)
  %47 = load %struct.faraday_pci*, %struct.faraday_pci** %3, align 8
  %48 = getelementptr inbounds %struct.faraday_pci, %struct.faraday_pci* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.device_node*, %struct.device_node** %4, align 8
  %50 = call i32 @of_node_put(%struct.device_node* %49)
  %51 = load %struct.faraday_pci*, %struct.faraday_pci** %3, align 8
  %52 = getelementptr inbounds %struct.faraday_pci, %struct.faraday_pci* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %42
  %56 = load %struct.faraday_pci*, %struct.faraday_pci** %3, align 8
  %57 = getelementptr inbounds %struct.faraday_pci, %struct.faraday_pci* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = call i32 @dev_err(%struct.TYPE_2__* %58, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %80

62:                                               ; preds = %42
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @faraday_pci_irq_handler, align 4
  %65 = load %struct.faraday_pci*, %struct.faraday_pci** %3, align 8
  %66 = call i32 @irq_set_chained_handler_and_data(i32 %63, i32 %64, %struct.faraday_pci* %65)
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %76, %62
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %68, 4
  br i1 %69, label %70, label %79

70:                                               ; preds = %67
  %71 = load %struct.faraday_pci*, %struct.faraday_pci** %3, align 8
  %72 = getelementptr inbounds %struct.faraday_pci, %struct.faraday_pci* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @irq_create_mapping(i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %70
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %67

79:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %79, %55, %40, %15
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.device_node* @of_get_next_child(i32, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @of_irq_get(%struct.device_node*, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @irq_domain_add_linear(%struct.device_node*, i32, i32*, %struct.faraday_pci*) #1

declare dso_local i32 @irq_set_chained_handler_and_data(i32, i32, %struct.faraday_pci*) #1

declare dso_local i32 @irq_create_mapping(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
