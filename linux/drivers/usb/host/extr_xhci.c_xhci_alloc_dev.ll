; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci.c_xhci_alloc_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci.c_xhci_alloc_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.usb_device = type { i32 }
%struct.xhci_hcd = type { i32, %struct.xhci_virt_device**, i32, i32, %struct.TYPE_3__* }
%struct.xhci_virt_device = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.xhci_slot_ctx = type { i32 }
%struct.xhci_command = type { i32, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@TRB_ENABLE_SLOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"FIXME: allocate a command ring segment\0A\00", align 1
@COMP_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Error while assigning device slot ID\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Max number of devices this xHCI host supports is %u.\0A\00", align 1
@XHCI_EP_LIMIT_QUIRK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [58 x i8] c"Not enough host resources, active endpoint contexts = %u\0A\00", align 1
@GFP_NOIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"Could not allocate xHCI USB device data structures\0A\00", align 1
@XHCI_RESET_ON_RESUME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xhci_alloc_dev(%struct.usb_hcd* %0, %struct.usb_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.xhci_hcd*, align 8
  %7 = alloca %struct.xhci_virt_device*, align 8
  %8 = alloca %struct.xhci_slot_ctx*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.xhci_command*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %4, align 8
  store %struct.usb_device* %1, %struct.usb_device** %5, align 8
  %13 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %14 = call %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd* %13)
  store %struct.xhci_hcd* %14, %struct.xhci_hcd** %6, align 8
  %15 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.xhci_command* @xhci_alloc_command(%struct.xhci_hcd* %15, i32 1, i32 %16)
  store %struct.xhci_command* %17, %struct.xhci_command** %12, align 8
  %18 = load %struct.xhci_command*, %struct.xhci_command** %12, align 8
  %19 = icmp ne %struct.xhci_command* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %171

21:                                               ; preds = %2
  %22 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %23 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %22, i32 0, i32 2
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %27 = load %struct.xhci_command*, %struct.xhci_command** %12, align 8
  %28 = load i32, i32* @TRB_ENABLE_SLOT, align 4
  %29 = call i32 @xhci_queue_slot_control(%struct.xhci_hcd* %26, %struct.xhci_command* %27, i32 %28, i32 0)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %21
  %33 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %34 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %33, i32 0, i32 2
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %38 = call i32 @xhci_dbg(%struct.xhci_hcd* %37, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %40 = load %struct.xhci_command*, %struct.xhci_command** %12, align 8
  %41 = call i32 @xhci_free_command(%struct.xhci_hcd* %39, %struct.xhci_command* %40)
  store i32 0, i32* %3, align 4
  br label %171

42:                                               ; preds = %21
  %43 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %44 = call i32 @xhci_ring_cmd_db(%struct.xhci_hcd* %43)
  %45 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %46 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %45, i32 0, i32 2
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  %49 = load %struct.xhci_command*, %struct.xhci_command** %12, align 8
  %50 = getelementptr inbounds %struct.xhci_command, %struct.xhci_command* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @wait_for_completion(i32 %51)
  %53 = load %struct.xhci_command*, %struct.xhci_command** %12, align 8
  %54 = getelementptr inbounds %struct.xhci_command, %struct.xhci_command* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %42
  %59 = load %struct.xhci_command*, %struct.xhci_command** %12, align 8
  %60 = getelementptr inbounds %struct.xhci_command, %struct.xhci_command* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @COMP_SUCCESS, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %58, %42
  %65 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %66 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_err(%struct.xhci_hcd* %65, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %67 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %68 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %69 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %68, i32 0, i32 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = call i32 @readl(i32* %71)
  %73 = call i32 @HCS_MAX_SLOTS(i32 %72)
  %74 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_err(%struct.xhci_hcd* %67, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  %75 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %76 = load %struct.xhci_command*, %struct.xhci_command** %12, align 8
  %77 = call i32 @xhci_free_command(%struct.xhci_hcd* %75, %struct.xhci_command* %76)
  store i32 0, i32* %3, align 4
  br label %171

78:                                               ; preds = %58
  %79 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %80 = load %struct.xhci_command*, %struct.xhci_command** %12, align 8
  %81 = call i32 @xhci_free_command(%struct.xhci_hcd* %79, %struct.xhci_command* %80)
  %82 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %83 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @XHCI_EP_LIMIT_QUIRK, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %112

88:                                               ; preds = %78
  %89 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %90 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %89, i32 0, i32 2
  %91 = load i64, i64* %9, align 8
  %92 = call i32 @spin_lock_irqsave(i32* %90, i64 %91)
  %93 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %94 = call i32 @xhci_reserve_host_control_ep_resources(%struct.xhci_hcd* %93)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %88
  %98 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %99 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %98, i32 0, i32 2
  %100 = load i64, i64* %9, align 8
  %101 = call i32 @spin_unlock_irqrestore(i32* %99, i64 %100)
  %102 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %103 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %104 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_warn(%struct.xhci_hcd* %102, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %105)
  br label %156

107:                                              ; preds = %88
  %108 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %109 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %108, i32 0, i32 2
  %110 = load i64, i64* %9, align 8
  %111 = call i32 @spin_unlock_irqrestore(i32* %109, i64 %110)
  br label %112

112:                                              ; preds = %107, %78
  %113 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %114 = load i32, i32* %11, align 4
  %115 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %116 = load i32, i32* @GFP_NOIO, align 4
  %117 = call i32 @xhci_alloc_virt_device(%struct.xhci_hcd* %113, i32 %114, %struct.usb_device* %115, i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %112
  %120 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %121 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_warn(%struct.xhci_hcd* %120, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  br label %156

122:                                              ; preds = %112
  %123 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %124 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %123, i32 0, i32 1
  %125 = load %struct.xhci_virt_device**, %struct.xhci_virt_device*** %124, align 8
  %126 = load i32, i32* %11, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.xhci_virt_device*, %struct.xhci_virt_device** %125, i64 %127
  %129 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %128, align 8
  store %struct.xhci_virt_device* %129, %struct.xhci_virt_device** %7, align 8
  %130 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %131 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %7, align 8
  %132 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call %struct.xhci_slot_ctx* @xhci_get_slot_ctx(%struct.xhci_hcd* %130, i32 %133)
  store %struct.xhci_slot_ctx* %134, %struct.xhci_slot_ctx** %8, align 8
  %135 = load %struct.xhci_slot_ctx*, %struct.xhci_slot_ctx** %8, align 8
  %136 = call i32 @trace_xhci_alloc_dev(%struct.xhci_slot_ctx* %135)
  %137 = load i32, i32* %11, align 4
  %138 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %139 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 4
  %140 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %141 = load i32, i32* %11, align 4
  %142 = call i32 @xhci_debugfs_create_slot(%struct.xhci_hcd* %140, i32 %141)
  %143 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %144 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @XHCI_RESET_ON_RESUME, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %122
  %150 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %151 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @pm_runtime_get_noresume(i32 %153)
  br label %155

155:                                              ; preds = %149, %122
  store i32 1, i32* %3, align 4
  br label %171

156:                                              ; preds = %119, %97
  %157 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %158 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %159 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @xhci_disable_slot(%struct.xhci_hcd* %157, i32 %160)
  store i32 %161, i32* %10, align 4
  %162 = load i32, i32* %10, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %156
  %165 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %166 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %167 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @xhci_free_virt_device(%struct.xhci_hcd* %165, i32 %168)
  br label %170

170:                                              ; preds = %164, %156
  store i32 0, i32* %3, align 4
  br label %171

171:                                              ; preds = %170, %155, %64, %32, %20
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd*) #1

declare dso_local %struct.xhci_command* @xhci_alloc_command(%struct.xhci_hcd*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @xhci_queue_slot_control(%struct.xhci_hcd*, %struct.xhci_command*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*) #1

declare dso_local i32 @xhci_free_command(%struct.xhci_hcd*, %struct.xhci_command*) #1

declare dso_local i32 @xhci_ring_cmd_db(%struct.xhci_hcd*) #1

declare dso_local i32 @wait_for_completion(i32) #1

declare dso_local i32 @xhci_err(%struct.xhci_hcd*, i8*, ...) #1

declare dso_local i32 @HCS_MAX_SLOTS(i32) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @xhci_reserve_host_control_ep_resources(%struct.xhci_hcd*) #1

declare dso_local i32 @xhci_warn(%struct.xhci_hcd*, i8*, ...) #1

declare dso_local i32 @xhci_alloc_virt_device(%struct.xhci_hcd*, i32, %struct.usb_device*, i32) #1

declare dso_local %struct.xhci_slot_ctx* @xhci_get_slot_ctx(%struct.xhci_hcd*, i32) #1

declare dso_local i32 @trace_xhci_alloc_dev(%struct.xhci_slot_ctx*) #1

declare dso_local i32 @xhci_debugfs_create_slot(%struct.xhci_hcd*, i32) #1

declare dso_local i32 @pm_runtime_get_noresume(i32) #1

declare dso_local i32 @xhci_disable_slot(%struct.xhci_hcd*, i32) #1

declare dso_local i32 @xhci_free_virt_device(%struct.xhci_hcd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
