; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_sdio_ops.c_sd_rxhandler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_sdio_ops.c_sd_rxhandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.recv_priv }
%struct.recv_priv = type { i32, %struct.__queue }
%struct.__queue = type { i32 }
%struct.recv_buf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.recv_buf*)* @sd_rxhandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_rxhandler(%struct.adapter* %0, %struct.recv_buf* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.recv_buf*, align 8
  %5 = alloca %struct.recv_priv*, align 8
  %6 = alloca %struct.__queue*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.recv_buf* %1, %struct.recv_buf** %4, align 8
  %7 = load %struct.adapter*, %struct.adapter** %3, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 0
  store %struct.recv_priv* %8, %struct.recv_priv** %5, align 8
  %9 = load %struct.recv_priv*, %struct.recv_priv** %5, align 8
  %10 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %9, i32 0, i32 1
  store %struct.__queue* %10, %struct.__queue** %6, align 8
  %11 = load %struct.recv_buf*, %struct.recv_buf** %4, align 8
  %12 = load %struct.__queue*, %struct.__queue** %6, align 8
  %13 = call i32 @rtw_enqueue_recvbuf(%struct.recv_buf* %11, %struct.__queue* %12)
  %14 = load %struct.recv_priv*, %struct.recv_priv** %5, align 8
  %15 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %14, i32 0, i32 0
  %16 = call i32 @tasklet_schedule(i32* %15)
  ret void
}

declare dso_local i32 @rtw_enqueue_recvbuf(%struct.recv_buf*, %struct.__queue*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
