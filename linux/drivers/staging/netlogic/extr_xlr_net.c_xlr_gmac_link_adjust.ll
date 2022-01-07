; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/netlogic/extr_xlr_net.c_xlr_gmac_link_adjust.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/netlogic/extr_xlr_net.c_xlr_gmac_link_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.xlr_net_priv = type { i64, i32, i32 }
%struct.phy_device = type { i64, i64 }

@R_INTREG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"gmac%d : Link up\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"gmac%d : Link down\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @xlr_gmac_link_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlr_gmac_link_adjust(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.xlr_net_priv*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.xlr_net_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.xlr_net_priv* %7, %struct.xlr_net_priv** %3, align 8
  %8 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %3, align 8
  %9 = call %struct.phy_device* @xlr_get_phydev(%struct.xlr_net_priv* %8)
  store %struct.phy_device* %9, %struct.phy_device** %4, align 8
  %10 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %3, align 8
  %11 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @R_INTREG, align 4
  %14 = call i32 @xlr_nae_rdreg(i32 %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %16 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %1
  %20 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %21 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %3, align 8
  %24 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %19
  %28 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %3, align 8
  %29 = call i32 @xlr_set_gmac_speed(%struct.xlr_net_priv* %28)
  %30 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %3, align 8
  %31 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @pr_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %27, %19
  br label %42

35:                                               ; preds = %1
  %36 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %3, align 8
  %37 = call i32 @xlr_set_gmac_speed(%struct.xlr_net_priv* %36)
  %38 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %3, align 8
  %39 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @pr_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %35, %34
  ret void
}

declare dso_local %struct.xlr_net_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.phy_device* @xlr_get_phydev(%struct.xlr_net_priv*) #1

declare dso_local i32 @xlr_nae_rdreg(i32, i32) #1

declare dso_local i32 @xlr_set_gmac_speed(%struct.xlr_net_priv*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
