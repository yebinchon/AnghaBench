; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smsm.c_smsm_inbound_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smsm.c_smsm_inbound_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_smsm = type { i32 }
%struct.smsm_entry = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"failed to parse smsm interrupt\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@smsm_intr = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"smsm\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to request interrupt\0A\00", align 1
@smsm_irq_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"failed to add irq_domain\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_smsm*, %struct.smsm_entry*, %struct.device_node*)* @smsm_inbound_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsm_inbound_entry(%struct.qcom_smsm* %0, %struct.smsm_entry* %1, %struct.device_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qcom_smsm*, align 8
  %6 = alloca %struct.smsm_entry*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qcom_smsm* %0, %struct.qcom_smsm** %5, align 8
  store %struct.smsm_entry* %1, %struct.smsm_entry** %6, align 8
  store %struct.device_node* %2, %struct.device_node** %7, align 8
  %10 = load %struct.device_node*, %struct.device_node** %7, align 8
  %11 = call i32 @irq_of_parse_and_map(%struct.device_node* %10, i32 0)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %3
  %15 = load %struct.qcom_smsm*, %struct.qcom_smsm** %5, align 8
  %16 = getelementptr inbounds %struct.qcom_smsm, %struct.qcom_smsm* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %57

21:                                               ; preds = %3
  %22 = load %struct.qcom_smsm*, %struct.qcom_smsm** %5, align 8
  %23 = getelementptr inbounds %struct.qcom_smsm, %struct.qcom_smsm* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @smsm_intr, align 4
  %27 = load i32, i32* @IRQF_ONESHOT, align 4
  %28 = load %struct.smsm_entry*, %struct.smsm_entry** %6, align 8
  %29 = bitcast %struct.smsm_entry* %28 to i8*
  %30 = call i32 @devm_request_threaded_irq(i32 %24, i32 %25, i32* null, i32 %26, i32 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %21
  %34 = load %struct.qcom_smsm*, %struct.qcom_smsm** %5, align 8
  %35 = getelementptr inbounds %struct.qcom_smsm, %struct.qcom_smsm* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %4, align 4
  br label %57

39:                                               ; preds = %21
  %40 = load %struct.device_node*, %struct.device_node** %7, align 8
  %41 = load %struct.smsm_entry*, %struct.smsm_entry** %6, align 8
  %42 = call i32 @irq_domain_add_linear(%struct.device_node* %40, i32 32, i32* @smsm_irq_ops, %struct.smsm_entry* %41)
  %43 = load %struct.smsm_entry*, %struct.smsm_entry** %6, align 8
  %44 = getelementptr inbounds %struct.smsm_entry, %struct.smsm_entry* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.smsm_entry*, %struct.smsm_entry** %6, align 8
  %46 = getelementptr inbounds %struct.smsm_entry, %struct.smsm_entry* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %39
  %50 = load %struct.qcom_smsm*, %struct.qcom_smsm** %5, align 8
  %51 = getelementptr inbounds %struct.qcom_smsm, %struct.qcom_smsm* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %57

56:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %49, %33, %14
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @devm_request_threaded_irq(i32, i32, i32*, i32, i32, i8*, i8*) #1

declare dso_local i32 @irq_domain_add_linear(%struct.device_node*, i32, i32*, %struct.smsm_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
