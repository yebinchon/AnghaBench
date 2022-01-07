; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_asyncdata.c_gigaset_m10x_send_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_asyncdata.c_gigaset_m10x_send_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_state = type { i64, i32, %struct.cardstate* }
%struct.cardstate = type { i32, i32, i64, i32 }
%struct.sk_buff = type { i32 }

@L2_HDLC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"unable to allocate memory for encoding!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gigaset_m10x_send_skb(%struct.bc_state* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bc_state*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.cardstate*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.bc_state* %0, %struct.bc_state** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %10 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %9, i32 0, i32 2
  %11 = load %struct.cardstate*, %struct.cardstate** %10, align 8
  store %struct.cardstate* %11, %struct.cardstate** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %16 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @L2_HDLC, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = call %struct.sk_buff* @HDLC_Encode(%struct.sk_buff* %21)
  store %struct.sk_buff* %22, %struct.sk_buff** %5, align 8
  br label %26

23:                                               ; preds = %2
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = call %struct.sk_buff* @iraw_encode(%struct.sk_buff* %24)
  store %struct.sk_buff* %25, %struct.sk_buff** %5, align 8
  br label %26

26:                                               ; preds = %23, %20
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = icmp ne %struct.sk_buff* %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %26
  %30 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %31 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %59

36:                                               ; preds = %26
  %37 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  %38 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %37, i32 0, i32 1
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = call i32 @skb_queue_tail(i32* %38, %struct.sk_buff* %39)
  %41 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %42 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %41, i32 0, i32 0
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @spin_lock_irqsave(i32* %42, i64 %43)
  %45 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %46 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %36
  %50 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %51 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %50, i32 0, i32 1
  %52 = call i32 @tasklet_schedule(i32* %51)
  br label %53

53:                                               ; preds = %49, %36
  %54 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %55 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %54, i32 0, i32 0
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %53, %29
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.sk_buff* @HDLC_Encode(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @iraw_encode(%struct.sk_buff*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
