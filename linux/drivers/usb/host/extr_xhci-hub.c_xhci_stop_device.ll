; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-hub.c_xhci_stop_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-hub.c_xhci_stop_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32, %struct.xhci_virt_device** }
%struct.xhci_virt_device = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.xhci_command = type { i64, i32 }
%struct.xhci_ep_ctx = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LAST_EP_INDEX = common dso_local global i32 0, align 4
@EP_STATE_RUNNING = common dso_local global i64 0, align 8
@GFP_NOWAIT = common dso_local global i32 0, align 4
@COMP_COMMAND_ABORTED = common dso_local global i64 0, align 8
@COMP_COMMAND_RING_STOPPED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"Timeout while waiting for stop endpoint command\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_hcd*, i32, i32)* @xhci_stop_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_stop_device(%struct.xhci_hcd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xhci_hcd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.xhci_virt_device*, align 8
  %9 = alloca %struct.xhci_command*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.xhci_ep_ctx*, align 8
  %14 = alloca %struct.xhci_command*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %16 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %15, i32 0, i32 1
  %17 = load %struct.xhci_virt_device**, %struct.xhci_virt_device*** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.xhci_virt_device*, %struct.xhci_virt_device** %17, i64 %19
  %21 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %20, align 8
  store %struct.xhci_virt_device* %21, %struct.xhci_virt_device** %8, align 8
  %22 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %8, align 8
  %23 = icmp ne %struct.xhci_virt_device* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %162

27:                                               ; preds = %3
  %28 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %8, align 8
  %29 = call i32 @trace_xhci_stop_device(%struct.xhci_virt_device* %28)
  %30 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %31 = load i32, i32* @GFP_NOIO, align 4
  %32 = call %struct.xhci_command* @xhci_alloc_command(%struct.xhci_hcd* %30, i32 1, i32 %31)
  store %struct.xhci_command* %32, %struct.xhci_command** %9, align 8
  %33 = load %struct.xhci_command*, %struct.xhci_command** %9, align 8
  %34 = icmp ne %struct.xhci_command* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %27
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %162

38:                                               ; preds = %27
  %39 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %40 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %39, i32 0, i32 0
  %41 = load i64, i64* %10, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = load i32, i32* @LAST_EP_INDEX, align 4
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %113, %38
  %45 = load i32, i32* %12, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %116

47:                                               ; preds = %44
  %48 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %8, align 8
  %49 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = icmp ne %struct.TYPE_3__* %55, null
  br i1 %56, label %57, label %112

57:                                               ; preds = %47
  %58 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %8, align 8
  %59 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %112

69:                                               ; preds = %57
  %70 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %71 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %8, align 8
  %72 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = call %struct.xhci_ep_ctx* @xhci_get_ep_ctx(%struct.xhci_hcd* %70, i32 %73, i32 %74)
  store %struct.xhci_ep_ctx* %75, %struct.xhci_ep_ctx** %13, align 8
  %76 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %13, align 8
  %77 = call i64 @GET_EP_CTX_STATE(%struct.xhci_ep_ctx* %76)
  %78 = load i64, i64* @EP_STATE_RUNNING, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %69
  br label %113

81:                                               ; preds = %69
  %82 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %83 = load i32, i32* @GFP_NOWAIT, align 4
  %84 = call %struct.xhci_command* @xhci_alloc_command(%struct.xhci_hcd* %82, i32 0, i32 %83)
  store %struct.xhci_command* %84, %struct.xhci_command** %14, align 8
  %85 = load %struct.xhci_command*, %struct.xhci_command** %14, align 8
  %86 = icmp ne %struct.xhci_command* %85, null
  br i1 %86, label %94, label %87

87:                                               ; preds = %81
  %88 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %89 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %88, i32 0, i32 0
  %90 = load i64, i64* %10, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32* %89, i64 %90)
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %11, align 4
  br label %157

94:                                               ; preds = %81
  %95 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %96 = load %struct.xhci_command*, %struct.xhci_command** %14, align 8
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @xhci_queue_stop_endpoint(%struct.xhci_hcd* %95, %struct.xhci_command* %96, i32 %97, i32 %98, i32 %99)
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %94
  %104 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %105 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %104, i32 0, i32 0
  %106 = load i64, i64* %10, align 8
  %107 = call i32 @spin_unlock_irqrestore(i32* %105, i64 %106)
  %108 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %109 = load %struct.xhci_command*, %struct.xhci_command** %14, align 8
  %110 = call i32 @xhci_free_command(%struct.xhci_hcd* %108, %struct.xhci_command* %109)
  br label %157

111:                                              ; preds = %94
  br label %112

112:                                              ; preds = %111, %57, %47
  br label %113

113:                                              ; preds = %112, %80
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %12, align 4
  br label %44

116:                                              ; preds = %44
  %117 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %118 = load %struct.xhci_command*, %struct.xhci_command** %9, align 8
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @xhci_queue_stop_endpoint(%struct.xhci_hcd* %117, %struct.xhci_command* %118, i32 %119, i32 0, i32 %120)
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %11, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %116
  %125 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %126 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %125, i32 0, i32 0
  %127 = load i64, i64* %10, align 8
  %128 = call i32 @spin_unlock_irqrestore(i32* %126, i64 %127)
  br label %157

129:                                              ; preds = %116
  %130 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %131 = call i32 @xhci_ring_cmd_db(%struct.xhci_hcd* %130)
  %132 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %133 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %132, i32 0, i32 0
  %134 = load i64, i64* %10, align 8
  %135 = call i32 @spin_unlock_irqrestore(i32* %133, i64 %134)
  %136 = load %struct.xhci_command*, %struct.xhci_command** %9, align 8
  %137 = getelementptr inbounds %struct.xhci_command, %struct.xhci_command* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @wait_for_completion(i32 %138)
  %140 = load %struct.xhci_command*, %struct.xhci_command** %9, align 8
  %141 = getelementptr inbounds %struct.xhci_command, %struct.xhci_command* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @COMP_COMMAND_ABORTED, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %151, label %145

145:                                              ; preds = %129
  %146 = load %struct.xhci_command*, %struct.xhci_command** %9, align 8
  %147 = getelementptr inbounds %struct.xhci_command, %struct.xhci_command* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @COMP_COMMAND_RING_STOPPED, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %156

151:                                              ; preds = %145, %129
  %152 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %153 = call i32 @xhci_warn(%struct.xhci_hcd* %152, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %154 = load i32, i32* @ETIME, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %11, align 4
  br label %156

156:                                              ; preds = %151, %145
  br label %157

157:                                              ; preds = %156, %124, %103, %87
  %158 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %159 = load %struct.xhci_command*, %struct.xhci_command** %9, align 8
  %160 = call i32 @xhci_free_command(%struct.xhci_hcd* %158, %struct.xhci_command* %159)
  %161 = load i32, i32* %11, align 4
  store i32 %161, i32* %4, align 4
  br label %162

162:                                              ; preds = %157, %35, %24
  %163 = load i32, i32* %4, align 4
  ret i32 %163
}

declare dso_local i32 @trace_xhci_stop_device(%struct.xhci_virt_device*) #1

declare dso_local %struct.xhci_command* @xhci_alloc_command(%struct.xhci_hcd*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.xhci_ep_ctx* @xhci_get_ep_ctx(%struct.xhci_hcd*, i32, i32) #1

declare dso_local i64 @GET_EP_CTX_STATE(%struct.xhci_ep_ctx*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @xhci_queue_stop_endpoint(%struct.xhci_hcd*, %struct.xhci_command*, i32, i32, i32) #1

declare dso_local i32 @xhci_free_command(%struct.xhci_hcd*, %struct.xhci_command*) #1

declare dso_local i32 @xhci_ring_cmd_db(%struct.xhci_hcd*) #1

declare dso_local i32 @wait_for_completion(i32) #1

declare dso_local i32 @xhci_warn(%struct.xhci_hcd*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
