; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smsm.c_smsm_set_irq_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smsm.c_smsm_set_irq_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.smsm_entry = type { i32, i32 }

@IRQ_TYPE_EDGE_BOTH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @smsm_set_irq_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsm_set_irq_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.smsm_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %9 = call %struct.smsm_entry* @irq_data_get_irq_chip_data(%struct.irq_data* %8)
  store %struct.smsm_entry* %9, %struct.smsm_entry** %6, align 8
  %10 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %11 = call i32 @irqd_to_hwirq(%struct.irq_data* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @IRQ_TYPE_EDGE_BOTH, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %54

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.smsm_entry*, %struct.smsm_entry** %6, align 8
  %27 = getelementptr inbounds %struct.smsm_entry, %struct.smsm_entry* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @set_bit(i32 %25, i32 %28)
  br label %36

30:                                               ; preds = %19
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.smsm_entry*, %struct.smsm_entry** %6, align 8
  %33 = getelementptr inbounds %struct.smsm_entry, %struct.smsm_entry* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @clear_bit(i32 %31, i32 %34)
  br label %36

36:                                               ; preds = %30, %24
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.smsm_entry*, %struct.smsm_entry** %6, align 8
  %44 = getelementptr inbounds %struct.smsm_entry, %struct.smsm_entry* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @set_bit(i32 %42, i32 %45)
  br label %53

47:                                               ; preds = %36
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.smsm_entry*, %struct.smsm_entry** %6, align 8
  %50 = getelementptr inbounds %struct.smsm_entry, %struct.smsm_entry* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @clear_bit(i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %47, %41
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %16
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.smsm_entry* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @irqd_to_hwirq(%struct.irq_data*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
