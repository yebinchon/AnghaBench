; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-debugfs.c_xhci_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-debugfs.c_xhci_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i8*, i8*, i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.device = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device* }

@xhci_debugfs_root = common dso_local global i8* null, align 8
@xhci_cap_regs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"reg-cap\00", align 1
@xhci_op_regs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"reg-op\00", align 1
@RTSOFF_MASK = common dso_local global i32 0, align 4
@xhci_runtime_regs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"reg-runtime\00", align 1
@XHCI_EXT_CAPS_LEGACY = common dso_local global i32 0, align 4
@xhci_extcap_legsup = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"reg-ext-legsup\00", align 1
@XHCI_EXT_CAPS_PROTOCOL = common dso_local global i32 0, align 4
@xhci_extcap_protocol = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"reg-ext-protocol\00", align 1
@XHCI_EXT_CAPS_DEBUG = common dso_local global i32 0, align 4
@xhci_extcap_dbc = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"reg-ext-dbc\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"command-ring\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"event-ring\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"devices\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xhci_debugfs_init(%struct.xhci_hcd* %0) #0 {
  %2 = alloca %struct.xhci_hcd*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %2, align 8
  %4 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %5 = call %struct.TYPE_6__* @xhci_to_hcd(%struct.xhci_hcd* %4)
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %3, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call i8* @dev_name(%struct.device* %9)
  %11 = load i8*, i8** @xhci_debugfs_root, align 8
  %12 = call i8* @debugfs_create_dir(i8* %10, i8* %11)
  %13 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %14 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %13, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  %15 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %16 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %15, i32 0, i32 5
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %19 = load i32, i32* @xhci_cap_regs, align 4
  %20 = load i32, i32* @xhci_cap_regs, align 4
  %21 = call i32 @ARRAY_SIZE(i32 %20)
  %22 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %23 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @xhci_debugfs_regset(%struct.xhci_hcd* %18, i32 0, i32 %19, i32 %21, i8* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %27 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %28 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %27, i32 0, i32 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = call i32 @readl(i32* %30)
  %32 = call i32 @HC_LENGTH(i32 %31)
  %33 = load i32, i32* @xhci_op_regs, align 4
  %34 = load i32, i32* @xhci_op_regs, align 4
  %35 = call i32 @ARRAY_SIZE(i32 %34)
  %36 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %37 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @xhci_debugfs_regset(%struct.xhci_hcd* %26, i32 %32, i32 %33, i32 %35, i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %41 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %42 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %41, i32 0, i32 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = call i32 @readl(i32* %44)
  %46 = load i32, i32* @RTSOFF_MASK, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @xhci_runtime_regs, align 4
  %49 = load i32, i32* @xhci_runtime_regs, align 4
  %50 = call i32 @ARRAY_SIZE(i32 %49)
  %51 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %52 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @xhci_debugfs_regset(%struct.xhci_hcd* %40, i32 %47, i32 %48, i32 %50, i8* %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %55 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %56 = load i32, i32* @XHCI_EXT_CAPS_LEGACY, align 4
  %57 = load i32, i32* @xhci_extcap_legsup, align 4
  %58 = load i32, i32* @xhci_extcap_legsup, align 4
  %59 = call i32 @ARRAY_SIZE(i32 %58)
  %60 = call i32 @xhci_debugfs_extcap_regset(%struct.xhci_hcd* %55, i32 %56, i32 %57, i32 %59, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %61 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %62 = load i32, i32* @XHCI_EXT_CAPS_PROTOCOL, align 4
  %63 = load i32, i32* @xhci_extcap_protocol, align 4
  %64 = load i32, i32* @xhci_extcap_protocol, align 4
  %65 = call i32 @ARRAY_SIZE(i32 %64)
  %66 = call i32 @xhci_debugfs_extcap_regset(%struct.xhci_hcd* %61, i32 %62, i32 %63, i32 %65, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %67 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %68 = load i32, i32* @XHCI_EXT_CAPS_DEBUG, align 4
  %69 = load i32, i32* @xhci_extcap_dbc, align 4
  %70 = load i32, i32* @xhci_extcap_dbc, align 4
  %71 = call i32 @ARRAY_SIZE(i32 %70)
  %72 = call i32 @xhci_debugfs_extcap_regset(%struct.xhci_hcd* %67, i32 %68, i32 %69, i32 %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %73 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %74 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %75 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %74, i32 0, i32 3
  %76 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %77 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @xhci_debugfs_create_ring_dir(%struct.xhci_hcd* %73, i32* %75, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* %78)
  %80 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %81 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %82 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %81, i32 0, i32 2
  %83 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %84 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @xhci_debugfs_create_ring_dir(%struct.xhci_hcd* %80, i32* %82, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* %85)
  %87 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %88 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i8* @debugfs_create_dir(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* %89)
  %91 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %92 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  %93 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %94 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %95 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @xhci_debugfs_create_ports(%struct.xhci_hcd* %93, i8* %96)
  ret void
}

declare dso_local %struct.TYPE_6__* @xhci_to_hcd(%struct.xhci_hcd*) #1

declare dso_local i8* @debugfs_create_dir(i8*, i8*) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @xhci_debugfs_regset(%struct.xhci_hcd*, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @HC_LENGTH(i32) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @xhci_debugfs_extcap_regset(%struct.xhci_hcd*, i32, i32, i32, i8*) #1

declare dso_local i32 @xhci_debugfs_create_ring_dir(%struct.xhci_hcd*, i32*, i8*, i8*) #1

declare dso_local i32 @xhci_debugfs_create_ports(%struct.xhci_hcd*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
