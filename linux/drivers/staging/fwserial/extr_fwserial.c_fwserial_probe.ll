; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwserial_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwserial_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_unit = type { i32 }
%struct.ieee1394_device_id = type { i32 }
%struct.fw_serial = type { i32 }
%struct.TYPE_2__ = type { i32 }

@fwserial_list_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_unit*, %struct.ieee1394_device_id*)* @fwserial_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fwserial_probe(%struct.fw_unit* %0, %struct.ieee1394_device_id* %1) #0 {
  %3 = alloca %struct.fw_unit*, align 8
  %4 = alloca %struct.ieee1394_device_id*, align 8
  %5 = alloca %struct.fw_serial*, align 8
  %6 = alloca i32, align 4
  store %struct.fw_unit* %0, %struct.fw_unit** %3, align 8
  store %struct.ieee1394_device_id* %1, %struct.ieee1394_device_id** %4, align 8
  %7 = call i32 @mutex_lock(i32* @fwserial_list_mutex)
  %8 = load %struct.fw_unit*, %struct.fw_unit** %3, align 8
  %9 = call %struct.TYPE_2__* @fw_parent_device(%struct.fw_unit* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.fw_serial* @fwserial_lookup(i32 %11)
  store %struct.fw_serial* %12, %struct.fw_serial** %5, align 8
  %13 = load %struct.fw_serial*, %struct.fw_serial** %5, align 8
  %14 = icmp ne %struct.fw_serial* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load %struct.fw_unit*, %struct.fw_unit** %3, align 8
  %17 = call i32 @fwserial_create(%struct.fw_unit* %16)
  store i32 %17, i32* %6, align 4
  br label %22

18:                                               ; preds = %2
  %19 = load %struct.fw_serial*, %struct.fw_serial** %5, align 8
  %20 = load %struct.fw_unit*, %struct.fw_unit** %3, align 8
  %21 = call i32 @fwserial_add_peer(%struct.fw_serial* %19, %struct.fw_unit* %20)
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %18, %15
  %23 = call i32 @mutex_unlock(i32* @fwserial_list_mutex)
  %24 = load i32, i32* %6, align 4
  ret i32 %24
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.fw_serial* @fwserial_lookup(i32) #1

declare dso_local %struct.TYPE_2__* @fw_parent_device(%struct.fw_unit*) #1

declare dso_local i32 @fwserial_create(%struct.fw_unit*) #1

declare dso_local i32 @fwserial_add_peer(%struct.fw_serial*, %struct.fw_unit*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
