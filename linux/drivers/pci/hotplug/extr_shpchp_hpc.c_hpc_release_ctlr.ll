; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_shpchp_hpc.c_hpc_release_ctlr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_shpchp_hpc.c_hpc_release_ctlr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@PRSNT_CHANGE_INTR_MASK = common dso_local global i32 0, align 4
@ISO_PFAULT_INTR_MASK = common dso_local global i32 0, align 4
@BUTTON_PRESS_INTR_MASK = common dso_local global i32 0, align 4
@MRL_CHANGE_INTR_MASK = common dso_local global i32 0, align 4
@CON_PFAULT_INTR_MASK = common dso_local global i32 0, align 4
@MRL_CHANGE_SERR_MASK = common dso_local global i32 0, align 4
@CON_PFAULT_SERR_MASK = common dso_local global i32 0, align 4
@SLOT_REG_RSVDZ_MASK = common dso_local global i32 0, align 4
@SERR_INTR_ENABLE = common dso_local global i32 0, align 4
@GLOBAL_INTR_MASK = common dso_local global i32 0, align 4
@GLOBAL_SERR_MASK = common dso_local global i32 0, align 4
@COMMAND_INTR_MASK = common dso_local global i32 0, align 4
@ARBITER_SERR_MASK = common dso_local global i32 0, align 4
@SERR_INTR_RSVDZ_MASK = common dso_local global i32 0, align 4
@shpchp_poll_mode = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.controller*)* @hpc_release_ctlr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpc_release_ctlr(%struct.controller* %0) #0 {
  %2 = alloca %struct.controller*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.controller* %0, %struct.controller** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %41, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.controller*, %struct.controller** %2, align 8
  %9 = getelementptr inbounds %struct.controller, %struct.controller* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %44

12:                                               ; preds = %6
  %13 = load %struct.controller*, %struct.controller** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @SLOT_REG(i32 %14)
  %16 = call i32 @shpc_readl(%struct.controller* %13, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @PRSNT_CHANGE_INTR_MASK, align 4
  %18 = load i32, i32* @ISO_PFAULT_INTR_MASK, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @BUTTON_PRESS_INTR_MASK, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @MRL_CHANGE_INTR_MASK, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @CON_PFAULT_INTR_MASK, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @MRL_CHANGE_SERR_MASK, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @CON_PFAULT_SERR_MASK, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %4, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* @SLOT_REG_RSVDZ_MASK, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = load %struct.controller*, %struct.controller** %2, align 8
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @SLOT_REG(i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @shpc_writel(%struct.controller* %36, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %12
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %6

44:                                               ; preds = %6
  %45 = load %struct.controller*, %struct.controller** %2, align 8
  %46 = call i32 @cleanup_slots(%struct.controller* %45)
  %47 = load %struct.controller*, %struct.controller** %2, align 8
  %48 = load i32, i32* @SERR_INTR_ENABLE, align 4
  %49 = call i32 @shpc_readl(%struct.controller* %47, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* @GLOBAL_INTR_MASK, align 4
  %51 = load i32, i32* @GLOBAL_SERR_MASK, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @COMMAND_INTR_MASK, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @ARBITER_SERR_MASK, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* %5, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* @SERR_INTR_RSVDZ_MASK, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %5, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %5, align 4
  %63 = load %struct.controller*, %struct.controller** %2, align 8
  %64 = load i32, i32* @SERR_INTR_ENABLE, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @shpc_writel(%struct.controller* %63, i32 %64, i32 %65)
  %67 = load i64, i64* @shpchp_poll_mode, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %44
  %70 = load %struct.controller*, %struct.controller** %2, align 8
  %71 = getelementptr inbounds %struct.controller, %struct.controller* %70, i32 0, i32 5
  %72 = call i32 @del_timer(i32* %71)
  br label %85

73:                                               ; preds = %44
  %74 = load %struct.controller*, %struct.controller** %2, align 8
  %75 = getelementptr inbounds %struct.controller, %struct.controller* %74, i32 0, i32 4
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.controller*, %struct.controller** %2, align 8
  %80 = call i32 @free_irq(i32 %78, %struct.controller* %79)
  %81 = load %struct.controller*, %struct.controller** %2, align 8
  %82 = getelementptr inbounds %struct.controller, %struct.controller* %81, i32 0, i32 4
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = call i32 @pci_disable_msi(%struct.TYPE_2__* %83)
  br label %85

85:                                               ; preds = %73, %69
  %86 = load %struct.controller*, %struct.controller** %2, align 8
  %87 = getelementptr inbounds %struct.controller, %struct.controller* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @iounmap(i32 %88)
  %90 = load %struct.controller*, %struct.controller** %2, align 8
  %91 = getelementptr inbounds %struct.controller, %struct.controller* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.controller*, %struct.controller** %2, align 8
  %94 = getelementptr inbounds %struct.controller, %struct.controller* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @release_mem_region(i32 %92, i32 %95)
  ret void
}

declare dso_local i32 @shpc_readl(%struct.controller*, i32) #1

declare dso_local i32 @SLOT_REG(i32) #1

declare dso_local i32 @shpc_writel(%struct.controller*, i32, i32) #1

declare dso_local i32 @cleanup_slots(%struct.controller*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.controller*) #1

declare dso_local i32 @pci_disable_msi(%struct.TYPE_2__*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
