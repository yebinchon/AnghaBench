; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_enable_msix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_enable_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@qlge_irq_type = common dso_local global i64 0, align 8
@MSIX_IRQ = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@MSI_IRQ = common dso_local global i64 0, align 8
@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"MSI-X Enable failed, trying MSI.\0A\00", align 1
@QL_MSIX_ENABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"MSI-X Enabled, got %d vectors.\0A\00", align 1
@QL_MSI_ENABLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Running with MSI interrupts.\0A\00", align 1
@LEG_IRQ = common dso_local global i64 0, align 8
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Running with legacy interrupts.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ql_adapter*)* @ql_enable_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_enable_msix(%struct.ql_adapter* %0) #0 {
  %2 = alloca %struct.ql_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %2, align 8
  %5 = load i64, i64* @qlge_irq_type, align 8
  %6 = load i64, i64* @MSIX_IRQ, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %86

8:                                                ; preds = %1
  %9 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.TYPE_4__* @kcalloc(i32 %11, i32 4, i32 %12)
  %14 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %14, i32 0, i32 4
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %15, align 8
  %16 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %16, i32 0, i32 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %8
  %21 = load i64, i64* @MSI_IRQ, align 8
  store i64 %21, i64* @qlge_irq_type, align 8
  br label %87

22:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %38, %22
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %32 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %31, i32 0, i32 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %30, i32* %37, align 4
  br label %38

38:                                               ; preds = %29
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %23

41:                                               ; preds = %23
  %42 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %46 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %45, i32 0, i32 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %49 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @pci_enable_msix_range(i32 %44, %struct.TYPE_4__* %47, i32 1, i32 %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %41
  %55 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %56 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %55, i32 0, i32 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = call i32 @kfree(%struct.TYPE_4__* %57)
  %59 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %60 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %59, i32 0, i32 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %60, align 8
  %61 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %62 = load i32, i32* @ifup, align 4
  %63 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %64 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @netif_warn(%struct.ql_adapter* %61, i32 %62, i32 %65, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %67 = load i64, i64* @MSI_IRQ, align 8
  store i64 %67, i64* @qlge_irq_type, align 8
  br label %85

68:                                               ; preds = %41
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %71 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* @QL_MSIX_ENABLED, align 4
  %73 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %74 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %73, i32 0, i32 2
  %75 = call i32 @set_bit(i32 %72, i32* %74)
  %76 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %77 = load i32, i32* @ifup, align 4
  %78 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %79 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %82 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 (%struct.ql_adapter*, i32, i32, i8*, ...) @netif_info(%struct.ql_adapter* %76, i32 %77, i32 %80, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  br label %120

85:                                               ; preds = %54
  br label %86

86:                                               ; preds = %85, %1
  br label %87

87:                                               ; preds = %86, %20
  %88 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %89 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %88, i32 0, i32 0
  store i32 1, i32* %89, align 8
  %90 = load i64, i64* @qlge_irq_type, align 8
  %91 = load i64, i64* @MSI_IRQ, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %111

93:                                               ; preds = %87
  %94 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %95 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @pci_enable_msi(i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %110, label %99

99:                                               ; preds = %93
  %100 = load i32, i32* @QL_MSI_ENABLED, align 4
  %101 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %102 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %101, i32 0, i32 2
  %103 = call i32 @set_bit(i32 %100, i32* %102)
  %104 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %105 = load i32, i32* @ifup, align 4
  %106 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %107 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (%struct.ql_adapter*, i32, i32, i8*, ...) @netif_info(%struct.ql_adapter* %104, i32 %105, i32 %108, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %120

110:                                              ; preds = %93
  br label %111

111:                                              ; preds = %110, %87
  %112 = load i64, i64* @LEG_IRQ, align 8
  store i64 %112, i64* @qlge_irq_type, align 8
  %113 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %114 = load i32, i32* @ifup, align 4
  %115 = load i32, i32* @KERN_DEBUG, align 4
  %116 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %117 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @netif_printk(%struct.ql_adapter* %113, i32 %114, i32 %115, i32 %118, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %120

120:                                              ; preds = %111, %99, %68
  ret void
}

declare dso_local %struct.TYPE_4__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @pci_enable_msix_range(i32, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

declare dso_local i32 @netif_warn(%struct.ql_adapter*, i32, i32, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @netif_info(%struct.ql_adapter*, i32, i32, i8*, ...) #1

declare dso_local i32 @pci_enable_msi(i32) #1

declare dso_local i32 @netif_printk(%struct.ql_adapter*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
