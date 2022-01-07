; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_icom.c_free_port_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_icom.c_free_port_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icom_port = type { i32*, i32, i32*, i32, i32*, i32, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"RET_PORT_MEM\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.icom_port*)* @free_port_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_port_memory(%struct.icom_port* %0) #0 {
  %2 = alloca %struct.icom_port*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  store %struct.icom_port* %0, %struct.icom_port** %2, align 8
  %4 = load %struct.icom_port*, %struct.icom_port** %2, align 8
  %5 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %4, i32 0, i32 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %3, align 8
  %9 = load %struct.icom_port*, %struct.icom_port** %2, align 8
  %10 = call i32 @trace(%struct.icom_port* %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 0)
  %11 = load %struct.icom_port*, %struct.icom_port** %2, align 8
  %12 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %11, i32 0, i32 6
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %1
  %16 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %17 = load %struct.icom_port*, %struct.icom_port** %2, align 8
  %18 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %17, i32 0, i32 6
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.icom_port*, %struct.icom_port** %2, align 8
  %21 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @pci_free_consistent(%struct.pci_dev* %16, i32 4096, i32* %19, i32 %22)
  %24 = load %struct.icom_port*, %struct.icom_port** %2, align 8
  %25 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %24, i32 0, i32 6
  store i32* null, i32** %25, align 8
  br label %26

26:                                               ; preds = %15, %1
  %27 = load %struct.icom_port*, %struct.icom_port** %2, align 8
  %28 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %33 = load %struct.icom_port*, %struct.icom_port** %2, align 8
  %34 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.icom_port*, %struct.icom_port** %2, align 8
  %37 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @pci_free_consistent(%struct.pci_dev* %32, i32 4096, i32* %35, i32 %38)
  %40 = load %struct.icom_port*, %struct.icom_port** %2, align 8
  %41 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %40, i32 0, i32 4
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %31, %26
  %43 = load %struct.icom_port*, %struct.icom_port** %2, align 8
  %44 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %58

47:                                               ; preds = %42
  %48 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %49 = load %struct.icom_port*, %struct.icom_port** %2, align 8
  %50 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.icom_port*, %struct.icom_port** %2, align 8
  %53 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @pci_free_consistent(%struct.pci_dev* %48, i32 4096, i32* %51, i32 %54)
  %56 = load %struct.icom_port*, %struct.icom_port** %2, align 8
  %57 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %56, i32 0, i32 2
  store i32* null, i32** %57, align 8
  br label %58

58:                                               ; preds = %47, %42
  %59 = load %struct.icom_port*, %struct.icom_port** %2, align 8
  %60 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %74

63:                                               ; preds = %58
  %64 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %65 = load %struct.icom_port*, %struct.icom_port** %2, align 8
  %66 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.icom_port*, %struct.icom_port** %2, align 8
  %69 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @pci_free_consistent(%struct.pci_dev* %64, i32 4096, i32* %67, i32 %70)
  %72 = load %struct.icom_port*, %struct.icom_port** %2, align 8
  %73 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %72, i32 0, i32 0
  store i32* null, i32** %73, align 8
  br label %74

74:                                               ; preds = %63, %58
  ret void
}

declare dso_local i32 @trace(%struct.icom_port*, i8*, i32) #1

declare dso_local i32 @pci_free_consistent(%struct.pci_dev*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
