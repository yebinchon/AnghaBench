; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_cp210x.c_cp210x_init_max_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_cp210x.c_cp210x_init_max_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { i32 }
%struct.cp210x_serial_private = type { i32, i32, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_serial*)* @cp210x_init_max_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp210x_init_max_speed(%struct.usb_serial* %0) #0 {
  %2 = alloca %struct.usb_serial*, align 8
  %3 = alloca %struct.cp210x_serial_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.usb_serial* %0, %struct.usb_serial** %2, align 8
  %7 = load %struct.usb_serial*, %struct.usb_serial** %2, align 8
  %8 = call %struct.cp210x_serial_private* @usb_get_serial_data(%struct.usb_serial* %7)
  store %struct.cp210x_serial_private* %8, %struct.cp210x_serial_private** %3, align 8
  store i32 0, i32* %4, align 4
  store i8* inttoptr (i64 300 to i8*), i8** %5, align 8
  %9 = load %struct.cp210x_serial_private*, %struct.cp210x_serial_private** %3, align 8
  %10 = getelementptr inbounds %struct.cp210x_serial_private, %struct.cp210x_serial_private* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %24 [
    i32 136, label %12
    i32 135, label %13
    i32 131, label %13
    i32 130, label %14
    i32 128, label %15
    i32 129, label %16
    i32 132, label %23
    i32 133, label %23
    i32 134, label %23
  ]

12:                                               ; preds = %1
  store i8* inttoptr (i64 921600 to i8*), i8** %6, align 8
  br label %25

13:                                               ; preds = %1, %1
  store i8* inttoptr (i64 1000000 to i8*), i8** %6, align 8
  br label %25

14:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  store i8* inttoptr (i64 2000000 to i8*), i8** %6, align 8
  br label %25

15:                                               ; preds = %1
  store i8* inttoptr (i64 2000000 to i8*), i8** %6, align 8
  br label %25

16:                                               ; preds = %1
  %17 = load %struct.usb_serial*, %struct.usb_serial** %2, align 8
  %18 = call i32 @cp210x_interface_num(%struct.usb_serial* %17)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 1, i32* %4, align 4
  store i8* inttoptr (i64 2000000 to i8*), i8** %6, align 8
  br label %22

21:                                               ; preds = %16
  store i8* inttoptr (i64 2400 to i8*), i8** %5, align 8
  store i8* inttoptr (i64 921600 to i8*), i8** %6, align 8
  br label %22

22:                                               ; preds = %21, %20
  br label %25

23:                                               ; preds = %1, %1, %1
  store i32 1, i32* %4, align 4
  store i8* inttoptr (i64 3000000 to i8*), i8** %6, align 8
  br label %25

24:                                               ; preds = %1
  store i8* inttoptr (i64 2000000 to i8*), i8** %6, align 8
  br label %25

25:                                               ; preds = %24, %23, %22, %15, %14, %13, %12
  %26 = load i8*, i8** %5, align 8
  %27 = load %struct.cp210x_serial_private*, %struct.cp210x_serial_private** %3, align 8
  %28 = getelementptr inbounds %struct.cp210x_serial_private, %struct.cp210x_serial_private* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load %struct.cp210x_serial_private*, %struct.cp210x_serial_private** %3, align 8
  %31 = getelementptr inbounds %struct.cp210x_serial_private, %struct.cp210x_serial_private* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.cp210x_serial_private*, %struct.cp210x_serial_private** %3, align 8
  %34 = getelementptr inbounds %struct.cp210x_serial_private, %struct.cp210x_serial_private* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  ret void
}

declare dso_local %struct.cp210x_serial_private* @usb_get_serial_data(%struct.usb_serial*) #1

declare dso_local i32 @cp210x_interface_num(%struct.usb_serial*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
