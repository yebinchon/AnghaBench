; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_adhoc_set_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_adhoc_set_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_wlan_private = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32* }
%struct.hostif_adhoc_set_request = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32*, i32 }

@HIF_ADH_SET_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks_wlan_private*)* @hostif_adhoc_set_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostif_adhoc_set_request(%struct.ks_wlan_private* %0) #0 {
  %2 = alloca %struct.ks_wlan_private*, align 8
  %3 = alloca %struct.hostif_adhoc_set_request*, align 8
  store %struct.ks_wlan_private* %0, %struct.ks_wlan_private** %2, align 8
  %4 = load i32, i32* @HIF_ADH_SET_REQ, align 4
  %5 = call %struct.hostif_adhoc_set_request* @hostif_generic_request(i32 24, i32 %4)
  store %struct.hostif_adhoc_set_request* %5, %struct.hostif_adhoc_set_request** %3, align 8
  %6 = load %struct.hostif_adhoc_set_request*, %struct.hostif_adhoc_set_request** %3, align 8
  %7 = icmp ne %struct.hostif_adhoc_set_request* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %50

9:                                                ; preds = %1
  %10 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %11 = load %struct.hostif_adhoc_set_request*, %struct.hostif_adhoc_set_request** %3, align 8
  %12 = getelementptr inbounds %struct.hostif_adhoc_set_request, %struct.hostif_adhoc_set_request* %11, i32 0, i32 2
  %13 = call i32 @init_request(%struct.ks_wlan_private* %10, i32* %12)
  %14 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %15 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @cpu_to_le16(i32 %17)
  %19 = load %struct.hostif_adhoc_set_request*, %struct.hostif_adhoc_set_request** %3, align 8
  %20 = getelementptr inbounds %struct.hostif_adhoc_set_request, %struct.hostif_adhoc_set_request* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %22 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.hostif_adhoc_set_request*, %struct.hostif_adhoc_set_request** %3, align 8
  %27 = getelementptr inbounds %struct.hostif_adhoc_set_request, %struct.hostif_adhoc_set_request* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 8
  %29 = load %struct.hostif_adhoc_set_request*, %struct.hostif_adhoc_set_request** %3, align 8
  %30 = getelementptr inbounds %struct.hostif_adhoc_set_request, %struct.hostif_adhoc_set_request* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %35 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %41 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @memcpy(i32* %33, i32* %39, i32 %44)
  %46 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %47 = load %struct.hostif_adhoc_set_request*, %struct.hostif_adhoc_set_request** %3, align 8
  %48 = call i32 @hif_align_size(i32 24)
  %49 = call i32 @send_request_to_device(%struct.ks_wlan_private* %46, %struct.hostif_adhoc_set_request* %47, i32 %48)
  br label %50

50:                                               ; preds = %9, %8
  ret void
}

declare dso_local %struct.hostif_adhoc_set_request* @hostif_generic_request(i32, i32) #1

declare dso_local i32 @init_request(%struct.ks_wlan_private*, i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @send_request_to_device(%struct.ks_wlan_private*, %struct.hostif_adhoc_set_request*, i32) #1

declare dso_local i32 @hif_align_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
