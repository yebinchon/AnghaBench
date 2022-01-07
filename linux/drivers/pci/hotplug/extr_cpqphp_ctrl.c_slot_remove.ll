; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_cpqphp_ctrl.c_slot_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_cpqphp_ctrl.c_slot_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_func = type { i64, %struct.pci_func* }

@cpqhp_slot_list = common dso_local global %struct.pci_func** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_func*)* @slot_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slot_remove(%struct.pci_func* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_func*, align 8
  %4 = alloca %struct.pci_func*, align 8
  store %struct.pci_func* %0, %struct.pci_func** %3, align 8
  %5 = load %struct.pci_func*, %struct.pci_func** %3, align 8
  %6 = icmp eq %struct.pci_func* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %70

8:                                                ; preds = %1
  %9 = load %struct.pci_func**, %struct.pci_func*** @cpqhp_slot_list, align 8
  %10 = load %struct.pci_func*, %struct.pci_func** %3, align 8
  %11 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.pci_func*, %struct.pci_func** %9, i64 %12
  %14 = load %struct.pci_func*, %struct.pci_func** %13, align 8
  store %struct.pci_func* %14, %struct.pci_func** %4, align 8
  %15 = load %struct.pci_func*, %struct.pci_func** %4, align 8
  %16 = icmp eq %struct.pci_func* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  store i32 1, i32* %2, align 4
  br label %70

18:                                               ; preds = %8
  %19 = load %struct.pci_func*, %struct.pci_func** %4, align 8
  %20 = load %struct.pci_func*, %struct.pci_func** %3, align 8
  %21 = icmp eq %struct.pci_func* %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = load %struct.pci_func*, %struct.pci_func** %3, align 8
  %24 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %23, i32 0, i32 1
  %25 = load %struct.pci_func*, %struct.pci_func** %24, align 8
  %26 = load %struct.pci_func**, %struct.pci_func*** @cpqhp_slot_list, align 8
  %27 = load %struct.pci_func*, %struct.pci_func** %3, align 8
  %28 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.pci_func*, %struct.pci_func** %26, i64 %29
  store %struct.pci_func* %25, %struct.pci_func** %30, align 8
  %31 = load %struct.pci_func*, %struct.pci_func** %3, align 8
  %32 = call i32 @cpqhp_destroy_board_resources(%struct.pci_func* %31)
  %33 = load %struct.pci_func*, %struct.pci_func** %3, align 8
  %34 = call i32 @kfree(%struct.pci_func* %33)
  store i32 0, i32* %2, align 4
  br label %70

35:                                               ; preds = %18
  br label %36

36:                                               ; preds = %49, %35
  %37 = load %struct.pci_func*, %struct.pci_func** %4, align 8
  %38 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %37, i32 0, i32 1
  %39 = load %struct.pci_func*, %struct.pci_func** %38, align 8
  %40 = load %struct.pci_func*, %struct.pci_func** %3, align 8
  %41 = icmp ne %struct.pci_func* %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.pci_func*, %struct.pci_func** %4, align 8
  %44 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %43, i32 0, i32 1
  %45 = load %struct.pci_func*, %struct.pci_func** %44, align 8
  %46 = icmp ne %struct.pci_func* %45, null
  br label %47

47:                                               ; preds = %42, %36
  %48 = phi i1 [ false, %36 ], [ %46, %42 ]
  br i1 %48, label %49, label %53

49:                                               ; preds = %47
  %50 = load %struct.pci_func*, %struct.pci_func** %4, align 8
  %51 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %50, i32 0, i32 1
  %52 = load %struct.pci_func*, %struct.pci_func** %51, align 8
  store %struct.pci_func* %52, %struct.pci_func** %4, align 8
  br label %36

53:                                               ; preds = %47
  %54 = load %struct.pci_func*, %struct.pci_func** %4, align 8
  %55 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %54, i32 0, i32 1
  %56 = load %struct.pci_func*, %struct.pci_func** %55, align 8
  %57 = load %struct.pci_func*, %struct.pci_func** %3, align 8
  %58 = icmp eq %struct.pci_func* %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %53
  %60 = load %struct.pci_func*, %struct.pci_func** %3, align 8
  %61 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %60, i32 0, i32 1
  %62 = load %struct.pci_func*, %struct.pci_func** %61, align 8
  %63 = load %struct.pci_func*, %struct.pci_func** %4, align 8
  %64 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %63, i32 0, i32 1
  store %struct.pci_func* %62, %struct.pci_func** %64, align 8
  %65 = load %struct.pci_func*, %struct.pci_func** %3, align 8
  %66 = call i32 @cpqhp_destroy_board_resources(%struct.pci_func* %65)
  %67 = load %struct.pci_func*, %struct.pci_func** %3, align 8
  %68 = call i32 @kfree(%struct.pci_func* %67)
  store i32 0, i32* %2, align 4
  br label %70

69:                                               ; preds = %53
  store i32 2, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %59, %22, %17, %7
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @cpqhp_destroy_board_resources(%struct.pci_func*) #1

declare dso_local i32 @kfree(%struct.pci_func*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
