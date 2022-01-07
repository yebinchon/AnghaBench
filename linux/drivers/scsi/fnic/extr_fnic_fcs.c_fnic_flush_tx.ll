; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_fcs.c_fnic_flush_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_fcs.c_fnic_flush_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fnic = type { i32 }
%struct.sk_buff = type { i32 }
%struct.fc_frame = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fnic_flush_tx(%struct.fnic* %0) #0 {
  %2 = alloca %struct.fnic*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.fc_frame*, align 8
  store %struct.fnic* %0, %struct.fnic** %2, align 8
  br label %5

5:                                                ; preds = %10, %1
  %6 = load %struct.fnic*, %struct.fnic** %2, align 8
  %7 = getelementptr inbounds %struct.fnic, %struct.fnic* %6, i32 0, i32 0
  %8 = call %struct.sk_buff* @skb_dequeue(i32* %7)
  store %struct.sk_buff* %8, %struct.sk_buff** %3, align 8
  %9 = icmp ne %struct.sk_buff* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %5
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = bitcast %struct.sk_buff* %11 to %struct.fc_frame*
  store %struct.fc_frame* %12, %struct.fc_frame** %4, align 8
  %13 = load %struct.fnic*, %struct.fnic** %2, align 8
  %14 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %15 = call i32 @fnic_send_frame(%struct.fnic* %13, %struct.fc_frame* %14)
  br label %5

16:                                               ; preds = %5
  ret void
}

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @fnic_send_frame(%struct.fnic*, %struct.fc_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
