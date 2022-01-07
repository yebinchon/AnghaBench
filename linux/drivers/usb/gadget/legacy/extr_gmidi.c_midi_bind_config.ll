; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_gmidi.c_midi_bind_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_gmidi.c_midi_bind_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_configuration = type { i32 }

@fi_midi = common dso_local global i32 0, align 4
@f_midi = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_configuration*)* @midi_bind_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @midi_bind_config(%struct.usb_configuration* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_configuration*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_configuration* %0, %struct.usb_configuration** %3, align 8
  %5 = load i32, i32* @fi_midi, align 4
  %6 = call i32 @usb_get_function(i32 %5)
  store i32 %6, i32* @f_midi, align 4
  %7 = load i32, i32* @f_midi, align 4
  %8 = call i64 @IS_ERR(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @f_midi, align 4
  %12 = call i32 @PTR_ERR(i32 %11)
  store i32 %12, i32* %2, align 4
  br label %24

13:                                               ; preds = %1
  %14 = load %struct.usb_configuration*, %struct.usb_configuration** %3, align 8
  %15 = load i32, i32* @f_midi, align 4
  %16 = call i32 @usb_add_function(%struct.usb_configuration* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load i32, i32* @f_midi, align 4
  %21 = call i32 @usb_put_function(i32 %20)
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %24

23:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %19, %10
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @usb_get_function(i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @usb_add_function(%struct.usb_configuration*, i32) #1

declare dso_local i32 @usb_put_function(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
