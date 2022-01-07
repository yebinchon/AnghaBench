; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-back.c_backend_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-back.c_backend_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.xenbus_device = type { i32, i32, i32 }
%struct.pvcalls_fedata = type { i32, i32*, i32, i32, i32, i32, %struct.xenbus_device*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@XBT_NIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"reading %s/event-channel\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"ring-ref\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"reading %s/ring-ref\00", align 1
@pvcalls_back_event = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"pvcalls-back\00", align 1
@XEN_PAGE_SIZE = common dso_local global i32 0, align 4
@pvcalls_back_global = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenbus_device*)* @backend_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @backend_connect(%struct.xenbus_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xenbus_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pvcalls_fedata*, align 8
  store %struct.xenbus_device* %0, %struct.xenbus_device** %3, align 8
  store %struct.pvcalls_fedata* null, %struct.pvcalls_fedata** %7, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.pvcalls_fedata* @kzalloc(i32 48, i32 %8)
  store %struct.pvcalls_fedata* %9, %struct.pvcalls_fedata** %7, align 8
  %10 = load %struct.pvcalls_fedata*, %struct.pvcalls_fedata** %7, align 8
  %11 = icmp ne %struct.pvcalls_fedata* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %140

15:                                               ; preds = %1
  %16 = load %struct.pvcalls_fedata*, %struct.pvcalls_fedata** %7, align 8
  %17 = getelementptr inbounds %struct.pvcalls_fedata, %struct.pvcalls_fedata* %16, i32 0, i32 0
  store i32 -1, i32* %17, align 8
  %18 = load i32, i32* @XBT_NIL, align 4
  %19 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %20 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @xenbus_scanf(i32 %18, i32 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %5)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %25, label %34

25:                                               ; preds = %15
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  %28 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %31 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %28, i32 %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  br label %114

34:                                               ; preds = %15
  %35 = load i32, i32* @XBT_NIL, align 4
  %36 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %37 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @xenbus_scanf(i32 %35, i32 %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 1
  br i1 %41, label %42, label %51

42:                                               ; preds = %34
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  %45 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %48 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %45, i32 %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %49)
  br label %114

51:                                               ; preds = %34
  %52 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %53 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @bind_interdomain_evtchn_to_irq(i32 %54, i32 %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %114

60:                                               ; preds = %51
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.pvcalls_fedata*, %struct.pvcalls_fedata** %7, align 8
  %63 = getelementptr inbounds %struct.pvcalls_fedata, %struct.pvcalls_fedata* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.pvcalls_fedata*, %struct.pvcalls_fedata** %7, align 8
  %65 = getelementptr inbounds %struct.pvcalls_fedata, %struct.pvcalls_fedata* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @pvcalls_back_event, align 4
  %68 = load i32, i32* @IRQF_ONESHOT, align 4
  %69 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %70 = call i32 @request_threaded_irq(i32 %66, i32* null, i32 %67, i32 %68, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), %struct.xenbus_device* %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %60
  br label %114

74:                                               ; preds = %60
  %75 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %76 = load %struct.pvcalls_fedata*, %struct.pvcalls_fedata** %7, align 8
  %77 = getelementptr inbounds %struct.pvcalls_fedata, %struct.pvcalls_fedata* %76, i32 0, i32 1
  %78 = bitcast i32** %77 to i8**
  %79 = call i32 @xenbus_map_ring_valloc(%struct.xenbus_device* %75, i32* %6, i32 1, i8** %78)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %114

83:                                               ; preds = %74
  %84 = load %struct.pvcalls_fedata*, %struct.pvcalls_fedata** %7, align 8
  %85 = getelementptr inbounds %struct.pvcalls_fedata, %struct.pvcalls_fedata* %84, i32 0, i32 7
  %86 = load %struct.pvcalls_fedata*, %struct.pvcalls_fedata** %7, align 8
  %87 = getelementptr inbounds %struct.pvcalls_fedata, %struct.pvcalls_fedata* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* @XEN_PAGE_SIZE, align 4
  %90 = mul nsw i32 %89, 1
  %91 = call i32 @BACK_RING_INIT(i32* %85, i32* %88, i32 %90)
  %92 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %93 = load %struct.pvcalls_fedata*, %struct.pvcalls_fedata** %7, align 8
  %94 = getelementptr inbounds %struct.pvcalls_fedata, %struct.pvcalls_fedata* %93, i32 0, i32 6
  store %struct.xenbus_device* %92, %struct.xenbus_device** %94, align 8
  %95 = load %struct.pvcalls_fedata*, %struct.pvcalls_fedata** %7, align 8
  %96 = getelementptr inbounds %struct.pvcalls_fedata, %struct.pvcalls_fedata* %95, i32 0, i32 5
  %97 = call i32 @INIT_LIST_HEAD(i32* %96)
  %98 = load %struct.pvcalls_fedata*, %struct.pvcalls_fedata** %7, align 8
  %99 = getelementptr inbounds %struct.pvcalls_fedata, %struct.pvcalls_fedata* %98, i32 0, i32 4
  %100 = load i32, i32* @GFP_KERNEL, align 4
  %101 = call i32 @INIT_RADIX_TREE(i32* %99, i32 %100)
  %102 = load %struct.pvcalls_fedata*, %struct.pvcalls_fedata** %7, align 8
  %103 = getelementptr inbounds %struct.pvcalls_fedata, %struct.pvcalls_fedata* %102, i32 0, i32 3
  %104 = call i32 @sema_init(i32* %103, i32 1)
  %105 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %106 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %105, i32 0, i32 0
  %107 = load %struct.pvcalls_fedata*, %struct.pvcalls_fedata** %7, align 8
  %108 = call i32 @dev_set_drvdata(i32* %106, %struct.pvcalls_fedata* %107)
  %109 = call i32 @down(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pvcalls_back_global, i32 0, i32 0))
  %110 = load %struct.pvcalls_fedata*, %struct.pvcalls_fedata** %7, align 8
  %111 = getelementptr inbounds %struct.pvcalls_fedata, %struct.pvcalls_fedata* %110, i32 0, i32 2
  %112 = call i32 @list_add_tail(i32* %111, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pvcalls_back_global, i32 0, i32 1))
  %113 = call i32 @up(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pvcalls_back_global, i32 0, i32 0))
  store i32 0, i32* %2, align 4
  br label %140

114:                                              ; preds = %82, %73, %59, %42, %25
  %115 = load %struct.pvcalls_fedata*, %struct.pvcalls_fedata** %7, align 8
  %116 = getelementptr inbounds %struct.pvcalls_fedata, %struct.pvcalls_fedata* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp sge i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %114
  %120 = load %struct.pvcalls_fedata*, %struct.pvcalls_fedata** %7, align 8
  %121 = getelementptr inbounds %struct.pvcalls_fedata, %struct.pvcalls_fedata* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %124 = call i32 @unbind_from_irqhandler(i32 %122, %struct.xenbus_device* %123)
  br label %125

125:                                              ; preds = %119, %114
  %126 = load %struct.pvcalls_fedata*, %struct.pvcalls_fedata** %7, align 8
  %127 = getelementptr inbounds %struct.pvcalls_fedata, %struct.pvcalls_fedata* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %136

130:                                              ; preds = %125
  %131 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %132 = load %struct.pvcalls_fedata*, %struct.pvcalls_fedata** %7, align 8
  %133 = getelementptr inbounds %struct.pvcalls_fedata, %struct.pvcalls_fedata* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = call i32 @xenbus_unmap_ring_vfree(%struct.xenbus_device* %131, i32* %134)
  br label %136

136:                                              ; preds = %130, %125
  %137 = load %struct.pvcalls_fedata*, %struct.pvcalls_fedata** %7, align 8
  %138 = call i32 @kfree(%struct.pvcalls_fedata* %137)
  %139 = load i32, i32* %4, align 4
  store i32 %139, i32* %2, align 4
  br label %140

140:                                              ; preds = %136, %83, %12
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local %struct.pvcalls_fedata* @kzalloc(i32, i32) #1

declare dso_local i32 @xenbus_scanf(i32, i32, i8*, i8*, i32*) #1

declare dso_local i32 @xenbus_dev_fatal(%struct.xenbus_device*, i32, i8*, i32) #1

declare dso_local i32 @bind_interdomain_evtchn_to_irq(i32, i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i8*, %struct.xenbus_device*) #1

declare dso_local i32 @xenbus_map_ring_valloc(%struct.xenbus_device*, i32*, i32, i8**) #1

declare dso_local i32 @BACK_RING_INIT(i32*, i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_RADIX_TREE(i32*, i32) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.pvcalls_fedata*) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @unbind_from_irqhandler(i32, %struct.xenbus_device*) #1

declare dso_local i32 @xenbus_unmap_ring_vfree(%struct.xenbus_device*, i32*) #1

declare dso_local i32 @kfree(%struct.pvcalls_fedata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
