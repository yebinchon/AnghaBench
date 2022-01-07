; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_abort_cmd_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_abort_cmd_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Abort command ring\0A\00", align 1
@CMD_RING_ABORT = common dso_local global i32 0, align 4
@CMD_RING_RUNNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Abort failed to stop command ring: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"No stop event for abort, ring start fail?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_hcd*, i64)* @xhci_abort_cmd_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_abort_cmd_ring(%struct.xhci_hcd* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xhci_hcd*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %9 = call i32 @xhci_dbg(%struct.xhci_hcd* %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %11 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %10, i32 0, i32 1
  %12 = call i32 @reinit_completion(i32* %11)
  %13 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %14 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %15 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @xhci_read_64(%struct.xhci_hcd* %13, i32* %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @CMD_RING_ABORT, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %24 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @xhci_write_64(%struct.xhci_hcd* %19, i32 %22, i32* %26)
  %28 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %29 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* @CMD_RING_RUNNING, align 4
  %33 = call i32 @xhci_handshake(i32* %31, i32 %32, i32 0, i32 5000000)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %2
  %37 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @xhci_err(%struct.xhci_hcd* %37, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %41 = call i32 @xhci_halt(%struct.xhci_hcd* %40)
  %42 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %43 = call i32 @xhci_hc_died(%struct.xhci_hcd* %42)
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %71

45:                                               ; preds = %2
  %46 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %47 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %46, i32 0, i32 0
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  %50 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %51 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %50, i32 0, i32 1
  %52 = call i32 @msecs_to_jiffies(i32 2000)
  %53 = call i32 @wait_for_completion_timeout(i32* %51, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %55 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %54, i32 0, i32 0
  %56 = load i64, i64* %5, align 8
  %57 = call i32 @spin_lock_irqsave(i32* %55, i64 %56)
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %45
  %61 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %62 = call i32 @xhci_dbg(%struct.xhci_hcd* %61, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %63 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %64 = call i32 @xhci_cleanup_command_queue(%struct.xhci_hcd* %63)
  br label %70

65:                                               ; preds = %45
  %66 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %67 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %68 = call i32 @xhci_next_queued_cmd(%struct.xhci_hcd* %67)
  %69 = call i32 @xhci_handle_stopped_cmd_ring(%struct.xhci_hcd* %66, i32 %68)
  br label %70

70:                                               ; preds = %65, %60
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %36
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @xhci_read_64(%struct.xhci_hcd*, i32*) #1

declare dso_local i32 @xhci_write_64(%struct.xhci_hcd*, i32, i32*) #1

declare dso_local i32 @xhci_handshake(i32*, i32, i32, i32) #1

declare dso_local i32 @xhci_err(%struct.xhci_hcd*, i8*, i32) #1

declare dso_local i32 @xhci_halt(%struct.xhci_hcd*) #1

declare dso_local i32 @xhci_hc_died(%struct.xhci_hcd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @xhci_cleanup_command_queue(%struct.xhci_hcd*) #1

declare dso_local i32 @xhci_handle_stopped_cmd_ring(%struct.xhci_hcd*, i32) #1

declare dso_local i32 @xhci_next_queued_cmd(%struct.xhci_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
