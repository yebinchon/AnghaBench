; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smp2p.c_qcom_smp2p_inbound_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smp2p.c_qcom_smp2p_inbound_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_smp2p = type { i32 }
%struct.smp2p_entry = type { i32 }
%struct.device_node = type { i32 }

@smp2p_irq_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to add irq_domain\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_smp2p*, %struct.smp2p_entry*, %struct.device_node*)* @qcom_smp2p_inbound_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_smp2p_inbound_entry(%struct.qcom_smp2p* %0, %struct.smp2p_entry* %1, %struct.device_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qcom_smp2p*, align 8
  %6 = alloca %struct.smp2p_entry*, align 8
  %7 = alloca %struct.device_node*, align 8
  store %struct.qcom_smp2p* %0, %struct.qcom_smp2p** %5, align 8
  store %struct.smp2p_entry* %1, %struct.smp2p_entry** %6, align 8
  store %struct.device_node* %2, %struct.device_node** %7, align 8
  %8 = load %struct.device_node*, %struct.device_node** %7, align 8
  %9 = load %struct.smp2p_entry*, %struct.smp2p_entry** %6, align 8
  %10 = call i32 @irq_domain_add_linear(%struct.device_node* %8, i32 32, i32* @smp2p_irq_ops, %struct.smp2p_entry* %9)
  %11 = load %struct.smp2p_entry*, %struct.smp2p_entry** %6, align 8
  %12 = getelementptr inbounds %struct.smp2p_entry, %struct.smp2p_entry* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.smp2p_entry*, %struct.smp2p_entry** %6, align 8
  %14 = getelementptr inbounds %struct.smp2p_entry, %struct.smp2p_entry* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %3
  %18 = load %struct.qcom_smp2p*, %struct.qcom_smp2p** %5, align 8
  %19 = getelementptr inbounds %struct.qcom_smp2p, %struct.qcom_smp2p* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %25

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %24, %17
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i32 @irq_domain_add_linear(%struct.device_node*, i32, i32*, %struct.smp2p_entry*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
