; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-mmu.c_call_if_imgu_is_powered.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-mmu.c_call_if_imgu_is_powered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imgu_mmu = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imgu_mmu*, void (%struct.imgu_mmu*)*)* @call_if_imgu_is_powered to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @call_if_imgu_is_powered(%struct.imgu_mmu* %0, void (%struct.imgu_mmu*)* %1) #0 {
  %3 = alloca %struct.imgu_mmu*, align 8
  %4 = alloca void (%struct.imgu_mmu*)*, align 8
  store %struct.imgu_mmu* %0, %struct.imgu_mmu** %3, align 8
  store void (%struct.imgu_mmu*)* %1, void (%struct.imgu_mmu*)** %4, align 8
  %5 = load %struct.imgu_mmu*, %struct.imgu_mmu** %3, align 8
  %6 = getelementptr inbounds %struct.imgu_mmu, %struct.imgu_mmu* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @pm_runtime_get_if_in_use(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %18

11:                                               ; preds = %2
  %12 = load void (%struct.imgu_mmu*)*, void (%struct.imgu_mmu*)** %4, align 8
  %13 = load %struct.imgu_mmu*, %struct.imgu_mmu** %3, align 8
  call void %12(%struct.imgu_mmu* %13)
  %14 = load %struct.imgu_mmu*, %struct.imgu_mmu** %3, align 8
  %15 = getelementptr inbounds %struct.imgu_mmu, %struct.imgu_mmu* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pm_runtime_put(i32 %16)
  br label %18

18:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @pm_runtime_get_if_in_use(i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
