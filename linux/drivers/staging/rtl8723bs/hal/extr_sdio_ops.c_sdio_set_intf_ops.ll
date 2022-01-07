; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_sdio_ops.c_sdio_set_intf_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_sdio_ops.c_sdio_set_intf_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct._io_ops = type { i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@sdio_read8 = common dso_local global i32 0, align 4
@sdio_read16 = common dso_local global i32 0, align 4
@sdio_read32 = common dso_local global i32 0, align 4
@sdio_read_mem = common dso_local global i32 0, align 4
@sdio_read_port = common dso_local global i32 0, align 4
@sdio_write8 = common dso_local global i32 0, align 4
@sdio_write16 = common dso_local global i32 0, align 4
@sdio_write32 = common dso_local global i32 0, align 4
@sdio_writeN = common dso_local global i32 0, align 4
@sdio_write_mem = common dso_local global i32 0, align 4
@sdio_write_port = common dso_local global i32 0, align 4
@sdio_f0_read8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdio_set_intf_ops(%struct.adapter* %0, %struct._io_ops* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct._io_ops*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct._io_ops* %1, %struct._io_ops** %4, align 8
  %5 = load %struct._io_ops*, %struct._io_ops** %4, align 8
  %6 = getelementptr inbounds %struct._io_ops, %struct._io_ops* %5, i32 0, i32 11
  store i32* @sdio_read8, i32** %6, align 8
  %7 = load %struct._io_ops*, %struct._io_ops** %4, align 8
  %8 = getelementptr inbounds %struct._io_ops, %struct._io_ops* %7, i32 0, i32 10
  store i32* @sdio_read16, i32** %8, align 8
  %9 = load %struct._io_ops*, %struct._io_ops** %4, align 8
  %10 = getelementptr inbounds %struct._io_ops, %struct._io_ops* %9, i32 0, i32 9
  store i32* @sdio_read32, i32** %10, align 8
  %11 = load %struct._io_ops*, %struct._io_ops** %4, align 8
  %12 = getelementptr inbounds %struct._io_ops, %struct._io_ops* %11, i32 0, i32 8
  store i32* @sdio_read_mem, i32** %12, align 8
  %13 = load %struct._io_ops*, %struct._io_ops** %4, align 8
  %14 = getelementptr inbounds %struct._io_ops, %struct._io_ops* %13, i32 0, i32 7
  store i32* @sdio_read_port, i32** %14, align 8
  %15 = load %struct._io_ops*, %struct._io_ops** %4, align 8
  %16 = getelementptr inbounds %struct._io_ops, %struct._io_ops* %15, i32 0, i32 6
  store i32* @sdio_write8, i32** %16, align 8
  %17 = load %struct._io_ops*, %struct._io_ops** %4, align 8
  %18 = getelementptr inbounds %struct._io_ops, %struct._io_ops* %17, i32 0, i32 5
  store i32* @sdio_write16, i32** %18, align 8
  %19 = load %struct._io_ops*, %struct._io_ops** %4, align 8
  %20 = getelementptr inbounds %struct._io_ops, %struct._io_ops* %19, i32 0, i32 4
  store i32* @sdio_write32, i32** %20, align 8
  %21 = load %struct._io_ops*, %struct._io_ops** %4, align 8
  %22 = getelementptr inbounds %struct._io_ops, %struct._io_ops* %21, i32 0, i32 3
  store i32* @sdio_writeN, i32** %22, align 8
  %23 = load %struct._io_ops*, %struct._io_ops** %4, align 8
  %24 = getelementptr inbounds %struct._io_ops, %struct._io_ops* %23, i32 0, i32 2
  store i32* @sdio_write_mem, i32** %24, align 8
  %25 = load %struct._io_ops*, %struct._io_ops** %4, align 8
  %26 = getelementptr inbounds %struct._io_ops, %struct._io_ops* %25, i32 0, i32 1
  store i32* @sdio_write_port, i32** %26, align 8
  %27 = load i32, i32* @sdio_f0_read8, align 4
  %28 = load %struct._io_ops*, %struct._io_ops** %4, align 8
  %29 = getelementptr inbounds %struct._io_ops, %struct._io_ops* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
