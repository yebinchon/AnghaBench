; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_rtl819xU_tx_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_rtl819xU_tx_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i32, i64, i64 }
%struct.r8192_priv = type { i32, i32* }
%struct.urb = type { i32 }
%struct.tx_desc_cmd_819x_usb = type { i32, i32, i32, i32, i32, i32 }
%struct.cb_desc = type { i64, i32, i32, i32 }

@MAX_DEV_ADDR_SIZE = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i16 0, align 2
@USB_HWDESC_HEADER_LEN = common dso_local global i32 0, align 4
@rtl8192_tx_isr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Error TX CMD URB, error %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i16 @rtl819xU_tx_cmd(%struct.net_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.r8192_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.urb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tx_desc_cmd_819x_usb*, align 8
  %11 = alloca %struct.cb_desc*, align 8
  %12 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %13)
  store %struct.r8192_priv* %14, %struct.r8192_priv** %6, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.tx_desc_cmd_819x_usb*
  store %struct.tx_desc_cmd_819x_usb* %18, %struct.tx_desc_cmd_819x_usb** %10, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MAX_DEV_ADDR_SIZE, align 8
  %23 = add nsw i64 %21, %22
  %24 = inttoptr i64 %23 to %struct.cb_desc*
  store %struct.cb_desc* %24, %struct.cb_desc** %11, align 8
  %25 = load %struct.cb_desc*, %struct.cb_desc** %11, align 8
  %26 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %12, align 8
  %28 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %29 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* %12, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = call i32 @atomic_inc(i32* %32)
  %34 = load i32, i32* @GFP_ATOMIC, align 4
  %35 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %34)
  store %struct.urb* %35, %struct.urb** %8, align 8
  %36 = load %struct.urb*, %struct.urb** %8, align 8
  %37 = icmp ne %struct.urb* %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %2
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = call i32 @dev_kfree_skb(%struct.sk_buff* %39)
  %41 = load i16, i16* @ENOMEM, align 2
  %42 = sext i16 %41 to i32
  %43 = sub nsw i32 0, %42
  %44 = trunc i32 %43 to i16
  store i16 %44, i16* %3, align 2
  br label %97

45:                                               ; preds = %2
  %46 = load %struct.tx_desc_cmd_819x_usb*, %struct.tx_desc_cmd_819x_usb** %10, align 8
  %47 = load i32, i32* @USB_HWDESC_HEADER_LEN, align 4
  %48 = call i32 @memset(%struct.tx_desc_cmd_819x_usb* %46, i32 0, i32 %47)
  %49 = load %struct.tx_desc_cmd_819x_usb*, %struct.tx_desc_cmd_819x_usb** %10, align 8
  %50 = getelementptr inbounds %struct.tx_desc_cmd_819x_usb, %struct.tx_desc_cmd_819x_usb* %49, i32 0, i32 0
  store i32 1, i32* %50, align 4
  %51 = load %struct.tx_desc_cmd_819x_usb*, %struct.tx_desc_cmd_819x_usb** %10, align 8
  %52 = getelementptr inbounds %struct.tx_desc_cmd_819x_usb, %struct.tx_desc_cmd_819x_usb* %51, i32 0, i32 1
  store i32 1, i32* %52, align 4
  %53 = load %struct.cb_desc*, %struct.cb_desc** %11, align 8
  %54 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.tx_desc_cmd_819x_usb*, %struct.tx_desc_cmd_819x_usb** %10, align 8
  %57 = getelementptr inbounds %struct.tx_desc_cmd_819x_usb, %struct.tx_desc_cmd_819x_usb* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 4
  %58 = load %struct.cb_desc*, %struct.cb_desc** %11, align 8
  %59 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.tx_desc_cmd_819x_usb*, %struct.tx_desc_cmd_819x_usb** %10, align 8
  %62 = getelementptr inbounds %struct.tx_desc_cmd_819x_usb, %struct.tx_desc_cmd_819x_usb* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 4
  %63 = load %struct.tx_desc_cmd_819x_usb*, %struct.tx_desc_cmd_819x_usb** %10, align 8
  %64 = getelementptr inbounds %struct.tx_desc_cmd_819x_usb, %struct.tx_desc_cmd_819x_usb* %63, i32 0, i32 2
  store i32 1, i32* %64, align 4
  %65 = load %struct.cb_desc*, %struct.cb_desc** %11, align 8
  %66 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.tx_desc_cmd_819x_usb*, %struct.tx_desc_cmd_819x_usb** %10, align 8
  %69 = getelementptr inbounds %struct.tx_desc_cmd_819x_usb, %struct.tx_desc_cmd_819x_usb* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  store i32 4, i32* %9, align 4
  %70 = load %struct.urb*, %struct.urb** %8, align 8
  %71 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %72 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %75 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @usb_sndbulkpipe(i32 %76, i32 %77)
  %79 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @rtl8192_tx_isr, align 4
  %86 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %87 = call i32 @usb_fill_bulk_urb(%struct.urb* %70, i32 %73, i32 %78, i64 %81, i32 %84, i32 %85, %struct.sk_buff* %86)
  %88 = load %struct.urb*, %struct.urb** %8, align 8
  %89 = load i32, i32* @GFP_ATOMIC, align 4
  %90 = call i32 @usb_submit_urb(%struct.urb* %88, i32 %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %45
  store i16 0, i16* %3, align 2
  br label %97

94:                                               ; preds = %45
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @DMESGE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %95)
  store i16 -1, i16* %3, align 2
  br label %97

97:                                               ; preds = %94, %93, %38
  %98 = load i16, i16* %3, align 2
  ret i16 %98
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.tx_desc_cmd_819x_usb*, i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i64, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @DMESGE(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
