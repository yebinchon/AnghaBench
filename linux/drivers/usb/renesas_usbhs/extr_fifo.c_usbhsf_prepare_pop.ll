; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhsf_prepare_pop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhsf_prepare_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_pkt = type { i32, i32, %struct.usbhs_pipe* }
%struct.usbhs_pipe = type { i32 }
%struct.usbhs_priv = type { i32 }
%struct.usbhs_fifo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbhs_pkt*, i32*)* @usbhsf_prepare_pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhsf_prepare_pop(%struct.usbhs_pkt* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbhs_pkt*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.usbhs_pipe*, align 8
  %7 = alloca %struct.usbhs_priv*, align 8
  %8 = alloca %struct.usbhs_fifo*, align 8
  store %struct.usbhs_pkt* %0, %struct.usbhs_pkt** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %10 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %9, i32 0, i32 2
  %11 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %10, align 8
  store %struct.usbhs_pipe* %11, %struct.usbhs_pipe** %6, align 8
  %12 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %6, align 8
  %13 = call %struct.usbhs_priv* @usbhs_pipe_to_priv(%struct.usbhs_pipe* %12)
  store %struct.usbhs_priv* %13, %struct.usbhs_priv** %7, align 8
  %14 = load %struct.usbhs_priv*, %struct.usbhs_priv** %7, align 8
  %15 = call %struct.usbhs_fifo* @usbhsf_get_cfifo(%struct.usbhs_priv* %14)
  store %struct.usbhs_fifo* %15, %struct.usbhs_fifo** %8, align 8
  %16 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %6, align 8
  %17 = call i64 @usbhs_pipe_is_busy(%struct.usbhs_pipe* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %52

20:                                               ; preds = %2
  %21 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %6, align 8
  %22 = call i64 @usbhs_pipe_is_running(%struct.usbhs_pipe* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %52

25:                                               ; preds = %20
  %26 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %6, align 8
  %27 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %28 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @usbhs_pipe_data_sequence(%struct.usbhs_pipe* %26, i32 %29)
  %31 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %32 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %31, i32 0, i32 0
  store i32 -1, i32* %32, align 8
  %33 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %6, align 8
  %34 = call i64 @usbhs_pipe_is_dcp(%struct.usbhs_pipe* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %25
  %37 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %6, align 8
  %38 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %8, align 8
  %39 = call i32 @usbhsf_fifo_clear(%struct.usbhs_pipe* %37, %struct.usbhs_fifo* %38)
  br label %40

40:                                               ; preds = %36, %25
  %41 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %6, align 8
  %42 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %43 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @usbhs_pipe_set_trans_count_if_bulk(%struct.usbhs_pipe* %41, i32 %44)
  %46 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %6, align 8
  %47 = call i32 @usbhs_pipe_enable(%struct.usbhs_pipe* %46)
  %48 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %6, align 8
  %49 = call i32 @usbhs_pipe_running(%struct.usbhs_pipe* %48, i32 1)
  %50 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %6, align 8
  %51 = call i32 @usbhsf_rx_irq_ctrl(%struct.usbhs_pipe* %50, i32 1)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %40, %24, %19
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.usbhs_priv* @usbhs_pipe_to_priv(%struct.usbhs_pipe*) #1

declare dso_local %struct.usbhs_fifo* @usbhsf_get_cfifo(%struct.usbhs_priv*) #1

declare dso_local i64 @usbhs_pipe_is_busy(%struct.usbhs_pipe*) #1

declare dso_local i64 @usbhs_pipe_is_running(%struct.usbhs_pipe*) #1

declare dso_local i32 @usbhs_pipe_data_sequence(%struct.usbhs_pipe*, i32) #1

declare dso_local i64 @usbhs_pipe_is_dcp(%struct.usbhs_pipe*) #1

declare dso_local i32 @usbhsf_fifo_clear(%struct.usbhs_pipe*, %struct.usbhs_fifo*) #1

declare dso_local i32 @usbhs_pipe_set_trans_count_if_bulk(%struct.usbhs_pipe*, i32) #1

declare dso_local i32 @usbhs_pipe_enable(%struct.usbhs_pipe*) #1

declare dso_local i32 @usbhs_pipe_running(%struct.usbhs_pipe*, i32) #1

declare dso_local i32 @usbhsf_rx_irq_ctrl(%struct.usbhs_pipe*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
