; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_speakup_shut_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_speakup_shut_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32 }

@spk_killed = common dso_local global i64 0, align 8
@spk_shut_up = common dso_local global i32 0, align 4
@spk_parked = common dso_local global i32 0, align 4
@synth = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*)* @speakup_shut_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @speakup_shut_up(%struct.vc_data* %0) #0 {
  %2 = alloca %struct.vc_data*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %2, align 8
  %3 = load i64, i64* @spk_killed, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %17

6:                                                ; preds = %1
  %7 = load i32, i32* @spk_shut_up, align 4
  %8 = or i32 %7, 1
  store i32 %8, i32* @spk_shut_up, align 4
  %9 = load i32, i32* @spk_parked, align 4
  %10 = and i32 %9, 254
  store i32 %10, i32* @spk_parked, align 4
  %11 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %12 = call i32 @speakup_date(%struct.vc_data* %11)
  %13 = load i64, i64* @synth, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %6
  %16 = call i32 (...) @spk_do_flush()
  br label %17

17:                                               ; preds = %5, %15, %6
  ret void
}

declare dso_local i32 @speakup_date(%struct.vc_data*) #1

declare dso_local i32 @spk_do_flush(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
