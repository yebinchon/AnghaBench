; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_yenta_socket.c_yenta_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_yenta_socket.c_yenta_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.yenta_socket = type { i32, i32, i64, i32 }

@dev_attr_yenta_registers = common dso_local global i32 0, align 4
@CB_SOCKET_MASK = common dso_local global i32 0, align 4
@I365_CSCINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @yenta_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yenta_close(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.yenta_socket*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.yenta_socket* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.yenta_socket* %5, %struct.yenta_socket** %3, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 0
  %8 = call i32 @device_remove_file(i32* %7, i32* @dev_attr_yenta_registers)
  %9 = load %struct.yenta_socket*, %struct.yenta_socket** %3, align 8
  %10 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %9, i32 0, i32 3
  %11 = call i32 @pcmcia_unregister_socket(i32* %10)
  %12 = load %struct.yenta_socket*, %struct.yenta_socket** %3, align 8
  %13 = load i32, i32* @CB_SOCKET_MASK, align 4
  %14 = call i32 @cb_writel(%struct.yenta_socket* %12, i32 %13, i32 0)
  %15 = load %struct.yenta_socket*, %struct.yenta_socket** %3, align 8
  %16 = load i32, i32* @I365_CSCINT, align 4
  %17 = call i32 @exca_writeb(%struct.yenta_socket* %15, i32 %16, i32 0)
  %18 = load %struct.yenta_socket*, %struct.yenta_socket** %3, align 8
  %19 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.yenta_socket*, %struct.yenta_socket** %3, align 8
  %24 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.yenta_socket*, %struct.yenta_socket** %3, align 8
  %27 = call i32 @free_irq(i64 %25, %struct.yenta_socket* %26)
  br label %32

28:                                               ; preds = %1
  %29 = load %struct.yenta_socket*, %struct.yenta_socket** %3, align 8
  %30 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %29, i32 0, i32 1
  %31 = call i32 @del_timer_sync(i32* %30)
  br label %32

32:                                               ; preds = %28, %22
  %33 = load %struct.yenta_socket*, %struct.yenta_socket** %3, align 8
  %34 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @iounmap(i32 %35)
  %37 = load %struct.yenta_socket*, %struct.yenta_socket** %3, align 8
  %38 = call i32 @yenta_free_resources(%struct.yenta_socket* %37)
  %39 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %40 = call i32 @pci_release_regions(%struct.pci_dev* %39)
  %41 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %42 = call i32 @pci_disable_device(%struct.pci_dev* %41)
  %43 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %44 = call i32 @pci_set_drvdata(%struct.pci_dev* %43, i32* null)
  %45 = load %struct.yenta_socket*, %struct.yenta_socket** %3, align 8
  %46 = call i32 @kfree(%struct.yenta_socket* %45)
  ret void
}

declare dso_local %struct.yenta_socket* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @pcmcia_unregister_socket(i32*) #1

declare dso_local i32 @cb_writel(%struct.yenta_socket*, i32, i32) #1

declare dso_local i32 @exca_writeb(%struct.yenta_socket*, i32, i32) #1

declare dso_local i32 @free_irq(i64, %struct.yenta_socket*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @yenta_free_resources(%struct.yenta_socket*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, i32*) #1

declare dso_local i32 @kfree(%struct.yenta_socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
