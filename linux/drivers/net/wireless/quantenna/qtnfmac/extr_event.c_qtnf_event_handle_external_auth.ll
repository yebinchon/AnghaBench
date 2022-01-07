; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_event.c_qtnf_event_handle_external_auth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_event.c_qtnf_event_handle_external_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_vif = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.qlink_event_external_auth = type { i32, i32, i32, i32, i32 }
%struct.cfg80211_external_auth_params = type { i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.wiphy = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"MAC%u: payload is too short\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"%s: external auth bss=%pM action=%u akm=%u\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"failed to offload external auth request\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qtnf_vif*, %struct.qlink_event_external_auth*, i32)* @qtnf_event_handle_external_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtnf_event_handle_external_auth(%struct.qtnf_vif* %0, %struct.qlink_event_external_auth* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qtnf_vif*, align 8
  %6 = alloca %struct.qlink_event_external_auth*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cfg80211_external_auth_params, align 4
  %9 = alloca %struct.wiphy*, align 8
  %10 = alloca i32, align 4
  store %struct.qtnf_vif* %0, %struct.qtnf_vif** %5, align 8
  store %struct.qlink_event_external_auth* %1, %struct.qlink_event_external_auth** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = bitcast %struct.cfg80211_external_auth_params* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 24, i1 false)
  %12 = load %struct.qtnf_vif*, %struct.qtnf_vif** %5, align 8
  %13 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = call %struct.wiphy* @priv_to_wiphy(%struct.TYPE_5__* %14)
  store %struct.wiphy* %15, %struct.wiphy** %9, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, 20
  br i1 %18, label %19, label %28

19:                                               ; preds = %3
  %20 = load %struct.qtnf_vif*, %struct.qtnf_vif** %5, align 8
  %21 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %99

28:                                               ; preds = %3
  %29 = load %struct.wiphy*, %struct.wiphy** %9, align 8
  %30 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.qtnf_vif*, %struct.qtnf_vif** %5, align 8
  %35 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = icmp ne %struct.TYPE_6__* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %33, %28
  store i32 0, i32* %4, align 4
  br label %99

39:                                               ; preds = %33
  %40 = load %struct.qlink_event_external_auth*, %struct.qlink_event_external_auth** %6, align 8
  %41 = getelementptr inbounds %struct.qlink_event_external_auth, %struct.qlink_event_external_auth* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.cfg80211_external_auth_params, %struct.cfg80211_external_auth_params* %8, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.qlink_event_external_auth*, %struct.qlink_event_external_auth** %6, align 8
  %49 = getelementptr inbounds %struct.qlink_event_external_auth, %struct.qlink_event_external_auth* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.qlink_event_external_auth*, %struct.qlink_event_external_auth** %6, align 8
  %52 = getelementptr inbounds %struct.qlink_event_external_auth, %struct.qlink_event_external_auth* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @memcpy(i32 %47, i32 %50, i32 %53)
  %55 = load %struct.qlink_event_external_auth*, %struct.qlink_event_external_auth** %6, align 8
  %56 = getelementptr inbounds %struct.qlink_event_external_auth, %struct.qlink_event_external_auth* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.cfg80211_external_auth_params, %struct.cfg80211_external_auth_params* %8, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %44, %39
  %61 = load %struct.qlink_event_external_auth*, %struct.qlink_event_external_auth** %6, align 8
  %62 = getelementptr inbounds %struct.qlink_event_external_auth, %struct.qlink_event_external_auth* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @le32_to_cpu(i32 %63)
  %65 = getelementptr inbounds %struct.cfg80211_external_auth_params, %struct.cfg80211_external_auth_params* %8, i32 0, i32 0
  store i32 %64, i32* %65, align 4
  %66 = getelementptr inbounds %struct.cfg80211_external_auth_params, %struct.cfg80211_external_auth_params* %8, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.qlink_event_external_auth*, %struct.qlink_event_external_auth** %6, align 8
  %69 = getelementptr inbounds %struct.qlink_event_external_auth, %struct.qlink_event_external_auth* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ether_addr_copy(i32 %67, i32 %70)
  %72 = load %struct.qlink_event_external_auth*, %struct.qlink_event_external_auth** %6, align 8
  %73 = getelementptr inbounds %struct.qlink_event_external_auth, %struct.qlink_event_external_auth* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.cfg80211_external_auth_params, %struct.cfg80211_external_auth_params* %8, i32 0, i32 1
  store i32 %74, i32* %75, align 4
  %76 = load %struct.qtnf_vif*, %struct.qtnf_vif** %5, align 8
  %77 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.cfg80211_external_auth_params, %struct.cfg80211_external_auth_params* %8, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.cfg80211_external_auth_params, %struct.cfg80211_external_auth_params* %8, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.cfg80211_external_auth_params, %struct.cfg80211_external_auth_params* %8, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %82, i32 %84, i32 %86)
  %88 = load %struct.qtnf_vif*, %struct.qtnf_vif** %5, align 8
  %89 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %88, i32 0, i32 0
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = load i32, i32* @GFP_KERNEL, align 4
  %92 = call i32 @cfg80211_external_auth_request(%struct.TYPE_6__* %90, %struct.cfg80211_external_auth_params* %8, i32 %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %60
  %96 = call i32 @pr_warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %60
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %97, %38, %19
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.wiphy* @priv_to_wiphy(%struct.TYPE_5__*) #2

declare dso_local i32 @pr_err(i8*, i32) #2

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local i32 @le32_to_cpu(i32) #2

declare dso_local i32 @ether_addr_copy(i32, i32) #2

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i32) #2

declare dso_local i32 @cfg80211_external_auth_request(%struct.TYPE_6__*, %struct.cfg80211_external_auth_params*, i32) #2

declare dso_local i32 @pr_warn(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
