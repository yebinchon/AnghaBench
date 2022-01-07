; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxlflash/extr_main.c_stop_afu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxlflash/extr_main.c_stop_afu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxlflash_cfg = type { %struct.TYPE_2__*, i32, %struct.afu* }
%struct.TYPE_2__ = type { i32 (%struct.afu*)* }
%struct.afu = type { i32, %struct.afu*, i32 }
%struct.hwq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxlflash_cfg*)* @stop_afu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stop_afu(%struct.cxlflash_cfg* %0) #0 {
  %2 = alloca %struct.cxlflash_cfg*, align 8
  %3 = alloca %struct.afu*, align 8
  %4 = alloca %struct.hwq*, align 8
  %5 = alloca i32, align 4
  store %struct.cxlflash_cfg* %0, %struct.cxlflash_cfg** %2, align 8
  %6 = load %struct.cxlflash_cfg*, %struct.cxlflash_cfg** %2, align 8
  %7 = getelementptr inbounds %struct.cxlflash_cfg, %struct.cxlflash_cfg* %6, i32 0, i32 2
  %8 = load %struct.afu*, %struct.afu** %7, align 8
  store %struct.afu* %8, %struct.afu** %3, align 8
  %9 = load %struct.cxlflash_cfg*, %struct.cxlflash_cfg** %2, align 8
  %10 = getelementptr inbounds %struct.cxlflash_cfg, %struct.cxlflash_cfg* %9, i32 0, i32 1
  %11 = call i32 @cancel_work_sync(i32* %10)
  %12 = call i32 (...) @current_is_async()
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load %struct.cxlflash_cfg*, %struct.cxlflash_cfg** %2, align 8
  %16 = call i32 @cxlflash_reset_sync(%struct.cxlflash_cfg* %15)
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.afu*, %struct.afu** %3, align 8
  %19 = call i64 @likely(%struct.afu* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %70

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %27, %21
  %23 = load %struct.afu*, %struct.afu** %3, align 8
  %24 = getelementptr inbounds %struct.afu, %struct.afu* %23, i32 0, i32 2
  %25 = call i64 @atomic_read(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = call i32 @ssleep(i32 1)
  br label %22

29:                                               ; preds = %22
  %30 = load %struct.afu*, %struct.afu** %3, align 8
  %31 = call i64 @afu_is_irqpoll_enabled(%struct.afu* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %47, %33
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.afu*, %struct.afu** %3, align 8
  %37 = getelementptr inbounds %struct.afu, %struct.afu* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %34
  %41 = load %struct.afu*, %struct.afu** %3, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call %struct.hwq* @get_hwq(%struct.afu* %41, i32 %42)
  store %struct.hwq* %43, %struct.hwq** %4, align 8
  %44 = load %struct.hwq*, %struct.hwq** %4, align 8
  %45 = getelementptr inbounds %struct.hwq, %struct.hwq* %44, i32 0, i32 0
  %46 = call i32 @irq_poll_disable(i32* %45)
  br label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %34

50:                                               ; preds = %34
  br label %51

51:                                               ; preds = %50, %29
  %52 = load %struct.afu*, %struct.afu** %3, align 8
  %53 = getelementptr inbounds %struct.afu, %struct.afu* %52, i32 0, i32 1
  %54 = load %struct.afu*, %struct.afu** %53, align 8
  %55 = call i64 @likely(%struct.afu* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %51
  %58 = load %struct.cxlflash_cfg*, %struct.cxlflash_cfg** %2, align 8
  %59 = getelementptr inbounds %struct.cxlflash_cfg, %struct.cxlflash_cfg* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32 (%struct.afu*)*, i32 (%struct.afu*)** %61, align 8
  %63 = load %struct.afu*, %struct.afu** %3, align 8
  %64 = getelementptr inbounds %struct.afu, %struct.afu* %63, i32 0, i32 1
  %65 = load %struct.afu*, %struct.afu** %64, align 8
  %66 = call i32 %62(%struct.afu* %65)
  %67 = load %struct.afu*, %struct.afu** %3, align 8
  %68 = getelementptr inbounds %struct.afu, %struct.afu* %67, i32 0, i32 1
  store %struct.afu* null, %struct.afu** %68, align 8
  br label %69

69:                                               ; preds = %57, %51
  br label %70

70:                                               ; preds = %69, %17
  ret void
}

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @current_is_async(...) #1

declare dso_local i32 @cxlflash_reset_sync(%struct.cxlflash_cfg*) #1

declare dso_local i64 @likely(%struct.afu*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @ssleep(i32) #1

declare dso_local i64 @afu_is_irqpoll_enabled(%struct.afu*) #1

declare dso_local %struct.hwq* @get_hwq(%struct.afu*, i32) #1

declare dso_local i32 @irq_poll_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
