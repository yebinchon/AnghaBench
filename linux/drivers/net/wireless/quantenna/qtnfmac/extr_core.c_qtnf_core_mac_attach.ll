; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_core.c_qtnf_core_mac_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_core.c_qtnf_core_mac_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_bus = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.qtnf_wmac = type { i32 }
%struct.qtnf_vif = type { i32*, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"MAC%u is not active in FW\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"MAC%u allocation failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"MAC%u: failed to get info\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"MAC%u: primary VIF is not ready\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"MAC%u: failed to add VIF\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"MAC%u: failed to get PHY settings\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"MAC%u: failed to init bands\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"MAC%u: wiphy registration failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"wlan%d\00", align 1
@NET_NAME_ENUM = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"MAC%u: failed to attach netdev\0A\00", align 1
@NL80211_IFTYPE_UNSPECIFIED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [19 x i8] c"MAC%u initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qtnf_bus*, i32)* @qtnf_core_mac_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtnf_core_mac_attach(%struct.qtnf_bus* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qtnf_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qtnf_wmac*, align 8
  %7 = alloca %struct.qtnf_vif*, align 8
  %8 = alloca i32, align 4
  store %struct.qtnf_bus* %0, %struct.qtnf_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.qtnf_bus*, %struct.qtnf_bus** %4, align 8
  %10 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @BIT(i32 %13)
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 0, i32* %3, align 4
  br label %123

20:                                               ; preds = %2
  %21 = load %struct.qtnf_bus*, %struct.qtnf_bus** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call %struct.qtnf_wmac* @qtnf_core_mac_alloc(%struct.qtnf_bus* %21, i32 %22)
  store %struct.qtnf_wmac* %23, %struct.qtnf_wmac** %6, align 8
  %24 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %6, align 8
  %25 = call i64 @IS_ERR(%struct.qtnf_wmac* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %6, align 8
  %31 = call i32 @PTR_ERR(%struct.qtnf_wmac* %30)
  store i32 %31, i32* %3, align 4
  br label %123

32:                                               ; preds = %20
  %33 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %6, align 8
  %34 = call i32 @qtnf_cmd_get_mac_info(%struct.qtnf_wmac* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  br label %118

40:                                               ; preds = %32
  %41 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %6, align 8
  %42 = call %struct.qtnf_vif* @qtnf_mac_get_base_vif(%struct.qtnf_wmac* %41)
  store %struct.qtnf_vif* %42, %struct.qtnf_vif** %7, align 8
  %43 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %44 = icmp ne %struct.qtnf_vif* %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @EFAULT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %8, align 4
  br label %118

50:                                               ; preds = %40
  %51 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %52 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %53 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %57 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %61 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @qtnf_cmd_send_add_intf(%struct.qtnf_vif* %51, i32 %55, i32 %59, i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %50
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %67)
  br label %118

69:                                               ; preds = %50
  %70 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %6, align 8
  %71 = call i32 @qtnf_cmd_send_get_phy_params(%struct.qtnf_wmac* %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %75)
  br label %118

77:                                               ; preds = %69
  %78 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %6, align 8
  %79 = call i32 @qtnf_mac_init_bands(%struct.qtnf_wmac* %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %83)
  br label %118

85:                                               ; preds = %77
  %86 = load %struct.qtnf_bus*, %struct.qtnf_bus** %4, align 8
  %87 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %86, i32 0, i32 0
  %88 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %6, align 8
  %89 = call i32 @qtnf_wiphy_register(%struct.TYPE_4__* %87, %struct.qtnf_wmac* %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %93)
  br label %118

95:                                               ; preds = %85
  %96 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %6, align 8
  %97 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %96, i32 0, i32 0
  store i32 1, i32* %97, align 4
  %98 = call i32 (...) @rtnl_lock()
  %99 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %6, align 8
  %100 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %101 = load i32, i32* @NET_NAME_ENUM, align 4
  %102 = call i32 @qtnf_core_net_attach(%struct.qtnf_wmac* %99, %struct.qtnf_vif* %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %101)
  store i32 %102, i32* %8, align 4
  %103 = call i32 (...) @rtnl_unlock()
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %95
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* @NL80211_IFTYPE_UNSPECIFIED, align 4
  %110 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %111 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  store i32 %109, i32* %112, align 8
  %113 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %114 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %113, i32 0, i32 0
  store i32* null, i32** %114, align 8
  br label %118

115:                                              ; preds = %95
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32 %116)
  store i32 0, i32* %3, align 4
  br label %123

118:                                              ; preds = %106, %92, %82, %74, %66, %45, %37
  %119 = load %struct.qtnf_bus*, %struct.qtnf_bus** %4, align 8
  %120 = load i32, i32* %5, align 4
  %121 = call i32 @qtnf_core_mac_detach(%struct.qtnf_bus* %119, i32 %120)
  %122 = load i32, i32* %8, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %118, %115, %27, %17
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local %struct.qtnf_wmac* @qtnf_core_mac_alloc(%struct.qtnf_bus*, i32) #1

declare dso_local i64 @IS_ERR(%struct.qtnf_wmac*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.qtnf_wmac*) #1

declare dso_local i32 @qtnf_cmd_get_mac_info(%struct.qtnf_wmac*) #1

declare dso_local %struct.qtnf_vif* @qtnf_mac_get_base_vif(%struct.qtnf_wmac*) #1

declare dso_local i32 @qtnf_cmd_send_add_intf(%struct.qtnf_vif*, i32, i32, i32) #1

declare dso_local i32 @qtnf_cmd_send_get_phy_params(%struct.qtnf_wmac*) #1

declare dso_local i32 @qtnf_mac_init_bands(%struct.qtnf_wmac*) #1

declare dso_local i32 @qtnf_wiphy_register(%struct.TYPE_4__*, %struct.qtnf_wmac*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @qtnf_core_net_attach(%struct.qtnf_wmac*, %struct.qtnf_vif*, i8*, i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @qtnf_core_mac_detach(%struct.qtnf_bus*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
