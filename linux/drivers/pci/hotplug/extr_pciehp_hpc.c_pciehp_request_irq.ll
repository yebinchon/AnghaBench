; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pciehp_hpc.c_pciehp_request_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pciehp_hpc.c_pciehp_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@pciehp_poll_mode = common dso_local global i64 0, align 8
@pciehp_poll = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"pciehp_poll-%s\00", align 1
@pciehp_isr = common dso_local global i32 0, align 4
@pciehp_ist = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"pciehp\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Cannot get irq %d for the hotplug controller\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.controller*)* @pciehp_request_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pciehp_request_irq(%struct.controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.controller*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.controller* %0, %struct.controller** %3, align 8
  %6 = load %struct.controller*, %struct.controller** %3, align 8
  %7 = getelementptr inbounds %struct.controller, %struct.controller* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i64, i64* @pciehp_poll_mode, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load %struct.controller*, %struct.controller** %3, align 8
  %15 = load %struct.controller*, %struct.controller** %3, align 8
  %16 = call i32 @slot_name(%struct.controller* %15)
  %17 = call i32 @kthread_run(i32* @pciehp_poll, %struct.controller* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.controller*, %struct.controller** %3, align 8
  %19 = getelementptr inbounds %struct.controller, %struct.controller* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.controller*, %struct.controller** %3, align 8
  %21 = getelementptr inbounds %struct.controller, %struct.controller* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @PTR_ERR_OR_ZERO(i32 %22)
  store i32 %23, i32* %2, align 4
  br label %39

24:                                               ; preds = %1
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @pciehp_isr, align 4
  %27 = load i32, i32* @pciehp_ist, align 4
  %28 = load i32, i32* @IRQF_SHARED, align 4
  %29 = load %struct.controller*, %struct.controller** %3, align 8
  %30 = call i32 @request_threaded_irq(i32 %25, i32 %26, i32 %27, i32 %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.controller* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = load %struct.controller*, %struct.controller** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @ctrl_err(%struct.controller* %34, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %33, %24
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %37, %13
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @kthread_run(i32*, %struct.controller*, i8*, i32) #1

declare dso_local i32 @slot_name(%struct.controller*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32, i32, i32, i8*, %struct.controller*) #1

declare dso_local i32 @ctrl_err(%struct.controller*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
