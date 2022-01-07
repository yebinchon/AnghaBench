; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_printer.c_printer_fsync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_printer.c_printer_fsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.printer_dev* }
%struct.printer_dev = type { i32, i32, i32, i32 }
%struct.inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i32, i32)* @printer_fsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @printer_fsync(%struct.file* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.printer_dev*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load %struct.printer_dev*, %struct.printer_dev** %14, align 8
  store %struct.printer_dev* %15, %struct.printer_dev** %9, align 8
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = call %struct.inode* @file_inode(%struct.file* %16)
  store %struct.inode* %17, %struct.inode** %10, align 8
  %18 = load %struct.inode*, %struct.inode** %10, align 8
  %19 = call i32 @inode_lock(%struct.inode* %18)
  %20 = load %struct.printer_dev*, %struct.printer_dev** %9, align 8
  %21 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %20, i32 0, i32 2
  %22 = load i64, i64* %11, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.printer_dev*, %struct.printer_dev** %9, align 8
  %25 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %24, i32 0, i32 3
  %26 = call i32 @list_empty(i32* %25)
  %27 = call i32 @likely(i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load %struct.printer_dev*, %struct.printer_dev** %9, align 8
  %29 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %28, i32 0, i32 2
  %30 = load i64, i64* %11, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %4
  %35 = load %struct.printer_dev*, %struct.printer_dev** %9, align 8
  %36 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.printer_dev*, %struct.printer_dev** %9, align 8
  %39 = getelementptr inbounds %struct.printer_dev, %struct.printer_dev* %38, i32 0, i32 0
  %40 = call i32 @list_empty(i32* %39)
  %41 = call i32 @likely(i32 %40)
  %42 = call i32 @wait_event_interruptible(i32 %37, i32 %41)
  br label %43

43:                                               ; preds = %34, %4
  %44 = load %struct.inode*, %struct.inode** %10, align 8
  %45 = call i32 @inode_unlock(%struct.inode* %44)
  ret i32 0
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @likely(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
