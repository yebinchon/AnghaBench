; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_midi.c_f_midi_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_midi.c_f_midi_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f_midi = type { i32, %struct.usb_ep* }
%struct.usb_ep = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f_midi*)* @f_midi_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @f_midi_transmit(%struct.f_midi* %0) #0 {
  %2 = alloca %struct.f_midi*, align 8
  %3 = alloca %struct.usb_ep*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.f_midi* %0, %struct.f_midi** %2, align 8
  %6 = load %struct.f_midi*, %struct.f_midi** %2, align 8
  %7 = getelementptr inbounds %struct.f_midi, %struct.f_midi* %6, i32 0, i32 1
  %8 = load %struct.usb_ep*, %struct.usb_ep** %7, align 8
  store %struct.usb_ep* %8, %struct.usb_ep** %3, align 8
  %9 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %10 = icmp ne %struct.usb_ep* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %13 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11, %1
  br label %42

17:                                               ; preds = %11
  %18 = load %struct.f_midi*, %struct.f_midi** %2, align 8
  %19 = getelementptr inbounds %struct.f_midi, %struct.f_midi* %18, i32 0, i32 0
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  br label %22

22:                                               ; preds = %34, %17
  %23 = load %struct.f_midi*, %struct.f_midi** %2, align 8
  %24 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %25 = call i32 @f_midi_do_transmit(%struct.f_midi* %23, %struct.usb_ep* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load %struct.f_midi*, %struct.f_midi** %2, align 8
  %30 = getelementptr inbounds %struct.f_midi, %struct.f_midi* %29, i32 0, i32 0
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  br label %42

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %22, label %37

37:                                               ; preds = %34
  %38 = load %struct.f_midi*, %struct.f_midi** %2, align 8
  %39 = getelementptr inbounds %struct.f_midi, %struct.f_midi* %38, i32 0, i32 0
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  br label %45

42:                                               ; preds = %28, %16
  %43 = load %struct.f_midi*, %struct.f_midi** %2, align 8
  %44 = call i32 @f_midi_drop_out_substreams(%struct.f_midi* %43)
  br label %45

45:                                               ; preds = %42, %37
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @f_midi_do_transmit(%struct.f_midi*, %struct.usb_ep*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @f_midi_drop_out_substreams(%struct.f_midi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
