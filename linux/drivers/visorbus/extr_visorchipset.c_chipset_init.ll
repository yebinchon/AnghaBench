; ModuleID = '/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorchipset.c_chipset_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorchipset.c_chipset_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controlvm_message = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@chipset_init.chipset_inited = internal global i32 0, align 4
@CONTROLVM_RESP_SUCCESS = common dso_local global i32 0, align 4
@CONTROLVM_RESP_ALREADY_DONE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@VISOR_CHIPSET_FEATURE_PARA_HOTPLUG = common dso_local global i32 0, align 4
@VISOR_CHIPSET_FEATURE_REPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.controlvm_message*)* @chipset_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chipset_init(%struct.controlvm_message* %0) #0 {
  %2 = alloca %struct.controlvm_message*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.controlvm_message* %0, %struct.controlvm_message** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load i32, i32* @CONTROLVM_RESP_SUCCESS, align 4
  store i32 %6, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @chipset_init.chipset_inited, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i32, i32* @CONTROLVM_RESP_ALREADY_DONE, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @EIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %5, align 4
  br label %25

14:                                               ; preds = %1
  store i32 1, i32* @chipset_init.chipset_inited, align 4
  %15 = load %struct.controlvm_message*, %struct.controlvm_message** %2, align 8
  %16 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @VISOR_CHIPSET_FEATURE_PARA_HOTPLUG, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* @VISOR_CHIPSET_FEATURE_REPLY, align 4
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %14, %9
  %26 = load %struct.controlvm_message*, %struct.controlvm_message** %2, align 8
  %27 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load %struct.controlvm_message*, %struct.controlvm_message** %2, align 8
  %34 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %33, i32 0, i32 0
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @controlvm_respond_chipset_init(%struct.TYPE_8__* %34, i32 %35, i32 %36)
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %32, %25
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @controlvm_respond_chipset_init(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
