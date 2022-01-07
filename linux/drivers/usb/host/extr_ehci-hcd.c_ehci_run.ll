; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-hcd.c_ehci_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-hcd.c_ehci_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ehci_hcd = type { i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__*, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }

@CMD_LRESET = common dso_local global i32 0, align 4
@CMD_IAAD = common dso_local global i32 0, align 4
@CMD_PSE = common dso_local global i32 0, align 4
@CMD_ASE = common dso_local global i32 0, align 4
@CMD_RESET = common dso_local global i32 0, align 4
@CMD_RUN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"init\00", align 1
@ehci_cf_port_reset_rwsem = common dso_local global i32 0, align 4
@EHCI_RH_RUNNING = common dso_local global i32 0, align 4
@FLAG_CF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"USB %x.%x started, EHCI %x.%02x%s\0A\00", align 1
@ignore_oc = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c", overcurrent ignored\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@INTR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @ehci_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehci_run(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  %3 = alloca %struct.ehci_hcd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %6 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %7 = call %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd* %6)
  store %struct.ehci_hcd* %7, %struct.ehci_hcd** %3, align 8
  %8 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %9 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %8, i32 0, i32 0
  store i32 1, i32* %9, align 4
  %10 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %11 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %12 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %15 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %14, i32 0, i32 3
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 5
  %18 = call i32 @ehci_writel(%struct.ehci_hcd* %10, i32 %13, i32* %17)
  %19 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %20 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %21 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %20, i32 0, i32 7
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %27 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %26, i32 0, i32 3
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 4
  %30 = call i32 @ehci_writel(%struct.ehci_hcd* %19, i32 %25, i32* %29)
  %31 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %32 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %33 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %32, i32 0, i32 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = call i32 @ehci_readl(%struct.ehci_hcd* %31, i32* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i64 @HCC_64BIT_ADDR(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %1
  %41 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %42 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %43 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %42, i32 0, i32 3
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 3
  %46 = call i32 @ehci_writel(%struct.ehci_hcd* %41, i32 0, i32* %45)
  br label %47

47:                                               ; preds = %40, %1
  %48 = load i32, i32* @CMD_LRESET, align 4
  %49 = load i32, i32* @CMD_IAAD, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @CMD_PSE, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @CMD_ASE, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @CMD_RESET, align 4
  %56 = or i32 %54, %55
  %57 = xor i32 %56, -1
  %58 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %59 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* @CMD_RUN, align 4
  %63 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %64 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %68 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %69 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %72 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %71, i32 0, i32 3
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = call i32 @ehci_writel(%struct.ehci_hcd* %67, i32 %70, i32* %74)
  %76 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %77 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %78 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @dbg_cmd(%struct.ehci_hcd* %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = call i32 @down_write(i32* @ehci_cf_port_reset_rwsem)
  %82 = load i32, i32* @EHCI_RH_RUNNING, align 4
  %83 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %84 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %83, i32 0, i32 6
  store i32 %82, i32* %84, align 4
  %85 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %86 = load i32, i32* @FLAG_CF, align 4
  %87 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %88 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %87, i32 0, i32 3
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 2
  %91 = call i32 @ehci_writel(%struct.ehci_hcd* %85, i32 %86, i32* %90)
  %92 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %93 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %94 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %93, i32 0, i32 3
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = call i32 @ehci_readl(%struct.ehci_hcd* %92, i32* %96)
  %98 = call i32 @msleep(i32 5)
  %99 = call i32 @up_write(i32* @ehci_cf_port_reset_rwsem)
  %100 = call i32 (...) @ktime_get_real()
  %101 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %102 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %101, i32 0, i32 5
  store i32 %100, i32* %102, align 8
  %103 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %104 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %105 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %106 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %105, i32 0, i32 4
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = call i32 @ehci_readl(%struct.ehci_hcd* %104, i32* %108)
  %110 = call i32 @HC_VERSION(%struct.ehci_hcd* %103, i32 %109)
  store i32 %110, i32* %4, align 4
  %111 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %112 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %113 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = and i32 %114, 240
  %116 = ashr i32 %115, 4
  %117 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %118 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = and i32 %119, 15
  %121 = load i32, i32* %4, align 4
  %122 = ashr i32 %121, 8
  %123 = load i32, i32* %4, align 4
  %124 = and i32 %123, 255
  %125 = load i64, i64* @ignore_oc, align 8
  %126 = icmp ne i64 %125, 0
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %129 = call i32 (%struct.ehci_hcd*, i8*, ...) @ehci_info(%struct.ehci_hcd* %111, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %116, i32 %120, i32 %122, i32 %124, i8* %128)
  %130 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %131 = load i32, i32* @INTR_MASK, align 4
  %132 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %133 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %132, i32 0, i32 3
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = call i32 @ehci_writel(%struct.ehci_hcd* %130, i32 %131, i32* %135)
  %137 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %138 = call i32 @create_debug_files(%struct.ehci_hcd* %137)
  %139 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %140 = call i32 @create_sysfs_files(%struct.ehci_hcd* %139)
  ret i32 0
}

declare dso_local %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd*) #1

declare dso_local i32 @ehci_writel(%struct.ehci_hcd*, i32, i32*) #1

declare dso_local i32 @ehci_readl(%struct.ehci_hcd*, i32*) #1

declare dso_local i64 @HCC_64BIT_ADDR(i32) #1

declare dso_local i32 @dbg_cmd(%struct.ehci_hcd*, i8*, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @ktime_get_real(...) #1

declare dso_local i32 @HC_VERSION(%struct.ehci_hcd*, i32) #1

declare dso_local i32 @ehci_info(%struct.ehci_hcd*, i8*, ...) #1

declare dso_local i32 @create_debug_files(%struct.ehci_hcd*) #1

declare dso_local i32 @create_sysfs_files(%struct.ehci_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
