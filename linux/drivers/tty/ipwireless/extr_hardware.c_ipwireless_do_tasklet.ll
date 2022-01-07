; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/ipwireless/extr_hardware.c_ipwireless_do_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/ipwireless/extr_hardware.c_ipwireless_do_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_hardware = type { i32, i32, i64 }

@PRIO_SETUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @ipwireless_do_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipwireless_do_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ipw_hardware*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.ipw_hardware*
  store %struct.ipw_hardware* %8, %struct.ipw_hardware** %3, align 8
  %9 = load %struct.ipw_hardware*, %struct.ipw_hardware** %3, align 8
  %10 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %9, i32 0, i32 1
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.ipw_hardware*, %struct.ipw_hardware** %3, align 8
  %14 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.ipw_hardware*, %struct.ipw_hardware** %3, align 8
  %19 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %18, i32 0, i32 1
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* %19, i64 %20)
  br label %63

22:                                               ; preds = %1
  %23 = load %struct.ipw_hardware*, %struct.ipw_hardware** %3, align 8
  %24 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %44

27:                                               ; preds = %22
  %28 = load %struct.ipw_hardware*, %struct.ipw_hardware** %3, align 8
  %29 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %28, i32 0, i32 0
  store i32 2, i32* %29, align 8
  %30 = load %struct.ipw_hardware*, %struct.ipw_hardware** %3, align 8
  %31 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %30, i32 0, i32 1
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load %struct.ipw_hardware*, %struct.ipw_hardware** %3, align 8
  %35 = call i32 @ipw_setup_hardware(%struct.ipw_hardware* %34)
  %36 = load %struct.ipw_hardware*, %struct.ipw_hardware** %3, align 8
  %37 = call i32 @ipw_send_setup_packet(%struct.ipw_hardware* %36)
  %38 = load %struct.ipw_hardware*, %struct.ipw_hardware** %3, align 8
  %39 = load i32, i32* @PRIO_SETUP, align 4
  %40 = add nsw i32 %39, 1
  %41 = call i32 @send_pending_packet(%struct.ipw_hardware* %38, i32 %40)
  %42 = load %struct.ipw_hardware*, %struct.ipw_hardware** %3, align 8
  %43 = call i32 @get_packets_from_hw(%struct.ipw_hardware* %42)
  br label %63

44:                                               ; preds = %22
  %45 = load %struct.ipw_hardware*, %struct.ipw_hardware** %3, align 8
  %46 = call i32 @get_current_packet_priority(%struct.ipw_hardware* %45)
  store i32 %46, i32* %5, align 4
  %47 = load %struct.ipw_hardware*, %struct.ipw_hardware** %3, align 8
  %48 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %47, i32 0, i32 1
  %49 = load i64, i64* %4, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  br label %51

51:                                               ; preds = %59, %44
  %52 = load %struct.ipw_hardware*, %struct.ipw_hardware** %3, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @send_pending_packet(%struct.ipw_hardware* %52, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load %struct.ipw_hardware*, %struct.ipw_hardware** %3, align 8
  %56 = call i32 @get_packets_from_hw(%struct.ipw_hardware* %55)
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %51
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %51, label %62

62:                                               ; preds = %59
  br label %63

63:                                               ; preds = %17, %62, %27
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ipw_setup_hardware(%struct.ipw_hardware*) #1

declare dso_local i32 @ipw_send_setup_packet(%struct.ipw_hardware*) #1

declare dso_local i32 @send_pending_packet(%struct.ipw_hardware*, i32) #1

declare dso_local i32 @get_packets_from_hw(%struct.ipw_hardware*) #1

declare dso_local i32 @get_current_packet_priority(%struct.ipw_hardware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
