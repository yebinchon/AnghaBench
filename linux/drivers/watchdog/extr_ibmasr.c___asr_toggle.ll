; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_ibmasr.c___asr_toggle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_ibmasr.c___asr_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@asr_read_addr = common dso_local global i32 0, align 4
@asr_toggle_mask = common dso_local global i8 0, align 1
@asr_write_addr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @__asr_toggle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__asr_toggle() #0 {
  %1 = alloca i8, align 1
  %2 = load i32, i32* @asr_read_addr, align 4
  %3 = call zeroext i8 @inb(i32 %2)
  store i8 %3, i8* %1, align 1
  %4 = load i8, i8* %1, align 1
  %5 = zext i8 %4 to i32
  %6 = load i8, i8* @asr_toggle_mask, align 1
  %7 = zext i8 %6 to i32
  %8 = xor i32 %7, -1
  %9 = and i32 %5, %8
  %10 = trunc i32 %9 to i8
  %11 = load i32, i32* @asr_write_addr, align 4
  %12 = call i32 @outb(i8 zeroext %10, i32 %11)
  %13 = load i32, i32* @asr_read_addr, align 4
  %14 = call zeroext i8 @inb(i32 %13)
  store i8 %14, i8* %1, align 1
  %15 = load i8, i8* %1, align 1
  %16 = zext i8 %15 to i32
  %17 = load i8, i8* @asr_toggle_mask, align 1
  %18 = zext i8 %17 to i32
  %19 = or i32 %16, %18
  %20 = trunc i32 %19 to i8
  %21 = load i32, i32* @asr_write_addr, align 4
  %22 = call i32 @outb(i8 zeroext %20, i32 %21)
  %23 = load i32, i32* @asr_read_addr, align 4
  %24 = call zeroext i8 @inb(i32 %23)
  store i8 %24, i8* %1, align 1
  %25 = load i8, i8* %1, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* @asr_toggle_mask, align 1
  %28 = zext i8 %27 to i32
  %29 = xor i32 %28, -1
  %30 = and i32 %26, %29
  %31 = trunc i32 %30 to i8
  %32 = load i32, i32* @asr_write_addr, align 4
  %33 = call i32 @outb(i8 zeroext %31, i32 %32)
  %34 = load i32, i32* @asr_read_addr, align 4
  %35 = call zeroext i8 @inb(i32 %34)
  store i8 %35, i8* %1, align 1
  ret void
}

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
