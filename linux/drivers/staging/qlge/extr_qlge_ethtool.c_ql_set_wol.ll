; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_ethtool.c_ql_set_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_ethtool.c_ql_set_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32 }
%struct.ql_adapter = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i16 }

@QLGE_MEZZ_SSYS_ID_068 = common dso_local global i16 0, align 2
@QLGE_MEZZ_SSYS_ID_180 = common dso_local global i16 0, align 2
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"WOL is only supported for mezz card\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Set wol option 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_wolinfo*)* @ql_set_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_set_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_wolinfo*, align 8
  %6 = alloca %struct.ql_adapter*, align 8
  %7 = alloca i16, align 2
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.ql_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.ql_adapter* %9, %struct.ql_adapter** %6, align 8
  %10 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %11 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i16, i16* %13, align 2
  store i16 %14, i16* %7, align 2
  %15 = load i16, i16* %7, align 2
  %16 = zext i16 %15 to i32
  %17 = load i16, i16* @QLGE_MEZZ_SSYS_ID_068, align 2
  %18 = zext i16 %17 to i32
  %19 = icmp ne i32 %16, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %2
  %21 = load i16, i16* %7, align 2
  %22 = zext i16 %21 to i32
  %23 = load i16, i16* @QLGE_MEZZ_SSYS_ID_180, align 2
  %24 = zext i16 %23 to i32
  %25 = icmp ne i32 %22, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %28 = load i32, i32* @drv, align 4
  %29 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %30 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (%struct.ql_adapter*, i32, i32, i8*, ...) @netif_info(%struct.ql_adapter* %27, i32 %28, i32 %31, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %61

35:                                               ; preds = %20, %2
  %36 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %37 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @WAKE_MAGIC, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %61

46:                                               ; preds = %35
  %47 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %48 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %51 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %53 = load i32, i32* @drv, align 4
  %54 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %55 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %58 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (%struct.ql_adapter*, i32, i32, i8*, ...) @netif_info(%struct.ql_adapter* %52, i32 %53, i32 %56, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %46, %43, %26
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.ql_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_info(%struct.ql_adapter*, i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
