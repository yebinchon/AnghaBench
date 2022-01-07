; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_os_intfs.c_rtw_recv_select_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_os_intfs.c_rtw_recv_select_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32* }
%struct.iphdr = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@rtw_1d_to_queue = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_recv_select_queue(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.iphdr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = load i32, i32* @ETH_ALEN, align 4
  %13 = shl i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %11, i64 %14
  %16 = call i32 @memcpy(i32* %5, i32* %15, i32 2)
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @be16_to_cpu(i32 %17)
  switch i32 %18, label %32 [
    i32 128, label %19
  ]

19:                                               ; preds = %1
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* @ETH_HLEN, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = bitcast i32* %23 to %struct.iphdr*
  store %struct.iphdr* %24, %struct.iphdr** %3, align 8
  %25 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %26 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 252
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = lshr i32 %29, 5
  %31 = zext i32 %30 to i64
  store i64 %31, i64* %6, align 8
  br label %33

32:                                               ; preds = %1
  store i64 0, i64* %6, align 8
  br label %33

33:                                               ; preds = %32, %19
  %34 = load i32*, i32** @rtw_1d_to_queue, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  ret i32 %37
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
