; ModuleID = '/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorchipset.c_visorbus_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorchipset.c_visorbus_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controlvm_message = type { %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.controlvm_message_header = type { i32 }
%struct.visor_device = type { %struct.controlvm_message_header*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@BUS_ROOT_DEVICE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.controlvm_message*)* @visorbus_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @visorbus_destroy(%struct.controlvm_message* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.controlvm_message*, align 8
  %4 = alloca %struct.controlvm_message_header*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.visor_device*, align 8
  %7 = alloca i32, align 4
  store %struct.controlvm_message* %0, %struct.controlvm_message** %3, align 8
  %8 = load %struct.controlvm_message*, %struct.controlvm_message** %3, align 8
  %9 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @BUS_ROOT_DEVICE, align 4
  %15 = call %struct.visor_device* @visorbus_get_device_by_id(i32 %13, i32 %14, i32* null)
  store %struct.visor_device* %15, %struct.visor_device** %6, align 8
  %16 = load %struct.visor_device*, %struct.visor_device** %6, align 8
  %17 = icmp ne %struct.visor_device* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %7, align 4
  br label %64

21:                                               ; preds = %1
  %22 = load %struct.visor_device*, %struct.visor_device** %6, align 8
  %23 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @ENOENT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %64

30:                                               ; preds = %21
  %31 = load %struct.visor_device*, %struct.visor_device** %6, align 8
  %32 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %31, i32 0, i32 0
  %33 = load %struct.controlvm_message_header*, %struct.controlvm_message_header** %32, align 8
  %34 = icmp ne %struct.controlvm_message_header* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @EEXIST, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  br label %64

38:                                               ; preds = %30
  %39 = load %struct.controlvm_message*, %struct.controlvm_message** %3, align 8
  %40 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %61

45:                                               ; preds = %38
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call %struct.controlvm_message_header* @kzalloc(i32 4, i32 %46)
  store %struct.controlvm_message_header* %47, %struct.controlvm_message_header** %4, align 8
  %48 = load %struct.controlvm_message_header*, %struct.controlvm_message_header** %4, align 8
  %49 = icmp ne %struct.controlvm_message_header* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %7, align 4
  br label %64

53:                                               ; preds = %45
  %54 = load %struct.controlvm_message_header*, %struct.controlvm_message_header** %4, align 8
  %55 = load %struct.controlvm_message*, %struct.controlvm_message** %3, align 8
  %56 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %55, i32 0, i32 0
  %57 = call i32 @memcpy(%struct.controlvm_message_header* %54, %struct.TYPE_11__* %56, i32 4)
  %58 = load %struct.controlvm_message_header*, %struct.controlvm_message_header** %4, align 8
  %59 = load %struct.visor_device*, %struct.visor_device** %6, align 8
  %60 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %59, i32 0, i32 0
  store %struct.controlvm_message_header* %58, %struct.controlvm_message_header** %60, align 8
  br label %61

61:                                               ; preds = %53, %38
  %62 = load %struct.visor_device*, %struct.visor_device** %6, align 8
  %63 = call i32 @visorbus_remove_instance(%struct.visor_device* %62)
  store i32 0, i32* %2, align 4
  br label %82

64:                                               ; preds = %50, %35, %27, %18
  %65 = load %struct.controlvm_message*, %struct.controlvm_message** %3, align 8
  %66 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %80

71:                                               ; preds = %64
  %72 = load %struct.controlvm_message*, %struct.controlvm_message** %3, align 8
  %73 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.controlvm_message*, %struct.controlvm_message** %3, align 8
  %77 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %76, i32 0, i32 0
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @controlvm_responder(i32 %75, %struct.TYPE_11__* %77, i32 %78)
  br label %80

80:                                               ; preds = %71, %64
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %80, %61
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.visor_device* @visorbus_get_device_by_id(i32, i32, i32*) #1

declare dso_local %struct.controlvm_message_header* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.controlvm_message_header*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @visorbus_remove_instance(%struct.visor_device*) #1

declare dso_local i32 @controlvm_responder(i32, %struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
