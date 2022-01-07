; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_midi.c_f_midi_drop_out_substreams.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_midi.c_f_midi_drop_out_substreams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f_midi = type { i32, %struct.gmidi_in_port* }
%struct.gmidi_in_port = type { i64, %struct.snd_rawmidi_substream* }
%struct.snd_rawmidi_substream = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f_midi*)* @f_midi_drop_out_substreams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @f_midi_drop_out_substreams(%struct.f_midi* %0) #0 {
  %2 = alloca %struct.f_midi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.gmidi_in_port*, align 8
  %5 = alloca %struct.snd_rawmidi_substream*, align 8
  store %struct.f_midi* %0, %struct.f_midi** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %33, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.f_midi*, %struct.f_midi** %2, align 8
  %9 = getelementptr inbounds %struct.f_midi, %struct.f_midi* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ult i32 %7, %10
  br i1 %11, label %12, label %36

12:                                               ; preds = %6
  %13 = load %struct.f_midi*, %struct.f_midi** %2, align 8
  %14 = getelementptr inbounds %struct.f_midi, %struct.f_midi* %13, i32 0, i32 1
  %15 = load %struct.gmidi_in_port*, %struct.gmidi_in_port** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.gmidi_in_port, %struct.gmidi_in_port* %15, i64 %17
  store %struct.gmidi_in_port* %18, %struct.gmidi_in_port** %4, align 8
  %19 = load %struct.gmidi_in_port*, %struct.gmidi_in_port** %4, align 8
  %20 = getelementptr inbounds %struct.gmidi_in_port, %struct.gmidi_in_port* %19, i32 0, i32 1
  %21 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %20, align 8
  store %struct.snd_rawmidi_substream* %21, %struct.snd_rawmidi_substream** %5, align 8
  %22 = load %struct.gmidi_in_port*, %struct.gmidi_in_port** %4, align 8
  %23 = getelementptr inbounds %struct.gmidi_in_port, %struct.gmidi_in_port* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %12
  %27 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %5, align 8
  %28 = icmp ne %struct.snd_rawmidi_substream* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %5, align 8
  %31 = call i32 @snd_rawmidi_drop_output(%struct.snd_rawmidi_substream* %30)
  br label %32

32:                                               ; preds = %29, %26, %12
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %3, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %6

36:                                               ; preds = %6
  ret void
}

declare dso_local i32 @snd_rawmidi_drop_output(%struct.snd_rawmidi_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
