; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_lcs.c_lcs_get_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_lcs.c_lcs_get_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcs_card = type { i64, i64 (%struct.sk_buff*, %struct.TYPE_4__*)*, i64, %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.sk_buff = type { i64, i64 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@trace = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"getskb\00", align 1
@DEV_STATE_UP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c" Allocating a socket buffer to interface %s failed\0A\00", align 1
@ETH_P_802_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lcs_card*, i8*, i32)* @lcs_get_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lcs_get_skb(%struct.lcs_card* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.lcs_card*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.lcs_card* %0, %struct.lcs_card** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @trace, align 4
  %9 = call i32 @LCS_DBF_TEXT(i32 5, i32 %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %11 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %10, i32 0, i32 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = icmp eq %struct.TYPE_4__* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %16 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DEV_STATE_UP, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %3
  br label %86

21:                                               ; preds = %14
  %22 = load i32, i32* %6, align 4
  %23 = call %struct.sk_buff* @dev_alloc_skb(i32 %22)
  store %struct.sk_buff* %23, %struct.sk_buff** %7, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %25 = icmp eq %struct.sk_buff* %24, null
  br i1 %25, label %26, label %42

26:                                               ; preds = %21
  %27 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %28 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %27, i32 0, i32 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %32 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %31, i32 0, i32 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %38 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  br label %86

42:                                               ; preds = %21
  %43 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @skb_put_data(%struct.sk_buff* %43, i8* %44, i32 %45)
  %47 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %48 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %47, i32 0, i32 1
  %49 = load i64 (%struct.sk_buff*, %struct.TYPE_4__*)*, i64 (%struct.sk_buff*, %struct.TYPE_4__*)** %48, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %51 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %52 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %51, i32 0, i32 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = call i64 %49(%struct.sk_buff* %50, %struct.TYPE_4__* %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %59 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add i32 %61, %57
  store i32 %62, i32* %60, align 8
  %63 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %64 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  %68 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* @ETH_P_802_2, align 4
  %72 = call i64 @htons(i32 %71)
  %73 = icmp eq i64 %70, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %42
  %75 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %76 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %76, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to i64*
  store i64 %78, i64* %82, align 8
  br label %83

83:                                               ; preds = %74, %42
  %84 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %85 = call i32 @netif_rx(%struct.sk_buff* %84)
  br label %86

86:                                               ; preds = %83, %26, %20
  ret void
}

declare dso_local i32 @LCS_DBF_TEXT(i32, i32, i8*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i8*, i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
