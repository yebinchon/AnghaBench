; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_ibmasr.c_asr_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_ibmasr.c_asr_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@asr_lock = common dso_local global i32 0, align 4
@asr_read_addr = common dso_local global i32 0, align 4
@asr_type = common dso_local global i64 0, align 8
@ASMTYPE_TOPAZ = common dso_local global i64 0, align 8
@TOPAZ_ASR_TOGGLE = common dso_local global i8 0, align 1
@TOPAZ_ASR_DISABLE = common dso_local global i8 0, align 1
@asr_toggle_mask = common dso_local global i8 0, align 1
@asr_write_addr = common dso_local global i32 0, align 4
@asr_disable_mask = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @asr_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asr_disable() #0 {
  %1 = alloca i8, align 1
  %2 = call i32 @spin_lock(i32* @asr_lock)
  %3 = load i32, i32* @asr_read_addr, align 4
  %4 = call zeroext i8 @inb(i32 %3)
  store i8 %4, i8* %1, align 1
  %5 = load i64, i64* @asr_type, align 8
  %6 = load i64, i64* @ASMTYPE_TOPAZ, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %20

8:                                                ; preds = %0
  %9 = load i8, i8* %1, align 1
  %10 = zext i8 %9 to i32
  %11 = load i8, i8* @TOPAZ_ASR_TOGGLE, align 1
  %12 = zext i8 %11 to i32
  %13 = or i32 %10, %12
  %14 = load i8, i8* @TOPAZ_ASR_DISABLE, align 1
  %15 = zext i8 %14 to i32
  %16 = or i32 %13, %15
  %17 = trunc i32 %16 to i8
  %18 = load i32, i32* @asr_read_addr, align 4
  %19 = call i32 @outb(i8 zeroext %17, i32 %18)
  br label %39

20:                                               ; preds = %0
  %21 = load i8, i8* %1, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* @asr_toggle_mask, align 1
  %24 = zext i8 %23 to i32
  %25 = or i32 %22, %24
  %26 = trunc i32 %25 to i8
  %27 = load i32, i32* @asr_write_addr, align 4
  %28 = call i32 @outb(i8 zeroext %26, i32 %27)
  %29 = load i32, i32* @asr_read_addr, align 4
  %30 = call zeroext i8 @inb(i32 %29)
  store i8 %30, i8* %1, align 1
  %31 = load i8, i8* %1, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* @asr_disable_mask, align 1
  %34 = zext i8 %33 to i32
  %35 = or i32 %32, %34
  %36 = trunc i32 %35 to i8
  %37 = load i32, i32* @asr_write_addr, align 4
  %38 = call i32 @outb(i8 zeroext %36, i32 %37)
  br label %39

39:                                               ; preds = %20, %8
  %40 = load i32, i32* @asr_read_addr, align 4
  %41 = call zeroext i8 @inb(i32 %40)
  store i8 %41, i8* %1, align 1
  %42 = call i32 @spin_unlock(i32* @asr_lock)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
