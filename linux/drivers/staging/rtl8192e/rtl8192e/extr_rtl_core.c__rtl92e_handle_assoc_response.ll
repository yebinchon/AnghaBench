; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_core.c__rtl92e_handle_assoc_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_core.c__rtl92e_handle_assoc_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtllib_assoc_response_frame = type { i32 }
%struct.rtllib_network = type { i32 }
%struct.r8192_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.rtllib_assoc_response_frame*, %struct.rtllib_network*)* @_rtl92e_handle_assoc_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92e_handle_assoc_response(%struct.net_device* %0, %struct.rtllib_assoc_response_frame* %1, %struct.rtllib_network* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.rtllib_assoc_response_frame*, align 8
  %6 = alloca %struct.rtllib_network*, align 8
  %7 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.rtllib_assoc_response_frame* %1, %struct.rtllib_assoc_response_frame** %5, align 8
  store %struct.rtllib_network* %2, %struct.rtllib_network** %6, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %8)
  store %struct.r8192_priv* %9, %struct.r8192_priv** %7, align 8
  %10 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %11 = load %struct.rtllib_network*, %struct.rtllib_network** %6, align 8
  %12 = call i32 @_rtl92e_qos_assoc_resp(%struct.r8192_priv* %10, %struct.rtllib_network* %11)
  ret i32 0
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

declare dso_local i32 @_rtl92e_qos_assoc_resp(%struct.r8192_priv*, %struct.rtllib_network*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
