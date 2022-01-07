; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_ibmasr.c_asr_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_ibmasr.c_asr_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@asr_lock = common dso_local global i32 0, align 4
@asr_type = common dso_local global i64 0, align 8
@ASMTYPE_TOPAZ = common dso_local global i64 0, align 8
@asr_read_addr = common dso_local global i32 0, align 4
@TOPAZ_ASR_TOGGLE = common dso_local global i8 0, align 1
@TOPAZ_ASR_DISABLE = common dso_local global i8 0, align 1
@asr_disable_mask = common dso_local global i8 0, align 1
@asr_write_addr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @asr_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asr_enable() #0 {
  %1 = alloca i8, align 1
  %2 = call i32 @spin_lock(i32* @asr_lock)
  %3 = load i64, i64* @asr_type, align 8
  %4 = load i64, i64* @ASMTYPE_TOPAZ, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %21

6:                                                ; preds = %0
  %7 = load i32, i32* @asr_read_addr, align 4
  %8 = call zeroext i8 @inb(i32 %7)
  store i8 %8, i8* %1, align 1
  %9 = load i8, i8* %1, align 1
  %10 = zext i8 %9 to i32
  %11 = load i8, i8* @TOPAZ_ASR_TOGGLE, align 1
  %12 = zext i8 %11 to i32
  %13 = load i8, i8* @TOPAZ_ASR_DISABLE, align 1
  %14 = zext i8 %13 to i32
  %15 = or i32 %12, %14
  %16 = xor i32 %15, -1
  %17 = and i32 %10, %16
  %18 = trunc i32 %17 to i8
  %19 = load i32, i32* @asr_read_addr, align 4
  %20 = call i32 @outb(i8 zeroext %18, i32 %19)
  br label %34

21:                                               ; preds = %0
  %22 = call i32 (...) @__asr_toggle()
  %23 = load i32, i32* @asr_read_addr, align 4
  %24 = call zeroext i8 @inb(i32 %23)
  store i8 %24, i8* %1, align 1
  %25 = load i8, i8* %1, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* @asr_disable_mask, align 1
  %28 = zext i8 %27 to i32
  %29 = xor i32 %28, -1
  %30 = and i32 %26, %29
  %31 = trunc i32 %30 to i8
  %32 = load i32, i32* @asr_write_addr, align 4
  %33 = call i32 @outb(i8 zeroext %31, i32 %32)
  br label %34

34:                                               ; preds = %21, %6
  %35 = load i32, i32* @asr_read_addr, align 4
  %36 = call zeroext i8 @inb(i32 %35)
  store i8 %36, i8* %1, align 1
  %37 = call i32 @spin_unlock(i32* @asr_lock)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

declare dso_local i32 @__asr_toggle(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
