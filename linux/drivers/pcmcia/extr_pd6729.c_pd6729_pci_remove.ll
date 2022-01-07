; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pd6729.c_pd6729_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pd6729.c_pd6729_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pd6729_socket = type { i32, i32 }

@MAX_SOCKETS = common dso_local global i32 0, align 4
@I365_CSCINT = common dso_local global i32 0, align 4
@I365_INTCTL = common dso_local global i32 0, align 4
@irq_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pd6729_pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pd6729_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pd6729_socket*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.pd6729_socket* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.pd6729_socket* %6, %struct.pd6729_socket** %4, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %30, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @MAX_SOCKETS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %33

11:                                               ; preds = %7
  %12 = load %struct.pd6729_socket*, %struct.pd6729_socket** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.pd6729_socket, %struct.pd6729_socket* %12, i64 %14
  %16 = load i32, i32* @I365_CSCINT, align 4
  %17 = call i32 @indirect_write(%struct.pd6729_socket* %15, i32 %16, i32 0)
  %18 = load %struct.pd6729_socket*, %struct.pd6729_socket** %4, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.pd6729_socket, %struct.pd6729_socket* %18, i64 %20
  %22 = load i32, i32* @I365_INTCTL, align 4
  %23 = call i32 @indirect_write(%struct.pd6729_socket* %21, i32 %22, i32 0)
  %24 = load %struct.pd6729_socket*, %struct.pd6729_socket** %4, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.pd6729_socket, %struct.pd6729_socket* %24, i64 %26
  %28 = getelementptr inbounds %struct.pd6729_socket, %struct.pd6729_socket* %27, i32 0, i32 1
  %29 = call i32 @pcmcia_unregister_socket(i32* %28)
  br label %30

30:                                               ; preds = %11
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %7

33:                                               ; preds = %7
  %34 = load i32, i32* @irq_mode, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.pd6729_socket*, %struct.pd6729_socket** %4, align 8
  %41 = call i32 @free_irq(i32 %39, %struct.pd6729_socket* %40)
  br label %46

42:                                               ; preds = %33
  %43 = load %struct.pd6729_socket*, %struct.pd6729_socket** %4, align 8
  %44 = getelementptr inbounds %struct.pd6729_socket, %struct.pd6729_socket* %43, i32 0, i32 0
  %45 = call i32 @del_timer_sync(i32* %44)
  br label %46

46:                                               ; preds = %42, %36
  %47 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %48 = call i32 @pci_release_regions(%struct.pci_dev* %47)
  %49 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %50 = call i32 @pci_disable_device(%struct.pci_dev* %49)
  %51 = load %struct.pd6729_socket*, %struct.pd6729_socket** %4, align 8
  %52 = call i32 @kfree(%struct.pd6729_socket* %51)
  ret void
}

declare dso_local %struct.pd6729_socket* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @indirect_write(%struct.pd6729_socket*, i32, i32) #1

declare dso_local i32 @pcmcia_unregister_socket(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.pd6729_socket*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.pd6729_socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
