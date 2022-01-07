; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_xen-pcifront.c_pcifront_detach_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_xen-pcifront.c_pcifront_detach_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcifront_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.pci_dev = type { i32 }

@XenbusStateConnected = common dso_local global i64 0, align 8
@XBT_NIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"num_devs\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Error reading number of PCI devices\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"state-%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@XenbusStateUnknown = common dso_local global i32 0, align 4
@XenbusStateClosing = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"vdev-%d\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"%x:%x:%x.%x\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Error reading PCI device %d\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Cannot get PCI device %04x:%02x:%02x.%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"PCI device %04x:%02x:%02x.%d removed.\0A\00", align 1
@XenbusStateReconfiguring = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcifront_device*)* @pcifront_detach_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcifront_detach_devices(%struct.pcifront_device* %0) #0 {
  %2 = alloca %struct.pcifront_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pci_dev*, align 8
  %11 = alloca [64 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pcifront_device* %0, %struct.pcifront_device** %2, align 8
  store i32 0, i32* %3, align 4
  %14 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %15 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @xenbus_read_driver_state(i32 %18)
  %20 = load i64, i64* @XenbusStateConnected, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %157

23:                                               ; preds = %1
  %24 = load i32, i32* @XBT_NIL, align 4
  %25 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %26 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i32, i32, i8*, i8*, ...) @xenbus_scanf(i32 %24, i32 %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %5)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 1
  br i1 %32, label %33, label %45

33:                                               ; preds = %23
  %34 = load i32, i32* %3, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %36, %33
  %40 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %41 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = call i32 (%struct.TYPE_3__*, i32, i8*, ...) @xenbus_dev_fatal(%struct.TYPE_3__* %42, i32 %43, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %157

45:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %148, %45
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %151

50:                                               ; preds = %46
  %51 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @snprintf(i8* %51, i32 64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp uge i64 %55, 63
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %50
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %157

63:                                               ; preds = %50
  %64 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %65 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %70 = load i32, i32* @XenbusStateUnknown, align 4
  %71 = call i32 @xenbus_read_unsigned(i32 %68, i8* %69, i32 %70)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* @XenbusStateClosing, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %63
  br label %148

76:                                               ; preds = %63
  %77 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @snprintf(i8* %77, i32 64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %78)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = icmp uge i64 %81, 63
  %83 = zext i1 %82 to i32
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %76
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %157

89:                                               ; preds = %76
  %90 = load i32, i32* @XBT_NIL, align 4
  %91 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %92 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %91, i32 0, i32 0
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %97 = call i32 (i32, i32, i8*, i8*, ...) @xenbus_scanf(i32 %90, i32 %95, i8* %96, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32* %6, i32* %7, i32* %8, i32* %9)
  store i32 %97, i32* %3, align 4
  %98 = load i32, i32* %3, align 4
  %99 = icmp ne i32 %98, 4
  br i1 %99, label %100, label %113

100:                                              ; preds = %89
  %101 = load i32, i32* %3, align 4
  %102 = icmp sge i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %108 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %107, i32 0, i32 0
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = load i32, i32* %3, align 4
  %111 = load i32, i32* %4, align 4
  %112 = call i32 (%struct.TYPE_3__*, i32, i8*, ...) @xenbus_dev_fatal(%struct.TYPE_3__* %109, i32 %110, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %111)
  br label %157

113:                                              ; preds = %89
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @PCI_DEVFN(i32 %116, i32 %117)
  %119 = call %struct.pci_dev* @pci_get_domain_bus_and_slot(i32 %114, i32 %115, i32 %118)
  store %struct.pci_dev* %119, %struct.pci_dev** %10, align 8
  %120 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %121 = icmp ne %struct.pci_dev* %120, null
  br i1 %121, label %132, label %122

122:                                              ; preds = %113
  %123 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %124 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %123, i32 0, i32 0
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @dev_dbg(i32* %126, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i32 %127, i32 %128, i32 %129, i32 %130)
  br label %148

132:                                              ; preds = %113
  %133 = call i32 (...) @pci_lock_rescan_remove()
  %134 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %135 = call i32 @pci_stop_and_remove_bus_device(%struct.pci_dev* %134)
  %136 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %137 = call i32 @pci_dev_put(%struct.pci_dev* %136)
  %138 = call i32 (...) @pci_unlock_rescan_remove()
  %139 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %140 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %139, i32 0, i32 0
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @dev_dbg(i32* %142, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i32 %143, i32 %144, i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %132, %122, %75
  %149 = load i32, i32* %4, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %4, align 4
  br label %46

151:                                              ; preds = %46
  %152 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %153 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %152, i32 0, i32 0
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %153, align 8
  %155 = load i32, i32* @XenbusStateReconfiguring, align 4
  %156 = call i32 @xenbus_switch_state(%struct.TYPE_3__* %154, i32 %155)
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %151, %106, %86, %60, %39, %22
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i64 @xenbus_read_driver_state(i32) #1

declare dso_local i32 @xenbus_scanf(i32, i32, i8*, i8*, ...) #1

declare dso_local i32 @xenbus_dev_fatal(%struct.TYPE_3__*, i32, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @xenbus_read_unsigned(i32, i8*, i32) #1

declare dso_local %struct.pci_dev* @pci_get_domain_bus_and_slot(i32, i32, i32) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @pci_lock_rescan_remove(...) #1

declare dso_local i32 @pci_stop_and_remove_bus_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i32 @pci_unlock_rescan_remove(...) #1

declare dso_local i32 @xenbus_switch_state(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
