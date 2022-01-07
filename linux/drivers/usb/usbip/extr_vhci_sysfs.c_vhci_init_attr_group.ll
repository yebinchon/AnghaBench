; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vhci_sysfs.c_vhci_init_attr_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vhci_sysfs.c_vhci_init_attr_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.attribute }
%struct.attribute = type { i32 }
%struct.TYPE_13__ = type { %struct.attribute }
%struct.TYPE_14__ = type { %struct.attribute }
%struct.TYPE_11__ = type { %struct.attribute }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.attribute }
%struct.TYPE_9__ = type { %struct.attribute** }

@vhci_num_controllers = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dev_attr_nports = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@dev_attr_detach = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@dev_attr_attach = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@dev_attr_usbip_debug = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@status_attrs = common dso_local global %struct.TYPE_10__* null, align 8
@vhci_attr_group = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vhci_init_attr_group() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.attribute**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @vhci_num_controllers, align 4
  %6 = add nsw i32 %5, 5
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.attribute** @kcalloc(i32 %6, i32 8, i32 %7)
  store %struct.attribute** %8, %struct.attribute*** %2, align 8
  %9 = load %struct.attribute**, %struct.attribute*** %2, align 8
  %10 = icmp eq %struct.attribute** %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %1, align 4
  br label %51

14:                                               ; preds = %0
  %15 = call i32 (...) @init_status_attrs()
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load %struct.attribute**, %struct.attribute*** %2, align 8
  %20 = call i32 @kfree(%struct.attribute** %19)
  %21 = load i32, i32* %3, align 4
  store i32 %21, i32* %1, align 4
  br label %51

22:                                               ; preds = %14
  %23 = load %struct.attribute**, %struct.attribute*** %2, align 8
  store %struct.attribute* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @dev_attr_nports, i32 0, i32 0), %struct.attribute** %23, align 8
  %24 = load %struct.attribute**, %struct.attribute*** %2, align 8
  %25 = getelementptr inbounds %struct.attribute*, %struct.attribute** %24, i64 1
  store %struct.attribute* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @dev_attr_detach, i32 0, i32 0), %struct.attribute** %25, align 8
  %26 = load %struct.attribute**, %struct.attribute*** %2, align 8
  %27 = getelementptr inbounds %struct.attribute*, %struct.attribute** %26, i64 2
  store %struct.attribute* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @dev_attr_attach, i32 0, i32 0), %struct.attribute** %27, align 8
  %28 = load %struct.attribute**, %struct.attribute*** %2, align 8
  %29 = getelementptr inbounds %struct.attribute*, %struct.attribute** %28, i64 3
  store %struct.attribute* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @dev_attr_usbip_debug, i32 0, i32 0), %struct.attribute** %29, align 8
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %46, %22
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @vhci_num_controllers, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %30
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** @status_attrs, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load %struct.attribute**, %struct.attribute*** %2, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.attribute*, %struct.attribute** %41, i64 %43
  %45 = getelementptr inbounds %struct.attribute*, %struct.attribute** %44, i64 4
  store %struct.attribute* %40, %struct.attribute** %45, align 8
  br label %46

46:                                               ; preds = %34
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %30

49:                                               ; preds = %30
  %50 = load %struct.attribute**, %struct.attribute*** %2, align 8
  store %struct.attribute** %50, %struct.attribute*** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @vhci_attr_group, i32 0, i32 0), align 8
  store i32 0, i32* %1, align 4
  br label %51

51:                                               ; preds = %49, %18, %11
  %52 = load i32, i32* %1, align 4
  ret i32 %52
}

declare dso_local %struct.attribute** @kcalloc(i32, i32, i32) #1

declare dso_local i32 @init_status_attrs(...) #1

declare dso_local i32 @kfree(%struct.attribute**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
