; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-xgene-msi.c_xgene_compose_msi_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-xgene-msi.c_xgene_compose_msi_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.msi_msg = type { i32, i32, i32 }
%struct.xgene_msi = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*, %struct.msi_msg*)* @xgene_compose_msi_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_compose_msi_msg(%struct.irq_data* %0, %struct.msi_msg* %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca %struct.msi_msg*, align 8
  %5 = alloca %struct.xgene_msi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store %struct.msi_msg* %1, %struct.msi_msg** %4, align 8
  %9 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %10 = call %struct.xgene_msi* @irq_data_get_irq_chip_data(%struct.irq_data* %9)
  store %struct.xgene_msi* %10, %struct.xgene_msi** %5, align 8
  %11 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %12 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @hwirq_to_reg_set(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %16 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @hwirq_to_group(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.xgene_msi*, %struct.xgene_msi** %5, align 8
  %20 = getelementptr inbounds %struct.xgene_msi, %struct.xgene_msi* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = mul nsw i32 8, %22
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  %26 = shl i32 %25, 16
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %21, %27
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @upper_32_bits(i64 %29)
  %31 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %32 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @lower_32_bits(i64 %33)
  %35 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %36 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %38 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @hwirq_to_msi_data(i32 %39)
  %41 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %42 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  ret void
}

declare dso_local %struct.xgene_msi* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @hwirq_to_reg_set(i32) #1

declare dso_local i32 @hwirq_to_group(i32) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @hwirq_to_msi_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
