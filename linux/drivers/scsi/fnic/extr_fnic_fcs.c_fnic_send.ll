; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_fcs.c_fnic_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_fcs.c_fnic_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i32 }
%struct.fc_frame = type { i32 }
%struct.fnic = type { i64, i32, i32, i64 }

@FNIC_IN_FC_MODE = common dso_local global i64 0, align 8
@FNIC_IN_ETH_MODE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fnic_send(%struct.fc_lport* %0, %struct.fc_frame* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fc_lport*, align 8
  %5 = alloca %struct.fc_frame*, align 8
  %6 = alloca %struct.fnic*, align 8
  %7 = alloca i64, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %4, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %5, align 8
  %8 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %9 = call %struct.fnic* @lport_priv(%struct.fc_lport* %8)
  store %struct.fnic* %9, %struct.fnic** %6, align 8
  %10 = load %struct.fnic*, %struct.fnic** %6, align 8
  %11 = getelementptr inbounds %struct.fnic, %struct.fnic* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %16 = call i32 @fp_skb(%struct.fc_frame* %15)
  %17 = call i32 @dev_kfree_skb(i32 %16)
  store i32 -1, i32* %3, align 4
  br label %52

18:                                               ; preds = %2
  %19 = load %struct.fnic*, %struct.fnic** %6, align 8
  %20 = getelementptr inbounds %struct.fnic, %struct.fnic* %19, i32 0, i32 1
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.fnic*, %struct.fnic** %6, align 8
  %24 = getelementptr inbounds %struct.fnic, %struct.fnic* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @FNIC_IN_FC_MODE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %18
  %29 = load %struct.fnic*, %struct.fnic** %6, align 8
  %30 = getelementptr inbounds %struct.fnic, %struct.fnic* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @FNIC_IN_ETH_MODE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  %35 = load %struct.fnic*, %struct.fnic** %6, align 8
  %36 = getelementptr inbounds %struct.fnic, %struct.fnic* %35, i32 0, i32 2
  %37 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %38 = call i32 @fp_skb(%struct.fc_frame* %37)
  %39 = call i32 @skb_queue_tail(i32* %36, i32 %38)
  %40 = load %struct.fnic*, %struct.fnic** %6, align 8
  %41 = getelementptr inbounds %struct.fnic, %struct.fnic* %40, i32 0, i32 1
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  store i32 0, i32* %3, align 4
  br label %52

44:                                               ; preds = %28, %18
  %45 = load %struct.fnic*, %struct.fnic** %6, align 8
  %46 = getelementptr inbounds %struct.fnic, %struct.fnic* %45, i32 0, i32 1
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  %49 = load %struct.fnic*, %struct.fnic** %6, align 8
  %50 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %51 = call i32 @fnic_send_frame(%struct.fnic* %49, %struct.fc_frame* %50)
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %44, %34, %14
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.fnic* @lport_priv(%struct.fc_lport*) #1

declare dso_local i32 @dev_kfree_skb(i32) #1

declare dso_local i32 @fp_skb(%struct.fc_frame*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @skb_queue_tail(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @fnic_send_frame(%struct.fnic*, %struct.fc_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
