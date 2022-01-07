; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_ethtool.c_ql_get_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_ethtool.c_ql_get_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32, i32 }
%struct.ql_adapter = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i16 }

@QLGE_MEZZ_SSYS_ID_068 = common dso_local global i16 0, align 2
@QLGE_MEZZ_SSYS_ID_180 = common dso_local global i16 0, align 2
@WAKE_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_wolinfo*)* @ql_get_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_get_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_wolinfo*, align 8
  %5 = alloca %struct.ql_adapter*, align 8
  %6 = alloca i16, align 2
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ql_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.ql_adapter* %8, %struct.ql_adapter** %5, align 8
  %9 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %10 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i16, i16* %12, align 2
  store i16 %13, i16* %6, align 2
  %14 = load i16, i16* %6, align 2
  %15 = zext i16 %14 to i32
  %16 = load i16, i16* @QLGE_MEZZ_SSYS_ID_068, align 2
  %17 = zext i16 %16 to i32
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %2
  %20 = load i16, i16* %6, align 2
  %21 = zext i16 %20 to i32
  %22 = load i16, i16* @QLGE_MEZZ_SSYS_ID_180, align 2
  %23 = zext i16 %22 to i32
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %19, %2
  %26 = load i32, i32* @WAKE_MAGIC, align 4
  %27 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %28 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %30 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %33 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %25, %19
  ret void
}

declare dso_local %struct.ql_adapter* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
