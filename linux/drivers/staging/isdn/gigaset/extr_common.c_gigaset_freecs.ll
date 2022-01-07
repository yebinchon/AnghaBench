; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_common.c_gigaset_freecs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_common.c_gigaset_freecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 (%struct.cardstate*)* }

@DEBUG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"clearing bcs[%d]\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"clearing hw\00", align 1
@VALID_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"clearing at_state\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"freeing inbuf\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gigaset_freecs(%struct.cardstate* %0) #0 {
  %2 = alloca %struct.cardstate*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.cardstate* %0, %struct.cardstate** %2, align 8
  %5 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %6 = icmp ne %struct.cardstate* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %101

8:                                                ; preds = %1
  %9 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %10 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %9, i32 0, i32 2
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %13 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %12, i32 0, i32 10
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %17 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %16, i32 0, i32 11
  store i64 0, i64* %17, align 8
  %18 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %19 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %18, i32 0, i32 10
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* %19, i64 %20)
  %22 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %23 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %22, i32 0, i32 9
  %24 = call i32 @tasklet_kill(i32* %23)
  %25 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %26 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %25, i32 0, i32 8
  %27 = call i32 @del_timer_sync(i32* %26)
  %28 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %29 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %31 [
    i32 2, label %65
    i32 1, label %71
    i32 0, label %84
  ]

31:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %48, %31
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %35 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %32
  %39 = load i32, i32* @DEBUG_INIT, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i32 (i32, i8*, ...) @gig_dbg(i32 %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %43 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %44, %45
  %47 = call i32 @gigaset_freebcs(i32 %46)
  br label %48

48:                                               ; preds = %38
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %32

51:                                               ; preds = %32
  %52 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %53 = call i32 @gigaset_free_dev_sysfs(%struct.cardstate* %52)
  %54 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %55 = call i32 @gigaset_if_free(%struct.cardstate* %54)
  %56 = load i32, i32* @DEBUG_INIT, align 4
  %57 = call i32 (i32, i8*, ...) @gig_dbg(i32 %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %58 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %59 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %58, i32 0, i32 7
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32 (%struct.cardstate*)*, i32 (%struct.cardstate*)** %61, align 8
  %63 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %64 = call i32 %62(%struct.cardstate* %63)
  br label %65

65:                                               ; preds = %8, %51
  %66 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %67 = load i32, i32* @VALID_ID, align 4
  %68 = call i32 @make_invalid(%struct.cardstate* %66, i32 %67)
  %69 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %70 = call i32 @gigaset_isdn_unregdev(%struct.cardstate* %69)
  br label %71

71:                                               ; preds = %8, %65
  %72 = load i32, i32* @DEBUG_INIT, align 4
  %73 = call i32 (i32, i8*, ...) @gig_dbg(i32 %72, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %74 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %75 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %74, i32 0, i32 6
  %76 = call i32 @clear_at_state(i32* %75)
  %77 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %78 = call i32 @dealloc_temp_at_states(%struct.cardstate* %77)
  %79 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %80 = call i32 @clear_events(%struct.cardstate* %79)
  %81 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %82 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %81, i32 0, i32 5
  %83 = call i32 @tty_port_destroy(i32* %82)
  br label %84

84:                                               ; preds = %8, %71
  %85 = load i32, i32* @DEBUG_INIT, align 4
  %86 = call i32 (i32, i8*, ...) @gig_dbg(i32 %85, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %87 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %88 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @kfree(i32 %89)
  %91 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %92 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @kfree(i32 %93)
  br label %95

95:                                               ; preds = %84
  %96 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %97 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %96, i32 0, i32 2
  %98 = call i32 @mutex_unlock(i32* %97)
  %99 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %100 = call i32 @free_cs(%struct.cardstate* %99)
  br label %101

101:                                              ; preds = %95, %7
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @gig_dbg(i32, i8*, ...) #1

declare dso_local i32 @gigaset_freebcs(i32) #1

declare dso_local i32 @gigaset_free_dev_sysfs(%struct.cardstate*) #1

declare dso_local i32 @gigaset_if_free(%struct.cardstate*) #1

declare dso_local i32 @make_invalid(%struct.cardstate*, i32) #1

declare dso_local i32 @gigaset_isdn_unregdev(%struct.cardstate*) #1

declare dso_local i32 @clear_at_state(i32*) #1

declare dso_local i32 @dealloc_temp_at_states(%struct.cardstate*) #1

declare dso_local i32 @clear_events(%struct.cardstate*) #1

declare dso_local i32 @tty_port_destroy(i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @free_cs(%struct.cardstate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
