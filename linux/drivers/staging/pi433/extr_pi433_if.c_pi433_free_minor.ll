; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/pi433/extr_pi433_if.c_pi433_free_minor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/pi433/extr_pi433_if.c_pi433_free_minor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pi433_device = type { i32 }

@minor_lock = common dso_local global i32 0, align 4
@pi433_idr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pi433_device*)* @pi433_free_minor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pi433_free_minor(%struct.pi433_device* %0) #0 {
  %2 = alloca %struct.pi433_device*, align 8
  store %struct.pi433_device* %0, %struct.pi433_device** %2, align 8
  %3 = call i32 @mutex_lock(i32* @minor_lock)
  %4 = load %struct.pi433_device*, %struct.pi433_device** %2, align 8
  %5 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @idr_remove(i32* @pi433_idr, i32 %6)
  %8 = call i32 @mutex_unlock(i32* @minor_lock)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
