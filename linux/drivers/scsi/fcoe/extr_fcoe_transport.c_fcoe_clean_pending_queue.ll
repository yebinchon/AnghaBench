; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe_transport.c_fcoe_clean_pending_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe_transport.c_fcoe_clean_pending_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i32 }
%struct.fcoe_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fcoe_clean_pending_queue(%struct.fc_lport* %0) #0 {
  %2 = alloca %struct.fc_lport*, align 8
  %3 = alloca %struct.fcoe_port*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %2, align 8
  %5 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %6 = call %struct.fcoe_port* @lport_priv(%struct.fc_lport* %5)
  store %struct.fcoe_port* %6, %struct.fcoe_port** %3, align 8
  %7 = load %struct.fcoe_port*, %struct.fcoe_port** %3, align 8
  %8 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @spin_lock_bh(i32* %9)
  br label %11

11:                                               ; preds = %16, %1
  %12 = load %struct.fcoe_port*, %struct.fcoe_port** %3, align 8
  %13 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %12, i32 0, i32 0
  %14 = call %struct.sk_buff* @__skb_dequeue(%struct.TYPE_2__* %13)
  store %struct.sk_buff* %14, %struct.sk_buff** %4, align 8
  %15 = icmp ne %struct.sk_buff* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %11
  %17 = load %struct.fcoe_port*, %struct.fcoe_port** %3, align 8
  %18 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @spin_unlock_bh(i32* %19)
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call i32 @kfree_skb(%struct.sk_buff* %21)
  %23 = load %struct.fcoe_port*, %struct.fcoe_port** %3, align 8
  %24 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @spin_lock_bh(i32* %25)
  br label %11

27:                                               ; preds = %11
  %28 = load %struct.fcoe_port*, %struct.fcoe_port** %3, align 8
  %29 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock_bh(i32* %30)
  ret void
}

declare dso_local %struct.fcoe_port* @lport_priv(%struct.fc_lport*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
