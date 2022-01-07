; ModuleID = '/home/carl/AnghaBench/linux/drivers/powercap/extr_intel_rapl_msr.c_rapl_msr_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/powercap/extr_intel_rapl_msr.c_rapl_msr_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.platform_device = type { i32 }

@rapl_msr_read_raw = common dso_local global i32 0, align 4
@rapl_msr_priv = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@rapl_msr_write_raw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"intel-rapl\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"failed to register powercap control_type.\0A\00", align 1
@CPUHP_AP_ONLINE_DYN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"powercap/rapl:online\00", align 1
@rapl_cpu_online = common dso_local global i32 0, align 4
@rapl_cpu_down_prep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rapl_msr_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rapl_msr_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load i32, i32* @rapl_msr_read_raw, align 4
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rapl_msr_priv, i32 0, i32 3), align 4
  %6 = load i32, i32* @rapl_msr_write_raw, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rapl_msr_priv, i32 0, i32 2), align 4
  %7 = call i32 @powercap_register_control_type(i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rapl_msr_priv, i32 0, i32 1), align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rapl_msr_priv, i32 0, i32 1), align 4
  %9 = call i64 @IS_ERR(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rapl_msr_priv, i32 0, i32 1), align 4
  %14 = call i32 @PTR_ERR(i32 %13)
  store i32 %14, i32* %2, align 4
  br label %34

15:                                               ; preds = %1
  %16 = load i32, i32* @CPUHP_AP_ONLINE_DYN, align 4
  %17 = load i32, i32* @rapl_cpu_online, align 4
  %18 = load i32, i32* @rapl_cpu_down_prep, align 4
  %19 = call i32 @cpuhp_setup_state(i32 %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %26

23:                                               ; preds = %15
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rapl_msr_priv, i32 0, i32 0), align 4
  %25 = call i32 @rapl_add_platform_domain(%struct.TYPE_3__* @rapl_msr_priv)
  store i32 0, i32* %2, align 4
  br label %34

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rapl_msr_priv, i32 0, i32 1), align 4
  %31 = call i32 @powercap_unregister_control_type(i32 %30)
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %23, %11
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @powercap_register_control_type(i32*, i8*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @cpuhp_setup_state(i32, i8*, i32, i32) #1

declare dso_local i32 @rapl_add_platform_domain(%struct.TYPE_3__*) #1

declare dso_local i32 @powercap_unregister_control_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
