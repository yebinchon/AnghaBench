; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smsm.c_smsm_unmask_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smsm.c_smsm_unmask_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.smsm_entry = type { i64, i32, %struct.qcom_smsm* }
%struct.qcom_smsm = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @smsm_unmask_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsm_unmask_irq(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.smsm_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qcom_smsm*, align 8
  %6 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = call %struct.smsm_entry* @irq_data_get_irq_chip_data(%struct.irq_data* %7)
  store %struct.smsm_entry* %8, %struct.smsm_entry** %3, align 8
  %9 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %10 = call i32 @irqd_to_hwirq(%struct.irq_data* %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.smsm_entry*, %struct.smsm_entry** %3, align 8
  %12 = getelementptr inbounds %struct.smsm_entry, %struct.smsm_entry* %11, i32 0, i32 2
  %13 = load %struct.qcom_smsm*, %struct.qcom_smsm** %12, align 8
  store %struct.qcom_smsm* %13, %struct.qcom_smsm** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.smsm_entry*, %struct.smsm_entry** %3, align 8
  %16 = getelementptr inbounds %struct.smsm_entry, %struct.smsm_entry* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @set_bit(i32 %14, i32 %17)
  %19 = load %struct.smsm_entry*, %struct.smsm_entry** %3, align 8
  %20 = getelementptr inbounds %struct.smsm_entry, %struct.smsm_entry* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %1
  %24 = load %struct.smsm_entry*, %struct.smsm_entry** %3, align 8
  %25 = getelementptr inbounds %struct.smsm_entry, %struct.smsm_entry* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.qcom_smsm*, %struct.qcom_smsm** %5, align 8
  %28 = getelementptr inbounds %struct.qcom_smsm, %struct.qcom_smsm* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %26, %29
  %31 = call i32 @readl(i64 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @BIT(i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.smsm_entry*, %struct.smsm_entry** %3, align 8
  %38 = getelementptr inbounds %struct.smsm_entry, %struct.smsm_entry* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.qcom_smsm*, %struct.qcom_smsm** %5, align 8
  %41 = getelementptr inbounds %struct.qcom_smsm, %struct.qcom_smsm* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %39, %42
  %44 = call i32 @writel(i32 %36, i64 %43)
  br label %45

45:                                               ; preds = %23, %1
  ret void
}

declare dso_local %struct.smsm_entry* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @irqd_to_hwirq(%struct.irq_data*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
