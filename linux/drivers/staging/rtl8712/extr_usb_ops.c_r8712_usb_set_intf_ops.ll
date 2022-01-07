; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_usb_ops.c_r8712_usb_set_intf_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_usb_ops.c_r8712_usb_set_intf_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._io_ops = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@usb_read8 = common dso_local global i32 0, align 4
@usb_read16 = common dso_local global i32 0, align 4
@usb_read32 = common dso_local global i32 0, align 4
@r8712_usb_read_port = common dso_local global i32 0, align 4
@usb_write8 = common dso_local global i32 0, align 4
@usb_write16 = common dso_local global i32 0, align 4
@usb_write32 = common dso_local global i32 0, align 4
@r8712_usb_write_mem = common dso_local global i32 0, align 4
@r8712_usb_write_port = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_usb_set_intf_ops(%struct._io_ops* %0) #0 {
  %2 = alloca %struct._io_ops*, align 8
  store %struct._io_ops* %0, %struct._io_ops** %2, align 8
  %3 = load %struct._io_ops*, %struct._io_ops** %2, align 8
  %4 = bitcast %struct._io_ops* %3 to i32*
  %5 = call i32 @memset(i32* %4, i32 0, i32 36)
  %6 = load i32, i32* @usb_read8, align 4
  %7 = load %struct._io_ops*, %struct._io_ops** %2, align 8
  %8 = getelementptr inbounds %struct._io_ops, %struct._io_ops* %7, i32 0, i32 8
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @usb_read16, align 4
  %10 = load %struct._io_ops*, %struct._io_ops** %2, align 8
  %11 = getelementptr inbounds %struct._io_ops, %struct._io_ops* %10, i32 0, i32 7
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @usb_read32, align 4
  %13 = load %struct._io_ops*, %struct._io_ops** %2, align 8
  %14 = getelementptr inbounds %struct._io_ops, %struct._io_ops* %13, i32 0, i32 6
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @r8712_usb_read_port, align 4
  %16 = load %struct._io_ops*, %struct._io_ops** %2, align 8
  %17 = getelementptr inbounds %struct._io_ops, %struct._io_ops* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @usb_write8, align 4
  %19 = load %struct._io_ops*, %struct._io_ops** %2, align 8
  %20 = getelementptr inbounds %struct._io_ops, %struct._io_ops* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @usb_write16, align 4
  %22 = load %struct._io_ops*, %struct._io_ops** %2, align 8
  %23 = getelementptr inbounds %struct._io_ops, %struct._io_ops* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @usb_write32, align 4
  %25 = load %struct._io_ops*, %struct._io_ops** %2, align 8
  %26 = getelementptr inbounds %struct._io_ops, %struct._io_ops* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @r8712_usb_write_mem, align 4
  %28 = load %struct._io_ops*, %struct._io_ops** %2, align 8
  %29 = getelementptr inbounds %struct._io_ops, %struct._io_ops* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @r8712_usb_write_port, align 4
  %31 = load %struct._io_ops*, %struct._io_ops** %2, align 8
  %32 = getelementptr inbounds %struct._io_ops, %struct._io_ops* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
