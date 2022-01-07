; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_tx.c_rtllib_classify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_tx.c_rtllib_classify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.ethhdr = type { i64 }
%struct.iphdr = type { i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@DUMP_PREFIX_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32)* @rtllib_classify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtllib_classify(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ethhdr*, align 8
  %7 = alloca %struct.iphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.ethhdr*
  store %struct.ethhdr* %11, %struct.ethhdr** %6, align 8
  %12 = load %struct.ethhdr*, %struct.ethhdr** %6, align 8
  %13 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* @ETH_P_IP, align 4
  %16 = call i64 @htons(i32 %15)
  %17 = icmp ne i64 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %34

19:                                               ; preds = %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %20)
  store %struct.iphdr* %21, %struct.iphdr** %7, align 8
  %22 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %23 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 252
  switch i32 %25, label %33 [
    i32 32, label %26
    i32 64, label %27
    i32 96, label %28
    i32 128, label %29
    i32 160, label %30
    i32 192, label %31
    i32 224, label %32
  ]

26:                                               ; preds = %19
  store i32 2, i32* %3, align 4
  br label %34

27:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %34

28:                                               ; preds = %19
  store i32 3, i32* %3, align 4
  br label %34

29:                                               ; preds = %19
  store i32 4, i32* %3, align 4
  br label %34

30:                                               ; preds = %19
  store i32 5, i32* %3, align 4
  br label %34

31:                                               ; preds = %19
  store i32 6, i32* %3, align 4
  br label %34

32:                                               ; preds = %19
  store i32 7, i32* %3, align 4
  br label %34

33:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %32, %31, %30, %29, %28, %27, %26, %18
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
