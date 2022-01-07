; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_port_carrier_state_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_port_carrier_state_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethsw_port_priv = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dpsw_link_state = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"dpsw_if_get_link_state() err %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Garbage read into link_state\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @port_carrier_state_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port_carrier_state_sync(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethsw_port_priv*, align 8
  %5 = alloca %struct.dpsw_link_state, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ethsw_port_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.ethsw_port_priv* %8, %struct.ethsw_port_priv** %4, align 8
  %9 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %4, align 8
  %10 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %4, align 8
  %15 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %4, align 8
  %20 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dpsw_if_get_link_state(i32 %13, i32 0, i32 %18, i32 %21, %struct.dpsw_link_state* %5)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @netdev_err(%struct.net_device* %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %58

30:                                               ; preds = %1
  %31 = getelementptr inbounds %struct.dpsw_link_state, %struct.dpsw_link_state* %5, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %32, 1
  %34 = zext i1 %33 to i32
  %35 = call i32 @WARN_ONCE(i32 %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %36 = getelementptr inbounds %struct.dpsw_link_state, %struct.dpsw_link_state* %5, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %4, align 8
  %39 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %37, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.dpsw_link_state, %struct.dpsw_link_state* %5, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load %struct.net_device*, %struct.net_device** %3, align 8
  %48 = call i32 @netif_carrier_on(%struct.net_device* %47)
  br label %52

49:                                               ; preds = %42
  %50 = load %struct.net_device*, %struct.net_device** %3, align 8
  %51 = call i32 @netif_carrier_off(%struct.net_device* %50)
  br label %52

52:                                               ; preds = %49, %46
  %53 = getelementptr inbounds %struct.dpsw_link_state, %struct.dpsw_link_state* %5, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %4, align 8
  %56 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %52, %30
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %25
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.ethsw_port_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dpsw_if_get_link_state(i32, i32, i32, i32, %struct.dpsw_link_state*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
