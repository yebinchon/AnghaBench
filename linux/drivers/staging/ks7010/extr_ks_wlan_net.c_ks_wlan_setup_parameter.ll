; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_wlan_net.c_ks_wlan_setup_parameter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_wlan_net.c_ks_wlan_setup_parameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_wlan_private = type { i32 }

@SME_STOP_REQUEST = common dso_local global i32 0, align 4
@SME_RTS = common dso_local global i32 0, align 4
@SME_RTS_THRESHOLD_REQUEST = common dso_local global i32 0, align 4
@SME_FRAG = common dso_local global i32 0, align 4
@SME_FRAGMENTATION_THRESHOLD_REQUEST = common dso_local global i32 0, align 4
@SME_WEP_INDEX = common dso_local global i32 0, align 4
@SME_WEP_INDEX_REQUEST = common dso_local global i32 0, align 4
@SME_WEP_VAL1 = common dso_local global i32 0, align 4
@SME_WEP_KEY1_REQUEST = common dso_local global i32 0, align 4
@SME_WEP_VAL2 = common dso_local global i32 0, align 4
@SME_WEP_KEY2_REQUEST = common dso_local global i32 0, align 4
@SME_WEP_VAL3 = common dso_local global i32 0, align 4
@SME_WEP_KEY3_REQUEST = common dso_local global i32 0, align 4
@SME_WEP_VAL4 = common dso_local global i32 0, align 4
@SME_WEP_KEY4_REQUEST = common dso_local global i32 0, align 4
@SME_WEP_FLAG = common dso_local global i32 0, align 4
@SME_WEP_FLAG_REQUEST = common dso_local global i32 0, align 4
@SME_RSN = common dso_local global i32 0, align 4
@SME_RSN_ENABLED_REQUEST = common dso_local global i32 0, align 4
@SME_RSN_MODE_REQUEST = common dso_local global i32 0, align 4
@SME_RSN_MULTICAST = common dso_local global i32 0, align 4
@SME_RSN_MCAST_REQUEST = common dso_local global i32 0, align 4
@SME_RSN_UNICAST = common dso_local global i32 0, align 4
@SME_RSN_UCAST_REQUEST = common dso_local global i32 0, align 4
@SME_RSN_AUTH = common dso_local global i32 0, align 4
@SME_RSN_AUTH_REQUEST = common dso_local global i32 0, align 4
@SME_MODE_SET_REQUEST = common dso_local global i32 0, align 4
@SME_START_REQUEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ks_wlan_setup_parameter(%struct.ks_wlan_private* %0, i32 %1) #0 {
  %3 = alloca %struct.ks_wlan_private*, align 8
  %4 = alloca i32, align 4
  store %struct.ks_wlan_private* %0, %struct.ks_wlan_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %6 = load i32, i32* @SME_STOP_REQUEST, align 4
  %7 = call i32 @hostif_sme_enqueue(%struct.ks_wlan_private* %5, i32 %6)
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @SME_RTS, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %14 = load i32, i32* @SME_RTS_THRESHOLD_REQUEST, align 4
  %15 = call i32 @hostif_sme_enqueue(%struct.ks_wlan_private* %13, i32 %14)
  br label %16

16:                                               ; preds = %12, %2
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @SME_FRAG, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %23 = load i32, i32* @SME_FRAGMENTATION_THRESHOLD_REQUEST, align 4
  %24 = call i32 @hostif_sme_enqueue(%struct.ks_wlan_private* %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %16
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @SME_WEP_INDEX, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %32 = load i32, i32* @SME_WEP_INDEX_REQUEST, align 4
  %33 = call i32 @hostif_sme_enqueue(%struct.ks_wlan_private* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %25
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @SME_WEP_VAL1, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %41 = load i32, i32* @SME_WEP_KEY1_REQUEST, align 4
  %42 = call i32 @hostif_sme_enqueue(%struct.ks_wlan_private* %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %34
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @SME_WEP_VAL2, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %50 = load i32, i32* @SME_WEP_KEY2_REQUEST, align 4
  %51 = call i32 @hostif_sme_enqueue(%struct.ks_wlan_private* %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %43
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @SME_WEP_VAL3, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %59 = load i32, i32* @SME_WEP_KEY3_REQUEST, align 4
  %60 = call i32 @hostif_sme_enqueue(%struct.ks_wlan_private* %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %52
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @SME_WEP_VAL4, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %68 = load i32, i32* @SME_WEP_KEY4_REQUEST, align 4
  %69 = call i32 @hostif_sme_enqueue(%struct.ks_wlan_private* %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %61
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @SME_WEP_FLAG, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %77 = load i32, i32* @SME_WEP_FLAG_REQUEST, align 4
  %78 = call i32 @hostif_sme_enqueue(%struct.ks_wlan_private* %76, i32 %77)
  br label %79

79:                                               ; preds = %75, %70
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @SME_RSN, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %79
  %85 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %86 = load i32, i32* @SME_RSN_ENABLED_REQUEST, align 4
  %87 = call i32 @hostif_sme_enqueue(%struct.ks_wlan_private* %85, i32 %86)
  %88 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %89 = load i32, i32* @SME_RSN_MODE_REQUEST, align 4
  %90 = call i32 @hostif_sme_enqueue(%struct.ks_wlan_private* %88, i32 %89)
  br label %91

91:                                               ; preds = %84, %79
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @SME_RSN_MULTICAST, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %98 = load i32, i32* @SME_RSN_MCAST_REQUEST, align 4
  %99 = call i32 @hostif_sme_enqueue(%struct.ks_wlan_private* %97, i32 %98)
  br label %100

100:                                              ; preds = %96, %91
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @SME_RSN_UNICAST, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %107 = load i32, i32* @SME_RSN_UCAST_REQUEST, align 4
  %108 = call i32 @hostif_sme_enqueue(%struct.ks_wlan_private* %106, i32 %107)
  br label %109

109:                                              ; preds = %105, %100
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* @SME_RSN_AUTH, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %116 = load i32, i32* @SME_RSN_AUTH_REQUEST, align 4
  %117 = call i32 @hostif_sme_enqueue(%struct.ks_wlan_private* %115, i32 %116)
  br label %118

118:                                              ; preds = %114, %109
  %119 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %120 = load i32, i32* @SME_MODE_SET_REQUEST, align 4
  %121 = call i32 @hostif_sme_enqueue(%struct.ks_wlan_private* %119, i32 %120)
  %122 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %123 = load i32, i32* @SME_START_REQUEST, align 4
  %124 = call i32 @hostif_sme_enqueue(%struct.ks_wlan_private* %122, i32 %123)
  ret i32 0
}

declare dso_local i32 @hostif_sme_enqueue(%struct.ks_wlan_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
