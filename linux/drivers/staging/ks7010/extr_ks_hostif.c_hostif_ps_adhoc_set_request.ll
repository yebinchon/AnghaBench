; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_ps_adhoc_set_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_ps_adhoc_set_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_wlan_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hostif_ps_adhoc_set_request = type { i32, i32 }

@HIF_PS_ADH_SET_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks_wlan_private*)* @hostif_ps_adhoc_set_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostif_ps_adhoc_set_request(%struct.ks_wlan_private* %0) #0 {
  %2 = alloca %struct.ks_wlan_private*, align 8
  %3 = alloca %struct.hostif_ps_adhoc_set_request*, align 8
  store %struct.ks_wlan_private* %0, %struct.ks_wlan_private** %2, align 8
  %4 = load i32, i32* @HIF_PS_ADH_SET_REQ, align 4
  %5 = call %struct.hostif_ps_adhoc_set_request* @hostif_generic_request(i32 8, i32 %4)
  store %struct.hostif_ps_adhoc_set_request* %5, %struct.hostif_ps_adhoc_set_request** %3, align 8
  %6 = load %struct.hostif_ps_adhoc_set_request*, %struct.hostif_ps_adhoc_set_request** %3, align 8
  %7 = icmp ne %struct.hostif_ps_adhoc_set_request* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %25

9:                                                ; preds = %1
  %10 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %11 = load %struct.hostif_ps_adhoc_set_request*, %struct.hostif_ps_adhoc_set_request** %3, align 8
  %12 = getelementptr inbounds %struct.hostif_ps_adhoc_set_request, %struct.hostif_ps_adhoc_set_request* %11, i32 0, i32 1
  %13 = call i32 @init_request(%struct.ks_wlan_private* %10, i32* %12)
  %14 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %15 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @cpu_to_le16(i32 %17)
  %19 = load %struct.hostif_ps_adhoc_set_request*, %struct.hostif_ps_adhoc_set_request** %3, align 8
  %20 = getelementptr inbounds %struct.hostif_ps_adhoc_set_request, %struct.hostif_ps_adhoc_set_request* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %22 = load %struct.hostif_ps_adhoc_set_request*, %struct.hostif_ps_adhoc_set_request** %3, align 8
  %23 = call i32 @hif_align_size(i32 8)
  %24 = call i32 @send_request_to_device(%struct.ks_wlan_private* %21, %struct.hostif_ps_adhoc_set_request* %22, i32 %23)
  br label %25

25:                                               ; preds = %9, %8
  ret void
}

declare dso_local %struct.hostif_ps_adhoc_set_request* @hostif_generic_request(i32, i32) #1

declare dso_local i32 @init_request(%struct.ks_wlan_private*, i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @send_request_to_device(%struct.ks_wlan_private*, %struct.hostif_ps_adhoc_set_request*, i32) #1

declare dso_local i32 @hif_align_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
