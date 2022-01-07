; ModuleID = '/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_core.c_vbg_core_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_core.c_vbg_core_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vbg_dev = type { i32, i32, i32, %struct.TYPE_10__, i32, %struct.TYPE_8__*, %struct.vmmdev_events* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.vmmdev_events = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@VERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Error performing events req, rc: %d\0A\00", align 1
@VMMDEV_EVENT_MOUSE_POSITION_CHANGED = common dso_local global i32 0, align 4
@VMMDEV_EVENT_HGCM = common dso_local global i32 0, align 4
@VMMDEV_EVENT_BALLOON_CHANGE_REQUEST = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vbg_core_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vbg_dev*, align 8
  %7 = alloca %struct.vmmdev_events*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.vbg_dev*
  store %struct.vbg_dev* %13, %struct.vbg_dev** %6, align 8
  %14 = load %struct.vbg_dev*, %struct.vbg_dev** %6, align 8
  %15 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %14, i32 0, i32 6
  %16 = load %struct.vmmdev_events*, %struct.vmmdev_events** %15, align 8
  store %struct.vmmdev_events* %16, %struct.vmmdev_events** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %17 = load %struct.vbg_dev*, %struct.vbg_dev** %6, align 8
  %18 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %17, i32 0, i32 5
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @IRQ_NONE, align 4
  store i32 %26, i32* %3, align 4
  br label %111

27:                                               ; preds = %2
  %28 = load i32, i32* @VERR_INTERNAL_ERROR, align 4
  %29 = load %struct.vmmdev_events*, %struct.vmmdev_events** %7, align 8
  %30 = getelementptr inbounds %struct.vmmdev_events, %struct.vmmdev_events* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = load %struct.vmmdev_events*, %struct.vmmdev_events** %7, align 8
  %33 = getelementptr inbounds %struct.vmmdev_events, %struct.vmmdev_events* %32, i32 0, i32 0
  store i32 0, i32* %33, align 4
  %34 = load %struct.vbg_dev*, %struct.vbg_dev** %6, align 8
  %35 = load %struct.vmmdev_events*, %struct.vmmdev_events** %7, align 8
  %36 = call i32 @vbg_req_perform(%struct.vbg_dev* %34, %struct.vmmdev_events* %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %27
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @vbg_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @IRQ_NONE, align 4
  store i32 %42, i32* %3, align 4
  br label %111

43:                                               ; preds = %27
  %44 = load %struct.vmmdev_events*, %struct.vmmdev_events** %7, align 8
  %45 = getelementptr inbounds %struct.vmmdev_events, %struct.vmmdev_events* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @VMMDEV_EVENT_MOUSE_POSITION_CHANGED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %43
  store i32 1, i32* %8, align 4
  %52 = load i32, i32* @VMMDEV_EVENT_MOUSE_POSITION_CHANGED, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %10, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %51, %43
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @VMMDEV_EVENT_HGCM, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load %struct.vbg_dev*, %struct.vbg_dev** %6, align 8
  %63 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %62, i32 0, i32 4
  %64 = call i32 @wake_up(i32* %63)
  %65 = load i32, i32* @VMMDEV_EVENT_HGCM, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %10, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %61, %56
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @VMMDEV_EVENT_BALLOON_CHANGE_REQUEST, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %69
  %75 = load %struct.vbg_dev*, %struct.vbg_dev** %6, align 8
  %76 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = call i32 @schedule_work(i32* %77)
  %79 = load i32, i32* @VMMDEV_EVENT_BALLOON_CHANGE_REQUEST, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %10, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %10, align 4
  br label %83

83:                                               ; preds = %74, %69
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %103

86:                                               ; preds = %83
  %87 = load %struct.vbg_dev*, %struct.vbg_dev** %6, align 8
  %88 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %87, i32 0, i32 2
  %89 = load i64, i64* %9, align 8
  %90 = call i32 @spin_lock_irqsave(i32* %88, i64 %89)
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.vbg_dev*, %struct.vbg_dev** %6, align 8
  %93 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  %96 = load %struct.vbg_dev*, %struct.vbg_dev** %6, align 8
  %97 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %96, i32 0, i32 2
  %98 = load i64, i64* %9, align 8
  %99 = call i32 @spin_unlock_irqrestore(i32* %97, i64 %98)
  %100 = load %struct.vbg_dev*, %struct.vbg_dev** %6, align 8
  %101 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %100, i32 0, i32 1
  %102 = call i32 @wake_up(i32* %101)
  br label %103

103:                                              ; preds = %86, %83
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load %struct.vbg_dev*, %struct.vbg_dev** %6, align 8
  %108 = call i32 @vbg_linux_mouse_event(%struct.vbg_dev* %107)
  br label %109

109:                                              ; preds = %106, %103
  %110 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %109, %39, %25
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @vbg_req_perform(%struct.vbg_dev*, %struct.vmmdev_events*) #1

declare dso_local i32 @vbg_err(i8*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vbg_linux_mouse_event(%struct.vbg_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
