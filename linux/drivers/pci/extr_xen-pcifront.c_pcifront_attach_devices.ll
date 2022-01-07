; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_xen-pcifront.c_pcifront_attach_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_xen-pcifront.c_pcifront_attach_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcifront_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@EFAULT = common dso_local global i32 0, align 4
@XenbusStateReconfiguring = common dso_local global i64 0, align 8
@XBT_NIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"root_num\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"No PCI Roots found, trying 0000:00\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Error scanning PCI root 0000:00\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Error reading number of PCI roots\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"root-%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"%x:%x\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Error reading PCI root %d\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Error scanning PCI root %04x:%02x\00", align 1
@XenbusStateConnected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcifront_device*)* @pcifront_attach_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcifront_attach_devices(%struct.pcifront_device* %0) #0 {
  %2 = alloca %struct.pcifront_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [64 x i8], align 16
  store %struct.pcifront_device* %0, %struct.pcifront_device** %2, align 8
  %10 = load i32, i32* @EFAULT, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  %12 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %13 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @xenbus_read_driver_state(i32 %16)
  %18 = load i64, i64* @XenbusStateReconfiguring, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %133

21:                                               ; preds = %1
  %22 = load i32, i32* @XBT_NIL, align 4
  %23 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %24 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i32, i32, i8*, i8*, ...) @xenbus_scanf(i32 %22, i32 %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %5)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %21
  %34 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %35 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @xenbus_dev_error(%struct.TYPE_4__* %36, i32 %37, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %39 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %40 = call i32 @pcifront_rescan_root(%struct.pcifront_device* %39, i32 0, i32 0)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %33
  %44 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %45 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = call i32 (%struct.TYPE_4__*, i32, i8*, ...) @xenbus_dev_fatal(%struct.TYPE_4__* %46, i32 %47, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %133

49:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %66

50:                                               ; preds = %21
  %51 = load i32, i32* %3, align 4
  %52 = icmp ne i32 %51, 1
  br i1 %52, label %53, label %65

53:                                               ; preds = %50
  %54 = load i32, i32* %3, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %56, %53
  %60 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %61 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* %3, align 4
  %64 = call i32 (%struct.TYPE_4__*, i32, i8*, ...) @xenbus_dev_fatal(%struct.TYPE_4__* %62, i32 %63, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %133

65:                                               ; preds = %50
  br label %66

66:                                               ; preds = %65, %49
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %124, %66
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %127

71:                                               ; preds = %67
  %72 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @snprintf(i8* %72, i32 64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = icmp uge i64 %76, 63
  %78 = zext i1 %77 to i32
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %71
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %133

84:                                               ; preds = %71
  %85 = load i32, i32* @XBT_NIL, align 4
  %86 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %87 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %86, i32 0, i32 0
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %92 = call i32 (i32, i32, i8*, i8*, ...) @xenbus_scanf(i32 %85, i32 %90, i8* %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32* %7, i32* %8)
  store i32 %92, i32* %3, align 4
  %93 = load i32, i32* %3, align 4
  %94 = icmp ne i32 %93, 2
  br i1 %94, label %95, label %108

95:                                               ; preds = %84
  %96 = load i32, i32* %3, align 4
  %97 = icmp sge i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %98, %95
  %102 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %103 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %102, i32 0, i32 0
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = load i32, i32* %3, align 4
  %106 = load i32, i32* %4, align 4
  %107 = call i32 (%struct.TYPE_4__*, i32, i8*, ...) @xenbus_dev_fatal(%struct.TYPE_4__* %104, i32 %105, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %106)
  br label %133

108:                                              ; preds = %84
  %109 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @pcifront_rescan_root(%struct.pcifront_device* %109, i32 %110, i32 %111)
  store i32 %112, i32* %3, align 4
  %113 = load i32, i32* %3, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %108
  %116 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %117 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %116, i32 0, i32 0
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = load i32, i32* %3, align 4
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* %8, align 4
  %122 = call i32 (%struct.TYPE_4__*, i32, i8*, ...) @xenbus_dev_fatal(%struct.TYPE_4__* %118, i32 %119, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %120, i32 %121)
  br label %133

123:                                              ; preds = %108
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %4, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %4, align 4
  br label %67

127:                                              ; preds = %67
  %128 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %129 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %128, i32 0, i32 0
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = load i32, i32* @XenbusStateConnected, align 4
  %132 = call i32 @xenbus_switch_state(%struct.TYPE_4__* %130, i32 %131)
  br label %133

133:                                              ; preds = %127, %115, %101, %81, %59, %43, %20
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i64 @xenbus_read_driver_state(i32) #1

declare dso_local i32 @xenbus_scanf(i32, i32, i8*, i8*, ...) #1

declare dso_local i32 @xenbus_dev_error(%struct.TYPE_4__*, i32, i8*) #1

declare dso_local i32 @pcifront_rescan_root(%struct.pcifront_device*, i32, i32) #1

declare dso_local i32 @xenbus_dev_fatal(%struct.TYPE_4__*, i32, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @xenbus_switch_state(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
