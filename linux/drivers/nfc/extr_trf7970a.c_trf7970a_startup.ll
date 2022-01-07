; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/extr_trf7970a.c_trf7970a_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/extr_trf7970a.c_trf7970a_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trf7970a = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trf7970a*)* @trf7970a_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trf7970a_startup(%struct.trf7970a* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.trf7970a*, align 8
  %4 = alloca i32, align 4
  store %struct.trf7970a* %0, %struct.trf7970a** %3, align 8
  %5 = load %struct.trf7970a*, %struct.trf7970a** %3, align 8
  %6 = call i32 @trf7970a_power_up(%struct.trf7970a* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %24

11:                                               ; preds = %1
  %12 = load %struct.trf7970a*, %struct.trf7970a** %3, align 8
  %13 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @pm_runtime_set_active(i32 %14)
  %16 = load %struct.trf7970a*, %struct.trf7970a** %3, align 8
  %17 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @pm_runtime_enable(i32 %18)
  %20 = load %struct.trf7970a*, %struct.trf7970a** %3, align 8
  %21 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pm_runtime_mark_last_busy(i32 %22)
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %11, %9
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @trf7970a_power_up(%struct.trf7970a*) #1

declare dso_local i32 @pm_runtime_set_active(i32) #1

declare dso_local i32 @pm_runtime_enable(i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
