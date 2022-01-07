; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/microread/extr_microread.c_microread_im_transceive_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/microread/extr_microread.c_microread_im_transceive_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32* }
%struct.microread_info = type { i32, i32, i32 (i32, %struct.sk_buff*, i32)* }

@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.sk_buff*, i32)* @microread_im_transceive_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @microread_im_transceive_cb(i8* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.microread_info*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.microread_info*
  store %struct.microread_info* %9, %struct.microread_info** %7, align 8
  %10 = load %struct.microread_info*, %struct.microread_info** %7, align 8
  %11 = getelementptr inbounds %struct.microread_info, %struct.microread_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %86 [
    i32 128, label %13
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %76

16:                                               ; preds = %13
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %16
  %22 = load i32, i32* @EPROTO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = call i32 @kfree_skb(%struct.sk_buff* %24)
  %26 = load %struct.microread_info*, %struct.microread_info** %7, align 8
  %27 = getelementptr inbounds %struct.microread_info, %struct.microread_info* %26, i32 0, i32 2
  %28 = load i32 (i32, %struct.sk_buff*, i32)*, i32 (i32, %struct.sk_buff*, i32)** %27, align 8
  %29 = load %struct.microread_info*, %struct.microread_info** %7, align 8
  %30 = getelementptr inbounds %struct.microread_info, %struct.microread_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @EPROTO, align 4
  %33 = sub nsw i32 0, %32
  %34 = call i32 %28(i32 %31, %struct.sk_buff* null, i32 %33)
  br label %93

35:                                               ; preds = %16
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %38, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %35
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %50, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @nfc_hci_result_to_errno(i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %60 = call i32 @kfree_skb(%struct.sk_buff* %59)
  %61 = load %struct.microread_info*, %struct.microread_info** %7, align 8
  %62 = getelementptr inbounds %struct.microread_info, %struct.microread_info* %61, i32 0, i32 2
  %63 = load i32 (i32, %struct.sk_buff*, i32)*, i32 (i32, %struct.sk_buff*, i32)** %62, align 8
  %64 = load %struct.microread_info*, %struct.microread_info** %7, align 8
  %65 = getelementptr inbounds %struct.microread_info, %struct.microread_info* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 %63(i32 %66, %struct.sk_buff* null, i32 %67)
  br label %93

69:                                               ; preds = %35
  %70 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sub nsw i32 %73, 1
  %75 = call i32 @skb_trim(%struct.sk_buff* %70, i32 %74)
  br label %76

76:                                               ; preds = %69, %13
  %77 = load %struct.microread_info*, %struct.microread_info** %7, align 8
  %78 = getelementptr inbounds %struct.microread_info, %struct.microread_info* %77, i32 0, i32 2
  %79 = load i32 (i32, %struct.sk_buff*, i32)*, i32 (i32, %struct.sk_buff*, i32)** %78, align 8
  %80 = load %struct.microread_info*, %struct.microread_info** %7, align 8
  %81 = getelementptr inbounds %struct.microread_info, %struct.microread_info* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %84 = load i32, i32* %6, align 4
  %85 = call i32 %79(i32 %82, %struct.sk_buff* %83, i32 %84)
  br label %93

86:                                               ; preds = %3
  %87 = load i32, i32* %6, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %91 = call i32 @kfree_skb(%struct.sk_buff* %90)
  br label %92

92:                                               ; preds = %89, %86
  br label %93

93:                                               ; preds = %21, %47, %92, %76
  ret void
}

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @nfc_hci_result_to_errno(i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
