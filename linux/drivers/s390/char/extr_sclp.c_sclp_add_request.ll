; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp.c_sclp_add_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp.c_sclp_add_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.sclp_req = type { i32, %struct.TYPE_7__, i32, i64, i64, i32 }
%struct.TYPE_7__ = type { i32* }

@sclp_lock = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SCLP_REQ_QUEUED = common dso_local global i32 0, align 4
@sclp_req_queue = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@sclp_queue_timer = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@sclp_running_state = common dso_local global i64 0, align 8
@sclp_running_state_idle = common dso_local global i64 0, align 8
@ENODATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sclp_add_request(%struct.sclp_req* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sclp_req*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.sclp_req* %0, %struct.sclp_req** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i32 @spin_lock_irqsave(i32* @sclp_lock, i64 %6)
  %8 = load %struct.sclp_req*, %struct.sclp_req** %3, align 8
  %9 = call i32 @__sclp_can_add_request(%struct.sclp_req* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_unlock_irqrestore(i32* @sclp_lock, i64 %12)
  %14 = load i32, i32* @EIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %94

16:                                               ; preds = %1
  %17 = load i32, i32* @SCLP_REQ_QUEUED, align 4
  %18 = load %struct.sclp_req*, %struct.sclp_req** %3, align 8
  %19 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 8
  %20 = load %struct.sclp_req*, %struct.sclp_req** %3, align 8
  %21 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %20, i32 0, i32 4
  store i64 0, i64* %21, align 8
  %22 = load %struct.sclp_req*, %struct.sclp_req** %3, align 8
  %23 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %22, i32 0, i32 1
  %24 = call i32 @list_add_tail(%struct.TYPE_7__* %23, i32* @sclp_req_queue)
  store i32 0, i32* %5, align 4
  %25 = load %struct.sclp_req*, %struct.sclp_req** %3, align 8
  %26 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %16
  %30 = load i64, i64* @jiffies, align 8
  %31 = load %struct.sclp_req*, %struct.sclp_req** %3, align 8
  %32 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @HZ, align 4
  %35 = mul nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %30, %36
  %38 = load %struct.sclp_req*, %struct.sclp_req** %3, align 8
  %39 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %38, i32 0, i32 3
  store i64 %37, i64* %39, align 8
  %40 = call i32 @timer_pending(%struct.TYPE_6__* @sclp_queue_timer)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %29
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sclp_queue_timer, i32 0, i32 0), align 4
  %44 = load %struct.sclp_req*, %struct.sclp_req** %3, align 8
  %45 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @time_after(i32 %43, i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %42, %29
  %50 = load %struct.sclp_req*, %struct.sclp_req** %3, align 8
  %51 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @mod_timer(%struct.TYPE_6__* @sclp_queue_timer, i64 %52)
  br label %54

54:                                               ; preds = %49, %42
  br label %58

55:                                               ; preds = %16
  %56 = load %struct.sclp_req*, %struct.sclp_req** %3, align 8
  %57 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %56, i32 0, i32 3
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %55, %54
  %59 = load i64, i64* @sclp_running_state, align 8
  %60 = load i64, i64* @sclp_running_state_idle, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %89

62:                                               ; preds = %58
  %63 = load %struct.sclp_req*, %struct.sclp_req** %3, align 8
  %64 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = icmp eq i32* %66, @sclp_req_queue
  br i1 %67, label %68, label %89

68:                                               ; preds = %62
  %69 = load %struct.sclp_req*, %struct.sclp_req** %3, align 8
  %70 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %68
  %74 = load %struct.sclp_req*, %struct.sclp_req** %3, align 8
  %75 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %74, i32 0, i32 1
  %76 = call i32 @list_del(%struct.TYPE_7__* %75)
  %77 = load i32, i32* @ENODATA, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %90

79:                                               ; preds = %68
  %80 = load %struct.sclp_req*, %struct.sclp_req** %3, align 8
  %81 = call i32 @__sclp_start_request(%struct.sclp_req* %80)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load %struct.sclp_req*, %struct.sclp_req** %3, align 8
  %86 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %85, i32 0, i32 1
  %87 = call i32 @list_del(%struct.TYPE_7__* %86)
  br label %88

88:                                               ; preds = %84, %79
  br label %89

89:                                               ; preds = %88, %62, %58
  br label %90

90:                                               ; preds = %89, %73
  %91 = load i64, i64* %4, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32* @sclp_lock, i64 %91)
  %93 = load i32, i32* %5, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %90, %11
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__sclp_can_add_request(%struct.sclp_req*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @list_add_tail(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @timer_pending(%struct.TYPE_6__*) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @mod_timer(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @list_del(%struct.TYPE_7__*) #1

declare dso_local i32 @__sclp_start_request(%struct.sclp_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
