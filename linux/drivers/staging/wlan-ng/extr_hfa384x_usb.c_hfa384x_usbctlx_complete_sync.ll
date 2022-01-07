; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_usbctlx_complete_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_usbctlx_complete_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfa384x = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.hfa384x_usbctlx = type { i32, i64, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.usbctlx_completor = type { i32 (%struct.usbctlx_completor*)* }

@ENODEV = common dso_local global i32 0, align 4
@CTLX_REQ_FAILED = common dso_local global i64 0, align 8
@CTLX_COMPLETE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"CTLX[%d] error: state(%s)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfa384x*, %struct.hfa384x_usbctlx*, %struct.usbctlx_completor*)* @hfa384x_usbctlx_complete_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfa384x_usbctlx_complete_sync(%struct.hfa384x* %0, %struct.hfa384x_usbctlx* %1, %struct.usbctlx_completor* %2) #0 {
  %4 = alloca %struct.hfa384x*, align 8
  %5 = alloca %struct.hfa384x_usbctlx*, align 8
  %6 = alloca %struct.usbctlx_completor*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hfa384x* %0, %struct.hfa384x** %4, align 8
  store %struct.hfa384x_usbctlx* %1, %struct.hfa384x_usbctlx** %5, align 8
  store %struct.usbctlx_completor* %2, %struct.usbctlx_completor** %6, align 8
  %10 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %5, align 8
  %11 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %10, i32 0, i32 4
  %12 = call i32 @wait_for_completion_interruptible(i32* %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %14 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  br label %18

18:                                               ; preds = %71, %3
  %19 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %20 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %19, i32 0, i32 3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %18
  %26 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %27 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %8, align 4
  br label %138

33:                                               ; preds = %18
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %96

36:                                               ; preds = %33
  store i32 0, i32* %9, align 4
  %37 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %5, align 8
  %38 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %39 = call %struct.hfa384x_usbctlx* @get_active_ctlx(%struct.hfa384x* %38)
  %40 = icmp eq %struct.hfa384x_usbctlx* %37, %39
  br i1 %40, label %41, label %73

41:                                               ; preds = %36
  %42 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %43 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %48 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %47, i32 0, i32 6
  %49 = call i32 @del_singleshot_timer_sync(i32* %48)
  %50 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %51 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %50, i32 0, i32 5
  %52 = call i32 @del_singleshot_timer_sync(i32* %51)
  %53 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %54 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %56 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %55, i32 0, i32 1
  store i32 1, i32* %56, align 4
  %57 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %58 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %57, i32 0, i32 4
  %59 = call i32 @usb_kill_urb(i32* %58)
  %60 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %61 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @spin_lock_irqsave(i32* %62, i64 %63)
  store i32 1, i32* %9, align 4
  %65 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %66 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %65, i32 0, i32 3
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %41
  br label %18

72:                                               ; preds = %41
  br label %73

73:                                               ; preds = %72, %36
  %74 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %5, align 8
  %75 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  %76 = load i64, i64* @CTLX_REQ_FAILED, align 8
  %77 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %5, align 8
  %78 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  %79 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %5, align 8
  %80 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %79, i32 0, i32 2
  %81 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %82 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = call i32 @list_move_tail(i32* %80, i32* %83)
  %85 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %86 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i64, i64* %7, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32* %87, i64 %88)
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %73
  %93 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %94 = call i32 @hfa384x_usbctlxq_run(%struct.hfa384x* %93)
  br label %95

95:                                               ; preds = %92, %73
  br label %137

96:                                               ; preds = %33
  %97 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %5, align 8
  %98 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @CTLX_COMPLETE, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %96
  %103 = load %struct.usbctlx_completor*, %struct.usbctlx_completor** %6, align 8
  %104 = getelementptr inbounds %struct.usbctlx_completor, %struct.usbctlx_completor* %103, i32 0, i32 0
  %105 = load i32 (%struct.usbctlx_completor*)*, i32 (%struct.usbctlx_completor*)** %104, align 8
  %106 = load %struct.usbctlx_completor*, %struct.usbctlx_completor** %6, align 8
  %107 = call i32 %105(%struct.usbctlx_completor* %106)
  store i32 %107, i32* %8, align 4
  br label %126

108:                                              ; preds = %96
  %109 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %110 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %109, i32 0, i32 3
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %5, align 8
  %115 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @le16_to_cpu(i32 %117)
  %119 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %5, align 8
  %120 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @ctlxstr(i64 %121)
  %123 = call i32 @netdev_warn(i32 %113, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %118, i32 %122)
  %124 = load i32, i32* @EIO, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %8, align 4
  br label %126

126:                                              ; preds = %108, %102
  %127 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %5, align 8
  %128 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %127, i32 0, i32 2
  %129 = call i32 @list_del(i32* %128)
  %130 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %131 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i64, i64* %7, align 8
  %134 = call i32 @spin_unlock_irqrestore(i32* %132, i64 %133)
  %135 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %5, align 8
  %136 = call i32 @kfree(%struct.hfa384x_usbctlx* %135)
  br label %137

137:                                              ; preds = %126, %95
  br label %138

138:                                              ; preds = %137, %25
  %139 = load i32, i32* %8, align 4
  ret i32 %139
}

declare dso_local i32 @wait_for_completion_interruptible(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.hfa384x_usbctlx* @get_active_ctlx(%struct.hfa384x*) #1

declare dso_local i32 @del_singleshot_timer_sync(i32*) #1

declare dso_local i32 @usb_kill_urb(i32*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @hfa384x_usbctlxq_run(%struct.hfa384x*) #1

declare dso_local i32 @netdev_warn(i32, i8*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ctlxstr(i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.hfa384x_usbctlx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
