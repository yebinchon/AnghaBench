; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci.c_xhci_disable_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci.c_xhci_disable_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.xhci_command = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@XHCI_STATE_DYING = common dso_local global i32 0, align 4
@XHCI_STATE_HALTED = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@TRB_DISABLE_SLOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xhci_disable_slot(%struct.xhci_hcd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xhci_hcd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xhci_command*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.xhci_command* @xhci_alloc_command(%struct.xhci_hcd* %10, i32 0, i32 %11)
  store %struct.xhci_command* %12, %struct.xhci_command** %6, align 8
  %13 = load %struct.xhci_command*, %struct.xhci_command** %6, align 8
  %14 = icmp ne %struct.xhci_command* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %80

18:                                               ; preds = %2
  %19 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @xhci_debugfs_remove_slot(%struct.xhci_hcd* %19, i32 %20)
  %22 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %23 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %22, i32 0, i32 1
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %27 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @readl(i32* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %47, label %33

33:                                               ; preds = %18
  %34 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %35 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @XHCI_STATE_DYING, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %33
  %41 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %42 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @XHCI_STATE_HALTED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %40, %33, %18
  %48 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %49 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %48, i32 0, i32 1
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  %52 = load %struct.xhci_command*, %struct.xhci_command** %6, align 8
  %53 = call i32 @kfree(%struct.xhci_command* %52)
  %54 = load i32, i32* @ENODEV, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %80

56:                                               ; preds = %40
  %57 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %58 = load %struct.xhci_command*, %struct.xhci_command** %6, align 8
  %59 = load i32, i32* @TRB_DISABLE_SLOT, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @xhci_queue_slot_control(%struct.xhci_hcd* %57, %struct.xhci_command* %58, i32 %59, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %56
  %65 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %66 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %65, i32 0, i32 1
  %67 = load i64, i64* %7, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  %69 = load %struct.xhci_command*, %struct.xhci_command** %6, align 8
  %70 = call i32 @kfree(%struct.xhci_command* %69)
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %3, align 4
  br label %80

72:                                               ; preds = %56
  %73 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %74 = call i32 @xhci_ring_cmd_db(%struct.xhci_hcd* %73)
  %75 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %76 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %75, i32 0, i32 1
  %77 = load i64, i64* %7, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %72, %64, %47, %15
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.xhci_command* @xhci_alloc_command(%struct.xhci_hcd*, i32, i32) #1

declare dso_local i32 @xhci_debugfs_remove_slot(%struct.xhci_hcd*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.xhci_command*) #1

declare dso_local i32 @xhci_queue_slot_control(%struct.xhci_hcd*, %struct.xhci_command*, i32, i32) #1

declare dso_local i32 @xhci_ring_cmd_db(%struct.xhci_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
