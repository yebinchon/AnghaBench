; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_port_bridge_join.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_port_bridge_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethsw_port_priv = type { %struct.net_device*, %struct.ethsw_core* }
%struct.ethsw_core = type { %struct.TYPE_3__**, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { %struct.net_device* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"Only one bridge supported per DPSW object!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.net_device*)* @port_bridge_join to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port_bridge_join(%struct.net_device* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethsw_port_priv*, align 8
  %7 = alloca %struct.ethsw_core*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.ethsw_port_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.ethsw_port_priv* %11, %struct.ethsw_port_priv** %6, align 8
  %12 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %6, align 8
  %13 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %12, i32 0, i32 1
  %14 = load %struct.ethsw_core*, %struct.ethsw_core** %13, align 8
  store %struct.ethsw_core* %14, %struct.ethsw_core** %7, align 8
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %51, %2
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.ethsw_core*, %struct.ethsw_core** %7, align 8
  %18 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %16, %20
  br i1 %21, label %22, label %54

22:                                               ; preds = %15
  %23 = load %struct.ethsw_core*, %struct.ethsw_core** %7, align 8
  %24 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %25, i64 %27
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.net_device*, %struct.net_device** %30, align 8
  %32 = icmp ne %struct.net_device* %31, null
  br i1 %32, label %33, label %50

33:                                               ; preds = %22
  %34 = load %struct.ethsw_core*, %struct.ethsw_core** %7, align 8
  %35 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %36, i64 %38
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load %struct.net_device*, %struct.net_device** %41, align 8
  %43 = load %struct.net_device*, %struct.net_device** %5, align 8
  %44 = icmp ne %struct.net_device* %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %33
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = call i32 @netdev_err(%struct.net_device* %46, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %65

50:                                               ; preds = %33, %22
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %15

54:                                               ; preds = %15
  %55 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %6, align 8
  %56 = call i32 @ethsw_port_set_flood(%struct.ethsw_port_priv* %55, i32 1)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %54
  %60 = load %struct.net_device*, %struct.net_device** %5, align 8
  %61 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %6, align 8
  %62 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %61, i32 0, i32 0
  store %struct.net_device* %60, %struct.net_device** %62, align 8
  br label %63

63:                                               ; preds = %59, %54
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %45
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.ethsw_port_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @ethsw_port_set_flood(%struct.ethsw_port_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
