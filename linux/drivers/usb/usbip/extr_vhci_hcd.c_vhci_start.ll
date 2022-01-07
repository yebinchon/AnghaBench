; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vhci_hcd.c_vhci_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vhci_hcd.c_vhci_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.vhci_hcd = type { i32, %struct.vhci_device*, %struct.TYPE_5__* }
%struct.vhci_device = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"enter vhci_start\0A\00", align 1
@VHCI_HC_PORTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid vhci name %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"init attr group failed, err = %d\0A\00", align 1
@vhci_attr_group = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"create sysfs files failed, err = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"created sysfs %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @vhci_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhci_start(%struct.usb_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.vhci_hcd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vhci_device*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  %9 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %10 = call %struct.vhci_hcd* @hcd_to_vhci_hcd(%struct.usb_hcd* %9)
  store %struct.vhci_hcd* %10, %struct.vhci_hcd** %4, align 8
  %11 = call i32 @usbip_dbg_vhci_hc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %13 = call i64 @usb_hcd_is_primary_hcd(%struct.usb_hcd* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.vhci_hcd*, %struct.vhci_hcd** %4, align 8
  %17 = getelementptr inbounds %struct.vhci_hcd, %struct.vhci_hcd* %16, i32 0, i32 2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = call i32 @spin_lock_init(i32* %19)
  br label %21

21:                                               ; preds = %15, %1
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %38, %21
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @VHCI_HC_PORTS, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %22
  %27 = load %struct.vhci_hcd*, %struct.vhci_hcd** %4, align 8
  %28 = getelementptr inbounds %struct.vhci_hcd, %struct.vhci_hcd* %27, i32 0, i32 1
  %29 = load %struct.vhci_device*, %struct.vhci_device** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %29, i64 %31
  store %struct.vhci_device* %32, %struct.vhci_device** %8, align 8
  %33 = load %struct.vhci_device*, %struct.vhci_device** %8, align 8
  %34 = call i32 @vhci_device_init(%struct.vhci_device* %33)
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.vhci_device*, %struct.vhci_device** %8, align 8
  %37 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %26
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %22

41:                                               ; preds = %22
  %42 = load %struct.vhci_hcd*, %struct.vhci_hcd** %4, align 8
  %43 = getelementptr inbounds %struct.vhci_hcd, %struct.vhci_hcd* %42, i32 0, i32 0
  %44 = call i32 @atomic_set(i32* %43, i32 0)
  %45 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %46 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %45, i32 0, i32 2
  store i64 0, i64* %46, align 8
  %47 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %48 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %50 = call i32 @hcd_name(%struct.usb_hcd* %49)
  %51 = call i32 @hcd_name_to_id(i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %41
  %55 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %56 = call i32 @hcd_name(%struct.usb_hcd* %55)
  %57 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %96

60:                                               ; preds = %41
  %61 = load i32, i32* %5, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %95

63:                                               ; preds = %60
  %64 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %65 = call i64 @usb_hcd_is_primary_hcd(%struct.usb_hcd* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %95

67:                                               ; preds = %63
  %68 = call i32 (...) @vhci_init_attr_group()
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %73 = call %struct.TYPE_7__* @hcd_dev(%struct.usb_hcd* %72)
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @dev_err(%struct.TYPE_7__* %73, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %2, align 4
  br label %96

77:                                               ; preds = %67
  %78 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %79 = call %struct.TYPE_7__* @hcd_dev(%struct.usb_hcd* %78)
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = call i32 @sysfs_create_group(i32* %80, i32* @vhci_attr_group)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %77
  %85 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %86 = call %struct.TYPE_7__* @hcd_dev(%struct.usb_hcd* %85)
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @dev_err(%struct.TYPE_7__* %86, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  %89 = call i32 (...) @vhci_finish_attr_group()
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %2, align 4
  br label %96

91:                                               ; preds = %77
  %92 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %93 = call i32 @hcd_name(%struct.usb_hcd* %92)
  %94 = call i32 @pr_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %91, %63, %60
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %95, %84, %71, %54
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local %struct.vhci_hcd* @hcd_to_vhci_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @usbip_dbg_vhci_hc(i8*) #1

declare dso_local i64 @usb_hcd_is_primary_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @vhci_device_init(%struct.vhci_device*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @hcd_name_to_id(i32) #1

declare dso_local i32 @hcd_name(%struct.usb_hcd*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @vhci_init_attr_group(...) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local %struct.TYPE_7__* @hcd_dev(%struct.usb_hcd*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @vhci_finish_attr_group(...) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
