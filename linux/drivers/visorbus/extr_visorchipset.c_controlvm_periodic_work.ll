; ModuleID = '/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorchipset.c_controlvm_periodic_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorchipset.c_controlvm_periodic_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32, i64, %struct.controlvm_message, i32 }
%struct.controlvm_message = type { i32 }
%struct.work_struct = type { i32 }

@chipset_dev = common dso_local global %struct.TYPE_2__* null, align 8
@CONTROLVM_QUEUE_RESPONSE = common dso_local global i32 0, align 4
@CONTROLVM_MESSAGE_MAX = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@MIN_IDLE_SECONDS = common dso_local global i32 0, align 4
@POLLJIFFIES_CONTROLVM_SLOW = common dso_local global i64 0, align 8
@POLLJIFFIES_CONTROLVM_FAST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @controlvm_periodic_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @controlvm_periodic_work(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.controlvm_message, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %20, %1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @chipset_dev, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @CONTROLVM_QUEUE_RESPONSE, align 4
  %11 = call i32 @visorchannel_signalremove(i32 %9, i32 %10, %struct.controlvm_message* %3)
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %6
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @CONTROLVM_MESSAGE_MAX, align 4
  %19 = icmp slt i32 %17, %18
  br label %20

20:                                               ; preds = %15, %12
  %21 = phi i1 [ false, %12 ], [ %19, %15 ]
  br i1 %21, label %6, label %22

22:                                               ; preds = %20
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @EAGAIN, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp ne i32 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %73

28:                                               ; preds = %22
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @chipset_dev, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @chipset_dev, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 4
  %36 = bitcast %struct.controlvm_message* %3 to i8*
  %37 = bitcast %struct.controlvm_message* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 8 %37, i64 4, i1 false)
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @chipset_dev, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  store i32 0, i32* %5, align 4
  br label %42

40:                                               ; preds = %28
  %41 = call i32 @read_controlvm_event(%struct.controlvm_message* %3)
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %40, %33
  br label %43

43:                                               ; preds = %69, %42
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br i1 %46, label %47, label %71

47:                                               ; preds = %43
  %48 = load i64, i64* @jiffies, align 8
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @chipset_dev, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  store i64 %48, i64* %50, align 8
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @chipset_dev, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @visorchannel_get_physaddr(i32 %53)
  %55 = getelementptr inbounds %struct.controlvm_message, %struct.controlvm_message* %3, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @handle_command(i32 %56, i32 %54)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @EAGAIN, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %47
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @chipset_dev, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 4
  %65 = bitcast %struct.controlvm_message* %64 to i8*
  %66 = bitcast %struct.controlvm_message* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 4 %66, i64 4, i1 false)
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @chipset_dev, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  br label %71

69:                                               ; preds = %47
  %70 = call i32 @read_controlvm_event(%struct.controlvm_message* %3)
  store i32 %70, i32* %5, align 4
  br label %43

71:                                               ; preds = %62, %43
  %72 = call i32 (...) @parahotplug_process_list()
  br label %73

73:                                               ; preds = %71, %27
  %74 = load i64, i64* @jiffies, align 8
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @chipset_dev, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* @HZ, align 4
  %79 = load i32, i32* @MIN_IDLE_SECONDS, align 4
  %80 = mul nsw i32 %78, %79
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %77, %81
  %83 = call i64 @time_after(i64 %74, i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %73
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** @chipset_dev, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @POLLJIFFIES_CONTROLVM_SLOW, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load i64, i64* @POLLJIFFIES_CONTROLVM_SLOW, align 8
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** @chipset_dev, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  store i64 %92, i64* %94, align 8
  br label %95

95:                                               ; preds = %91, %85
  br label %107

96:                                               ; preds = %73
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @chipset_dev, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @POLLJIFFIES_CONTROLVM_FAST, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load i64, i64* @POLLJIFFIES_CONTROLVM_FAST, align 8
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** @chipset_dev, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  store i64 %103, i64* %105, align 8
  br label %106

106:                                              ; preds = %102, %96
  br label %107

107:                                              ; preds = %106, %95
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** @chipset_dev, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** @chipset_dev, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @schedule_delayed_work(i32* %109, i64 %112)
  ret void
}

declare dso_local i32 @visorchannel_signalremove(i32, i32, %struct.controlvm_message*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @read_controlvm_event(%struct.controlvm_message*) #1

declare dso_local i32 @handle_command(i32, i32) #1

declare dso_local i32 @visorchannel_get_physaddr(i32) #1

declare dso_local i32 @parahotplug_process_list(...) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @schedule_delayed_work(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
