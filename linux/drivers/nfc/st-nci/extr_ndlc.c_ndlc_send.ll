; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_ndlc.c_ndlc_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_ndlc.c_ndlc_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llt_ndlc = type { i32, i32 }
%struct.sk_buff = type { i32 }

@PCB_TYPE_DATAFRAME = common dso_local global i32 0, align 4
@PCB_DATAFRAME_RETRANSMIT_NO = common dso_local global i32 0, align 4
@PCB_FRAME_CRC_INFO_NOTPRESENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ndlc_send(%struct.llt_ndlc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.llt_ndlc*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  store %struct.llt_ndlc* %0, %struct.llt_ndlc** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load i32, i32* @PCB_TYPE_DATAFRAME, align 4
  %7 = load i32, i32* @PCB_DATAFRAME_RETRANSMIT_NO, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @PCB_FRAME_CRC_INFO_NOTPRESENT, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = call i64 @skb_push(%struct.sk_buff* %12, i32 1)
  %14 = inttoptr i64 %13 to i32*
  store i32 %11, i32* %14, align 4
  %15 = load %struct.llt_ndlc*, %struct.llt_ndlc** %3, align 8
  %16 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %15, i32 0, i32 1
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call i32 @skb_queue_tail(i32* %16, %struct.sk_buff* %17)
  %19 = load %struct.llt_ndlc*, %struct.llt_ndlc** %3, align 8
  %20 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %19, i32 0, i32 0
  %21 = call i32 @schedule_work(i32* %20)
  ret i32 0
}

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
