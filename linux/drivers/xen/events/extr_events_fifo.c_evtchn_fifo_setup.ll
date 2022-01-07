; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/events/extr_events_fifo.c_evtchn_fifo_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/events/extr_events_fifo.c_evtchn_fifo_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_info = type { i32 }
%struct.evtchn_expand_array = type { i32 }

@EVENT_WORDS_PER_PAGE = common dso_local global i32 0, align 4
@MAX_EVENT_ARRAY_PAGES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@event_array_pages = common dso_local global i32 0, align 4
@event_array = common dso_local global i8** null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EVTCHNOP_expand_array = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"xen: unable to expand event array with initial page (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"unable to expand event array (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_info*)* @evtchn_fifo_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evtchn_fifo_setup(%struct.irq_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.irq_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.evtchn_expand_array, align 4
  store %struct.irq_info* %0, %struct.irq_info** %3, align 8
  %9 = load %struct.irq_info*, %struct.irq_info** %3, align 8
  %10 = getelementptr inbounds %struct.irq_info, %struct.irq_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @EVENT_WORDS_PER_PAGE, align 4
  %14 = udiv i32 %12, %13
  %15 = add i32 %14, 1
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @MAX_EVENT_ARRAY_PAGES, align 4
  %18 = icmp ugt i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %77

22:                                               ; preds = %1
  br label %23

23:                                               ; preds = %61, %22
  %24 = load i32, i32* @event_array_pages, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %64

27:                                               ; preds = %23
  %28 = load i8**, i8*** @event_array, align 8
  %29 = load i32, i32* @event_array_pages, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %7, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %50, label %35

35:                                               ; preds = %27
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i64 @__get_free_page(i32 %36)
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** %7, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %65

44:                                               ; preds = %35
  %45 = load i8*, i8** %7, align 8
  %46 = load i8**, i8*** @event_array, align 8
  %47 = load i32, i32* @event_array_pages, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  store i8* %45, i8** %49, align 8
  br label %50

50:                                               ; preds = %44, %27
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @init_array_page(i8* %51)
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @virt_to_gfn(i8* %53)
  %55 = getelementptr inbounds %struct.evtchn_expand_array, %struct.evtchn_expand_array* %8, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* @EVTCHNOP_expand_array, align 4
  %57 = call i32 @HYPERVISOR_event_channel_op(i32 %56, %struct.evtchn_expand_array* %8)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %65

61:                                               ; preds = %50
  %62 = load i32, i32* @event_array_pages, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* @event_array_pages, align 4
  br label %23

64:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %77

65:                                               ; preds = %60, %41
  %66 = load i32, i32* @event_array_pages, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @panic(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %69)
  br label %74

71:                                               ; preds = %65
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %71, %68
  %75 = call i32 (...) @free_unused_array_pages()
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %74, %64, %19
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @init_array_page(i8*) #1

declare dso_local i32 @virt_to_gfn(i8*) #1

declare dso_local i32 @HYPERVISOR_event_channel_op(i32, %struct.evtchn_expand_array*) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @free_unused_array_pages(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
