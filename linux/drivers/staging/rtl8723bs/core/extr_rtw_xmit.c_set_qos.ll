; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_xmit.c_set_qos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_xmit.c_set_qos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkt_file = type { i32 }
%struct.pkt_attrib = type { i32, i32, i32, i32 }
%struct.ethhdr = type { i32 }
%struct.iphdr = type { i32 }

@ETH_HLEN = common dso_local global i32 0, align 4
@WLAN_HDR_A3_QOS_LEN = common dso_local global i32 0, align 4
@WIFI_QOS_DATA_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pkt_file*, %struct.pkt_attrib*)* @set_qos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_qos(%struct.pkt_file* %0, %struct.pkt_attrib* %1) #0 {
  %3 = alloca %struct.pkt_file*, align 8
  %4 = alloca %struct.pkt_attrib*, align 8
  %5 = alloca %struct.ethhdr, align 4
  %6 = alloca %struct.iphdr, align 4
  %7 = alloca i32, align 4
  store %struct.pkt_file* %0, %struct.pkt_file** %3, align 8
  store %struct.pkt_attrib* %1, %struct.pkt_attrib** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.pkt_file*, %struct.pkt_file** %3, align 8
  %9 = getelementptr inbounds %struct.pkt_file, %struct.pkt_file* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.pkt_file*, %struct.pkt_file** %3, align 8
  %12 = call i32 @_rtw_open_pktfile(i32 %10, %struct.pkt_file* %11)
  %13 = load %struct.pkt_file*, %struct.pkt_file** %3, align 8
  %14 = bitcast %struct.ethhdr* %5 to i8*
  %15 = load i32, i32* @ETH_HLEN, align 4
  %16 = call i32 @_rtw_pktfile_read(%struct.pkt_file* %13, i8* %14, i32 %15)
  %17 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %18 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 2048
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.pkt_file*, %struct.pkt_file** %3, align 8
  %23 = bitcast %struct.iphdr* %6 to i8*
  %24 = call i32 @_rtw_pktfile_read(%struct.pkt_file* %22, i8* %23, i32 4)
  %25 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 5
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %21, %2
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %31 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @WLAN_HDR_A3_QOS_LEN, align 4
  %33 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %34 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @WIFI_QOS_DATA_TYPE, align 4
  %36 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %37 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  ret void
}

declare dso_local i32 @_rtw_open_pktfile(i32, %struct.pkt_file*) #1

declare dso_local i32 @_rtw_pktfile_read(%struct.pkt_file*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
