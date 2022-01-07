; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_parse_wowlan_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_parse_wowlan_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_wmac = type { i32, %struct.qtnf_mac_info }
%struct.qtnf_mac_info = type { %struct.wiphy_wowlan_support* }
%struct.wiphy_wowlan_support = type { i32, i8*, i8*, i8* }
%struct.qlink_wowlan_capab_data = type { i32, i64 }
%struct.qlink_wowlan_support = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@WIPHY_WOWLAN_MAGIC_PKT = common dso_local global i32 0, align 4
@WIPHY_WOWLAN_DISCONNECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"MAC%u: unsupported WoWLAN version 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qtnf_wmac*, %struct.qlink_wowlan_capab_data*)* @qtnf_parse_wowlan_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qtnf_parse_wowlan_info(%struct.qtnf_wmac* %0, %struct.qlink_wowlan_capab_data* %1) #0 {
  %3 = alloca %struct.qtnf_wmac*, align 8
  %4 = alloca %struct.qlink_wowlan_capab_data*, align 8
  %5 = alloca %struct.qtnf_mac_info*, align 8
  %6 = alloca %struct.qlink_wowlan_support*, align 8
  %7 = alloca %struct.wiphy_wowlan_support*, align 8
  store %struct.qtnf_wmac* %0, %struct.qtnf_wmac** %3, align 8
  store %struct.qlink_wowlan_capab_data* %1, %struct.qlink_wowlan_capab_data** %4, align 8
  %8 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %3, align 8
  %9 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %8, i32 0, i32 1
  store %struct.qtnf_mac_info* %9, %struct.qtnf_mac_info** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.wiphy_wowlan_support* @kzalloc(i32 32, i32 %10)
  store %struct.wiphy_wowlan_support* %11, %struct.wiphy_wowlan_support** %7, align 8
  %12 = load %struct.wiphy_wowlan_support*, %struct.wiphy_wowlan_support** %7, align 8
  %13 = icmp ne %struct.wiphy_wowlan_support* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %62

15:                                               ; preds = %2
  %16 = load %struct.qlink_wowlan_capab_data*, %struct.qlink_wowlan_capab_data** %4, align 8
  %17 = getelementptr inbounds %struct.qlink_wowlan_capab_data, %struct.qlink_wowlan_capab_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @le16_to_cpu(i32 %18)
  switch i32 %19, label %51 [
    i32 1, label %20
  ]

20:                                               ; preds = %15
  %21 = load %struct.qlink_wowlan_capab_data*, %struct.qlink_wowlan_capab_data** %4, align 8
  %22 = getelementptr inbounds %struct.qlink_wowlan_capab_data, %struct.qlink_wowlan_capab_data* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.qlink_wowlan_support*
  store %struct.qlink_wowlan_support* %24, %struct.qlink_wowlan_support** %6, align 8
  %25 = load i32, i32* @WIPHY_WOWLAN_MAGIC_PKT, align 4
  %26 = load i32, i32* @WIPHY_WOWLAN_DISCONNECT, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.wiphy_wowlan_support*, %struct.wiphy_wowlan_support** %7, align 8
  %29 = getelementptr inbounds %struct.wiphy_wowlan_support, %struct.wiphy_wowlan_support* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.qlink_wowlan_support*, %struct.qlink_wowlan_support** %6, align 8
  %31 = getelementptr inbounds %struct.qlink_wowlan_support, %struct.qlink_wowlan_support* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @le32_to_cpu(i32 %32)
  %34 = load %struct.wiphy_wowlan_support*, %struct.wiphy_wowlan_support** %7, align 8
  %35 = getelementptr inbounds %struct.wiphy_wowlan_support, %struct.wiphy_wowlan_support* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load %struct.qlink_wowlan_support*, %struct.qlink_wowlan_support** %6, align 8
  %37 = getelementptr inbounds %struct.qlink_wowlan_support, %struct.qlink_wowlan_support* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @le32_to_cpu(i32 %38)
  %40 = load %struct.wiphy_wowlan_support*, %struct.wiphy_wowlan_support** %7, align 8
  %41 = getelementptr inbounds %struct.wiphy_wowlan_support, %struct.wiphy_wowlan_support* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load %struct.qlink_wowlan_support*, %struct.qlink_wowlan_support** %6, align 8
  %43 = getelementptr inbounds %struct.qlink_wowlan_support, %struct.qlink_wowlan_support* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @le32_to_cpu(i32 %44)
  %46 = load %struct.wiphy_wowlan_support*, %struct.wiphy_wowlan_support** %7, align 8
  %47 = getelementptr inbounds %struct.wiphy_wowlan_support, %struct.wiphy_wowlan_support* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load %struct.wiphy_wowlan_support*, %struct.wiphy_wowlan_support** %7, align 8
  %49 = load %struct.qtnf_mac_info*, %struct.qtnf_mac_info** %5, align 8
  %50 = getelementptr inbounds %struct.qtnf_mac_info, %struct.qtnf_mac_info* %49, i32 0, i32 0
  store %struct.wiphy_wowlan_support* %48, %struct.wiphy_wowlan_support** %50, align 8
  br label %62

51:                                               ; preds = %15
  %52 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %3, align 8
  %53 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.qlink_wowlan_capab_data*, %struct.qlink_wowlan_capab_data** %4, align 8
  %56 = getelementptr inbounds %struct.qlink_wowlan_capab_data, %struct.qlink_wowlan_capab_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @le16_to_cpu(i32 %57)
  %59 = call i32 @pr_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %58)
  %60 = load %struct.wiphy_wowlan_support*, %struct.wiphy_wowlan_support** %7, align 8
  %61 = call i32 @kfree(%struct.wiphy_wowlan_support* %60)
  br label %62

62:                                               ; preds = %14, %51, %20
  ret void
}

declare dso_local %struct.wiphy_wowlan_support* @kzalloc(i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.wiphy_wowlan_support*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
