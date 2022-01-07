; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_rio_mport_cdev.c_mport_add_mport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_rio_mport_cdev.c_mport_add_mport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.class_interface = type { i32 }
%struct.rio_mport = type { i32 }
%struct.mport_dev = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.class_interface*)* @mport_add_mport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mport_add_mport(%struct.device* %0, %struct.class_interface* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.class_interface*, align 8
  %6 = alloca %struct.rio_mport*, align 8
  %7 = alloca %struct.mport_dev*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.class_interface* %1, %struct.class_interface** %5, align 8
  store %struct.rio_mport* null, %struct.rio_mport** %6, align 8
  store %struct.mport_dev* null, %struct.mport_dev** %7, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.rio_mport* @to_rio_mport(%struct.device* %8)
  store %struct.rio_mport* %9, %struct.rio_mport** %6, align 8
  %10 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %11 = icmp ne %struct.rio_mport* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %24

15:                                               ; preds = %2
  %16 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %17 = call %struct.mport_dev* @mport_cdev_add(%struct.rio_mport* %16)
  store %struct.mport_dev* %17, %struct.mport_dev** %7, align 8
  %18 = load %struct.mport_dev*, %struct.mport_dev** %7, align 8
  %19 = icmp ne %struct.mport_dev* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %24

23:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %20, %12
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local %struct.rio_mport* @to_rio_mport(%struct.device*) #1

declare dso_local %struct.mport_dev* @mport_cdev_add(%struct.rio_mport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
