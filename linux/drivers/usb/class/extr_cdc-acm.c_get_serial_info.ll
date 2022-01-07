; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/class/extr_cdc-acm.c_get_serial_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/class/extr_cdc-acm.c_get_serial_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.acm* }
%struct.acm = type { %struct.TYPE_3__, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.serial_struct = type { i32, i32, i32, i32 }

@ASYNC_CLOSING_WAIT_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.serial_struct*)* @get_serial_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_serial_info(%struct.tty_struct* %0, %struct.serial_struct* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.serial_struct*, align 8
  %5 = alloca %struct.acm*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.serial_struct* %1, %struct.serial_struct** %4, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 0
  %8 = load %struct.acm*, %struct.acm** %7, align 8
  store %struct.acm* %8, %struct.acm** %5, align 8
  %9 = load %struct.acm*, %struct.acm** %5, align 8
  %10 = getelementptr inbounds %struct.acm, %struct.acm* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %13 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 4
  %14 = load %struct.acm*, %struct.acm** %5, align 8
  %15 = getelementptr inbounds %struct.acm, %struct.acm* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le32_to_cpu(i32 %17)
  %19 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %20 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load %struct.acm*, %struct.acm** %5, align 8
  %22 = getelementptr inbounds %struct.acm, %struct.acm* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sdiv i32 %24, 10
  %26 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %27 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.acm*, %struct.acm** %5, align 8
  %29 = getelementptr inbounds %struct.acm, %struct.acm* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ASYNC_CLOSING_WAIT_NONE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i32, i32* @ASYNC_CLOSING_WAIT_NONE, align 4
  br label %42

36:                                               ; preds = %2
  %37 = load %struct.acm*, %struct.acm** %5, align 8
  %38 = getelementptr inbounds %struct.acm, %struct.acm* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %40, 10
  br label %42

42:                                               ; preds = %36, %34
  %43 = phi i32 [ %35, %34 ], [ %41, %36 ]
  %44 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %45 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  ret i32 0
}

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
