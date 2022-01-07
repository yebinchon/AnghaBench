; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-xgene-msi.c_xgene_msi_hwirq_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-xgene-msi.c_xgene_msi_hwirq_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_msi = type { %struct.xgene_msi_group*, i64 }
%struct.xgene_msi_group = type { i32 }

@xgene_msi_ctrl = common dso_local global %struct.xgene_msi zeroinitializer, align 8
@NR_HW_IRQS = common dso_local global i32 0, align 4
@xgene_msi_isr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to register GIC IRQ handler\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to set affinity for GIC IRQ\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"failed to alloc CPU mask for affinity\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @xgene_msi_hwirq_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_msi_hwirq_alloc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.xgene_msi*, align 8
  %5 = alloca %struct.xgene_msi_group*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.xgene_msi* @xgene_msi_ctrl, %struct.xgene_msi** %4, align 8
  %9 = load i32, i32* %3, align 4
  store i32 %9, i32* %7, align 4
  br label %10

10:                                               ; preds = %79, %1
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @NR_HW_IRQS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %87

14:                                               ; preds = %10
  %15 = load %struct.xgene_msi*, %struct.xgene_msi** %4, align 8
  %16 = getelementptr inbounds %struct.xgene_msi, %struct.xgene_msi* %15, i32 0, i32 0
  %17 = load %struct.xgene_msi_group*, %struct.xgene_msi_group** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.xgene_msi_group, %struct.xgene_msi_group* %17, i64 %19
  store %struct.xgene_msi_group* %20, %struct.xgene_msi_group** %5, align 8
  %21 = load %struct.xgene_msi_group*, %struct.xgene_msi_group** %5, align 8
  %22 = getelementptr inbounds %struct.xgene_msi_group, %struct.xgene_msi_group* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %14
  br label %79

26:                                               ; preds = %14
  %27 = load %struct.xgene_msi_group*, %struct.xgene_msi_group** %5, align 8
  %28 = getelementptr inbounds %struct.xgene_msi_group, %struct.xgene_msi_group* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @xgene_msi_isr, align 4
  %31 = call i32 @irq_set_chained_handler(i32 %29, i32 %30)
  %32 = load %struct.xgene_msi_group*, %struct.xgene_msi_group** %5, align 8
  %33 = getelementptr inbounds %struct.xgene_msi_group, %struct.xgene_msi_group* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.xgene_msi_group*, %struct.xgene_msi_group** %5, align 8
  %36 = call i32 @irq_set_handler_data(i32 %34, %struct.xgene_msi_group* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %26
  %40 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %88

43:                                               ; preds = %26
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i64 @alloc_cpumask_var(i32* %6, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @cpumask_clear(i32 %48)
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @cpumask_set_cpu(i32 %50, i32 %51)
  %53 = load %struct.xgene_msi_group*, %struct.xgene_msi_group** %5, align 8
  %54 = getelementptr inbounds %struct.xgene_msi_group, %struct.xgene_msi_group* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @irq_set_affinity(i32 %55, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %47
  %61 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %47
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @free_cpumask_var(i32 %63)
  br label %69

65:                                               ; preds = %43
  %66 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %65, %62
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load %struct.xgene_msi_group*, %struct.xgene_msi_group** %5, align 8
  %74 = getelementptr inbounds %struct.xgene_msi_group, %struct.xgene_msi_group* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @irq_set_chained_handler_and_data(i32 %75, i32* null, i32* null)
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %2, align 4
  br label %88

78:                                               ; preds = %69
  br label %79

79:                                               ; preds = %78, %25
  %80 = load %struct.xgene_msi*, %struct.xgene_msi** %4, align 8
  %81 = getelementptr inbounds %struct.xgene_msi, %struct.xgene_msi* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %84, %82
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %7, align 4
  br label %10

87:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %87, %72, %39
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @irq_set_chained_handler(i32, i32) #1

declare dso_local i32 @irq_set_handler_data(i32, %struct.xgene_msi_group*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @alloc_cpumask_var(i32*, i32) #1

declare dso_local i32 @cpumask_clear(i32) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32) #1

declare dso_local i32 @irq_set_affinity(i32, i32) #1

declare dso_local i32 @free_cpumask_var(i32) #1

declare dso_local i32 @irq_set_chained_handler_and_data(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
