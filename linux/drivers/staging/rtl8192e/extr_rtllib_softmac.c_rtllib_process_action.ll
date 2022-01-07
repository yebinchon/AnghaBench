; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_process_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_process_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i32 }
%struct.sk_buff = type { i64 }
%struct.rtllib_hdr_3addr = type { i32 }
%struct.rtllib_hdr = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"Error getting payload of action frame\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtllib_device*, %struct.sk_buff*)* @rtllib_process_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtllib_process_action(%struct.rtllib_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.rtllib_device*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.rtllib_hdr_3addr*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.rtllib_device* %0, %struct.rtllib_device** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.rtllib_hdr_3addr*
  store %struct.rtllib_hdr_3addr* %11, %struct.rtllib_hdr_3addr** %5, align 8
  %12 = load %struct.rtllib_hdr_3addr*, %struct.rtllib_hdr_3addr** %5, align 8
  %13 = bitcast %struct.rtllib_hdr_3addr* %12 to %struct.rtllib_hdr*
  %14 = call i32* @rtllib_get_payload(%struct.rtllib_hdr* %13)
  store i32* %14, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %19 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @netdev_warn(i32 %20, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %45

22:                                               ; preds = %2
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %6, align 8
  %27 = load i32, i32* %7, align 4
  switch i32 %27, label %44 [
    i32 129, label %28
  ]

28:                                               ; preds = %22
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %43 [
    i32 131, label %31
    i32 130, label %35
    i32 128, label %39
  ]

31:                                               ; preds = %28
  %32 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = call i32 @rtllib_rx_ADDBAReq(%struct.rtllib_device* %32, %struct.sk_buff* %33)
  br label %43

35:                                               ; preds = %28
  %36 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = call i32 @rtllib_rx_ADDBARsp(%struct.rtllib_device* %36, %struct.sk_buff* %37)
  br label %43

39:                                               ; preds = %28
  %40 = load %struct.rtllib_device*, %struct.rtllib_device** %3, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = call i32 @rtllib_rx_DELBA(%struct.rtllib_device* %40, %struct.sk_buff* %41)
  br label %43

43:                                               ; preds = %28, %39, %35, %31
  br label %45

44:                                               ; preds = %22
  br label %45

45:                                               ; preds = %17, %44, %43
  ret void
}

declare dso_local i32* @rtllib_get_payload(%struct.rtllib_hdr*) #1

declare dso_local i32 @netdev_warn(i32, i8*) #1

declare dso_local i32 @rtllib_rx_ADDBAReq(%struct.rtllib_device*, %struct.sk_buff*) #1

declare dso_local i32 @rtllib_rx_ADDBARsp(%struct.rtllib_device*, %struct.sk_buff*) #1

declare dso_local i32 @rtllib_rx_DELBA(%struct.rtllib_device*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
