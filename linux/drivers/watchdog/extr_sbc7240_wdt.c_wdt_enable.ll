; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_sbc7240_wdt.c_wdt_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_sbc7240_wdt.c_wdt_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SBC7240_ENABLED_STATUS_BIT = common dso_local global i32 0, align 4
@wdt_status = common dso_local global i32 0, align 4
@SBC7240_ENABLE_PORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Watchdog timer is now enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @wdt_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wdt_enable() #0 {
  %1 = load i32, i32* @SBC7240_ENABLED_STATUS_BIT, align 4
  %2 = call i32 @test_and_set_bit(i32 %1, i32* @wdt_status)
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @SBC7240_ENABLE_PORT, align 4
  %6 = call i32 @inb_p(i32 %5)
  %7 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %4, %0
  ret void
}

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
