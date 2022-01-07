; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_isicom.c_isicom_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_isicom.c_isicom_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.isi_board = type { i32, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@isicom_normal = common dso_local global i32 0, align 4
@card_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @isicom_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isicom_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.isi_board*, align 8
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.isi_board* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.isi_board* %6, %struct.isi_board** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %30, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.isi_board*, %struct.isi_board** %3, align 8
  %10 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ult i32 %8, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %7
  %14 = load i32, i32* @isicom_normal, align 4
  %15 = load %struct.isi_board*, %struct.isi_board** %3, align 8
  %16 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %17, 16
  %19 = load i32, i32* %4, align 4
  %20 = add i32 %18, %19
  %21 = call i32 @tty_unregister_device(i32 %14, i32 %20)
  %22 = load %struct.isi_board*, %struct.isi_board** %3, align 8
  %23 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %22, i32 0, i32 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @tty_port_destroy(i32* %28)
  br label %30

30:                                               ; preds = %13
  %31 = load i32, i32* %4, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %7

33:                                               ; preds = %7
  %34 = load %struct.isi_board*, %struct.isi_board** %3, align 8
  %35 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.isi_board*, %struct.isi_board** %3, align 8
  %38 = call i32 @free_irq(i32 %36, %struct.isi_board* %37)
  %39 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %40 = call i32 @pci_release_region(%struct.pci_dev* %39, i32 3)
  %41 = load %struct.isi_board*, %struct.isi_board** %3, align 8
  %42 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = load i32, i32* @card_count, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* @card_count, align 4
  %45 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %46 = call i32 @pci_disable_device(%struct.pci_dev* %45)
  ret void
}

declare dso_local %struct.isi_board* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @tty_unregister_device(i32, i32) #1

declare dso_local i32 @tty_port_destroy(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.isi_board*) #1

declare dso_local i32 @pci_release_region(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
