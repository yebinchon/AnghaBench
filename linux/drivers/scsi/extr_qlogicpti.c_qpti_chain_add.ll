; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_qlogicpti.c_qpti_chain_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_qlogicpti.c_qpti_chain_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlogicpti = type { %struct.qlogicpti* }

@qptichain_lock = common dso_local global i32 0, align 4
@qptichain = common dso_local global %struct.qlogicpti* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlogicpti*)* @qpti_chain_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qpti_chain_add(%struct.qlogicpti* %0) #0 {
  %2 = alloca %struct.qlogicpti*, align 8
  %3 = alloca %struct.qlogicpti*, align 8
  store %struct.qlogicpti* %0, %struct.qlogicpti** %2, align 8
  %4 = call i32 @spin_lock_irq(i32* @qptichain_lock)
  %5 = load %struct.qlogicpti*, %struct.qlogicpti** @qptichain, align 8
  %6 = icmp ne %struct.qlogicpti* %5, null
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = load %struct.qlogicpti*, %struct.qlogicpti** @qptichain, align 8
  store %struct.qlogicpti* %8, %struct.qlogicpti** %3, align 8
  br label %9

9:                                                ; preds = %14, %7
  %10 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %11 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %10, i32 0, i32 0
  %12 = load %struct.qlogicpti*, %struct.qlogicpti** %11, align 8
  %13 = icmp ne %struct.qlogicpti* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %16 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %15, i32 0, i32 0
  %17 = load %struct.qlogicpti*, %struct.qlogicpti** %16, align 8
  store %struct.qlogicpti* %17, %struct.qlogicpti** %3, align 8
  br label %9

18:                                               ; preds = %9
  %19 = load %struct.qlogicpti*, %struct.qlogicpti** %2, align 8
  %20 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %21 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %20, i32 0, i32 0
  store %struct.qlogicpti* %19, %struct.qlogicpti** %21, align 8
  br label %24

22:                                               ; preds = %1
  %23 = load %struct.qlogicpti*, %struct.qlogicpti** %2, align 8
  store %struct.qlogicpti* %23, %struct.qlogicpti** @qptichain, align 8
  br label %24

24:                                               ; preds = %22, %18
  %25 = load %struct.qlogicpti*, %struct.qlogicpti** %2, align 8
  %26 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %25, i32 0, i32 0
  store %struct.qlogicpti* null, %struct.qlogicpti** %26, align 8
  %27 = call i32 @spin_unlock_irq(i32* @qptichain_lock)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
