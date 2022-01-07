; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_eeepc-laptop.c_eeepc_rfkill_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_eeepc-laptop.c_eeepc_rfkill_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeepc_laptop = type { i32*, i32*, i32*, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i64 }

@EEEPC_RFKILL_NODE_1 = common dso_local global i32 0, align 4
@EEEPC_RFKILL_NODE_2 = common dso_local global i32 0, align 4
@EEEPC_RFKILL_NODE_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eeepc_laptop*)* @eeepc_rfkill_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eeepc_rfkill_exit(%struct.eeepc_laptop* %0) #0 {
  %2 = alloca %struct.eeepc_laptop*, align 8
  store %struct.eeepc_laptop* %0, %struct.eeepc_laptop** %2, align 8
  %3 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %2, align 8
  %4 = load i32, i32* @EEEPC_RFKILL_NODE_1, align 4
  %5 = call i32 @eeepc_unregister_rfkill_notifier(%struct.eeepc_laptop* %3, i32 %4)
  %6 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %2, align 8
  %7 = load i32, i32* @EEEPC_RFKILL_NODE_2, align 4
  %8 = call i32 @eeepc_unregister_rfkill_notifier(%struct.eeepc_laptop* %6, i32 %7)
  %9 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %2, align 8
  %10 = load i32, i32* @EEEPC_RFKILL_NODE_3, align 4
  %11 = call i32 @eeepc_unregister_rfkill_notifier(%struct.eeepc_laptop* %9, i32 %10)
  %12 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %2, align 8
  %13 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %12, i32 0, i32 4
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %1
  %17 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %2, align 8
  %18 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %17, i32 0, i32 4
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @rfkill_unregister(i32* %19)
  %21 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %2, align 8
  %22 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %21, i32 0, i32 4
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @rfkill_destroy(i32* %23)
  %25 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %2, align 8
  %26 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %25, i32 0, i32 4
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %16, %1
  %28 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %2, align 8
  %29 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %2, align 8
  %35 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %34, i32 0, i32 3
  %36 = call i32 @pci_hp_deregister(%struct.TYPE_2__* %35)
  br label %37

37:                                               ; preds = %33, %27
  %38 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %2, align 8
  %39 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %53

42:                                               ; preds = %37
  %43 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %2, align 8
  %44 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @rfkill_unregister(i32* %45)
  %47 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %2, align 8
  %48 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @rfkill_destroy(i32* %49)
  %51 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %2, align 8
  %52 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %51, i32 0, i32 2
  store i32* null, i32** %52, align 8
  br label %53

53:                                               ; preds = %42, %37
  %54 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %2, align 8
  %55 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %69

58:                                               ; preds = %53
  %59 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %2, align 8
  %60 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @rfkill_unregister(i32* %61)
  %63 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %2, align 8
  %64 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @rfkill_destroy(i32* %65)
  %67 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %2, align 8
  %68 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %67, i32 0, i32 1
  store i32* null, i32** %68, align 8
  br label %69

69:                                               ; preds = %58, %53
  %70 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %2, align 8
  %71 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %85

74:                                               ; preds = %69
  %75 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %2, align 8
  %76 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @rfkill_unregister(i32* %77)
  %79 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %2, align 8
  %80 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @rfkill_destroy(i32* %81)
  %83 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %2, align 8
  %84 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %83, i32 0, i32 0
  store i32* null, i32** %84, align 8
  br label %85

85:                                               ; preds = %74, %69
  ret void
}

declare dso_local i32 @eeepc_unregister_rfkill_notifier(%struct.eeepc_laptop*, i32) #1

declare dso_local i32 @rfkill_unregister(i32*) #1

declare dso_local i32 @rfkill_destroy(i32*) #1

declare dso_local i32 @pci_hp_deregister(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
