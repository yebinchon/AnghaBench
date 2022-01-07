; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_mon.c_rtl88eu_mon_xmit_hook.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_mon.c_rtl88eu_mon_xmit_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.xmit_frame = type { i32, i32*, %struct.pkt_attrib }
%struct.pkt_attrib = type { i32, i32, i32 }

@TXDESC_SIZE = common dso_local global i32 0, align 4
@PACKET_OFFSET_SZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl88eu_mon_xmit_hook(%struct.net_device* %0, %struct.xmit_frame* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.xmit_frame*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pkt_attrib*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.xmit_frame* %1, %struct.xmit_frame** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = icmp ne %struct.net_device* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %15 = icmp ne %struct.xmit_frame* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %3
  br label %74

17:                                               ; preds = %13
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = call i32 @netif_running(%struct.net_device* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  br label %74

22:                                               ; preds = %17
  %23 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %24 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %23, i32 0, i32 2
  store %struct.pkt_attrib* %24, %struct.pkt_attrib** %7, align 8
  %25 = load i32, i32* @TXDESC_SIZE, align 4
  %26 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %27 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @PACKET_OFFSET_SZ, align 4
  %30 = mul nsw i32 %28, %29
  %31 = add nsw i32 %25, %30
  store i32 %31, i32* %10, align 4
  %32 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %33 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32* %37, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %61, %22
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %41 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %42, 1
  %44 = icmp slt i32 %39, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %38
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %50 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @mon_recv_decrypted(%struct.net_device* %46, i32* %47, i32 %48, i32 %51, i32 0)
  %53 = load i32, i32* %6, align 4
  %54 = load i32*, i32** %8, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32* %56, i32** %8, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = ptrtoint i32* %57 to i64
  %59 = call i64 @round_up(i64 %58, i32 4)
  %60 = inttoptr i64 %59 to i32*
  store i32* %60, i32** %8, align 8
  br label %61

61:                                               ; preds = %45
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %38

64:                                               ; preds = %38
  %65 = load %struct.net_device*, %struct.net_device** %4, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %68 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %71 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @mon_recv_decrypted(%struct.net_device* %65, i32* %66, i32 %69, i32 %72, i32 0)
  br label %74

74:                                               ; preds = %64, %21, %16
  ret void
}

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @mon_recv_decrypted(%struct.net_device*, i32*, i32, i32, i32) #1

declare dso_local i64 @round_up(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
