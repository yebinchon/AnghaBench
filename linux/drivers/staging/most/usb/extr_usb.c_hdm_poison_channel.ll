; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/usb/extr_usb.c_hdm_poison_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/usb/extr_usb.c_hdm_poison_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.most_interface = type { i32 }
%struct.most_dev = type { i32*, i32*, i32, i32, i32, %struct.TYPE_6__*, i32*, %struct.TYPE_5__*, i32*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Poison: Bad interface.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Channel ID out of range.\0A\00", align 1
@ECHRNG = common dso_local global i32 0, align 4
@MOST_CH_ASYNC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.most_interface*, i32)* @hdm_poison_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdm_poison_channel(%struct.most_interface* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.most_interface*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.most_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.most_interface* %0, %struct.most_interface** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.most_interface*, %struct.most_interface** %4, align 8
  %10 = call %struct.most_dev* @to_mdev(%struct.most_interface* %9)
  store %struct.most_dev* %10, %struct.most_dev** %6, align 8
  %11 = load %struct.most_interface*, %struct.most_interface** %4, align 8
  %12 = icmp ne %struct.most_interface* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.most_dev*, %struct.most_dev** %6, align 8
  %19 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %18, i32 0, i32 9
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i32 @dev_warn(i32* %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %121

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.most_interface*, %struct.most_interface** %4, align 8
  %31 = getelementptr inbounds %struct.most_interface, %struct.most_interface* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sge i32 %29, %32
  br label %34

34:                                               ; preds = %28, %25
  %35 = phi i1 [ true, %25 ], [ %33, %28 ]
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.most_dev*, %struct.most_dev** %6, align 8
  %41 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %40, i32 0, i32 9
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = call i32 @dev_warn(i32* %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @ECHRNG, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %121

47:                                               ; preds = %34
  %48 = load %struct.most_dev*, %struct.most_dev** %6, align 8
  %49 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %48, i32 0, i32 8
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32* %53, i32** %8, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @spin_lock_irqsave(i32* %54, i64 %55)
  %57 = load %struct.most_dev*, %struct.most_dev** %6, align 8
  %58 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 0, i32* %62, align 4
  %63 = load i32*, i32** %8, align 8
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* %63, i64 %64)
  %66 = load %struct.most_dev*, %struct.most_dev** %6, align 8
  %67 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %66, i32 0, i32 7
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = call i32 @cancel_work_sync(i32* %72)
  %74 = load %struct.most_dev*, %struct.most_dev** %6, align 8
  %75 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %74, i32 0, i32 2
  %76 = call i32 @mutex_lock(i32* %75)
  %77 = load %struct.most_dev*, %struct.most_dev** %6, align 8
  %78 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %77, i32 0, i32 6
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = call i32 @usb_kill_anchored_urbs(i32* %82)
  %84 = load %struct.most_dev*, %struct.most_dev** %6, align 8
  %85 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %47
  %93 = load %struct.most_dev*, %struct.most_dev** %6, align 8
  %94 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 0, i32* %98, align 4
  br label %99

99:                                               ; preds = %92, %47
  %100 = load %struct.most_dev*, %struct.most_dev** %6, align 8
  %101 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %100, i32 0, i32 5
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @MOST_CH_ASYNC, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %99
  %111 = load %struct.most_dev*, %struct.most_dev** %6, align 8
  %112 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %111, i32 0, i32 4
  %113 = call i32 @del_timer_sync(i32* %112)
  %114 = load %struct.most_dev*, %struct.most_dev** %6, align 8
  %115 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %114, i32 0, i32 3
  %116 = call i32 @cancel_work_sync(i32* %115)
  br label %117

117:                                              ; preds = %110, %99
  %118 = load %struct.most_dev*, %struct.most_dev** %6, align 8
  %119 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %118, i32 0, i32 2
  %120 = call i32 @mutex_unlock(i32* %119)
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %117, %39, %17
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local %struct.most_dev* @to_mdev(%struct.most_interface*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_kill_anchored_urbs(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
