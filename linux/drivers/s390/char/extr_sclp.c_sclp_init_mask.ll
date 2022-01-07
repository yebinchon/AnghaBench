; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp.c_sclp_init_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp.c_sclp_init_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.init_sccb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@sclp_init_sccb = common dso_local global %struct.init_sccb* null, align 8
@sclp_lock = common dso_local global i32 0, align 4
@sclp_mask_state = common dso_local global i64 0, align 8
@sclp_mask_state_idle = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@sclp_activation_state = common dso_local global i64 0, align 8
@sclp_activation_state_inactive = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@sclp_mask_state_initializing = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@SCLP_MASK_RETRY = common dso_local global i32 0, align 4
@sclp_init_req = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@jiffies = common dso_local global i64 0, align 8
@SCLP_BUSY_INTERVAL = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@SCLP_REQ_DONE = common dso_local global i64 0, align 8
@SCLP_REQ_FAILED = common dso_local global i64 0, align 8
@sclp_receive_mask = common dso_local global i64 0, align 8
@sclp_send_mask = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sclp_init_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sclp_init_mask(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.init_sccb*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %11 = load %struct.init_sccb*, %struct.init_sccb** @sclp_init_sccb, align 8
  store %struct.init_sccb* %11, %struct.init_sccb** %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_lock_irqsave(i32* @sclp_lock, i64 %12)
  %14 = load i64, i64* @sclp_mask_state, align 8
  %15 = load i64, i64* @sclp_mask_state_idle, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @spin_unlock_irqrestore(i32* @sclp_lock, i64 %18)
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %118

22:                                               ; preds = %1
  %23 = load i64, i64* @sclp_activation_state, align 8
  %24 = load i64, i64* @sclp_activation_state_inactive, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* @sclp_lock, i64 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %118

31:                                               ; preds = %22
  %32 = load i64, i64* @sclp_mask_state_initializing, align 8
  store i64 %32, i64* @sclp_mask_state, align 8
  %33 = load i32, i32* %3, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 @__sclp_get_mask(i64* %6, i64* %7)
  br label %38

37:                                               ; preds = %31
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %38

38:                                               ; preds = %37, %35
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %110, %38
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @SCLP_MASK_RETRY, align 4
  %44 = icmp sle i32 %42, %43
  br i1 %44, label %45, label %113

45:                                               ; preds = %41
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @__sclp_make_init_req(i64 %46, i64 %47)
  %49 = load i64, i64* %4, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* @sclp_lock, i64 %49)
  %51 = call i64 @sclp_add_request(%struct.TYPE_5__* @sclp_init_req)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %45
  %54 = load i64, i64* @jiffies, align 8
  %55 = load i64, i64* @SCLP_BUSY_INTERVAL, align 8
  %56 = load i64, i64* @HZ, align 8
  %57 = mul i64 %55, %56
  %58 = add i64 %54, %57
  store i64 %58, i64* %10, align 8
  br label %59

59:                                               ; preds = %64, %53
  %60 = load i64, i64* @jiffies, align 8
  %61 = load i64, i64* %10, align 8
  %62 = call i64 @time_before(i64 %60, i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = call i32 (...) @sclp_sync_wait()
  br label %59

66:                                               ; preds = %59
  %67 = load i64, i64* %4, align 8
  %68 = call i32 @spin_lock_irqsave(i32* @sclp_lock, i64 %67)
  br label %110

69:                                               ; preds = %45
  br label %70

70:                                               ; preds = %80, %69
  %71 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sclp_init_req, i32 0, i32 0), align 8
  %72 = load i64, i64* @SCLP_REQ_DONE, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sclp_init_req, i32 0, i32 0), align 8
  %76 = load i64, i64* @SCLP_REQ_FAILED, align 8
  %77 = icmp ne i64 %75, %76
  br label %78

78:                                               ; preds = %74, %70
  %79 = phi i1 [ false, %70 ], [ %77, %74 ]
  br i1 %79, label %80, label %82

80:                                               ; preds = %78
  %81 = call i32 (...) @sclp_sync_wait()
  br label %70

82:                                               ; preds = %78
  %83 = load i64, i64* %4, align 8
  %84 = call i32 @spin_lock_irqsave(i32* @sclp_lock, i64 %83)
  %85 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sclp_init_req, i32 0, i32 0), align 8
  %86 = load i64, i64* @SCLP_REQ_DONE, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %109

88:                                               ; preds = %82
  %89 = load %struct.init_sccb*, %struct.init_sccb** %5, align 8
  %90 = getelementptr inbounds %struct.init_sccb, %struct.init_sccb* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 32
  br i1 %93, label %94, label %109

94:                                               ; preds = %88
  %95 = load i32, i32* %3, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load %struct.init_sccb*, %struct.init_sccb** %5, align 8
  %99 = call i64 @sccb_get_sclp_recv_mask(%struct.init_sccb* %98)
  store i64 %99, i64* @sclp_receive_mask, align 8
  %100 = load %struct.init_sccb*, %struct.init_sccb** %5, align 8
  %101 = call i64 @sccb_get_sclp_send_mask(%struct.init_sccb* %100)
  store i64 %101, i64* @sclp_send_mask, align 8
  br label %103

102:                                              ; preds = %94
  store i64 0, i64* @sclp_receive_mask, align 8
  store i64 0, i64* @sclp_send_mask, align 8
  br label %103

103:                                              ; preds = %102, %97
  %104 = load i64, i64* %4, align 8
  %105 = call i32 @spin_unlock_irqrestore(i32* @sclp_lock, i64 %104)
  %106 = call i32 (...) @sclp_dispatch_state_change()
  %107 = load i64, i64* %4, align 8
  %108 = call i32 @spin_lock_irqsave(i32* @sclp_lock, i64 %107)
  store i32 0, i32* %9, align 4
  br label %113

109:                                              ; preds = %88, %82
  br label %110

110:                                              ; preds = %109, %66
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %8, align 4
  br label %41

113:                                              ; preds = %103, %41
  %114 = load i64, i64* @sclp_mask_state_idle, align 8
  store i64 %114, i64* @sclp_mask_state, align 8
  %115 = load i64, i64* %4, align 8
  %116 = call i32 @spin_unlock_irqrestore(i32* @sclp_lock, i64 %115)
  %117 = load i32, i32* %9, align 4
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %113, %26, %17
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @__sclp_get_mask(i64*, i64*) #1

declare dso_local i32 @__sclp_make_init_req(i64, i64) #1

declare dso_local i64 @sclp_add_request(%struct.TYPE_5__*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @sclp_sync_wait(...) #1

declare dso_local i64 @sccb_get_sclp_recv_mask(%struct.init_sccb*) #1

declare dso_local i64 @sccb_get_sclp_send_mask(%struct.init_sccb*) #1

declare dso_local i32 @sclp_dispatch_state_change(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
