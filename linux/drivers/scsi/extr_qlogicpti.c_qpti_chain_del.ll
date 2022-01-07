; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_qlogicpti.c_qpti_chain_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_qlogicpti.c_qpti_chain_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlogicpti = type { %struct.qlogicpti* }

@qptichain_lock = common dso_local global i32 0, align 4
@qptichain = common dso_local global %struct.qlogicpti* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlogicpti*)* @qpti_chain_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qpti_chain_del(%struct.qlogicpti* %0) #0 {
  %2 = alloca %struct.qlogicpti*, align 8
  %3 = alloca %struct.qlogicpti*, align 8
  store %struct.qlogicpti* %0, %struct.qlogicpti** %2, align 8
  %4 = call i32 @spin_lock_irq(i32* @qptichain_lock)
  %5 = load %struct.qlogicpti*, %struct.qlogicpti** @qptichain, align 8
  %6 = load %struct.qlogicpti*, %struct.qlogicpti** %2, align 8
  %7 = icmp eq %struct.qlogicpti* %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.qlogicpti*, %struct.qlogicpti** %2, align 8
  %10 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %9, i32 0, i32 0
  %11 = load %struct.qlogicpti*, %struct.qlogicpti** %10, align 8
  store %struct.qlogicpti* %11, %struct.qlogicpti** @qptichain, align 8
  br label %30

12:                                               ; preds = %1
  %13 = load %struct.qlogicpti*, %struct.qlogicpti** @qptichain, align 8
  store %struct.qlogicpti* %13, %struct.qlogicpti** %3, align 8
  br label %14

14:                                               ; preds = %20, %12
  %15 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %16 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %15, i32 0, i32 0
  %17 = load %struct.qlogicpti*, %struct.qlogicpti** %16, align 8
  %18 = load %struct.qlogicpti*, %struct.qlogicpti** %2, align 8
  %19 = icmp ne %struct.qlogicpti* %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %22 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %21, i32 0, i32 0
  %23 = load %struct.qlogicpti*, %struct.qlogicpti** %22, align 8
  store %struct.qlogicpti* %23, %struct.qlogicpti** %3, align 8
  br label %14

24:                                               ; preds = %14
  %25 = load %struct.qlogicpti*, %struct.qlogicpti** %2, align 8
  %26 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %25, i32 0, i32 0
  %27 = load %struct.qlogicpti*, %struct.qlogicpti** %26, align 8
  %28 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %29 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %28, i32 0, i32 0
  store %struct.qlogicpti* %27, %struct.qlogicpti** %29, align 8
  br label %30

30:                                               ; preds = %24, %8
  %31 = load %struct.qlogicpti*, %struct.qlogicpti** %2, align 8
  %32 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %31, i32 0, i32 0
  store %struct.qlogicpti* null, %struct.qlogicpti** %32, align 8
  %33 = call i32 @spin_unlock_irq(i32* @qptichain_lock)
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
