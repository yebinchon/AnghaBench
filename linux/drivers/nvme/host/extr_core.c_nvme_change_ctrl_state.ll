; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_change_ctrl_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_change_ctrl_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvme_change_ctrl_state(%struct.nvme_ctrl* %0, i32 %1) #0 {
  %3 = alloca %struct.nvme_ctrl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %9 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %8, i32 0, i32 1
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %13 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %41 [
    i32 130, label %16
    i32 128, label %21
    i32 133, label %26
    i32 131, label %31
    i32 132, label %36
  ]

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %19 [
    i32 129, label %18
    i32 128, label %18
    i32 133, label %18
  ]

18:                                               ; preds = %16, %16, %16
  store i32 1, i32* %7, align 4
  br label %19

19:                                               ; preds = %16, %18
  br label %20

20:                                               ; preds = %19
  br label %42

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  switch i32 %22, label %24 [
    i32 129, label %23
    i32 130, label %23
  ]

23:                                               ; preds = %21, %21
  store i32 1, i32* %7, align 4
  br label %24

24:                                               ; preds = %21, %23
  br label %25

25:                                               ; preds = %24
  br label %42

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  switch i32 %27, label %29 [
    i32 129, label %28
    i32 128, label %28
  ]

28:                                               ; preds = %26, %26
  store i32 1, i32* %7, align 4
  br label %29

29:                                               ; preds = %26, %28
  br label %30

30:                                               ; preds = %29
  br label %42

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  switch i32 %32, label %34 [
    i32 130, label %33
    i32 128, label %33
    i32 133, label %33
  ]

33:                                               ; preds = %31, %31, %31
  store i32 1, i32* %7, align 4
  br label %34

34:                                               ; preds = %31, %33
  br label %35

35:                                               ; preds = %34
  br label %42

36:                                               ; preds = %2
  %37 = load i32, i32* %5, align 4
  switch i32 %37, label %39 [
    i32 131, label %38
  ]

38:                                               ; preds = %36
  store i32 1, i32* %7, align 4
  br label %39

39:                                               ; preds = %36, %38
  br label %40

40:                                               ; preds = %39
  br label %42

41:                                               ; preds = %2
  br label %42

42:                                               ; preds = %41, %40, %35, %30, %25, %20
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %48 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %50 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %49, i32 0, i32 2
  %51 = call i32 @wake_up_all(i32* %50)
  br label %52

52:                                               ; preds = %45, %42
  %53 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %54 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %53, i32 0, i32 1
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %52
  %60 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %61 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 130
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %66 = call i32 @nvme_kick_requeue_lists(%struct.nvme_ctrl* %65)
  br label %67

67:                                               ; preds = %64, %59, %52
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @nvme_kick_requeue_lists(%struct.nvme_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
