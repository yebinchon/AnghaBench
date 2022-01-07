; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/extr_trf7970a.c_trf7970a_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/extr_trf7970a.c_trf7970a_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trf7970a = type { i32, i32 }

@ECANCELED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trf7970a*)* @trf7970a_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trf7970a_shutdown(%struct.trf7970a* %0) #0 {
  %2 = alloca %struct.trf7970a*, align 8
  store %struct.trf7970a* %0, %struct.trf7970a** %2, align 8
  %3 = load %struct.trf7970a*, %struct.trf7970a** %2, align 8
  %4 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %14 [
    i32 129, label %6
    i32 131, label %6
    i32 130, label %6
    i32 128, label %6
    i32 132, label %6
    i32 134, label %11
    i32 133, label %11
  ]

6:                                                ; preds = %1, %1, %1, %1, %1
  %7 = load %struct.trf7970a*, %struct.trf7970a** %2, align 8
  %8 = load i32, i32* @ECANCELED, align 4
  %9 = sub nsw i32 0, %8
  %10 = call i32 @trf7970a_send_err_upstream(%struct.trf7970a* %7, i32 %9)
  br label %11

11:                                               ; preds = %1, %1, %6
  %12 = load %struct.trf7970a*, %struct.trf7970a** %2, align 8
  %13 = call i32 @trf7970a_switch_rf_off(%struct.trf7970a* %12)
  br label %15

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %14, %11
  %16 = load %struct.trf7970a*, %struct.trf7970a** %2, align 8
  %17 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @pm_runtime_disable(i32 %18)
  %20 = load %struct.trf7970a*, %struct.trf7970a** %2, align 8
  %21 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pm_runtime_set_suspended(i32 %22)
  %24 = load %struct.trf7970a*, %struct.trf7970a** %2, align 8
  %25 = call i32 @trf7970a_power_down(%struct.trf7970a* %24)
  ret void
}

declare dso_local i32 @trf7970a_send_err_upstream(%struct.trf7970a*, i32) #1

declare dso_local i32 @trf7970a_switch_rf_off(%struct.trf7970a*) #1

declare dso_local i32 @pm_runtime_disable(i32) #1

declare dso_local i32 @pm_runtime_set_suspended(i32) #1

declare dso_local i32 @trf7970a_power_down(%struct.trf7970a*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
