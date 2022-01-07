; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci.c_xhci_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci.c_xhci_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.xhci_hcd = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.xhci_command = type { i32 }

@trace_xhci_dbg_init = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"xhci_run\00", align 1
@ERST_PTR_MASK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"ERST deq = 64'h%0lx\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"// Set the interrupt modulation register\00", align 1
@ER_IRQ_INTERVAL_MASK = common dso_local global i32 0, align 4
@CMD_EIE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"// Enable interrupts, cmd = 0x%x.\00", align 1
@.str.4 = private unnamed_addr constant [69 x i8] c"// Enabling event ring interrupter %p by writing 0x%x to irq_pending\00", align 1
@XHCI_NEC_HOST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TRB_NEC_GET_FW = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"Finished xhci_run for USB2 roothub\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xhci_run(%struct.usb_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xhci_hcd*, align 8
  %8 = alloca %struct.xhci_command*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  %9 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %10 = call %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd* %9)
  store %struct.xhci_hcd* %10, %struct.xhci_hcd** %7, align 8
  %11 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %12 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %14 = call i32 @usb_hcd_is_primary_hcd(%struct.usb_hcd* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %18 = call i32 @xhci_run_finished(%struct.xhci_hcd* %17)
  store i32 %18, i32* %2, align 4
  br label %144

19:                                               ; preds = %1
  %20 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %21 = load i32, i32* @trace_xhci_dbg_init, align 4
  %22 = call i32 (%struct.xhci_hcd*, i32, i8*, ...) @xhci_dbg_trace(%struct.xhci_hcd* %20, i32 %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %24 = call i32 @xhci_try_enable_msi(%struct.usb_hcd* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %144

29:                                               ; preds = %19
  %30 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %31 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %32 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = call i64 @xhci_read_64(%struct.xhci_hcd* %30, i32* %34)
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* @ERST_PTR_MASK, align 8
  %37 = xor i64 %36, -1
  %38 = load i64, i64* %5, align 8
  %39 = and i64 %38, %37
  store i64 %39, i64* %5, align 8
  %40 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %41 = load i32, i32* @trace_xhci_dbg_init, align 4
  %42 = load i64, i64* %5, align 8
  %43 = call i32 (%struct.xhci_hcd*, i32, i8*, ...) @xhci_dbg_trace(%struct.xhci_hcd* %40, i32 %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %42)
  %44 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %45 = load i32, i32* @trace_xhci_dbg_init, align 4
  %46 = call i32 (%struct.xhci_hcd*, i32, i8*, ...) @xhci_dbg_trace(%struct.xhci_hcd* %44, i32 %45, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %47 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %48 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %47, i32 0, i32 2
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = call i32 @readl(i32* %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* @ER_IRQ_INTERVAL_MASK, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %4, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %4, align 4
  %56 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %57 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sdiv i32 %58, 250
  %60 = load i32, i32* @ER_IRQ_INTERVAL_MASK, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* %4, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %66 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %65, i32 0, i32 2
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = call i32 @writel(i32 %64, i32* %68)
  %70 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %71 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %70, i32 0, i32 3
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = call i32 @readl(i32* %73)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* @CMD_EIE, align 4
  %76 = load i32, i32* %4, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %4, align 4
  %78 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %79 = load i32, i32* @trace_xhci_dbg_init, align 4
  %80 = load i32, i32* %4, align 4
  %81 = call i32 (%struct.xhci_hcd*, i32, i8*, ...) @xhci_dbg_trace(%struct.xhci_hcd* %78, i32 %79, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %4, align 4
  %83 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %84 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %83, i32 0, i32 3
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = call i32 @writel(i32 %82, i32* %86)
  %88 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %89 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %88, i32 0, i32 2
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = call i32 @readl(i32* %91)
  store i32 %92, i32* %4, align 4
  %93 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %94 = load i32, i32* @trace_xhci_dbg_init, align 4
  %95 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %96 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %95, i32 0, i32 2
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @ER_IRQ_ENABLE(i32 %98)
  %100 = call i32 (%struct.xhci_hcd*, i32, i8*, ...) @xhci_dbg_trace(%struct.xhci_hcd* %93, i32 %94, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_4__* %97, i32 %99)
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @ER_IRQ_ENABLE(i32 %101)
  %103 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %104 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %103, i32 0, i32 2
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = call i32 @writel(i32 %102, i32* %106)
  %108 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %109 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @XHCI_NEC_HOST, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %136

114:                                              ; preds = %29
  %115 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %116 = load i32, i32* @GFP_KERNEL, align 4
  %117 = call %struct.xhci_command* @xhci_alloc_command(%struct.xhci_hcd* %115, i32 0, i32 %116)
  store %struct.xhci_command* %117, %struct.xhci_command** %8, align 8
  %118 = load %struct.xhci_command*, %struct.xhci_command** %8, align 8
  %119 = icmp ne %struct.xhci_command* %118, null
  br i1 %119, label %123, label %120

120:                                              ; preds = %114
  %121 = load i32, i32* @ENOMEM, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %2, align 4
  br label %144

123:                                              ; preds = %114
  %124 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %125 = load %struct.xhci_command*, %struct.xhci_command** %8, align 8
  %126 = load i32, i32* @TRB_NEC_GET_FW, align 4
  %127 = call i32 @TRB_TYPE(i32 %126)
  %128 = call i32 @xhci_queue_vendor_command(%struct.xhci_hcd* %124, %struct.xhci_command* %125, i32 0, i32 0, i32 0, i32 %127)
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %6, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %123
  %132 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %133 = load %struct.xhci_command*, %struct.xhci_command** %8, align 8
  %134 = call i32 @xhci_free_command(%struct.xhci_hcd* %132, %struct.xhci_command* %133)
  br label %135

135:                                              ; preds = %131, %123
  br label %136

136:                                              ; preds = %135, %29
  %137 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %138 = load i32, i32* @trace_xhci_dbg_init, align 4
  %139 = call i32 (%struct.xhci_hcd*, i32, i8*, ...) @xhci_dbg_trace(%struct.xhci_hcd* %137, i32 %138, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %140 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %141 = call i32 @xhci_dbc_init(%struct.xhci_hcd* %140)
  %142 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %143 = call i32 @xhci_debugfs_init(%struct.xhci_hcd* %142)
  store i32 0, i32* %2, align 4
  br label %144

144:                                              ; preds = %136, %120, %27, %16
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd*) #1

declare dso_local i32 @usb_hcd_is_primary_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @xhci_run_finished(%struct.xhci_hcd*) #1

declare dso_local i32 @xhci_dbg_trace(%struct.xhci_hcd*, i32, i8*, ...) #1

declare dso_local i32 @xhci_try_enable_msi(%struct.usb_hcd*) #1

declare dso_local i64 @xhci_read_64(%struct.xhci_hcd*, i32*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @ER_IRQ_ENABLE(i32) #1

declare dso_local %struct.xhci_command* @xhci_alloc_command(%struct.xhci_hcd*, i32, i32) #1

declare dso_local i32 @xhci_queue_vendor_command(%struct.xhci_hcd*, %struct.xhci_command*, i32, i32, i32, i32) #1

declare dso_local i32 @TRB_TYPE(i32) #1

declare dso_local i32 @xhci_free_command(%struct.xhci_hcd*, %struct.xhci_command*) #1

declare dso_local i32 @xhci_dbc_init(%struct.xhci_hcd*) #1

declare dso_local i32 @xhci_debugfs_init(%struct.xhci_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
