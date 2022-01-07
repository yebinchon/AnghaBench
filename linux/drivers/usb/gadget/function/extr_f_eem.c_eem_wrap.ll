; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_eem.c_eem_wrap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_eem.c_eem_wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gether = type { %struct.usb_ep* }
%struct.usb_ep = type { i32 }
%struct.sk_buff = type { i32 }

@EEM_HLEN = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.gether*, %struct.sk_buff*)* @eem_wrap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @eem_wrap(%struct.gether* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.gether*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.usb_ep*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gether* %0, %struct.gether** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  %12 = load %struct.gether*, %struct.gether** %4, align 8
  %13 = getelementptr inbounds %struct.gether, %struct.gether* %12, i32 0, i32 0
  %14 = load %struct.usb_ep*, %struct.usb_ep** %13, align 8
  store %struct.usb_ep* %14, %struct.usb_ep** %7, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %90

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = call i32 @skb_headroom(%struct.sk_buff* %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = call i32 @skb_tailroom(%struct.sk_buff* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @EEM_HLEN, align 4
  %28 = add nsw i32 %26, %27
  %29 = load i32, i32* @ETH_FCS_LEN, align 4
  %30 = add nsw i32 %28, %29
  %31 = load %struct.usb_ep*, %struct.usb_ep** %7, align 8
  %32 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = srem i32 %30, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %18
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 2
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %36, %18
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @ETH_FCS_LEN, align 4
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %41, %42
  %44 = icmp sge i32 %40, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @EEM_HLEN, align 4
  %48 = icmp sge i32 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = call i32 @skb_cloned(%struct.sk_buff* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  br label %70

54:                                               ; preds = %49, %45, %39
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = load i32, i32* @EEM_HLEN, align 4
  %57 = load i32, i32* @ETH_FCS_LEN, align 4
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %57, %58
  %60 = load i32, i32* @GFP_ATOMIC, align 4
  %61 = call %struct.sk_buff* @skb_copy_expand(%struct.sk_buff* %55, i32 %56, i32 %59, i32 %60)
  store %struct.sk_buff* %61, %struct.sk_buff** %6, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %63 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %62)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %64, %struct.sk_buff** %5, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = icmp ne %struct.sk_buff* %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %54
  %68 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %68, %struct.sk_buff** %3, align 8
  br label %90

69:                                               ; preds = %54
  br label %70

70:                                               ; preds = %69, %53
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = call i32 @skb_put(%struct.sk_buff* %71, i32 4)
  %73 = call i32 @put_unaligned_be32(i32 -559038737, i32 %72)
  %74 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = and i32 %77, 16383
  %79 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %80 = call i32 @skb_push(%struct.sk_buff* %79, i32 2)
  %81 = call i32 @put_unaligned_le16(i32 %78, i32 %80)
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %70
  %85 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %86 = call i32 @skb_put(%struct.sk_buff* %85, i32 2)
  %87 = call i32 @put_unaligned_le16(i32 0, i32 %86)
  br label %88

88:                                               ; preds = %84, %70
  %89 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %89, %struct.sk_buff** %3, align 8
  br label %90

90:                                               ; preds = %88, %67, %17
  %91 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %91
}

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i32 @skb_cloned(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_copy_expand(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @put_unaligned_be32(i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @put_unaligned_le16(i32, i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
