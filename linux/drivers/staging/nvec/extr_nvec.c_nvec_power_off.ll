; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/nvec/extr_nvec.c_nvec_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/nvec/extr_nvec.c_nvec_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NVEC_SLEEP = common dso_local global i8 0, align 1
@AP_PWR_DOWN = common dso_local global i8 0, align 1
@nvec_power_handle = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @nvec_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvec_power_off() #0 {
  %1 = alloca [2 x i8], align 1
  %2 = getelementptr inbounds [2 x i8], [2 x i8]* %1, i64 0, i64 0
  %3 = load i8, i8* @NVEC_SLEEP, align 1
  store i8 %3, i8* %2, align 1
  %4 = getelementptr inbounds i8, i8* %2, i64 1
  %5 = load i8, i8* @AP_PWR_DOWN, align 1
  store i8 %5, i8* %4, align 1
  %6 = load i32, i32* @nvec_power_handle, align 4
  %7 = call i32 @nvec_toggle_global_events(i32 %6, i32 0)
  %8 = load i32, i32* @nvec_power_handle, align 4
  %9 = getelementptr inbounds [2 x i8], [2 x i8]* %1, i64 0, i64 0
  %10 = call i32 @nvec_write_async(i32 %8, i8* %9, i32 2)
  ret void
}

declare dso_local i32 @nvec_toggle_global_events(i32, i32) #1

declare dso_local i32 @nvec_write_async(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
