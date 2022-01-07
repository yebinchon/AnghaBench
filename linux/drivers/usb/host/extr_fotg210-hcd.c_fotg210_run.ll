; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_fotg210_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_fotg210_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.fotg210_hcd = type { i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }

@CMD_IAAD = common dso_local global i32 0, align 4
@CMD_PSE = common dso_local global i32 0, align 4
@CMD_ASE = common dso_local global i32 0, align 4
@CMD_RESET = common dso_local global i32 0, align 4
@CMD_RUN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"init\00", align 1
@ehci_cf_port_reset_rwsem = common dso_local global i32 0, align 4
@FOTG210_RH_RUNNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"USB %x.%x started, EHCI %x.%02x\0A\00", align 1
@INTR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @fotg210_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fotg210_run(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  %3 = alloca %struct.fotg210_hcd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %6 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %7 = call %struct.fotg210_hcd* @hcd_to_fotg210(%struct.usb_hcd* %6)
  store %struct.fotg210_hcd* %7, %struct.fotg210_hcd** %3, align 8
  %8 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %9 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %8, i32 0, i32 0
  store i32 1, i32* %9, align 4
  %10 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %11 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %12 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %15 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %14, i32 0, i32 3
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  %18 = call i32 @fotg210_writel(%struct.fotg210_hcd* %10, i32 %13, i32* %17)
  %19 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %20 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %21 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %20, i32 0, i32 7
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %27 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %26, i32 0, i32 3
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = call i32 @fotg210_writel(%struct.fotg210_hcd* %19, i32 %25, i32* %29)
  %31 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %32 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %33 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %32, i32 0, i32 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = call i32 @fotg210_readl(%struct.fotg210_hcd* %31, i32* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* @CMD_IAAD, align 4
  %38 = load i32, i32* @CMD_PSE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @CMD_ASE, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @CMD_RESET, align 4
  %43 = or i32 %41, %42
  %44 = xor i32 %43, -1
  %45 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %46 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* @CMD_RUN, align 4
  %50 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %51 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %55 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %56 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %59 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %58, i32 0, i32 3
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = call i32 @fotg210_writel(%struct.fotg210_hcd* %54, i32 %57, i32* %61)
  %63 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %64 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %65 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dbg_cmd(%struct.fotg210_hcd* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = call i32 @down_write(i32* @ehci_cf_port_reset_rwsem)
  %69 = load i32, i32* @FOTG210_RH_RUNNING, align 4
  %70 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %71 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %70, i32 0, i32 6
  store i32 %69, i32* %71, align 4
  %72 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %73 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %74 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %73, i32 0, i32 3
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = call i32 @fotg210_readl(%struct.fotg210_hcd* %72, i32* %76)
  %78 = call i32 @usleep_range(i32 5000, i32 10000)
  %79 = call i32 @up_write(i32* @ehci_cf_port_reset_rwsem)
  %80 = call i32 (...) @ktime_get_real()
  %81 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %82 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 8
  %83 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %84 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %85 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %86 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %85, i32 0, i32 4
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = call i32 @fotg210_readl(%struct.fotg210_hcd* %84, i32* %88)
  %90 = call i32 @HC_VERSION(%struct.fotg210_hcd* %83, i32 %89)
  store i32 %90, i32* %4, align 4
  %91 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %92 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %93 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = and i32 %94, 240
  %96 = ashr i32 %95, 4
  %97 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %98 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = and i32 %99, 15
  %101 = load i32, i32* %4, align 4
  %102 = ashr i32 %101, 8
  %103 = load i32, i32* %4, align 4
  %104 = and i32 %103, 255
  %105 = call i32 @fotg210_info(%struct.fotg210_hcd* %91, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %96, i32 %100, i32 %102, i32 %104)
  %106 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %107 = load i32, i32* @INTR_MASK, align 4
  %108 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %109 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %108, i32 0, i32 3
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = call i32 @fotg210_writel(%struct.fotg210_hcd* %106, i32 %107, i32* %111)
  %113 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %114 = call i32 @create_debug_files(%struct.fotg210_hcd* %113)
  %115 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %116 = call i32 @create_sysfs_files(%struct.fotg210_hcd* %115)
  ret i32 0
}

declare dso_local %struct.fotg210_hcd* @hcd_to_fotg210(%struct.usb_hcd*) #1

declare dso_local i32 @fotg210_writel(%struct.fotg210_hcd*, i32, i32*) #1

declare dso_local i32 @fotg210_readl(%struct.fotg210_hcd*, i32*) #1

declare dso_local i32 @dbg_cmd(%struct.fotg210_hcd*, i8*, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @ktime_get_real(...) #1

declare dso_local i32 @HC_VERSION(%struct.fotg210_hcd*, i32) #1

declare dso_local i32 @fotg210_info(%struct.fotg210_hcd*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @create_debug_files(%struct.fotg210_hcd*) #1

declare dso_local i32 @create_sysfs_files(%struct.fotg210_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
