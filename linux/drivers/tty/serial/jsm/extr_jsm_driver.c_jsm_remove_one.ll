; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/jsm/extr_jsm_driver.c_jsm_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/jsm/extr_jsm_driver.c_jsm_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.jsm_board = type { i32, %struct.jsm_board**, %struct.jsm_board*, %struct.jsm_board*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @jsm_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jsm_remove_one(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.jsm_board*, align 8
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.jsm_board* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.jsm_board* %6, %struct.jsm_board** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %16 [
    i32 131, label %10
    i32 130, label %10
    i32 129, label %10
    i32 128, label %10
  ]

10:                                               ; preds = %1, %1, %1, %1
  %11 = load %struct.jsm_board*, %struct.jsm_board** %3, align 8
  %12 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, 76
  %15 = call i32 @outb(i32 0, i32 %14)
  br label %17

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %16, %10
  %18 = load %struct.jsm_board*, %struct.jsm_board** %3, align 8
  %19 = call i32 @jsm_remove_uart_port(%struct.jsm_board* %18)
  %20 = load %struct.jsm_board*, %struct.jsm_board** %3, align 8
  %21 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.jsm_board*, %struct.jsm_board** %3, align 8
  %24 = call i32 @free_irq(i32 %22, %struct.jsm_board* %23)
  %25 = load %struct.jsm_board*, %struct.jsm_board** %3, align 8
  %26 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @iounmap(i32 %27)
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %74, %17
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.jsm_board*, %struct.jsm_board** %3, align 8
  %32 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %77

35:                                               ; preds = %29
  %36 = load %struct.jsm_board*, %struct.jsm_board** %3, align 8
  %37 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %36, i32 0, i32 1
  %38 = load %struct.jsm_board**, %struct.jsm_board*** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.jsm_board*, %struct.jsm_board** %38, i64 %40
  %42 = load %struct.jsm_board*, %struct.jsm_board** %41, align 8
  %43 = icmp ne %struct.jsm_board* %42, null
  br i1 %43, label %44, label %73

44:                                               ; preds = %35
  %45 = load %struct.jsm_board*, %struct.jsm_board** %3, align 8
  %46 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %45, i32 0, i32 1
  %47 = load %struct.jsm_board**, %struct.jsm_board*** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.jsm_board*, %struct.jsm_board** %47, i64 %49
  %51 = load %struct.jsm_board*, %struct.jsm_board** %50, align 8
  %52 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %51, i32 0, i32 3
  %53 = load %struct.jsm_board*, %struct.jsm_board** %52, align 8
  %54 = call i32 @kfree(%struct.jsm_board* %53)
  %55 = load %struct.jsm_board*, %struct.jsm_board** %3, align 8
  %56 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %55, i32 0, i32 1
  %57 = load %struct.jsm_board**, %struct.jsm_board*** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.jsm_board*, %struct.jsm_board** %57, i64 %59
  %61 = load %struct.jsm_board*, %struct.jsm_board** %60, align 8
  %62 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %61, i32 0, i32 2
  %63 = load %struct.jsm_board*, %struct.jsm_board** %62, align 8
  %64 = call i32 @kfree(%struct.jsm_board* %63)
  %65 = load %struct.jsm_board*, %struct.jsm_board** %3, align 8
  %66 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %65, i32 0, i32 1
  %67 = load %struct.jsm_board**, %struct.jsm_board*** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.jsm_board*, %struct.jsm_board** %67, i64 %69
  %71 = load %struct.jsm_board*, %struct.jsm_board** %70, align 8
  %72 = call i32 @kfree(%struct.jsm_board* %71)
  br label %73

73:                                               ; preds = %44, %35
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %4, align 4
  br label %29

77:                                               ; preds = %29
  %78 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %79 = call i32 @pci_release_regions(%struct.pci_dev* %78)
  %80 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %81 = call i32 @pci_disable_device(%struct.pci_dev* %80)
  %82 = load %struct.jsm_board*, %struct.jsm_board** %3, align 8
  %83 = call i32 @kfree(%struct.jsm_board* %82)
  ret void
}

declare dso_local %struct.jsm_board* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @jsm_remove_uart_port(%struct.jsm_board*) #1

declare dso_local i32 @free_irq(i32, %struct.jsm_board*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.jsm_board*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
