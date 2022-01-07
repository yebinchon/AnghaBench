; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_inode.c_is_valid_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_inode.c_is_valid_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_config_descriptor = type { i64, i32, i64, i32 }

@USB_DT_CONFIG = common dso_local global i64 0, align 8
@USB_DT_CONFIG_SIZE = common dso_local global i32 0, align 4
@USB_CONFIG_ATT_ONE = common dso_local global i32 0, align 4
@USB_CONFIG_ATT_WAKEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_config_descriptor*, i32)* @is_valid_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_valid_config(%struct.usb_config_descriptor* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_config_descriptor*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_config_descriptor* %0, %struct.usb_config_descriptor** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %3, align 8
  %6 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @USB_DT_CONFIG, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %39

10:                                               ; preds = %2
  %11 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %3, align 8
  %12 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @USB_DT_CONFIG_SIZE, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %39

16:                                               ; preds = %10
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @USB_DT_CONFIG_SIZE, align 4
  %19 = icmp uge i32 %17, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %16
  %21 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %3, align 8
  %22 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %20
  %26 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %3, align 8
  %27 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @USB_CONFIG_ATT_ONE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %3, align 8
  %34 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @USB_CONFIG_ATT_WAKEUP, align 4
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br label %39

39:                                               ; preds = %32, %25, %20, %16, %10, %2
  %40 = phi i1 [ false, %25 ], [ false, %20 ], [ false, %16 ], [ false, %10 ], [ false, %2 ], [ %38, %32 ]
  %41 = zext i1 %40 to i32
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
