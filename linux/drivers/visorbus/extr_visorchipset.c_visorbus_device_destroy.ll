; ModuleID = '/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorchipset.c_visorbus_device_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorchipset.c_visorbus_device_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controlvm_message = type { %struct.TYPE_9__, %struct.controlvm_message_packet }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.controlvm_message_packet = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.controlvm_message_header = type { i32 }
%struct.visor_device = type { i32, %struct.controlvm_message_header*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.controlvm_message*)* @visorbus_device_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @visorbus_device_destroy(%struct.controlvm_message* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.controlvm_message*, align 8
  %4 = alloca %struct.controlvm_message_packet*, align 8
  %5 = alloca %struct.controlvm_message_header*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.visor_device*, align 8
  %9 = alloca i32, align 4
  store %struct.controlvm_message* %0, %struct.controlvm_message** %3, align 8
  %10 = load %struct.controlvm_message*, %struct.controlvm_message** %3, align 8
  %11 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %10, i32 0, i32 1
  store %struct.controlvm_message_packet* %11, %struct.controlvm_message_packet** %4, align 8
  %12 = load %struct.controlvm_message_packet*, %struct.controlvm_message_packet** %4, align 8
  %13 = getelementptr inbounds %struct.controlvm_message_packet, %struct.controlvm_message_packet* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.controlvm_message_packet*, %struct.controlvm_message_packet** %4, align 8
  %17 = getelementptr inbounds %struct.controlvm_message_packet, %struct.controlvm_message_packet* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.visor_device* @visorbus_get_device_by_id(i32 %20, i32 %21, i32* null)
  store %struct.visor_device* %22, %struct.visor_device** %8, align 8
  %23 = load %struct.visor_device*, %struct.visor_device** %8, align 8
  %24 = icmp ne %struct.visor_device* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %9, align 4
  br label %75

28:                                               ; preds = %1
  %29 = load %struct.visor_device*, %struct.visor_device** %8, align 8
  %30 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %9, align 4
  br label %75

37:                                               ; preds = %28
  %38 = load %struct.visor_device*, %struct.visor_device** %8, align 8
  %39 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %38, i32 0, i32 1
  %40 = load %struct.controlvm_message_header*, %struct.controlvm_message_header** %39, align 8
  %41 = icmp ne %struct.controlvm_message_header* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %9, align 4
  br label %75

45:                                               ; preds = %37
  %46 = load %struct.controlvm_message*, %struct.controlvm_message** %3, align 8
  %47 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %68

52:                                               ; preds = %45
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call %struct.controlvm_message_header* @kzalloc(i32 4, i32 %53)
  store %struct.controlvm_message_header* %54, %struct.controlvm_message_header** %5, align 8
  %55 = load %struct.controlvm_message_header*, %struct.controlvm_message_header** %5, align 8
  %56 = icmp ne %struct.controlvm_message_header* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %9, align 4
  br label %75

60:                                               ; preds = %52
  %61 = load %struct.controlvm_message_header*, %struct.controlvm_message_header** %5, align 8
  %62 = load %struct.controlvm_message*, %struct.controlvm_message** %3, align 8
  %63 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %62, i32 0, i32 0
  %64 = call i32 @memcpy(%struct.controlvm_message_header* %61, %struct.TYPE_9__* %63, i32 4)
  %65 = load %struct.controlvm_message_header*, %struct.controlvm_message_header** %5, align 8
  %66 = load %struct.visor_device*, %struct.visor_device** %8, align 8
  %67 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %66, i32 0, i32 1
  store %struct.controlvm_message_header* %65, %struct.controlvm_message_header** %67, align 8
  br label %68

68:                                               ; preds = %60, %45
  %69 = load %struct.visor_device*, %struct.visor_device** %8, align 8
  %70 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @kfree(i32 %71)
  %73 = load %struct.visor_device*, %struct.visor_device** %8, align 8
  %74 = call i32 @remove_visor_device(%struct.visor_device* %73)
  store i32 0, i32* %2, align 4
  br label %93

75:                                               ; preds = %57, %42, %34, %25
  %76 = load %struct.controlvm_message*, %struct.controlvm_message** %3, align 8
  %77 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %91

82:                                               ; preds = %75
  %83 = load %struct.controlvm_message*, %struct.controlvm_message** %3, align 8
  %84 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.controlvm_message*, %struct.controlvm_message** %3, align 8
  %88 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %87, i32 0, i32 0
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @controlvm_responder(i32 %86, %struct.TYPE_9__* %88, i32 %89)
  br label %91

91:                                               ; preds = %82, %75
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %91, %68
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local %struct.visor_device* @visorbus_get_device_by_id(i32, i32, i32*) #1

declare dso_local %struct.controlvm_message_header* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.controlvm_message_header*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @remove_visor_device(%struct.visor_device*) #1

declare dso_local i32 @controlvm_responder(i32, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
