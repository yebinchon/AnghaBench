; ModuleID = '/home/carl/AnghaBench/linux/drivers/slimbus/extr_qcom-ctrl.c_qcom_slim_prg_slew.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/slimbus/extr_qcom-ctrl.c_qcom_slim_prg_slew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.qcom_slim_ctrl = type { i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"slew\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*, %struct.qcom_slim_ctrl*)* @qcom_slim_prg_slew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcom_slim_prg_slew(%struct.platform_device* %0, %struct.qcom_slim_ctrl* %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.qcom_slim_ctrl*, align 8
  %5 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.qcom_slim_ctrl* %1, %struct.qcom_slim_ctrl** %4, align 8
  %6 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %4, align 8
  %7 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %30, label %10

10:                                               ; preds = %2
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = load i32, i32* @IORESOURCE_MEM, align 4
  %13 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %11, i32 %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %13, %struct.resource** %5, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load %struct.resource*, %struct.resource** %5, align 8
  %17 = getelementptr inbounds %struct.resource, %struct.resource* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.resource*, %struct.resource** %5, align 8
  %20 = call i32 @resource_size(%struct.resource* %19)
  %21 = call i32 @devm_ioremap(i32* %15, i32 %18, i32 %20)
  %22 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %4, align 8
  %23 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %4, align 8
  %25 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %10
  br label %36

29:                                               ; preds = %10
  br label %30

30:                                               ; preds = %29, %2
  %31 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %4, align 8
  %32 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @writel_relaxed(i32 1, i32 %33)
  %35 = call i32 (...) @wmb()
  br label %36

36:                                               ; preds = %30, %28
  ret void
}

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i32 @devm_ioremap(i32*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @writel_relaxed(i32, i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
