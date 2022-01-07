; ModuleID = '/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorchipset.c_controlvm_channel_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorchipset.c_controlvm_channel_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.visorchipset_device = type { %struct.visorchannel*, %struct.TYPE_2__ }
%struct.visorchannel = type { i32 }
%struct.TYPE_2__ = type { i32 }

@VMCALL_CONTROLVM_ADDR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@visor_controlvm_channel_guid = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.visorchipset_device*)* @controlvm_channel_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @controlvm_channel_create(%struct.visorchipset_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.visorchipset_device*, align 8
  %4 = alloca %struct.visorchannel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.visorchipset_device* %0, %struct.visorchipset_device** %3, align 8
  %7 = load i32, i32* @VMCALL_CONTROLVM_ADDR, align 4
  %8 = load %struct.visorchipset_device*, %struct.visorchipset_device** %3, align 8
  %9 = getelementptr inbounds %struct.visorchipset_device, %struct.visorchipset_device* %8, i32 0, i32 1
  %10 = call i32 @virt_to_phys(%struct.TYPE_2__* %9)
  %11 = call i32 @unisys_vmcall(i32 %7, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %2, align 4
  br label %33

16:                                               ; preds = %1
  %17 = load %struct.visorchipset_device*, %struct.visorchipset_device** %3, align 8
  %18 = getelementptr inbounds %struct.visorchipset_device, %struct.visorchipset_device* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.visorchannel* @visorchannel_create(i32 %21, i32 %22, i32* @visor_controlvm_channel_guid, i32 1)
  store %struct.visorchannel* %23, %struct.visorchannel** %4, align 8
  %24 = load %struct.visorchannel*, %struct.visorchannel** %4, align 8
  %25 = icmp ne %struct.visorchannel* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %16
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %33

29:                                               ; preds = %16
  %30 = load %struct.visorchannel*, %struct.visorchannel** %4, align 8
  %31 = load %struct.visorchipset_device*, %struct.visorchipset_device** %3, align 8
  %32 = getelementptr inbounds %struct.visorchipset_device, %struct.visorchipset_device* %31, i32 0, i32 0
  store %struct.visorchannel* %30, %struct.visorchannel** %32, align 8
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %29, %26, %14
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @unisys_vmcall(i32, i32) #1

declare dso_local i32 @virt_to_phys(%struct.TYPE_2__*) #1

declare dso_local %struct.visorchannel* @visorchannel_create(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
