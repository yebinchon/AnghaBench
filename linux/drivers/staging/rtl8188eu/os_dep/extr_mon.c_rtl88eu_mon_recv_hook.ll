; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_mon.c_rtl88eu_mon_recv_hook.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_mon.c_rtl88eu_mon_recv_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.recv_frame = type { %struct.TYPE_2__*, %struct.rx_pkt_attrib }
%struct.TYPE_2__ = type { i32, i32* }
%struct.rx_pkt_attrib = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl88eu_mon_recv_hook(%struct.net_device* %0, %struct.recv_frame* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.recv_frame*, align 8
  %5 = alloca %struct.rx_pkt_attrib*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.recv_frame* %1, %struct.recv_frame** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = icmp ne %struct.net_device* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.recv_frame*, %struct.recv_frame** %4, align 8
  %14 = icmp ne %struct.recv_frame* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %2
  br label %56

16:                                               ; preds = %12
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call i32 @netif_running(%struct.net_device* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  br label %56

21:                                               ; preds = %16
  %22 = load %struct.recv_frame*, %struct.recv_frame** %4, align 8
  %23 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %22, i32 0, i32 1
  store %struct.rx_pkt_attrib* %23, %struct.rx_pkt_attrib** %5, align 8
  %24 = load %struct.recv_frame*, %struct.recv_frame** %4, align 8
  %25 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %9, align 8
  %29 = load %struct.recv_frame*, %struct.recv_frame** %4, align 8
  %30 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %37 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @SET_ICE_IV_LEN(i32 %34, i32 %35, i32 %38)
  %40 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %41 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %21
  %45 = load %struct.net_device*, %struct.net_device** %3, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @mon_recv_decrypted(%struct.net_device* %45, i32* %46, i32 %47, i32 %48, i32 %49)
  br label %56

51:                                               ; preds = %21
  %52 = load %struct.net_device*, %struct.net_device** %3, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @mon_recv_encrypted(%struct.net_device* %52, i32* %53, i32 %54)
  br label %56

56:                                               ; preds = %15, %20, %51, %44
  ret void
}

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @SET_ICE_IV_LEN(i32, i32, i32) #1

declare dso_local i32 @mon_recv_decrypted(%struct.net_device*, i32*, i32, i32, i32) #1

declare dso_local i32 @mon_recv_encrypted(%struct.net_device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
