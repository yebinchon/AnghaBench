; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_assoc_rq_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_assoc_rq_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.rtllib_assoc_request_frame = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"invalid len in auth request:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.sk_buff*, i32*)* @assoc_rq_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assoc_rq_parse(%struct.net_device* %0, %struct.sk_buff* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.rtllib_assoc_request_frame*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = icmp ult i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @netdev_dbg(%struct.net_device* %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 -1, i32* %4, align 4
  br label %31

20:                                               ; preds = %3
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.rtllib_assoc_request_frame*
  store %struct.rtllib_assoc_request_frame* %24, %struct.rtllib_assoc_request_frame** %8, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load %struct.rtllib_assoc_request_frame*, %struct.rtllib_assoc_request_frame** %8, align 8
  %27 = getelementptr inbounds %struct.rtllib_assoc_request_frame, %struct.rtllib_assoc_request_frame* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ether_addr_copy(i32* %25, i32 %29)
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %20, %14
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @ether_addr_copy(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
