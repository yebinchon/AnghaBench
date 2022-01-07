; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/nvec/extr_nvec_kbd.c_nvec_kbd_toggle_led.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/nvec/extr_nvec_kbd.c_nvec_kbd_toggle_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@NVEC_KBD = common dso_local global i8 0, align 1
@SET_LEDS = common dso_local global i8 0, align 1
@keys_dev = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @nvec_kbd_toggle_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvec_kbd_toggle_led() #0 {
  %1 = alloca [3 x i8], align 1
  %2 = getelementptr inbounds [3 x i8], [3 x i8]* %1, i64 0, i64 0
  %3 = load i8, i8* @NVEC_KBD, align 1
  store i8 %3, i8* %2, align 1
  %4 = getelementptr inbounds i8, i8* %2, i64 1
  %5 = load i8, i8* @SET_LEDS, align 1
  store i8 %5, i8* %4, align 1
  %6 = getelementptr inbounds i8, i8* %4, i64 1
  store i8 0, i8* %6, align 1
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @keys_dev, i32 0, i32 0), align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @keys_dev, i32 0, i32 0), align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @keys_dev, i32 0, i32 0), align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %0
  %14 = call signext i8 @BIT(i32 0)
  %15 = sext i8 %14 to i32
  %16 = call signext i8 @BIT(i32 1)
  %17 = sext i8 %16 to i32
  %18 = or i32 %15, %17
  %19 = call signext i8 @BIT(i32 2)
  %20 = sext i8 %19 to i32
  %21 = or i32 %18, %20
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds [3 x i8], [3 x i8]* %1, i64 0, i64 2
  store i8 %22, i8* %23, align 1
  br label %24

24:                                               ; preds = %13, %0
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @keys_dev, i32 0, i32 1), align 4
  %26 = getelementptr inbounds [3 x i8], [3 x i8]* %1, i64 0, i64 0
  %27 = call i32 @nvec_write_async(i32 %25, i8* %26, i32 3)
  ret void
}

declare dso_local signext i8 @BIT(i32) #1

declare dso_local i32 @nvec_write_async(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
