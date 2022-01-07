; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_cfg80211.c_qtnf_add_virtual_intf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_cfg80211.c_qtnf_add_virtual_intf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wireless_dev = type { i32, i32*, %struct.wiphy* }
%struct.wiphy = type { i32 }
%struct.vif_params = type { i32, i32* }
%struct.qtnf_wmac = type { i32 }
%struct.qtnf_vif = type { i32, %struct.wireless_dev, i32*, i32, i32, i32 }

@EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"MAC%u invalid combination: failed to add type %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"MAC%u: no free VIF available\0A\00", align 1
@QTNF_DEF_BSS_PRIORITY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"MAC%u: unsupported IF type %d\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"VIF%u.%u: failed to add VIF %pM\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"VIF%u.%u: FW reported bad MAC: %pM\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"VIF%u.%u: failed to attach netdev\0A\00", align 1
@NL80211_IFTYPE_UNSPECIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wireless_dev* (%struct.wiphy*, i8*, i8, i32, %struct.vif_params*)* @qtnf_add_virtual_intf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wireless_dev* @qtnf_add_virtual_intf(%struct.wiphy* %0, i8* %1, i8 zeroext %2, i32 %3, %struct.vif_params* %4) #0 {
  %6 = alloca %struct.wireless_dev*, align 8
  %7 = alloca %struct.wiphy*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca %struct.vif_params*, align 8
  %12 = alloca %struct.qtnf_wmac*, align 8
  %13 = alloca %struct.qtnf_vif*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8 %2, i8* %9, align 1
  store i32 %3, i32* %10, align 4
  store %struct.vif_params* %4, %struct.vif_params** %11, align 8
  store i32* null, i32** %14, align 8
  store i32 0, i32* %15, align 4
  %17 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %18 = call %struct.qtnf_wmac* @wiphy_priv(%struct.wiphy* %17)
  store %struct.qtnf_wmac* %18, %struct.qtnf_wmac** %12, align 8
  %19 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %12, align 8
  %20 = icmp ne %struct.qtnf_wmac* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @EFAULT, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.wireless_dev* @ERR_PTR(i32 %23)
  store %struct.wireless_dev* %24, %struct.wireless_dev** %6, align 8
  br label %170

25:                                               ; preds = %5
  %26 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @qtnf_validate_iface_combinations(%struct.wiphy* %26, i32* null, i32 %27)
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %16, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %12, align 8
  %33 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load i32, i32* %16, align 4
  %38 = call %struct.wireless_dev* @ERR_PTR(i32 %37)
  store %struct.wireless_dev* %38, %struct.wireless_dev** %6, align 8
  br label %170

39:                                               ; preds = %25
  %40 = load i32, i32* %10, align 4
  switch i32 %40, label %77 [
    i32 128, label %41
    i32 129, label %41
  ]

41:                                               ; preds = %39, %39
  %42 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %12, align 8
  %43 = call %struct.qtnf_vif* @qtnf_mac_get_free_vif(%struct.qtnf_wmac* %42)
  store %struct.qtnf_vif* %43, %struct.qtnf_vif** %13, align 8
  %44 = load %struct.qtnf_vif*, %struct.qtnf_vif** %13, align 8
  %45 = icmp ne %struct.qtnf_vif* %44, null
  br i1 %45, label %54, label %46

46:                                               ; preds = %41
  %47 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %12, align 8
  %48 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @EFAULT, align 4
  %52 = sub nsw i32 0, %51
  %53 = call %struct.wireless_dev* @ERR_PTR(i32 %52)
  store %struct.wireless_dev* %53, %struct.wireless_dev** %6, align 8
  br label %170

54:                                               ; preds = %41
  %55 = load %struct.qtnf_vif*, %struct.qtnf_vif** %13, align 8
  %56 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @eth_zero_addr(i32 %57)
  %59 = load %struct.qtnf_vif*, %struct.qtnf_vif** %13, align 8
  %60 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @eth_zero_addr(i32 %61)
  %63 = load i32, i32* @QTNF_DEF_BSS_PRIORITY, align 4
  %64 = load %struct.qtnf_vif*, %struct.qtnf_vif** %13, align 8
  %65 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  %66 = load %struct.qtnf_vif*, %struct.qtnf_vif** %13, align 8
  %67 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %66, i32 0, i32 1
  %68 = call i32 @memset(%struct.wireless_dev* %67, i32 0, i32 24)
  %69 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %70 = load %struct.qtnf_vif*, %struct.qtnf_vif** %13, align 8
  %71 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %71, i32 0, i32 2
  store %struct.wiphy* %69, %struct.wiphy** %72, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.qtnf_vif*, %struct.qtnf_vif** %13, align 8
  %75 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 8
  br label %86

77:                                               ; preds = %39
  %78 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %12, align 8
  %79 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %10, align 4
  %82 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %80, i32 %81)
  %83 = load i32, i32* @ENOTSUPP, align 4
  %84 = sub nsw i32 0, %83
  %85 = call %struct.wireless_dev* @ERR_PTR(i32 %84)
  store %struct.wireless_dev* %85, %struct.wireless_dev** %6, align 8
  br label %170

86:                                               ; preds = %54
  %87 = load %struct.vif_params*, %struct.vif_params** %11, align 8
  %88 = icmp ne %struct.vif_params* %87, null
  br i1 %88, label %89, label %96

89:                                               ; preds = %86
  %90 = load %struct.vif_params*, %struct.vif_params** %11, align 8
  %91 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  store i32* %92, i32** %14, align 8
  %93 = load %struct.vif_params*, %struct.vif_params** %11, align 8
  %94 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %15, align 4
  br label %96

96:                                               ; preds = %89, %86
  %97 = load %struct.qtnf_vif*, %struct.qtnf_vif** %13, align 8
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %15, align 4
  %100 = load i32*, i32** %14, align 8
  %101 = call i32 @qtnf_cmd_send_add_intf(%struct.qtnf_vif* %97, i32 %98, i32 %99, i32* %100)
  store i32 %101, i32* %16, align 4
  %102 = load i32, i32* %16, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %96
  %105 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %12, align 8
  %106 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.qtnf_vif*, %struct.qtnf_vif** %13, align 8
  %109 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32*, i32** %14, align 8
  %112 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %107, i32 %110, i32* %111)
  br label %163

113:                                              ; preds = %96
  %114 = load %struct.qtnf_vif*, %struct.qtnf_vif** %13, align 8
  %115 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @is_valid_ether_addr(i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %132, label %119

119:                                              ; preds = %113
  %120 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %12, align 8
  %121 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.qtnf_vif*, %struct.qtnf_vif** %13, align 8
  %124 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.qtnf_vif*, %struct.qtnf_vif** %13, align 8
  %127 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %122, i32 %125, i32 %128)
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %16, align 4
  br label %160

132:                                              ; preds = %113
  %133 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %12, align 8
  %134 = load %struct.qtnf_vif*, %struct.qtnf_vif** %13, align 8
  %135 = load i8*, i8** %8, align 8
  %136 = load i8, i8* %9, align 1
  %137 = call i32 @qtnf_core_net_attach(%struct.qtnf_wmac* %133, %struct.qtnf_vif* %134, i8* %135, i8 zeroext %136)
  store i32 %137, i32* %16, align 4
  %138 = load i32, i32* %16, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %132
  %141 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %12, align 8
  %142 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.qtnf_vif*, %struct.qtnf_vif** %13, align 8
  %145 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %143, i32 %146)
  br label %157

148:                                              ; preds = %132
  %149 = load %struct.qtnf_vif*, %struct.qtnf_vif** %13, align 8
  %150 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %149, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = load %struct.qtnf_vif*, %struct.qtnf_vif** %13, align 8
  %153 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %153, i32 0, i32 1
  store i32* %151, i32** %154, align 8
  %155 = load %struct.qtnf_vif*, %struct.qtnf_vif** %13, align 8
  %156 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %155, i32 0, i32 1
  store %struct.wireless_dev* %156, %struct.wireless_dev** %6, align 8
  br label %170

157:                                              ; preds = %140
  %158 = load %struct.qtnf_vif*, %struct.qtnf_vif** %13, align 8
  %159 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %158, i32 0, i32 2
  store i32* null, i32** %159, align 8
  br label %160

160:                                              ; preds = %157, %119
  %161 = load %struct.qtnf_vif*, %struct.qtnf_vif** %13, align 8
  %162 = call i32 @qtnf_cmd_send_del_intf(%struct.qtnf_vif* %161)
  br label %163

163:                                              ; preds = %160, %104
  %164 = load i32, i32* @NL80211_IFTYPE_UNSPECIFIED, align 4
  %165 = load %struct.qtnf_vif*, %struct.qtnf_vif** %13, align 8
  %166 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %166, i32 0, i32 0
  store i32 %164, i32* %167, align 8
  %168 = load i32, i32* %16, align 4
  %169 = call %struct.wireless_dev* @ERR_PTR(i32 %168)
  store %struct.wireless_dev* %169, %struct.wireless_dev** %6, align 8
  br label %170

170:                                              ; preds = %163, %148, %77, %46, %31, %21
  %171 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  ret %struct.wireless_dev* %171
}

declare dso_local %struct.qtnf_wmac* @wiphy_priv(%struct.wiphy*) #1

declare dso_local %struct.wireless_dev* @ERR_PTR(i32) #1

declare dso_local i32 @qtnf_validate_iface_combinations(%struct.wiphy*, i32*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local %struct.qtnf_vif* @qtnf_mac_get_free_vif(%struct.qtnf_wmac*) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i32 @memset(%struct.wireless_dev*, i32, i32) #1

declare dso_local i32 @qtnf_cmd_send_add_intf(%struct.qtnf_vif*, i32, i32, i32*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @qtnf_core_net_attach(%struct.qtnf_wmac*, %struct.qtnf_vif*, i8*, i8 zeroext) #1

declare dso_local i32 @qtnf_cmd_send_del_intf(%struct.qtnf_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
