; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_cfg80211.c_qtnf_change_virtual_intf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_cfg80211.c_qtnf_change_virtual_intf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.vif_params = type { i32, i32* }
%struct.qtnf_vif = type { %struct.TYPE_3__, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"VIF%u.%u combination check: failed to set type %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"VIF%u.%u: failed to change type to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32, %struct.vif_params*)* @qtnf_change_virtual_intf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtnf_change_virtual_intf(%struct.wiphy* %0, %struct.net_device* %1, i32 %2, %struct.vif_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vif_params*, align 8
  %10 = alloca %struct.qtnf_vif*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.vif_params* %3, %struct.vif_params** %9, align 8
  %14 = load %struct.net_device*, %struct.net_device** %7, align 8
  %15 = call %struct.qtnf_vif* @qtnf_netdev_get_priv(%struct.net_device* %14)
  store %struct.qtnf_vif* %15, %struct.qtnf_vif** %10, align 8
  store i32* null, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %17 = load %struct.qtnf_vif*, %struct.qtnf_vif** %10, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @qtnf_validate_iface_combinations(%struct.wiphy* %16, %struct.qtnf_vif* %17, i32 %18)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %4
  %23 = load %struct.qtnf_vif*, %struct.qtnf_vif** %10, align 8
  %24 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.qtnf_vif*, %struct.qtnf_vif** %10, align 8
  %29 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30, i32 %31)
  %33 = load i32, i32* %13, align 4
  store i32 %33, i32* %5, align 4
  br label %73

34:                                               ; preds = %4
  %35 = load %struct.vif_params*, %struct.vif_params** %9, align 8
  %36 = icmp ne %struct.vif_params* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load %struct.vif_params*, %struct.vif_params** %9, align 8
  %39 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %11, align 8
  %41 = load %struct.vif_params*, %struct.vif_params** %9, align 8
  %42 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %37, %34
  %45 = load %struct.qtnf_vif*, %struct.qtnf_vif** %10, align 8
  %46 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %45, i32 0, i32 2
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = call i32 @qtnf_scan_done(%struct.TYPE_4__* %47, i32 1)
  %49 = load %struct.qtnf_vif*, %struct.qtnf_vif** %10, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @qtnf_cmd_send_change_intf_type(%struct.qtnf_vif* %49, i32 %50, i32 %51, i32* %52)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %44
  %57 = load %struct.qtnf_vif*, %struct.qtnf_vif** %10, align 8
  %58 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %57, i32 0, i32 2
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.qtnf_vif*, %struct.qtnf_vif** %10, align 8
  %63 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %64, i32 %65)
  %67 = load i32, i32* %13, align 4
  store i32 %67, i32* %5, align 4
  br label %73

68:                                               ; preds = %44
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.qtnf_vif*, %struct.qtnf_vif** %10, align 8
  %71 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 8
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %68, %56, %22
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local %struct.qtnf_vif* @qtnf_netdev_get_priv(%struct.net_device*) #1

declare dso_local i32 @qtnf_validate_iface_combinations(%struct.wiphy*, %struct.qtnf_vif*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

declare dso_local i32 @qtnf_scan_done(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @qtnf_cmd_send_change_intf_type(%struct.qtnf_vif*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
