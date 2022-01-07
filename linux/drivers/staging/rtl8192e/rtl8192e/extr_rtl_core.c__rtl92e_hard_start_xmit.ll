; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_core.c__rtl92e_hard_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_core.c__rtl92e_hard_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { i32 }
%struct.r8192_priv = type { %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.cb_desc = type { i64, i32, i32, i32, i32 }

@MAX_DEV_ADDR_SIZE = common dso_local global i64 0, align 8
@TXCMD_QUEUE = common dso_local global i64 0, align 8
@eRfOff = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @_rtl92e_hard_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92e_hard_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.r8192_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cb_desc*, align 8
  %9 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %10)
  store %struct.r8192_priv* %11, %struct.r8192_priv** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MAX_DEV_ADDR_SIZE, align 8
  %16 = add nsw i64 %14, %15
  %17 = inttoptr i64 %16 to %struct.cb_desc*
  store %struct.cb_desc* %17, %struct.cb_desc** %8, align 8
  %18 = load %struct.cb_desc*, %struct.cb_desc** %8, align 8
  %19 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* @TXCMD_QUEUE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %2
  %25 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %26 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @eRfOff, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %42, label %32

32:                                               ; preds = %24
  %33 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %34 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %39 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37, %32, %24
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = call i32 @kfree_skb(%struct.sk_buff* %43)
  store i32 0, i32* %3, align 4
  br label %85

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %2
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 @memcpy(i8* %50, %struct.net_device** %5, i32 8)
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* @TXCMD_QUEUE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %46
  %56 = load %struct.net_device*, %struct.net_device** %5, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = call i32 @_rtl92e_tx_cmd(%struct.net_device* %56, %struct.sk_buff* %57)
  store i32 0, i32* %3, align 4
  br label %85

59:                                               ; preds = %46
  %60 = load %struct.cb_desc*, %struct.cb_desc** %8, align 8
  %61 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %60, i32 0, i32 1
  store i32 7, i32* %61, align 8
  %62 = load %struct.cb_desc*, %struct.cb_desc** %8, align 8
  %63 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %62, i32 0, i32 2
  store i32 1, i32* %63, align 4
  %64 = load %struct.cb_desc*, %struct.cb_desc** %8, align 8
  %65 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %64, i32 0, i32 3
  store i32 1, i32* %65, align 8
  %66 = load %struct.cb_desc*, %struct.cb_desc** %8, align 8
  %67 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %66, i32 0, i32 4
  store i32 1, i32* %67, align 4
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %70 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @skb_push(%struct.sk_buff* %68, i32 %73)
  %75 = load %struct.net_device*, %struct.net_device** %5, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %77 = call i32 @_rtl92e_tx(%struct.net_device* %75, %struct.sk_buff* %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %59
  %81 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %82 = call i32 @kfree_skb(%struct.sk_buff* %81)
  br label %83

83:                                               ; preds = %80, %59
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %83, %55, %42
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i8*, %struct.net_device**, i32) #1

declare dso_local i32 @_rtl92e_tx_cmd(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @_rtl92e_tx(%struct.net_device*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
