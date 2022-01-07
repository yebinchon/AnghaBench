; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci.c_xhci_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci.c_xhci_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32, %struct.TYPE_13__, %struct.TYPE_11__, %struct.TYPE_9__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i64, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64, i64 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Host not accessible, reset failed.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@STS_HALT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Host controller not halted, aborting reset.\0A\00", align 1
@trace_xhci_dbg_init = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"// Reset the HC\00", align 1
@CMD_RESET = common dso_local global i32 0, align 4
@XHCI_INTEL_HOST = common dso_local global i32 0, align 4
@XHCI_ASMEDIA_MODIFY_FLOWCONTROL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"Wait for controller to be ready for doorbell rings\00", align 1
@STS_CNR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xhci_reset(%struct.xhci_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xhci_hcd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %3, align 8
  %7 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %8 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %7, i32 0, i32 3
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = call i32 @readl(i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %16 = call i32 @xhci_warn(%struct.xhci_hcd* %15, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %114

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @STS_HALT, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %26 = call i32 @xhci_warn(%struct.xhci_hcd* %25, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %114

27:                                               ; preds = %19
  %28 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %29 = load i32, i32* @trace_xhci_dbg_init, align 4
  %30 = call i32 @xhci_dbg_trace(%struct.xhci_hcd* %28, i32 %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %31 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %32 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %31, i32 0, i32 3
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = call i32 @readl(i32* %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* @CMD_RESET, align 4
  %37 = load i32, i32* %4, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %41 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %40, i32 0, i32 3
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = call i32 @writel(i32 %39, i32* %43)
  %45 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %46 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @XHCI_INTEL_HOST, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %27
  %52 = call i32 @udelay(i32 1000)
  br label %53

53:                                               ; preds = %51, %27
  %54 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %55 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %54, i32 0, i32 3
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load i32, i32* @CMD_RESET, align 4
  %59 = call i32 @xhci_handshake(i32* %57, i32 %58, i32 0, i32 10000000)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %2, align 4
  br label %114

64:                                               ; preds = %53
  %65 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %66 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @XHCI_ASMEDIA_MODIFY_FLOWCONTROL, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %64
  %72 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %73 = call %struct.TYPE_14__* @xhci_to_hcd(%struct.xhci_hcd* %72)
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @to_pci_dev(i32 %76)
  %78 = call i32 @usb_asmedia_modifyflowcontrol(i32 %77)
  br label %79

79:                                               ; preds = %71, %64
  %80 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %81 = load i32, i32* @trace_xhci_dbg_init, align 4
  %82 = call i32 @xhci_dbg_trace(%struct.xhci_hcd* %80, i32 %81, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  %83 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %84 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %83, i32 0, i32 3
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32, i32* @STS_CNR, align 4
  %88 = call i32 @xhci_handshake(i32* %86, i32 %87, i32 0, i32 10000000)
  store i32 %88, i32* %6, align 4
  %89 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %90 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 2
  store i64 0, i64* %92, align 8
  %93 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %94 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  store i64 0, i64* %96, align 8
  %97 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %98 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  store i64 0, i64* %100, align 8
  %101 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %102 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 2
  store i64 0, i64* %104, align 8
  %105 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %106 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 1
  store i64 0, i64* %108, align 8
  %109 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %110 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  store i64 0, i64* %112, align 8
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %79, %62, %24, %14
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @xhci_warn(%struct.xhci_hcd*, i8*) #1

declare dso_local i32 @xhci_dbg_trace(%struct.xhci_hcd*, i32, i8*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @xhci_handshake(i32*, i32, i32, i32) #1

declare dso_local i32 @usb_asmedia_modifyflowcontrol(i32) #1

declare dso_local i32 @to_pci_dev(i32) #1

declare dso_local %struct.TYPE_14__* @xhci_to_hcd(%struct.xhci_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
