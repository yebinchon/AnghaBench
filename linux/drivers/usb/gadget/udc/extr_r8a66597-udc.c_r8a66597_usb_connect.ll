; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_r8a66597-udc.c_r8a66597_usb_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_r8a66597-udc.c_r8a66597_usb_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8a66597 = type { i32 }

@CTRE = common dso_local global i32 0, align 4
@INTENB0 = common dso_local global i32 0, align 4
@BEMPE = common dso_local global i32 0, align 4
@BRDYE = common dso_local global i32 0, align 4
@DPRPU = common dso_local global i32 0, align 4
@SYSCFG0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8a66597*)* @r8a66597_usb_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r8a66597_usb_connect(%struct.r8a66597* %0) #0 {
  %2 = alloca %struct.r8a66597*, align 8
  store %struct.r8a66597* %0, %struct.r8a66597** %2, align 8
  %3 = load %struct.r8a66597*, %struct.r8a66597** %2, align 8
  %4 = load i32, i32* @CTRE, align 4
  %5 = load i32, i32* @INTENB0, align 4
  %6 = call i32 @r8a66597_bset(%struct.r8a66597* %3, i32 %4, i32 %5)
  %7 = load %struct.r8a66597*, %struct.r8a66597** %2, align 8
  %8 = load i32, i32* @BEMPE, align 4
  %9 = load i32, i32* @BRDYE, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @INTENB0, align 4
  %12 = call i32 @r8a66597_bset(%struct.r8a66597* %7, i32 %10, i32 %11)
  %13 = load %struct.r8a66597*, %struct.r8a66597** %2, align 8
  %14 = load i32, i32* @DPRPU, align 4
  %15 = load i32, i32* @SYSCFG0, align 4
  %16 = call i32 @r8a66597_bset(%struct.r8a66597* %13, i32 %14, i32 %15)
  ret void
}

declare dso_local i32 @r8a66597_bset(%struct.r8a66597*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
