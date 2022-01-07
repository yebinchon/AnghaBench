; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_xen-pcifront.c_pcifront_try_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_xen-pcifront.c_pcifront_try_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcifront_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@EFAULT = common dso_local global i32 0, align 4
@XenbusStateInitialised = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Error setting up PCI Frontend\00", align 1
@XBT_NIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"root_num\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"No PCI Roots found, trying 0000:00\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Error scanning PCI root 0000:00\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Error reading number of PCI roots\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"root-%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"%x:%x\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Error reading PCI root %d\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"Error scanning PCI root %04x:%02x\00", align 1
@XenbusStateConnected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcifront_device*)* @pcifront_try_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcifront_try_connect(%struct.pcifront_device* %0) #0 {
  %2 = alloca %struct.pcifront_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [64 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
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
  %18 = load i64, i64* @XenbusStateInitialised, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %149

21:                                               ; preds = %1
  %22 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %23 = call i32 @pcifront_connect_and_init_dma(%struct.pcifront_device* %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @EEXIST, align 4
  %29 = sub nsw i32 0, %28
  %30 = icmp ne i32 %27, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %33 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = call i32 (%struct.TYPE_4__*, i32, i8*, ...) @xenbus_dev_fatal(%struct.TYPE_4__* %34, i32 %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %149

37:                                               ; preds = %26, %21
  %38 = load i32, i32* @XBT_NIL, align 4
  %39 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %40 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i32, i32, i8*, i8*, ...) @xenbus_scanf(i32 %38, i32 %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %5)
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @ENOENT, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %66

49:                                               ; preds = %37
  %50 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %51 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @xenbus_dev_error(%struct.TYPE_4__* %52, i32 %53, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %55 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %56 = call i32 @pcifront_scan_root(%struct.pcifront_device* %55, i32 0, i32 0)
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %3, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %49
  %60 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %61 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* %3, align 4
  %64 = call i32 (%struct.TYPE_4__*, i32, i8*, ...) @xenbus_dev_fatal(%struct.TYPE_4__* %62, i32 %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %149

65:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %82

66:                                               ; preds = %37
  %67 = load i32, i32* %3, align 4
  %68 = icmp ne i32 %67, 1
  br i1 %68, label %69, label %81

69:                                               ; preds = %66
  %70 = load i32, i32* %3, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %72, %69
  %76 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %77 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = load i32, i32* %3, align 4
  %80 = call i32 (%struct.TYPE_4__*, i32, i8*, ...) @xenbus_dev_fatal(%struct.TYPE_4__* %78, i32 %79, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %149

81:                                               ; preds = %66
  br label %82

82:                                               ; preds = %81, %65
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %140, %82
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* %5, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %143

87:                                               ; preds = %83
  %88 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @snprintf(i8* %88, i32 64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = icmp uge i64 %92, 63
  %94 = zext i1 %93 to i32
  %95 = call i64 @unlikely(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %87
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %149

100:                                              ; preds = %87
  %101 = load i32, i32* @XBT_NIL, align 4
  %102 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %103 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %102, i32 0, i32 0
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %108 = call i32 (i32, i32, i8*, i8*, ...) @xenbus_scanf(i32 %101, i32 %106, i8* %107, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32* %8, i32* %9)
  store i32 %108, i32* %3, align 4
  %109 = load i32, i32* %3, align 4
  %110 = icmp ne i32 %109, 2
  br i1 %110, label %111, label %124

111:                                              ; preds = %100
  %112 = load i32, i32* %3, align 4
  %113 = icmp sge i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %114, %111
  %118 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %119 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %118, i32 0, i32 0
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = load i32, i32* %3, align 4
  %122 = load i32, i32* %4, align 4
  %123 = call i32 (%struct.TYPE_4__*, i32, i8*, ...) @xenbus_dev_fatal(%struct.TYPE_4__* %120, i32 %121, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %122)
  br label %149

124:                                              ; preds = %100
  %125 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @pcifront_scan_root(%struct.pcifront_device* %125, i32 %126, i32 %127)
  store i32 %128, i32* %3, align 4
  %129 = load i32, i32* %3, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %124
  %132 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %133 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %132, i32 0, i32 0
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = load i32, i32* %3, align 4
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* %9, align 4
  %138 = call i32 (%struct.TYPE_4__*, i32, i8*, ...) @xenbus_dev_fatal(%struct.TYPE_4__* %134, i32 %135, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32 %136, i32 %137)
  br label %149

139:                                              ; preds = %124
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %4, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %4, align 4
  br label %83

143:                                              ; preds = %83
  %144 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %145 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %144, i32 0, i32 0
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = load i32, i32* @XenbusStateConnected, align 4
  %148 = call i32 @xenbus_switch_state(%struct.TYPE_4__* %146, i32 %147)
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %143, %131, %117, %97, %75, %59, %31, %20
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i64 @xenbus_read_driver_state(i32) #1

declare dso_local i32 @pcifront_connect_and_init_dma(%struct.pcifront_device*) #1

declare dso_local i32 @xenbus_dev_fatal(%struct.TYPE_4__*, i32, i8*, ...) #1

declare dso_local i32 @xenbus_scanf(i32, i32, i8*, i8*, ...) #1

declare dso_local i32 @xenbus_dev_error(%struct.TYPE_4__*, i32, i8*) #1

declare dso_local i32 @pcifront_scan_root(%struct.pcifront_device*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @xenbus_switch_state(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
