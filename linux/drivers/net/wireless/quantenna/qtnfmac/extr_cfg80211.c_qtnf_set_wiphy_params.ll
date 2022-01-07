; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_cfg80211.c_qtnf_set_wiphy_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_cfg80211.c_qtnf_set_wiphy_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.qtnf_wmac = type { i32 }
%struct.qtnf_vif = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"MAC%u: primary VIF is not configured\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"MAC%u: failed to update PHY params\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, i32)* @qtnf_set_wiphy_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtnf_set_wiphy_params(%struct.wiphy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qtnf_wmac*, align 8
  %7 = alloca %struct.qtnf_vif*, align 8
  %8 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %10 = call %struct.qtnf_wmac* @wiphy_priv(%struct.wiphy* %9)
  store %struct.qtnf_wmac* %10, %struct.qtnf_wmac** %6, align 8
  %11 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %6, align 8
  %12 = call %struct.qtnf_vif* @qtnf_mac_get_base_vif(%struct.qtnf_wmac* %11)
  store %struct.qtnf_vif* %12, %struct.qtnf_vif** %7, align 8
  %13 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %14 = icmp ne %struct.qtnf_vif* %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %2
  %16 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %6, align 8
  %17 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @EFAULT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %35

22:                                               ; preds = %2
  %23 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %6, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @qtnf_cmd_send_update_phy_params(%struct.qtnf_wmac* %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %6, align 8
  %30 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %28, %22
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %33, %15
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.qtnf_wmac* @wiphy_priv(%struct.wiphy*) #1

declare dso_local %struct.qtnf_vif* @qtnf_mac_get_base_vif(%struct.qtnf_wmac*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @qtnf_cmd_send_update_phy_params(%struct.qtnf_wmac*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
