; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_wdrtas.c_wdrtas_unregister_devs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_wdrtas.c_wdrtas_unregister_devs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wdrtas_miscdev = common dso_local global i32 0, align 4
@wdrtas_token_get_sensor_state = common dso_local global i64 0, align 8
@RTAS_UNKNOWN_SERVICE = common dso_local global i64 0, align 8
@wdrtas_tempdev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @wdrtas_unregister_devs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wdrtas_unregister_devs() #0 {
  %1 = call i32 @misc_deregister(i32* @wdrtas_miscdev)
  %2 = load i64, i64* @wdrtas_token_get_sensor_state, align 8
  %3 = load i64, i64* @RTAS_UNKNOWN_SERVICE, align 8
  %4 = icmp ne i64 %2, %3
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 @misc_deregister(i32* @wdrtas_tempdev)
  br label %7

7:                                                ; preds = %5, %0
  ret void
}

declare dso_local i32 @misc_deregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
