; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/ipwireless/extr_tty.c_ipwireless_get_serial_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/ipwireless/extr_tty.c_ipwireless_get_serial_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.ipw_tty* }
%struct.ipw_tty = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.serial_struct = type { i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PORT_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.serial_struct*)* @ipwireless_get_serial_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipwireless_get_serial_info(%struct.tty_struct* %0, %struct.serial_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.serial_struct*, align 8
  %6 = alloca %struct.ipw_tty*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.serial_struct* %1, %struct.serial_struct** %5, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 0
  %9 = load %struct.ipw_tty*, %struct.ipw_tty** %8, align 8
  store %struct.ipw_tty* %9, %struct.ipw_tty** %6, align 8
  %10 = load %struct.ipw_tty*, %struct.ipw_tty** %6, align 8
  %11 = icmp ne %struct.ipw_tty* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %35

15:                                               ; preds = %2
  %16 = load %struct.ipw_tty*, %struct.ipw_tty** %6, align 8
  %17 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %35

24:                                               ; preds = %15
  %25 = load i32, i32* @PORT_UNKNOWN, align 4
  %26 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %27 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ipw_tty*, %struct.ipw_tty** %6, align 8
  %29 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %32 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %34 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %33, i32 0, i32 0
  store i32 115200, i32* %34, align 4
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %24, %21, %12
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
