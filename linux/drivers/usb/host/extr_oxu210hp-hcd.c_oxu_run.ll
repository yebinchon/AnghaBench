; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_oxu210hp-hcd.c_oxu_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_oxu210hp-hcd.c_oxu_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32, i32 }
%struct.oxu_hcd = type { i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }

@CMD_LRESET = common dso_local global i32 0, align 4
@CMD_IAAD = common dso_local global i32 0, align 4
@CMD_PSE = common dso_local global i32 0, align 4
@CMD_ASE = common dso_local global i32 0, align 4
@CMD_RESET = common dso_local global i32 0, align 4
@CMD_RUN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"init\00", align 1
@HC_STATE_RUNNING = common dso_local global i32 0, align 4
@FLAG_CF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"USB %x.%x started, quasi-EHCI %x.%02x, driver %s%s\0A\00", align 1
@DRIVER_VERSION = common dso_local global i32 0, align 4
@ignore_oc = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c", overcurrent ignored\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@INTR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @oxu_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oxu_run(%struct.usb_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.oxu_hcd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  %8 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %9 = call %struct.oxu_hcd* @hcd_to_oxu(%struct.usb_hcd* %8)
  store %struct.oxu_hcd* %9, %struct.oxu_hcd** %4, align 8
  %10 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %11 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %10, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %13 = call i32 @ehci_reset(%struct.oxu_hcd* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %18 = call i32 @ehci_mem_cleanup(%struct.oxu_hcd* %17)
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %133

20:                                               ; preds = %1
  %21 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %22 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %25 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %24, i32 0, i32 3
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 5
  %28 = call i32 @writel(i32 %23, i32* %27)
  %29 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %30 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %29, i32 0, i32 5
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %36 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %35, i32 0, i32 3
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 4
  %39 = call i32 @writel(i32 %34, i32* %38)
  %40 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %41 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %40, i32 0, i32 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = call i32 @readl(i32* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i64 @HCC_64BIT_ADDR(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %20
  %49 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %50 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %49, i32 0, i32 3
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 3
  %53 = call i32 @writel(i32 0, i32* %52)
  br label %54

54:                                               ; preds = %48, %20
  %55 = load i32, i32* @CMD_LRESET, align 4
  %56 = load i32, i32* @CMD_IAAD, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @CMD_PSE, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @CMD_ASE, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @CMD_RESET, align 4
  %63 = or i32 %61, %62
  %64 = xor i32 %63, -1
  %65 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %66 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* @CMD_RUN, align 4
  %70 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %71 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %75 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %78 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %77, i32 0, i32 3
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = call i32 @writel(i32 %76, i32* %80)
  %82 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %83 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %84 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @dbg_cmd(%struct.oxu_hcd* %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* @HC_STATE_RUNNING, align 4
  %88 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %89 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @FLAG_CF, align 4
  %91 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %92 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %91, i32 0, i32 3
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  %95 = call i32 @writel(i32 %90, i32* %94)
  %96 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %97 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %96, i32 0, i32 3
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = call i32 @readl(i32* %99)
  %101 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %102 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %101, i32 0, i32 4
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = call i32 @readl(i32* %104)
  %106 = call i32 @HC_VERSION(i32 %105)
  store i32 %106, i32* %6, align 4
  %107 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %108 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %109 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = and i32 %110, 240
  %112 = ashr i32 %111, 4
  %113 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %114 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = and i32 %115, 15
  %117 = load i32, i32* %6, align 4
  %118 = ashr i32 %117, 8
  %119 = load i32, i32* %6, align 4
  %120 = and i32 %119, 255
  %121 = load i32, i32* @DRIVER_VERSION, align 4
  %122 = load i64, i64* @ignore_oc, align 8
  %123 = icmp ne i64 %122, 0
  %124 = zext i1 %123 to i64
  %125 = select i1 %123, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %126 = call i32 @oxu_info(%struct.oxu_hcd* %107, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %112, i32 %116, i32 %118, i32 %120, i32 %121, i8* %125)
  %127 = load i32, i32* @INTR_MASK, align 4
  %128 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %129 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %128, i32 0, i32 3
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = call i32 @writel(i32 %127, i32* %131)
  store i32 0, i32* %2, align 4
  br label %133

133:                                              ; preds = %54, %16
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local %struct.oxu_hcd* @hcd_to_oxu(%struct.usb_hcd*) #1

declare dso_local i32 @ehci_reset(%struct.oxu_hcd*) #1

declare dso_local i32 @ehci_mem_cleanup(%struct.oxu_hcd*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i64 @HCC_64BIT_ADDR(i32) #1

declare dso_local i32 @dbg_cmd(%struct.oxu_hcd*, i8*, i32) #1

declare dso_local i32 @HC_VERSION(i32) #1

declare dso_local i32 @oxu_info(%struct.oxu_hcd*, i8*, i32, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
