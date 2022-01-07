; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_pn533.c_pn533_fill_fragment_skbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_pn533.c_pn533_fill_fragment_skbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pn533 = type { i32, i32 }
%struct.sk_buff = type { i32, i32 }

@PN533_CMD_DATAFRAME_MAXLEN = common dso_local global i32 0, align 4
@PN533_CMD_MI_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pn533*, %struct.sk_buff*)* @pn533_fill_fragment_skbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn533_fill_fragment_skbs(%struct.pn533* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.pn533*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.pn533* %0, %struct.pn533** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  br label %7

7:                                                ; preds = %65, %2
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PN533_CMD_DATAFRAME_MAXLEN, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = load i32, i32* @PN533_CMD_DATAFRAME_MAXLEN, align 4
  store i32 %14, i32* %6, align 4
  br label %19

15:                                               ; preds = %7
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %15, %13
  %20 = load %struct.pn533*, %struct.pn533** %3, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call %struct.sk_buff* @pn533_alloc_skb(%struct.pn533* %20, i32 %21)
  store %struct.sk_buff* %22, %struct.sk_buff** %5, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = icmp ne %struct.sk_buff* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load %struct.pn533*, %struct.pn533** %3, align 8
  %27 = getelementptr inbounds %struct.pn533, %struct.pn533* %26, i32 0, i32 0
  %28 = call i32 @skb_queue_purge(i32* %27)
  br label %70

29:                                               ; preds = %19
  %30 = load %struct.pn533*, %struct.pn533** %3, align 8
  %31 = getelementptr inbounds %struct.pn533, %struct.pn533* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %51, label %34

34:                                               ; preds = %29
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = call i32 @skb_reserve(%struct.sk_buff* %35, i32 1)
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @PN533_CMD_DATAFRAME_MAXLEN, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load i32, i32* @PN533_CMD_MI_MASK, align 4
  %42 = or i32 %41, 1
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = call i64 @skb_push(%struct.sk_buff* %43, i32 4)
  %45 = inttoptr i64 %44 to i32*
  store i32 %42, i32* %45, align 4
  br label %50

46:                                               ; preds = %34
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = call i64 @skb_push(%struct.sk_buff* %47, i32 4)
  %49 = inttoptr i64 %48 to i32*
  store i32 1, i32* %49, align 4
  br label %50

50:                                               ; preds = %46, %40
  br label %51

51:                                               ; preds = %50, %29
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @skb_put_data(%struct.sk_buff* %52, i32 %55, i32 %56)
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @skb_pull(%struct.sk_buff* %58, i32 %59)
  %61 = load %struct.pn533*, %struct.pn533** %3, align 8
  %62 = getelementptr inbounds %struct.pn533, %struct.pn533* %61, i32 0, i32 0
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = call i32 @skb_queue_tail(i32* %62, %struct.sk_buff* %63)
  br label %65

65:                                               ; preds = %51
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %7, label %70

70:                                               ; preds = %65, %25
  %71 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %72 = call i32 @dev_kfree_skb(%struct.sk_buff* %71)
  %73 = load %struct.pn533*, %struct.pn533** %3, align 8
  %74 = getelementptr inbounds %struct.pn533, %struct.pn533* %73, i32 0, i32 0
  %75 = call i32 @skb_queue_len(i32* %74)
  ret i32 %75
}

declare dso_local %struct.sk_buff* @pn533_alloc_skb(%struct.pn533*, i32) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_len(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
