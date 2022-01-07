; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_ethsw_takedown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_ethsw_takedown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_device = type { %struct.device }
%struct.device = type { i32 }
%struct.ethsw_core = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"dpsw_close err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_mc_device*)* @ethsw_takedown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ethsw_takedown(%struct.fsl_mc_device* %0) #0 {
  %2 = alloca %struct.fsl_mc_device*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.ethsw_core*, align 8
  %5 = alloca i32, align 4
  store %struct.fsl_mc_device* %0, %struct.fsl_mc_device** %2, align 8
  %6 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %2, align 8
  %7 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %6, i32 0, i32 0
  store %struct.device* %7, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.ethsw_core* @dev_get_drvdata(%struct.device* %8)
  store %struct.ethsw_core* %9, %struct.ethsw_core** %4, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call i32 @ethsw_unregister_notifier(%struct.device* %10)
  %12 = load %struct.ethsw_core*, %struct.ethsw_core** %4, align 8
  %13 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ethsw_core*, %struct.ethsw_core** %4, align 8
  %16 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dpsw_close(i32 %14, i32 0, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @dev_warn(%struct.device* %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %21, %1
  ret void
}

declare dso_local %struct.ethsw_core* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @ethsw_unregister_notifier(%struct.device*) #1

declare dso_local i32 @dpsw_close(i32, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
