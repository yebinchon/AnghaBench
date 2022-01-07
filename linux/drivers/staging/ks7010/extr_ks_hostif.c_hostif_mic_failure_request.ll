; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_mic_failure_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_mic_failure_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_wlan_private = type { i32 }
%struct.hostif_mic_failure_request = type { i8*, i8* }

@HIF_MIC_FAILURE_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks_wlan_private*, i32, i32)* @hostif_mic_failure_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostif_mic_failure_request(%struct.ks_wlan_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ks_wlan_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hostif_mic_failure_request*, align 8
  store %struct.ks_wlan_private* %0, %struct.ks_wlan_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @HIF_MIC_FAILURE_REQ, align 4
  %9 = call %struct.hostif_mic_failure_request* @hostif_generic_request(i32 16, i32 %8)
  store %struct.hostif_mic_failure_request* %9, %struct.hostif_mic_failure_request** %7, align 8
  %10 = load %struct.hostif_mic_failure_request*, %struct.hostif_mic_failure_request** %7, align 8
  %11 = icmp ne %struct.hostif_mic_failure_request* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %26

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = call i8* @cpu_to_le16(i32 %14)
  %16 = load %struct.hostif_mic_failure_request*, %struct.hostif_mic_failure_request** %7, align 8
  %17 = getelementptr inbounds %struct.hostif_mic_failure_request, %struct.hostif_mic_failure_request* %16, i32 0, i32 1
  store i8* %15, i8** %17, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i8* @cpu_to_le16(i32 %18)
  %20 = load %struct.hostif_mic_failure_request*, %struct.hostif_mic_failure_request** %7, align 8
  %21 = getelementptr inbounds %struct.hostif_mic_failure_request, %struct.hostif_mic_failure_request* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %23 = load %struct.hostif_mic_failure_request*, %struct.hostif_mic_failure_request** %7, align 8
  %24 = call i32 @hif_align_size(i32 16)
  %25 = call i32 @send_request_to_device(%struct.ks_wlan_private* %22, %struct.hostif_mic_failure_request* %23, i32 %24)
  br label %26

26:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.hostif_mic_failure_request* @hostif_generic_request(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @send_request_to_device(%struct.ks_wlan_private*, %struct.hostif_mic_failure_request*, i32) #1

declare dso_local i32 @hif_align_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
