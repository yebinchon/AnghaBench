; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_port_attr_br_flags_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_port_attr_br_flags_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.switchdev_trans = type { i32 }
%struct.ethsw_port_priv = type { i32 }

@BR_LEARNING = common dso_local global i64 0, align 8
@BR_FLOOD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.switchdev_trans*, i64)* @port_attr_br_flags_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port_attr_br_flags_set(%struct.net_device* %0, %struct.switchdev_trans* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.switchdev_trans*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ethsw_port_priv*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.switchdev_trans* %1, %struct.switchdev_trans** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.ethsw_port_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.ethsw_port_priv* %11, %struct.ethsw_port_priv** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.switchdev_trans*, %struct.switchdev_trans** %6, align 8
  %13 = call i64 @switchdev_trans_ph_prepare(%struct.switchdev_trans* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %43

16:                                               ; preds = %3
  %17 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %8, align 8
  %18 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @BR_LEARNING, align 8
  %22 = and i64 %20, %21
  %23 = icmp ne i64 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @ethsw_set_learning(i32 %19, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %16
  br label %41

31:                                               ; preds = %16
  %32 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %8, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @BR_FLOOD, align 8
  %35 = and i64 %33, %34
  %36 = icmp ne i64 %35, 0
  %37 = xor i1 %36, true
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @ethsw_port_set_flood(%struct.ethsw_port_priv* %32, i32 %39)
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %31, %30
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %41, %15
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.ethsw_port_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @switchdev_trans_ph_prepare(%struct.switchdev_trans*) #1

declare dso_local i32 @ethsw_set_learning(i32, i32) #1

declare dso_local i32 @ethsw_port_set_flood(%struct.ethsw_port_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
