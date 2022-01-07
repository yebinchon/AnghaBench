; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_usb-serial.c_destroy_serial.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_usb-serial.c_destroy_serial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kref = type { i32 }
%struct.usb_serial = type { i32, i32, i32, %struct.usb_serial_port**, %struct.TYPE_2__*, i64, i64 }
%struct.usb_serial_port = type { i32, i32* }
%struct.TYPE_2__ = type { i32 (%struct.usb_serial*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kref*)* @destroy_serial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_serial(%struct.kref* %0) #0 {
  %2 = alloca %struct.kref*, align 8
  %3 = alloca %struct.usb_serial*, align 8
  %4 = alloca %struct.usb_serial_port*, align 8
  %5 = alloca i32, align 4
  store %struct.kref* %0, %struct.kref** %2, align 8
  %6 = load %struct.kref*, %struct.kref** %2, align 8
  %7 = call %struct.usb_serial* @to_usb_serial(%struct.kref* %6)
  store %struct.usb_serial* %7, %struct.usb_serial** %3, align 8
  %8 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %9 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %8, i32 0, i32 6
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %14 = call i32 @release_minors(%struct.usb_serial* %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %17 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %15
  %21 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %22 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %21, i32 0, i32 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.usb_serial*)*, i32 (%struct.usb_serial*)** %24, align 8
  %26 = icmp ne i32 (%struct.usb_serial*)* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %29 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %28, i32 0, i32 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.usb_serial*)*, i32 (%struct.usb_serial*)** %31, align 8
  %33 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %34 = call i32 %32(%struct.usb_serial* %33)
  br label %35

35:                                               ; preds = %27, %20, %15
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %59, %35
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %39 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %62

42:                                               ; preds = %36
  %43 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %44 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %43, i32 0, i32 3
  %45 = load %struct.usb_serial_port**, %struct.usb_serial_port*** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.usb_serial_port*, %struct.usb_serial_port** %45, i64 %47
  %49 = load %struct.usb_serial_port*, %struct.usb_serial_port** %48, align 8
  store %struct.usb_serial_port* %49, %struct.usb_serial_port** %4, align 8
  %50 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %51 = icmp ne %struct.usb_serial_port* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %42
  %53 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %54 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %53, i32 0, i32 1
  store i32* null, i32** %54, align 8
  %55 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %56 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %55, i32 0, i32 0
  %57 = call i32 @put_device(i32* %56)
  br label %58

58:                                               ; preds = %52, %42
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %36

62:                                               ; preds = %36
  %63 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %64 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @usb_put_intf(i32 %65)
  %67 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %68 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @usb_put_dev(i32 %69)
  %71 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %72 = call i32 @kfree(%struct.usb_serial* %71)
  ret void
}

declare dso_local %struct.usb_serial* @to_usb_serial(%struct.kref*) #1

declare dso_local i32 @release_minors(%struct.usb_serial*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @usb_put_intf(i32) #1

declare dso_local i32 @usb_put_dev(i32) #1

declare dso_local i32 @kfree(%struct.usb_serial*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
