; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_xen-scsiback.c_scsiback_init_sring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_xen-scsiback.c_scsiback_init_sring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vscsibk_info = type { i32, i32, i32, i32 }
%struct.vscsiif_sring = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@scsiback_irq_fn = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"vscsiif-backend\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vscsibk_info*, i32, i32)* @scsiback_init_sring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsiback_init_sring(%struct.vscsibk_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vscsibk_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.vscsiif_sring*, align 8
  %10 = alloca i32, align 4
  store %struct.vscsibk_info* %0, %struct.vscsibk_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.vscsibk_info*, %struct.vscsibk_info** %5, align 8
  %12 = getelementptr inbounds %struct.vscsibk_info, %struct.vscsibk_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %71

16:                                               ; preds = %3
  %17 = load %struct.vscsibk_info*, %struct.vscsibk_info** %5, align 8
  %18 = getelementptr inbounds %struct.vscsibk_info, %struct.vscsibk_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @xenbus_map_ring_valloc(i32 %19, i32* %6, i32 1, i8** %8)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %4, align 4
  br label %71

25:                                               ; preds = %16
  %26 = load i8*, i8** %8, align 8
  %27 = bitcast i8* %26 to %struct.vscsiif_sring*
  store %struct.vscsiif_sring* %27, %struct.vscsiif_sring** %9, align 8
  %28 = load %struct.vscsibk_info*, %struct.vscsibk_info** %5, align 8
  %29 = getelementptr inbounds %struct.vscsibk_info, %struct.vscsibk_info* %28, i32 0, i32 3
  %30 = load %struct.vscsiif_sring*, %struct.vscsiif_sring** %9, align 8
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = call i32 @BACK_RING_INIT(i32* %29, %struct.vscsiif_sring* %30, i32 %31)
  %33 = load %struct.vscsibk_info*, %struct.vscsibk_info** %5, align 8
  %34 = getelementptr inbounds %struct.vscsibk_info, %struct.vscsibk_info* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @bind_interdomain_evtchn_to_irq(i32 %35, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %25
  br label %64

41:                                               ; preds = %25
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.vscsibk_info*, %struct.vscsibk_info** %5, align 8
  %44 = getelementptr inbounds %struct.vscsibk_info, %struct.vscsibk_info* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.vscsibk_info*, %struct.vscsibk_info** %5, align 8
  %46 = getelementptr inbounds %struct.vscsibk_info, %struct.vscsibk_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @scsiback_irq_fn, align 4
  %49 = load i32, i32* @IRQF_ONESHOT, align 4
  %50 = load %struct.vscsibk_info*, %struct.vscsibk_info** %5, align 8
  %51 = call i32 @request_threaded_irq(i32 %47, i32* null, i32 %48, i32 %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.vscsibk_info* %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %41
  br label %56

55:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %71

56:                                               ; preds = %54
  %57 = load %struct.vscsibk_info*, %struct.vscsibk_info** %5, align 8
  %58 = getelementptr inbounds %struct.vscsibk_info, %struct.vscsibk_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.vscsibk_info*, %struct.vscsibk_info** %5, align 8
  %61 = call i32 @unbind_from_irqhandler(i32 %59, %struct.vscsibk_info* %60)
  %62 = load %struct.vscsibk_info*, %struct.vscsibk_info** %5, align 8
  %63 = getelementptr inbounds %struct.vscsibk_info, %struct.vscsibk_info* %62, i32 0, i32 0
  store i32 0, i32* %63, align 4
  br label %64

64:                                               ; preds = %56, %40
  %65 = load %struct.vscsibk_info*, %struct.vscsibk_info** %5, align 8
  %66 = getelementptr inbounds %struct.vscsibk_info, %struct.vscsibk_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 @xenbus_unmap_ring_vfree(i32 %67, i8* %68)
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %64, %55, %23, %15
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @xenbus_map_ring_valloc(i32, i32*, i32, i8**) #1

declare dso_local i32 @BACK_RING_INIT(i32*, %struct.vscsiif_sring*, i32) #1

declare dso_local i32 @bind_interdomain_evtchn_to_irq(i32, i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i8*, %struct.vscsibk_info*) #1

declare dso_local i32 @unbind_from_irqhandler(i32, %struct.vscsibk_info*) #1

declare dso_local i32 @xenbus_unmap_ring_vfree(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
