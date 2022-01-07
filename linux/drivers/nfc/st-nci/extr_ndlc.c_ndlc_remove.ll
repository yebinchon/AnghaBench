; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_ndlc.c_ndlc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_ndlc.c_ndlc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llt_ndlc = type { i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ndlc_remove(%struct.llt_ndlc* %0) #0 {
  %2 = alloca %struct.llt_ndlc*, align 8
  store %struct.llt_ndlc* %0, %struct.llt_ndlc** %2, align 8
  %3 = load %struct.llt_ndlc*, %struct.llt_ndlc** %2, align 8
  %4 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %3, i32 0, i32 6
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @st_nci_remove(i32 %5)
  %7 = load %struct.llt_ndlc*, %struct.llt_ndlc** %2, align 8
  %8 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %7, i32 0, i32 5
  %9 = call i32 @del_timer_sync(i32* %8)
  %10 = load %struct.llt_ndlc*, %struct.llt_ndlc** %2, align 8
  %11 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %10, i32 0, i32 4
  %12 = call i32 @del_timer_sync(i32* %11)
  %13 = load %struct.llt_ndlc*, %struct.llt_ndlc** %2, align 8
  %14 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %13, i32 0, i32 0
  store i32 0, i32* %14, align 4
  %15 = load %struct.llt_ndlc*, %struct.llt_ndlc** %2, align 8
  %16 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %15, i32 0, i32 1
  store i32 0, i32* %16, align 4
  %17 = load %struct.llt_ndlc*, %struct.llt_ndlc** %2, align 8
  %18 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %17, i32 0, i32 3
  %19 = call i32 @skb_queue_purge(i32* %18)
  %20 = load %struct.llt_ndlc*, %struct.llt_ndlc** %2, align 8
  %21 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %20, i32 0, i32 2
  %22 = call i32 @skb_queue_purge(i32* %21)
  ret void
}

declare dso_local i32 @st_nci_remove(i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
