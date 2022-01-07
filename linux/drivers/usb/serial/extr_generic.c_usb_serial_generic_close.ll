; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_generic.c_usb_serial_generic_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_generic.c_usb_serial_generic_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32*, i64, i32, i32, i32*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_serial_generic_close(%struct.usb_serial_port* %0) #0 {
  %2 = alloca %struct.usb_serial_port*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %2, align 8
  %5 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %6 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %5, i32 0, i32 5
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %41

9:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %26, %9
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %13 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %12, i32 0, i32 4
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @ARRAY_SIZE(i32* %14)
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %10
  %18 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %19 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @usb_kill_urb(i32 %24)
  br label %26

26:                                               ; preds = %17
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %10

29:                                               ; preds = %10
  %30 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %31 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %30, i32 0, i32 2
  %32 = load i64, i64* %3, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %35 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %34, i32 0, i32 3
  %36 = call i32 @kfifo_reset_out(i32* %35)
  %37 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %38 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %37, i32 0, i32 2
  %39 = load i64, i64* %3, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  br label %41

41:                                               ; preds = %29, %1
  %42 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %43 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %67

46:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %63, %46
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %50 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @ARRAY_SIZE(i32* %51)
  %53 = icmp slt i32 %48, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %47
  %55 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %56 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @usb_kill_urb(i32 %61)
  br label %63

63:                                               ; preds = %54
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %47

66:                                               ; preds = %47
  br label %67

67:                                               ; preds = %66, %41
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @kfifo_reset_out(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
