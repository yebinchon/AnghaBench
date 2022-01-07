; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_compal-laptop.c_compal_rfkill_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_compal-laptop.c_compal_rfkill_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfkill = type { i32 }

@WIRELESS_ADDR = common dso_local global i32 0, align 4
@WIRELESS_KILLSWITCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rfkill*, i8*)* @compal_rfkill_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compal_rfkill_poll(%struct.rfkill* %0, i8* %1) #0 {
  %3 = alloca %struct.rfkill*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rfkill* %0, %struct.rfkill** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @WIRELESS_ADDR, align 4
  %8 = call i32 @ec_read_u8(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @WIRELESS_KILLSWITCH, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %6, align 4
  %15 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @rfkill_set_hw_state(%struct.rfkill* %15, i32 %16)
  ret void
}

declare dso_local i32 @ec_read_u8(i32) #1

declare dso_local i32 @rfkill_set_hw_state(%struct.rfkill*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
