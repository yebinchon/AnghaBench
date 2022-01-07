; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_common.c_gigaset_bcs_reinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_common.c_gigaset_bcs_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_state = type { %struct.sk_buff*, i32, i64, i32, i64, i64, %struct.TYPE_4__, i32, %struct.cardstate* }
%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { i32, i64, i64, i64 }
%struct.cardstate = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 (%struct.bc_state*)* }

@PPP_INITFCS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gigaset_bcs_reinit(%struct.bc_state* %0) #0 {
  %2 = alloca %struct.bc_state*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.cardstate*, align 8
  %5 = alloca i64, align 8
  store %struct.bc_state* %0, %struct.bc_state** %2, align 8
  %6 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %7 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %6, i32 0, i32 8
  %8 = load %struct.cardstate*, %struct.cardstate** %7, align 8
  store %struct.cardstate* %8, %struct.cardstate** %4, align 8
  br label %9

9:                                                ; preds = %14, %1
  %10 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %11 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %10, i32 0, i32 7
  %12 = call %struct.sk_buff* @skb_dequeue(i32* %11)
  store %struct.sk_buff* %12, %struct.sk_buff** %3, align 8
  %13 = icmp ne %struct.sk_buff* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = call i32 @dev_kfree_skb(%struct.sk_buff* %15)
  br label %9

17:                                               ; preds = %9
  %18 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %19 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %18, i32 0, i32 2
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %23 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %22, i32 0, i32 6
  %24 = call i32 @clear_at_state(%struct.TYPE_4__* %23)
  %25 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %26 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %25, i32 0, i32 6
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  store i64 0, i64* %27, align 8
  %28 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %29 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %28, i32 0, i32 6
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %32 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %31, i32 0, i32 6
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %35 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 -1, i32* %36, align 8
  %37 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %38 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %37, i32 0, i32 2
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  %41 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %42 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %41, i32 0, i32 5
  store i64 0, i64* %42, align 8
  %43 = load i32, i32* @PPP_INITFCS, align 4
  %44 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %45 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  %46 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %47 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %46, i32 0, i32 2
  store i64 0, i64* %47, align 8
  %48 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %49 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %52 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %54 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %53, i32 0, i32 0
  %55 = load %struct.sk_buff*, %struct.sk_buff** %54, align 8
  %56 = call i32 @dev_kfree_skb(%struct.sk_buff* %55)
  %57 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %58 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %57, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %58, align 8
  %59 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %60 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32 (%struct.bc_state*)*, i32 (%struct.bc_state*)** %62, align 8
  %64 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %65 = call i32 %63(%struct.bc_state* %64)
  ret void
}

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @clear_at_state(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
