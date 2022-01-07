; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_event_indication.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_event_indication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i64, i32, i32, i32, i32 }
%struct.wsm_buf = type { i32 }
%struct.cw1200_wsm_event = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }

@NL80211_IFTYPE_UNSPECIFIED = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"[WSM] Event: %d(%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cw1200_common*, %struct.wsm_buf*)* @wsm_event_indication to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wsm_event_indication(%struct.cw1200_common* %0, %struct.wsm_buf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cw1200_common*, align 8
  %5 = alloca %struct.wsm_buf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cw1200_wsm_event*, align 8
  store %struct.cw1200_common* %0, %struct.cw1200_common** %4, align 8
  store %struct.wsm_buf* %1, %struct.wsm_buf** %5, align 8
  %8 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %9 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @NL80211_IFTYPE_UNSPECIFIED, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %71

14:                                               ; preds = %2
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.cw1200_wsm_event* @kzalloc(i32 24, i32 %15)
  store %struct.cw1200_wsm_event* %16, %struct.cw1200_wsm_event** %7, align 8
  %17 = load %struct.cw1200_wsm_event*, %struct.cw1200_wsm_event** %7, align 8
  %18 = icmp ne %struct.cw1200_wsm_event* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %71

22:                                               ; preds = %14
  %23 = load %struct.wsm_buf*, %struct.wsm_buf** %5, align 8
  %24 = call i8* @WSM_GET32(%struct.wsm_buf* %23)
  %25 = load %struct.cw1200_wsm_event*, %struct.cw1200_wsm_event** %7, align 8
  %26 = getelementptr inbounds %struct.cw1200_wsm_event, %struct.cw1200_wsm_event* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i8* %24, i8** %27, align 8
  %28 = load %struct.wsm_buf*, %struct.wsm_buf** %5, align 8
  %29 = call i8* @WSM_GET32(%struct.wsm_buf* %28)
  %30 = load %struct.cw1200_wsm_event*, %struct.cw1200_wsm_event** %7, align 8
  %31 = getelementptr inbounds %struct.cw1200_wsm_event, %struct.cw1200_wsm_event* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i8* %29, i8** %32, align 8
  %33 = load %struct.cw1200_wsm_event*, %struct.cw1200_wsm_event** %7, align 8
  %34 = getelementptr inbounds %struct.cw1200_wsm_event, %struct.cw1200_wsm_event* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.cw1200_wsm_event*, %struct.cw1200_wsm_event** %7, align 8
  %38 = getelementptr inbounds %struct.cw1200_wsm_event, %struct.cw1200_wsm_event* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %36, i8* %40)
  %42 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %43 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %42, i32 0, i32 3
  %44 = call i32 @spin_lock(i32* %43)
  %45 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %46 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %45, i32 0, i32 4
  %47 = call i32 @list_empty(i32* %46)
  store i32 %47, i32* %6, align 4
  %48 = load %struct.cw1200_wsm_event*, %struct.cw1200_wsm_event** %7, align 8
  %49 = getelementptr inbounds %struct.cw1200_wsm_event, %struct.cw1200_wsm_event* %48, i32 0, i32 0
  %50 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %51 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %50, i32 0, i32 4
  %52 = call i32 @list_add_tail(i32* %49, i32* %51)
  %53 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %54 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %53, i32 0, i32 3
  %55 = call i32 @spin_unlock(i32* %54)
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %22
  %59 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %60 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %63 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %62, i32 0, i32 1
  %64 = call i32 @queue_work(i32 %61, i32* %63)
  br label %65

65:                                               ; preds = %58, %22
  store i32 0, i32* %3, align 4
  br label %71

66:                                               ; No predecessors!
  %67 = load %struct.cw1200_wsm_event*, %struct.cw1200_wsm_event** %7, align 8
  %68 = call i32 @kfree(%struct.cw1200_wsm_event* %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %66, %65, %19, %13
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.cw1200_wsm_event* @kzalloc(i32, i32) #1

declare dso_local i8* @WSM_GET32(%struct.wsm_buf*) #1

declare dso_local i32 @pr_debug(i8*, i8*, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @kfree(%struct.cw1200_wsm_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
