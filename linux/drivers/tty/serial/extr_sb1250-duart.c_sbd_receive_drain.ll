; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sb1250-duart.c_sbd_receive_drain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sb1250-duart.c_sbd_receive_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbd_port = type { i32 }

@R_DUART_RX_HOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbd_port*)* @sbd_receive_drain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbd_receive_drain(%struct.sbd_port* %0) #0 {
  %2 = alloca %struct.sbd_port*, align 8
  %3 = alloca i32, align 4
  store %struct.sbd_port* %0, %struct.sbd_port** %2, align 8
  store i32 10000, i32* %3, align 4
  br label %4

4:                                                ; preds = %14, %1
  %5 = load %struct.sbd_port*, %struct.sbd_port** %2, align 8
  %6 = call i64 @sbd_receive_ready(%struct.sbd_port* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = load i32, i32* %3, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi i1 [ false, %4 ], [ %11, %8 ]
  br i1 %13, label %14, label %18

14:                                               ; preds = %12
  %15 = load %struct.sbd_port*, %struct.sbd_port** %2, align 8
  %16 = load i32, i32* @R_DUART_RX_HOLD, align 4
  %17 = call i32 @read_sbdchn(%struct.sbd_port* %15, i32 %16)
  br label %4

18:                                               ; preds = %12
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local i64 @sbd_receive_ready(%struct.sbd_port*) #1

declare dso_local i32 @read_sbdchn(%struct.sbd_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
