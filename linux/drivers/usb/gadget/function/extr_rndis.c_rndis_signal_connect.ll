; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_rndis.c_rndis_signal_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_rndis.c_rndis_signal_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rndis_params = type { i32 }

@RNDIS_MEDIA_STATE_CONNECTED = common dso_local global i32 0, align 4
@RNDIS_STATUS_MEDIA_CONNECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rndis_signal_connect(%struct.rndis_params* %0) #0 {
  %2 = alloca %struct.rndis_params*, align 8
  store %struct.rndis_params* %0, %struct.rndis_params** %2, align 8
  %3 = load i32, i32* @RNDIS_MEDIA_STATE_CONNECTED, align 4
  %4 = load %struct.rndis_params*, %struct.rndis_params** %2, align 8
  %5 = getelementptr inbounds %struct.rndis_params, %struct.rndis_params* %4, i32 0, i32 0
  store i32 %3, i32* %5, align 4
  %6 = load %struct.rndis_params*, %struct.rndis_params** %2, align 8
  %7 = load i32, i32* @RNDIS_STATUS_MEDIA_CONNECT, align 4
  %8 = call i32 @rndis_indicate_status_msg(%struct.rndis_params* %6, i32 %7)
  ret i32 %8
}

declare dso_local i32 @rndis_indicate_status_msg(%struct.rndis_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
