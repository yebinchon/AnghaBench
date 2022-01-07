; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_gigaset.h_gigaset_new_rx_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_gigaset.h_gigaset_new_rx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.bc_state = type { %struct.sk_buff*, i64, i64, %struct.cardstate* }
%struct.cardstate = type { i16, i32 }

@.str = private unnamed_addr constant [24 x i8] c"could not allocate skb\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.bc_state*)* @gigaset_new_rx_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @gigaset_new_rx_skb(%struct.bc_state* %0) #0 {
  %2 = alloca %struct.bc_state*, align 8
  %3 = alloca %struct.cardstate*, align 8
  %4 = alloca i16, align 2
  store %struct.bc_state* %0, %struct.bc_state** %2, align 8
  %5 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %6 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %5, i32 0, i32 3
  %7 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  store %struct.cardstate* %7, %struct.cardstate** %3, align 8
  %8 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %9 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %8, i32 0, i32 0
  %10 = load i16, i16* %9, align 4
  store i16 %10, i16* %4, align 2
  %11 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %12 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %17 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %16, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %17, align 8
  br label %44

18:                                               ; preds = %1
  %19 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %20 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i16, i16* %4, align 2
  %23 = zext i16 %22 to i64
  %24 = add nsw i64 %21, %23
  %25 = call %struct.sk_buff* @dev_alloc_skb(i64 %24)
  %26 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %27 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %26, i32 0, i32 0
  store %struct.sk_buff* %25, %struct.sk_buff** %27, align 8
  %28 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %29 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %28, i32 0, i32 0
  %30 = load %struct.sk_buff*, %struct.sk_buff** %29, align 8
  %31 = icmp eq %struct.sk_buff* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %18
  %33 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %34 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_warn(i32 %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %43

37:                                               ; preds = %18
  %38 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %39 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %38, i32 0, i32 0
  %40 = load %struct.sk_buff*, %struct.sk_buff** %39, align 8
  %41 = load i16, i16* %4, align 2
  %42 = call i32 @skb_reserve(%struct.sk_buff* %40, i16 zeroext %41)
  br label %43

43:                                               ; preds = %37, %32
  br label %44

44:                                               ; preds = %43, %15
  %45 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %46 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %45, i32 0, i32 0
  %47 = load %struct.sk_buff*, %struct.sk_buff** %46, align 8
  ret %struct.sk_buff* %47
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
