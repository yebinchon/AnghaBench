; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/class/extr_cdc-acm.c_acm_tty_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/class/extr_cdc-acm.c_acm_tty_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.acm* }
%struct.acm = type { i32 }

@ENOIOCTLCMD = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i32, i64)* @acm_tty_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acm_tty_ioctl(%struct.tty_struct* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.acm*, align 8
  %8 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 0
  %11 = load %struct.acm*, %struct.acm** %10, align 8
  store %struct.acm* %11, %struct.acm** %7, align 8
  %12 = load i32, i32* @ENOIOCTLCMD, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %33 [
    i32 128, label %15
  ]

15:                                               ; preds = %3
  %16 = load %struct.acm*, %struct.acm** %7, align 8
  %17 = getelementptr inbounds %struct.acm, %struct.acm* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @usb_autopm_get_interface(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %8, align 4
  br label %33

25:                                               ; preds = %15
  %26 = load %struct.acm*, %struct.acm** %7, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @wait_serial_change(%struct.acm* %26, i64 %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.acm*, %struct.acm** %7, align 8
  %30 = getelementptr inbounds %struct.acm, %struct.acm* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @usb_autopm_put_interface(i32 %31)
  br label %33

33:                                               ; preds = %3, %25, %22
  %34 = load i32, i32* %8, align 4
  ret i32 %34
}

declare dso_local i32 @usb_autopm_get_interface(i32) #1

declare dso_local i32 @wait_serial_change(%struct.acm*, i64) #1

declare dso_local i32 @usb_autopm_put_interface(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
