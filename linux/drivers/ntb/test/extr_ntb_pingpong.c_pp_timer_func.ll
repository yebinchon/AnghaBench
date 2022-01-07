; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_pingpong.c_pp_timer_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_pingpong.c_pp_timer_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hrtimer = type { i32 }
%struct.pp_ctx = type { i32 }

@HRTIMER_NORESTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hrtimer*)* @pp_timer_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pp_timer_func(%struct.hrtimer* %0) #0 {
  %2 = alloca %struct.hrtimer*, align 8
  %3 = alloca %struct.pp_ctx*, align 8
  store %struct.hrtimer* %0, %struct.hrtimer** %2, align 8
  %4 = load %struct.hrtimer*, %struct.hrtimer** %2, align 8
  %5 = call %struct.pp_ctx* @to_pp_timer(%struct.hrtimer* %4)
  store %struct.pp_ctx* %5, %struct.pp_ctx** %3, align 8
  %6 = load %struct.pp_ctx*, %struct.pp_ctx** %3, align 8
  %7 = call i32 @pp_ping(%struct.pp_ctx* %6)
  %8 = load i32, i32* @HRTIMER_NORESTART, align 4
  ret i32 %8
}

declare dso_local %struct.pp_ctx* @to_pp_timer(%struct.hrtimer*) #1

declare dso_local i32 @pp_ping(%struct.pp_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
