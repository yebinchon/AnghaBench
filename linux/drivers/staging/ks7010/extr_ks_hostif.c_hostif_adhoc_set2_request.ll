; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_adhoc_set2_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_adhoc_set2_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_wlan_private = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32*, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32* }
%struct.hostif_adhoc_set2_request = type { i32*, %struct.TYPE_7__, %struct.TYPE_5__, i32 }
%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_5__ = type { i32*, i32 }

@HIF_ADH_SET_REQ = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks_wlan_private*)* @hostif_adhoc_set2_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostif_adhoc_set2_request(%struct.ks_wlan_private* %0) #0 {
  %2 = alloca %struct.ks_wlan_private*, align 8
  %3 = alloca %struct.hostif_adhoc_set2_request*, align 8
  store %struct.ks_wlan_private* %0, %struct.ks_wlan_private** %2, align 8
  %4 = load i32, i32* @HIF_ADH_SET_REQ, align 4
  %5 = call %struct.hostif_adhoc_set2_request* @hostif_generic_request(i32 48, i32 %4)
  store %struct.hostif_adhoc_set2_request* %5, %struct.hostif_adhoc_set2_request** %3, align 8
  %6 = load %struct.hostif_adhoc_set2_request*, %struct.hostif_adhoc_set2_request** %3, align 8
  %7 = icmp ne %struct.hostif_adhoc_set2_request* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %64

9:                                                ; preds = %1
  %10 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %11 = load %struct.hostif_adhoc_set2_request*, %struct.hostif_adhoc_set2_request** %3, align 8
  %12 = getelementptr inbounds %struct.hostif_adhoc_set2_request, %struct.hostif_adhoc_set2_request* %11, i32 0, i32 3
  %13 = call i32 @init_request(%struct.ks_wlan_private* %10, i32* %12)
  %14 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %15 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.hostif_adhoc_set2_request*, %struct.hostif_adhoc_set2_request** %3, align 8
  %20 = getelementptr inbounds %struct.hostif_adhoc_set2_request, %struct.hostif_adhoc_set2_request* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  store i32 %18, i32* %21, align 8
  %22 = load %struct.hostif_adhoc_set2_request*, %struct.hostif_adhoc_set2_request** %3, align 8
  %23 = getelementptr inbounds %struct.hostif_adhoc_set2_request, %struct.hostif_adhoc_set2_request* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %28 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %34 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @memcpy(i32* %26, i32* %32, i32 %37)
  %39 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %40 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.hostif_adhoc_set2_request*, %struct.hostif_adhoc_set2_request** %3, align 8
  %44 = getelementptr inbounds %struct.hostif_adhoc_set2_request, %struct.hostif_adhoc_set2_request* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 %42, i32* %47, align 4
  %48 = load %struct.hostif_adhoc_set2_request*, %struct.hostif_adhoc_set2_request** %3, align 8
  %49 = getelementptr inbounds %struct.hostif_adhoc_set2_request, %struct.hostif_adhoc_set2_request* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.hostif_adhoc_set2_request*, %struct.hostif_adhoc_set2_request** %3, align 8
  %52 = getelementptr inbounds %struct.hostif_adhoc_set2_request, %struct.hostif_adhoc_set2_request* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %55 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* @ETH_ALEN, align 4
  %59 = call i32 @memcpy(i32* %53, i32* %57, i32 %58)
  %60 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %61 = load %struct.hostif_adhoc_set2_request*, %struct.hostif_adhoc_set2_request** %3, align 8
  %62 = call i32 @hif_align_size(i32 48)
  %63 = call i32 @send_request_to_device(%struct.ks_wlan_private* %60, %struct.hostif_adhoc_set2_request* %61, i32 %62)
  br label %64

64:                                               ; preds = %9, %8
  ret void
}

declare dso_local %struct.hostif_adhoc_set2_request* @hostif_generic_request(i32, i32) #1

declare dso_local i32 @init_request(%struct.ks_wlan_private*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @send_request_to_device(%struct.ks_wlan_private*, %struct.hostif_adhoc_set2_request*, i32) #1

declare dso_local i32 @hif_align_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
