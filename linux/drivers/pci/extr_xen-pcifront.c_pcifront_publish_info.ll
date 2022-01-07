; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_xen-pcifront.c_pcifront_publish_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_xen-pcifront.c_pcifront_publish_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcifront_device = type { i32, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.xenbus_transaction = type { i32 }

@pcifront_handler_aer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"pcifront\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"Error writing configuration for backend (start transaction)\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"pci-op-ref\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"event-channel\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"magic\00", align 1
@XEN_PCI_MAGIC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"Error writing configuration for backend\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [41 x i8] c"Error completing transaction for backend\00", align 1
@XenbusStateInitialised = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"publishing successful!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcifront_device*)* @pcifront_publish_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcifront_publish_info(%struct.pcifront_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcifront_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xenbus_transaction, align 4
  %6 = alloca i32, align 4
  store %struct.pcifront_device* %0, %struct.pcifront_device** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %8 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %7, i32 0, i32 1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %11 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @xenbus_grant_ring(%struct.TYPE_5__* %9, i32 %12, i32 1, i32* %6)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %139

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %20 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %22 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %25 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %24, i32 0, i32 2
  %26 = call i32 @xenbus_alloc_evtchn(%struct.TYPE_5__* %23, i32* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %17
  br label %139

30:                                               ; preds = %17
  %31 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %32 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @pcifront_handler_aer, align 4
  %35 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %36 = call i32 @bind_evtchn_to_irqhandler(i32 %33, i32 %34, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.pcifront_device* %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %141

41:                                               ; preds = %30
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %44 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %116, %41
  %46 = call i32 @xenbus_transaction_start(%struct.xenbus_transaction* %5)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %51 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @xenbus_dev_fatal(%struct.TYPE_5__* %52, i32 %53, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  br label %139

55:                                               ; preds = %45
  %56 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %57 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %56, i32 0, i32 1
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %62 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %5, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i32, i32, i8*, i8*, ...) @xenbus_printf(i32 %65, i32 %60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %81, label %69

69:                                               ; preds = %55
  %70 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %71 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %70, i32 0, i32 1
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %76 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %5, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i32, i32, i8*, i8*, ...) @xenbus_printf(i32 %79, i32 %74, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %69, %55
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %96, label %84

84:                                               ; preds = %81
  %85 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %86 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %85, i32 0, i32 1
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @XEN_PCI_MAGIC, align 4
  %91 = sext i32 %90 to i64
  %92 = inttoptr i64 %91 to i8*
  %93 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %5, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i32, i32, i8*, i8*, ...) @xenbus_printf(i32 %94, i32 %89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %92)
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %84, %81
  %97 = load i32, i32* %4, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %5, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @xenbus_transaction_end(i32 %101, i32 1)
  %103 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %104 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %103, i32 0, i32 1
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @xenbus_dev_fatal(%struct.TYPE_5__* %105, i32 %106, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  br label %139

108:                                              ; preds = %96
  %109 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %5, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @xenbus_transaction_end(i32 %110, i32 0)
  store i32 %111, i32* %4, align 4
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* @EAGAIN, align 4
  %114 = sub nsw i32 0, %113
  %115 = icmp eq i32 %112, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %108
  br label %45

117:                                              ; preds = %108
  %118 = load i32, i32* %4, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %117
  %121 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %122 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %121, i32 0, i32 1
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = load i32, i32* %4, align 4
  %125 = call i32 @xenbus_dev_fatal(%struct.TYPE_5__* %123, i32 %124, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  br label %139

126:                                              ; preds = %117
  br label %127

127:                                              ; preds = %126
  br label %128

128:                                              ; preds = %127
  %129 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %130 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %129, i32 0, i32 1
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %130, align 8
  %132 = load i32, i32* @XenbusStateInitialised, align 4
  %133 = call i32 @xenbus_switch_state(%struct.TYPE_5__* %131, i32 %132)
  %134 = load %struct.pcifront_device*, %struct.pcifront_device** %3, align 8
  %135 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %134, i32 0, i32 1
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = call i32 @dev_dbg(i32* %137, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %139

139:                                              ; preds = %128, %120, %99, %49, %29, %16
  %140 = load i32, i32* %4, align 4
  store i32 %140, i32* %2, align 4
  br label %141

141:                                              ; preds = %139, %39
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i32 @xenbus_grant_ring(%struct.TYPE_5__*, i32, i32, i32*) #1

declare dso_local i32 @xenbus_alloc_evtchn(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @bind_evtchn_to_irqhandler(i32, i32, i32, i8*, %struct.pcifront_device*) #1

declare dso_local i32 @xenbus_transaction_start(%struct.xenbus_transaction*) #1

declare dso_local i32 @xenbus_dev_fatal(%struct.TYPE_5__*, i32, i8*) #1

declare dso_local i32 @xenbus_printf(i32, i32, i8*, i8*, ...) #1

declare dso_local i32 @xenbus_transaction_end(i32, i32) #1

declare dso_local i32 @xenbus_switch_state(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
