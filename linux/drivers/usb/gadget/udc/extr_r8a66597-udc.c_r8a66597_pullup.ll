; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_r8a66597-udc.c_r8a66597_pullup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_r8a66597-udc.c_r8a66597_pullup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.r8a66597 = type { i32 }

@DPRPU = common dso_local global i32 0, align 4
@SYSCFG0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*, i32)* @r8a66597_pullup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r8a66597_pullup(%struct.usb_gadget* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_gadget*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.r8a66597*, align 8
  %6 = alloca i64, align 8
  store %struct.usb_gadget* %0, %struct.usb_gadget** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %8 = call %struct.r8a66597* @gadget_to_r8a66597(%struct.usb_gadget* %7)
  store %struct.r8a66597* %8, %struct.r8a66597** %5, align 8
  %9 = load %struct.r8a66597*, %struct.r8a66597** %5, align 8
  %10 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %9, i32 0, i32 0
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.r8a66597*, %struct.r8a66597** %5, align 8
  %17 = load i32, i32* @DPRPU, align 4
  %18 = load i32, i32* @SYSCFG0, align 4
  %19 = call i32 @r8a66597_bset(%struct.r8a66597* %16, i32 %17, i32 %18)
  br label %25

20:                                               ; preds = %2
  %21 = load %struct.r8a66597*, %struct.r8a66597** %5, align 8
  %22 = load i32, i32* @DPRPU, align 4
  %23 = load i32, i32* @SYSCFG0, align 4
  %24 = call i32 @r8a66597_bclr(%struct.r8a66597* %21, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %20, %15
  %26 = load %struct.r8a66597*, %struct.r8a66597** %5, align 8
  %27 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %26, i32 0, i32 0
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  ret i32 0
}

declare dso_local %struct.r8a66597* @gadget_to_r8a66597(%struct.usb_gadget*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @r8a66597_bset(%struct.r8a66597*, i32, i32) #1

declare dso_local i32 @r8a66597_bclr(%struct.r8a66597*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
