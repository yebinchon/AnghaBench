; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pci.c_pciserial_suspend_ports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pci.c_pciserial_suspend_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serial_private = type { i32, i64*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pciserial_suspend_ports(%struct.serial_private* %0) #0 {
  %2 = alloca %struct.serial_private*, align 8
  %3 = alloca i32, align 4
  store %struct.serial_private* %0, %struct.serial_private** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %29, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.serial_private*, %struct.serial_private** %2, align 8
  %7 = getelementptr inbounds %struct.serial_private, %struct.serial_private* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %32

10:                                               ; preds = %4
  %11 = load %struct.serial_private*, %struct.serial_private** %2, align 8
  %12 = getelementptr inbounds %struct.serial_private, %struct.serial_private* %11, i32 0, i32 1
  %13 = load i64*, i64** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp sge i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %10
  %20 = load %struct.serial_private*, %struct.serial_private** %2, align 8
  %21 = getelementptr inbounds %struct.serial_private, %struct.serial_private* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @serial8250_suspend_port(i64 %26)
  br label %28

28:                                               ; preds = %19, %10
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %4

32:                                               ; preds = %4
  %33 = load %struct.serial_private*, %struct.serial_private** %2, align 8
  %34 = getelementptr inbounds %struct.serial_private, %struct.serial_private* %33, i32 0, i32 3
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (i32)*, i32 (i32)** %36, align 8
  %38 = icmp ne i32 (i32)* %37, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %32
  %40 = load %struct.serial_private*, %struct.serial_private** %2, align 8
  %41 = getelementptr inbounds %struct.serial_private, %struct.serial_private* %40, i32 0, i32 3
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (i32)*, i32 (i32)** %43, align 8
  %45 = load %struct.serial_private*, %struct.serial_private** %2, align 8
  %46 = getelementptr inbounds %struct.serial_private, %struct.serial_private* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 %44(i32 %47)
  br label %49

49:                                               ; preds = %39, %32
  ret void
}

declare dso_local i32 @serial8250_suspend_port(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
