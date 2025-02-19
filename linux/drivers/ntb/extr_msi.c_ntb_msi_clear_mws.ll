; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/extr_msi.c_ntb_msi_clear_mws.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/extr_msi.c_ntb_msi_clear_mws.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ntb_msi_clear_mws(%struct.ntb_dev* %0) #0 {
  %2 = alloca %struct.ntb_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ntb_dev* %0, %struct.ntb_dev** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %22, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.ntb_dev*, %struct.ntb_dev** %2, align 8
  %8 = call i32 @ntb_peer_port_count(%struct.ntb_dev* %7)
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %5
  %11 = load %struct.ntb_dev*, %struct.ntb_dev** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @ntb_peer_highest_mw_idx(%struct.ntb_dev* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %22

17:                                               ; preds = %10
  %18 = load %struct.ntb_dev*, %struct.ntb_dev** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @ntb_mw_clear_trans(%struct.ntb_dev* %18, i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %17, %16
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %5

25:                                               ; preds = %5
  ret void
}

declare dso_local i32 @ntb_peer_port_count(%struct.ntb_dev*) #1

declare dso_local i32 @ntb_peer_highest_mw_idx(%struct.ntb_dev*, i32) #1

declare dso_local i32 @ntb_mw_clear_trans(%struct.ntb_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
