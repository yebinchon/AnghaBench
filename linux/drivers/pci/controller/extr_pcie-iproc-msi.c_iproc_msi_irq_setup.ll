; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-iproc-msi.c_iproc_msi_irq_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-iproc-msi.c_iproc_msi_irq_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iproc_msi = type { i32, %struct.TYPE_2__*, i64, %struct.iproc_pcie* }
%struct.TYPE_2__ = type { i32 }
%struct.iproc_pcie = type { i32 }

@iproc_msi_handler = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to set affinity for IRQ%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to alloc CPU mask\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iproc_msi*, i32)* @iproc_msi_irq_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iproc_msi_irq_setup(%struct.iproc_msi* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iproc_msi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.iproc_pcie*, align 8
  store %struct.iproc_msi* %0, %struct.iproc_msi** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.iproc_msi*, %struct.iproc_msi** %4, align 8
  %11 = getelementptr inbounds %struct.iproc_msi, %struct.iproc_msi* %10, i32 0, i32 3
  %12 = load %struct.iproc_pcie*, %struct.iproc_pcie** %11, align 8
  store %struct.iproc_pcie* %12, %struct.iproc_pcie** %9, align 8
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %6, align 4
  br label %14

14:                                               ; preds = %90, %2
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.iproc_msi*, %struct.iproc_msi** %4, align 8
  %17 = getelementptr inbounds %struct.iproc_msi, %struct.iproc_msi* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %98

20:                                               ; preds = %14
  %21 = load %struct.iproc_msi*, %struct.iproc_msi** %4, align 8
  %22 = getelementptr inbounds %struct.iproc_msi, %struct.iproc_msi* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @iproc_msi_handler, align 4
  %30 = load %struct.iproc_msi*, %struct.iproc_msi** %4, align 8
  %31 = getelementptr inbounds %struct.iproc_msi, %struct.iproc_msi* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = call i32 @irq_set_chained_handler_and_data(i32 %28, i32 %29, %struct.TYPE_2__* %35)
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i64 @alloc_cpumask_var(i32* %8, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %74

40:                                               ; preds = %20
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @cpumask_clear(i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @cpumask_set_cpu(i32 %43, i32 %44)
  %46 = load %struct.iproc_msi*, %struct.iproc_msi** %4, align 8
  %47 = getelementptr inbounds %struct.iproc_msi, %struct.iproc_msi* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @irq_set_affinity(i32 %53, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %40
  %59 = load %struct.iproc_pcie*, %struct.iproc_pcie** %9, align 8
  %60 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.iproc_msi*, %struct.iproc_msi** %4, align 8
  %63 = getelementptr inbounds %struct.iproc_msi, %struct.iproc_msi* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i32, i8*, ...) @dev_err(i32 %61, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %58, %40
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @free_cpumask_var(i32 %72)
  br label %81

74:                                               ; preds = %20
  %75 = load %struct.iproc_pcie*, %struct.iproc_pcie** %9, align 8
  %76 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i32, i8*, ...) @dev_err(i32 %77, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %74, %71
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load %struct.iproc_msi*, %struct.iproc_msi** %4, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @iproc_msi_irq_free(%struct.iproc_msi* %85, i32 %86)
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %3, align 4
  br label %99

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %89
  %91 = load %struct.iproc_msi*, %struct.iproc_msi** %4, align 8
  %92 = getelementptr inbounds %struct.iproc_msi, %struct.iproc_msi* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %95, %93
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %6, align 4
  br label %14

98:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %84
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @irq_set_chained_handler_and_data(i32, i32, %struct.TYPE_2__*) #1

declare dso_local i64 @alloc_cpumask_var(i32*, i32) #1

declare dso_local i32 @cpumask_clear(i32) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32) #1

declare dso_local i32 @irq_set_affinity(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @free_cpumask_var(i32) #1

declare dso_local i32 @iproc_msi_irq_free(%struct.iproc_msi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
