; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_midi.c_f_midi_start_ep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_midi.c_f_midi_start_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f_midi = type { i32 }
%struct.usb_function = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.usb_composite_dev* }
%struct.usb_composite_dev = type { i32 }
%struct.usb_ep = type { %struct.f_midi*, i32 }

@.str = private unnamed_addr constant [24 x i8] c"can't configure %s: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"can't start %s: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f_midi*, %struct.usb_function*, %struct.usb_ep*)* @f_midi_start_ep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f_midi_start_ep(%struct.f_midi* %0, %struct.usb_function* %1, %struct.usb_ep* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.f_midi*, align 8
  %6 = alloca %struct.usb_function*, align 8
  %7 = alloca %struct.usb_ep*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_composite_dev*, align 8
  store %struct.f_midi* %0, %struct.f_midi** %5, align 8
  store %struct.usb_function* %1, %struct.usb_function** %6, align 8
  store %struct.usb_ep* %2, %struct.usb_ep** %7, align 8
  %10 = load %struct.usb_function*, %struct.usb_function** %6, align 8
  %11 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %13, align 8
  store %struct.usb_composite_dev* %14, %struct.usb_composite_dev** %9, align 8
  %15 = load %struct.usb_ep*, %struct.usb_ep** %7, align 8
  %16 = call i32 @usb_ep_disable(%struct.usb_ep* %15)
  %17 = load %struct.f_midi*, %struct.f_midi** %5, align 8
  %18 = getelementptr inbounds %struct.f_midi, %struct.f_midi* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.usb_function*, %struct.usb_function** %6, align 8
  %21 = load %struct.usb_ep*, %struct.usb_ep** %7, align 8
  %22 = call i32 @config_ep_by_speed(i32 %19, %struct.usb_function* %20, %struct.usb_ep* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %3
  %26 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %27 = load %struct.usb_ep*, %struct.usb_ep** %7, align 8
  %28 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @ERROR(%struct.usb_composite_dev* %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %4, align 4
  br label %50

33:                                               ; preds = %3
  %34 = load %struct.usb_ep*, %struct.usb_ep** %7, align 8
  %35 = call i32 @usb_ep_enable(%struct.usb_ep* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  %40 = load %struct.usb_ep*, %struct.usb_ep** %7, align 8
  %41 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @ERROR(%struct.usb_composite_dev* %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %4, align 4
  br label %50

46:                                               ; preds = %33
  %47 = load %struct.f_midi*, %struct.f_midi** %5, align 8
  %48 = load %struct.usb_ep*, %struct.usb_ep** %7, align 8
  %49 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %48, i32 0, i32 0
  store %struct.f_midi* %47, %struct.f_midi** %49, align 8
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %46, %38, %25
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @usb_ep_disable(%struct.usb_ep*) #1

declare dso_local i32 @config_ep_by_speed(i32, %struct.usb_function*, %struct.usb_ep*) #1

declare dso_local i32 @ERROR(%struct.usb_composite_dev*, i8*, i32, i32) #1

declare dso_local i32 @usb_ep_enable(%struct.usb_ep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
