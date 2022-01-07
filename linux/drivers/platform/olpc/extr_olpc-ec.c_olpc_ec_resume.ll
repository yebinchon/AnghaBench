; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/olpc/extr_olpc-ec.c_olpc_ec_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/olpc/extr_olpc-ec.c_olpc_ec_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.platform_device*)* }
%struct.platform_device = type { i32 }
%struct.device = type { i32 }
%struct.olpc_ec_priv = type { i32 }

@ec_driver = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @olpc_ec_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @olpc_ec_resume(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.olpc_ec_priv*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.platform_device* @to_platform_device(%struct.device* %5)
  store %struct.platform_device* %6, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = call %struct.olpc_ec_priv* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.olpc_ec_priv* %8, %struct.olpc_ec_priv** %4, align 8
  %9 = load %struct.olpc_ec_priv*, %struct.olpc_ec_priv** %4, align 8
  %10 = getelementptr inbounds %struct.olpc_ec_priv, %struct.olpc_ec_priv* %9, i32 0, i32 0
  store i32 0, i32* %10, align 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ec_driver, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)** %12, align 8
  %14 = icmp ne i32 (%struct.platform_device*)* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ec_driver, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)** %17, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = call i32 %18(%struct.platform_device* %19)
  br label %22

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %21, %15
  %23 = phi i32 [ %20, %15 ], [ 0, %21 ]
  ret i32 %23
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.olpc_ec_priv* @platform_get_drvdata(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
