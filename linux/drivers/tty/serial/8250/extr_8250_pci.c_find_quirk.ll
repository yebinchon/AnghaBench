; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pci.c_find_quirk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pci.c_find_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_serial_quirk = type { i32, i32, i32, i32 }
%struct.pci_dev = type { i32, i32, i32, i32 }

@pci_serial_quirks = common dso_local global %struct.pci_serial_quirk* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pci_serial_quirk* (%struct.pci_dev*)* @find_quirk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pci_serial_quirk* @find_quirk(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pci_serial_quirk*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_serial_quirk*, %struct.pci_serial_quirk** @pci_serial_quirks, align 8
  store %struct.pci_serial_quirk* %4, %struct.pci_serial_quirk** %3, align 8
  br label %5

5:                                                ; preds = %43, %1
  %6 = load %struct.pci_serial_quirk*, %struct.pci_serial_quirk** %3, align 8
  %7 = getelementptr inbounds %struct.pci_serial_quirk, %struct.pci_serial_quirk* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @quirk_id_matches(i32 %8, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %42

14:                                               ; preds = %5
  %15 = load %struct.pci_serial_quirk*, %struct.pci_serial_quirk** %3, align 8
  %16 = getelementptr inbounds %struct.pci_serial_quirk, %struct.pci_serial_quirk* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @quirk_id_matches(i32 %17, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %14
  %24 = load %struct.pci_serial_quirk*, %struct.pci_serial_quirk** %3, align 8
  %25 = getelementptr inbounds %struct.pci_serial_quirk, %struct.pci_serial_quirk* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @quirk_id_matches(i32 %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %23
  %33 = load %struct.pci_serial_quirk*, %struct.pci_serial_quirk** %3, align 8
  %34 = getelementptr inbounds %struct.pci_serial_quirk, %struct.pci_serial_quirk* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @quirk_id_matches(i32 %35, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %46

42:                                               ; preds = %32, %23, %14, %5
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.pci_serial_quirk*, %struct.pci_serial_quirk** %3, align 8
  %45 = getelementptr inbounds %struct.pci_serial_quirk, %struct.pci_serial_quirk* %44, i32 1
  store %struct.pci_serial_quirk* %45, %struct.pci_serial_quirk** %3, align 8
  br label %5

46:                                               ; preds = %41
  %47 = load %struct.pci_serial_quirk*, %struct.pci_serial_quirk** %3, align 8
  ret %struct.pci_serial_quirk* %47
}

declare dso_local i64 @quirk_id_matches(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
