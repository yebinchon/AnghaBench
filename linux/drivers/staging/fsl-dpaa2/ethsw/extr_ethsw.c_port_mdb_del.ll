; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_port_mdb_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_port_mdb_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.switchdev_obj_port_mdb = type { i32 }
%struct.ethsw_port_priv = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"dev_mc_del err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.switchdev_obj_port_mdb*)* @port_mdb_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port_mdb_del(%struct.net_device* %0, %struct.switchdev_obj_port_mdb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.switchdev_obj_port_mdb*, align 8
  %6 = alloca %struct.ethsw_port_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.switchdev_obj_port_mdb* %1, %struct.switchdev_obj_port_mdb** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.ethsw_port_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.ethsw_port_priv* %9, %struct.ethsw_port_priv** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = load %struct.switchdev_obj_port_mdb*, %struct.switchdev_obj_port_mdb** %5, align 8
  %12 = getelementptr inbounds %struct.switchdev_obj_port_mdb, %struct.switchdev_obj_port_mdb* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @port_lookup_address(%struct.net_device* %10, i32 0, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %44

19:                                               ; preds = %2
  %20 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %6, align 8
  %21 = load %struct.switchdev_obj_port_mdb*, %struct.switchdev_obj_port_mdb** %5, align 8
  %22 = getelementptr inbounds %struct.switchdev_obj_port_mdb, %struct.switchdev_obj_port_mdb* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ethsw_port_fdb_del_mc(%struct.ethsw_port_priv* %20, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %44

29:                                               ; preds = %19
  %30 = load %struct.net_device*, %struct.net_device** %4, align 8
  %31 = load %struct.switchdev_obj_port_mdb*, %struct.switchdev_obj_port_mdb** %5, align 8
  %32 = getelementptr inbounds %struct.switchdev_obj_port_mdb, %struct.switchdev_obj_port_mdb* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_mc_del(%struct.net_device* %30, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = load %struct.net_device*, %struct.net_device** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @netdev_err(%struct.net_device* %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %44

42:                                               ; preds = %29
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %37, %27, %16
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.ethsw_port_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @port_lookup_address(%struct.net_device*, i32, i32) #1

declare dso_local i32 @ethsw_port_fdb_del_mc(%struct.ethsw_port_priv*, i32) #1

declare dso_local i32 @dev_mc_del(%struct.net_device*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
