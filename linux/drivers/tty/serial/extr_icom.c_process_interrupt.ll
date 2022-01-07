; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_icom.c_process_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_icom.c_process_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icom_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"INTERRUPT\00", align 1
@INT_XMIT_COMPLETED = common dso_local global i32 0, align 4
@INT_XMIT_DISABLED = common dso_local global i32 0, align 4
@INT_RCV_COMPLETED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.icom_port*)* @process_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_interrupt(i32 %0, %struct.icom_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.icom_port*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.icom_port* %1, %struct.icom_port** %4, align 8
  %5 = load %struct.icom_port*, %struct.icom_port** %4, align 8
  %6 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.icom_port*, %struct.icom_port** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @trace(%struct.icom_port* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @INT_XMIT_COMPLETED, align 4
  %14 = load i32, i32* @INT_XMIT_DISABLED, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.icom_port*, %struct.icom_port** %4, align 8
  %21 = call i32 @xmit_interrupt(i32 %19, %struct.icom_port* %20)
  br label %22

22:                                               ; preds = %18, %2
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @INT_RCV_COMPLETED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.icom_port*, %struct.icom_port** %4, align 8
  %30 = call i32 @recv_interrupt(i32 %28, %struct.icom_port* %29)
  br label %31

31:                                               ; preds = %27, %22
  %32 = load %struct.icom_port*, %struct.icom_port** %4, align 8
  %33 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @spin_unlock(i32* %34)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @trace(%struct.icom_port*, i8*, i32) #1

declare dso_local i32 @xmit_interrupt(i32, %struct.icom_port*) #1

declare dso_local i32 @recv_interrupt(i32, %struct.icom_port*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
