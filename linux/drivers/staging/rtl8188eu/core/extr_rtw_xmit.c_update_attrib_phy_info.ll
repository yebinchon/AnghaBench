; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_xmit.c_update_attrib_phy_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_xmit.c_update_attrib_phy_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkt_attrib = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.sta_info = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pkt_attrib*, %struct.sta_info*)* @update_attrib_phy_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_attrib_phy_info(%struct.pkt_attrib* %0, %struct.sta_info* %1) #0 {
  %3 = alloca %struct.pkt_attrib*, align 8
  %4 = alloca %struct.sta_info*, align 8
  store %struct.pkt_attrib* %0, %struct.pkt_attrib** %3, align 8
  store %struct.sta_info* %1, %struct.sta_info** %4, align 8
  %5 = load %struct.pkt_attrib*, %struct.pkt_attrib** %3, align 8
  %6 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %5, i32 0, i32 10
  store i64 0, i64* %6, align 8
  %7 = load %struct.pkt_attrib*, %struct.pkt_attrib** %3, align 8
  %8 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %7, i32 0, i32 9
  store i64 0, i64* %8, align 8
  %9 = load %struct.pkt_attrib*, %struct.pkt_attrib** %3, align 8
  %10 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %9, i32 0, i32 8
  store i64 0, i64* %10, align 8
  %11 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %12 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.pkt_attrib*, %struct.pkt_attrib** %3, align 8
  %15 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %14, i32 0, i32 7
  store i32 %13, i32* %15, align 4
  %16 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %17 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.pkt_attrib*, %struct.pkt_attrib** %3, align 8
  %20 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 8
  %21 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %22 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.pkt_attrib*, %struct.pkt_attrib** %3, align 8
  %26 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 4
  %27 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %28 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.pkt_attrib*, %struct.pkt_attrib** %3, align 8
  %32 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 8
  %33 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %34 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.pkt_attrib*, %struct.pkt_attrib** %3, align 8
  %38 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %40 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.pkt_attrib*, %struct.pkt_attrib** %3, align 8
  %44 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.pkt_attrib*, %struct.pkt_attrib** %3, align 8
  %46 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  %47 = load %struct.pkt_attrib*, %struct.pkt_attrib** %3, align 8
  %48 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %47, i32 0, i32 1
  store i32 0, i32* %48, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
