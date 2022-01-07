; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-xgene-msi.c_xgene_msi_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-xgene-msi.c_xgene_msi_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.irq_chip = type { i32 }
%struct.xgene_msi_group = type { i32, %struct.xgene_msi* }
%struct.xgene_msi = type { i32 }

@IRQS_PER_IDX = common dso_local global i32 0, align 4
@NR_HW_IRQS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @xgene_msi_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_msi_isr(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca %struct.irq_chip*, align 8
  %4 = alloca %struct.xgene_msi_group*, align 8
  %5 = alloca %struct.xgene_msi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %13 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %14 = call %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* %13)
  store %struct.irq_chip* %14, %struct.irq_chip** %3, align 8
  %15 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %16 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %17 = call i32 @chained_irq_enter(%struct.irq_chip* %15, %struct.irq_desc* %16)
  %18 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %19 = call %struct.xgene_msi_group* @irq_desc_get_handler_data(%struct.irq_desc* %18)
  store %struct.xgene_msi_group* %19, %struct.xgene_msi_group** %4, align 8
  %20 = load %struct.xgene_msi_group*, %struct.xgene_msi_group** %4, align 8
  %21 = getelementptr inbounds %struct.xgene_msi_group, %struct.xgene_msi_group* %20, i32 0, i32 1
  %22 = load %struct.xgene_msi*, %struct.xgene_msi** %21, align 8
  store %struct.xgene_msi* %22, %struct.xgene_msi** %5, align 8
  %23 = load %struct.xgene_msi_group*, %struct.xgene_msi_group** %4, align 8
  %24 = getelementptr inbounds %struct.xgene_msi_group, %struct.xgene_msi_group* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %12, align 4
  %26 = load %struct.xgene_msi*, %struct.xgene_msi** %5, align 8
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @xgene_msi_int_read(%struct.xgene_msi* %26, i32 %27)
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %91, %1
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %92

32:                                               ; preds = %29
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @ffs(i32 %33)
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  %36 = load %struct.xgene_msi*, %struct.xgene_msi** %5, align 8
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @xgene_msi_ir_read(%struct.xgene_msi* %36, i32 %37, i32 %38)
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %73, %32
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %79

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @ffs(i32 %44)
  %46 = sub nsw i32 %45, 1
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @IRQS_PER_IDX, align 4
  %49 = mul nsw i32 %47, %48
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %49, %50
  %52 = load i32, i32* @NR_HW_IRQS, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %53, %54
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @hwirq_to_canonical_hwirq(i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load %struct.xgene_msi*, %struct.xgene_msi** %5, align 8
  %59 = getelementptr inbounds %struct.xgene_msi, %struct.xgene_msi* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @irq_find_mapping(i32 %60, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = call i32 @WARN_ON(i32 %66)
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %43
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @generic_handle_irq(i32 %71)
  br label %73

73:                                               ; preds = %70, %43
  %74 = load i32, i32* %10, align 4
  %75 = shl i32 1, %74
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %8, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %8, align 4
  br label %40

79:                                               ; preds = %40
  %80 = load i32, i32* %7, align 4
  %81 = shl i32 1, %80
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %11, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %79
  %88 = load %struct.xgene_msi*, %struct.xgene_msi** %5, align 8
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @xgene_msi_int_read(%struct.xgene_msi* %88, i32 %89)
  store i32 %90, i32* %11, align 4
  br label %91

91:                                               ; preds = %87, %79
  br label %29

92:                                               ; preds = %29
  %93 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %94 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %95 = call i32 @chained_irq_exit(%struct.irq_chip* %93, %struct.irq_desc* %94)
  ret void
}

declare dso_local %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc*) #1

declare dso_local i32 @chained_irq_enter(%struct.irq_chip*, %struct.irq_desc*) #1

declare dso_local %struct.xgene_msi_group* @irq_desc_get_handler_data(%struct.irq_desc*) #1

declare dso_local i32 @xgene_msi_int_read(%struct.xgene_msi*, i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @xgene_msi_ir_read(%struct.xgene_msi*, i32, i32) #1

declare dso_local i32 @hwirq_to_canonical_hwirq(i32) #1

declare dso_local i32 @irq_find_mapping(i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @chained_irq_exit(%struct.irq_chip*, %struct.irq_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
