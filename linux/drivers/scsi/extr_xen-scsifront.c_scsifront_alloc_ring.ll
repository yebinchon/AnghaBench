; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_xen-scsifront.c_scsifront_alloc_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_xen-scsifront.c_scsifront_alloc_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vscsifrnt_info = type { i32, %struct.TYPE_2__, i32, i32, %struct.xenbus_device* }
%struct.TYPE_2__ = type { i64 }
%struct.xenbus_device = type { i32 }
%struct.vscsiif_sring = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"fail to allocate shared ring (Front to Back)\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"fail to grant shared ring (Front to Back)\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"xenbus_alloc_evtchn\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"bind_evtchn_to_irq\00", align 1
@scsifront_irq_fn = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"scsifront\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"request_threaded_irq\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vscsifrnt_info*)* @scsifront_alloc_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsifront_alloc_ring(%struct.vscsifrnt_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vscsifrnt_info*, align 8
  %4 = alloca %struct.xenbus_device*, align 8
  %5 = alloca %struct.vscsiif_sring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vscsifrnt_info* %0, %struct.vscsifrnt_info** %3, align 8
  %8 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %3, align 8
  %9 = getelementptr inbounds %struct.vscsifrnt_info, %struct.vscsifrnt_info* %8, i32 0, i32 4
  %10 = load %struct.xenbus_device*, %struct.xenbus_device** %9, align 8
  store %struct.xenbus_device* %10, %struct.xenbus_device** %4, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i64 @__get_free_page(i32 %13)
  %15 = inttoptr i64 %14 to %struct.vscsiif_sring*
  store %struct.vscsiif_sring* %15, %struct.vscsiif_sring** %5, align 8
  %16 = load %struct.vscsiif_sring*, %struct.vscsiif_sring** %5, align 8
  %17 = icmp ne %struct.vscsiif_sring* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %19, i32 %20, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %2, align 4
  br label %103

23:                                               ; preds = %1
  %24 = load %struct.vscsiif_sring*, %struct.vscsiif_sring** %5, align 8
  %25 = call i32 @SHARED_RING_INIT(%struct.vscsiif_sring* %24)
  %26 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %3, align 8
  %27 = getelementptr inbounds %struct.vscsifrnt_info, %struct.vscsifrnt_info* %26, i32 0, i32 1
  %28 = load %struct.vscsiif_sring*, %struct.vscsiif_sring** %5, align 8
  %29 = load i32, i32* @PAGE_SIZE, align 4
  %30 = call i32 @FRONT_RING_INIT(%struct.TYPE_2__* %27, %struct.vscsiif_sring* %28, i32 %29)
  %31 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %32 = load %struct.vscsiif_sring*, %struct.vscsiif_sring** %5, align 8
  %33 = call i32 @xenbus_grant_ring(%struct.xenbus_device* %31, %struct.vscsiif_sring* %32, i32 1, i32* %6)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %23
  %37 = load %struct.vscsiif_sring*, %struct.vscsiif_sring** %5, align 8
  %38 = ptrtoint %struct.vscsiif_sring* %37 to i64
  %39 = call i32 @free_page(i64 %38)
  %40 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %40, i32 %41, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %2, align 4
  br label %103

44:                                               ; preds = %23
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %3, align 8
  %47 = getelementptr inbounds %struct.vscsifrnt_info, %struct.vscsifrnt_info* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %49 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %3, align 8
  %50 = getelementptr inbounds %struct.vscsifrnt_info, %struct.vscsifrnt_info* %49, i32 0, i32 3
  %51 = call i32 @xenbus_alloc_evtchn(%struct.xenbus_device* %48, i32* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %44
  %55 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %55, i32 %56, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %93

58:                                               ; preds = %44
  %59 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %3, align 8
  %60 = getelementptr inbounds %struct.vscsifrnt_info, %struct.vscsifrnt_info* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @bind_evtchn_to_irq(i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp sle i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %66, i32 %67, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %93

69:                                               ; preds = %58
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %3, align 8
  %72 = getelementptr inbounds %struct.vscsifrnt_info, %struct.vscsifrnt_info* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %3, align 8
  %74 = getelementptr inbounds %struct.vscsifrnt_info, %struct.vscsifrnt_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @scsifront_irq_fn, align 4
  %77 = load i32, i32* @IRQF_ONESHOT, align 4
  %78 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %3, align 8
  %79 = call i32 @request_threaded_irq(i32 %75, i32* null, i32 %76, i32 %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), %struct.vscsifrnt_info* %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %69
  %83 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %83, i32 %84, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %87

86:                                               ; preds = %69
  store i32 0, i32* %2, align 4
  br label %103

87:                                               ; preds = %82
  %88 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %3, align 8
  %89 = getelementptr inbounds %struct.vscsifrnt_info, %struct.vscsifrnt_info* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %3, align 8
  %92 = call i32 @unbind_from_irqhandler(i32 %90, %struct.vscsifrnt_info* %91)
  br label %93

93:                                               ; preds = %87, %65, %54
  %94 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %3, align 8
  %95 = getelementptr inbounds %struct.vscsifrnt_info, %struct.vscsifrnt_info* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %3, align 8
  %98 = getelementptr inbounds %struct.vscsifrnt_info, %struct.vscsifrnt_info* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @gnttab_end_foreign_access(i32 %96, i32 0, i64 %100)
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %93, %86, %36, %18
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @xenbus_dev_fatal(%struct.xenbus_device*, i32, i8*) #1

declare dso_local i32 @SHARED_RING_INIT(%struct.vscsiif_sring*) #1

declare dso_local i32 @FRONT_RING_INIT(%struct.TYPE_2__*, %struct.vscsiif_sring*, i32) #1

declare dso_local i32 @xenbus_grant_ring(%struct.xenbus_device*, %struct.vscsiif_sring*, i32, i32*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @xenbus_alloc_evtchn(%struct.xenbus_device*, i32*) #1

declare dso_local i32 @bind_evtchn_to_irq(i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i8*, %struct.vscsifrnt_info*) #1

declare dso_local i32 @unbind_from_irqhandler(i32, %struct.vscsifrnt_info*) #1

declare dso_local i32 @gnttab_end_foreign_access(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
