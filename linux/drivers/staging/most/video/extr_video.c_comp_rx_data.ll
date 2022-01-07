; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/video/extr_video.c_comp_rx_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/video/extr_video.c_comp_rx_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbo = type { i32, i32, i32 }
%struct.most_video_dev = type { i32, i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbo*)* @comp_rx_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comp_rx_data(%struct.mbo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mbo*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.most_video_dev*, align 8
  store %struct.mbo* %0, %struct.mbo** %3, align 8
  %6 = load %struct.mbo*, %struct.mbo** %3, align 8
  %7 = getelementptr inbounds %struct.mbo, %struct.mbo* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.mbo*, %struct.mbo** %3, align 8
  %10 = getelementptr inbounds %struct.mbo, %struct.mbo* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.most_video_dev* @get_comp_dev(i32 %8, i32 %11)
  store %struct.most_video_dev* %12, %struct.most_video_dev** %5, align 8
  %13 = load %struct.most_video_dev*, %struct.most_video_dev** %5, align 8
  %14 = icmp ne %struct.most_video_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %48

18:                                               ; preds = %1
  %19 = load %struct.most_video_dev*, %struct.most_video_dev** %5, align 8
  %20 = getelementptr inbounds %struct.most_video_dev, %struct.most_video_dev* %19, i32 0, i32 1
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.most_video_dev*, %struct.most_video_dev** %5, align 8
  %24 = getelementptr inbounds %struct.most_video_dev, %struct.most_video_dev* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %18
  %29 = load %struct.most_video_dev*, %struct.most_video_dev** %5, align 8
  %30 = getelementptr inbounds %struct.most_video_dev, %struct.most_video_dev* %29, i32 0, i32 1
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %48

35:                                               ; preds = %18
  %36 = load %struct.mbo*, %struct.mbo** %3, align 8
  %37 = getelementptr inbounds %struct.mbo, %struct.mbo* %36, i32 0, i32 0
  %38 = load %struct.most_video_dev*, %struct.most_video_dev** %5, align 8
  %39 = getelementptr inbounds %struct.most_video_dev, %struct.most_video_dev* %38, i32 0, i32 2
  %40 = call i32 @list_add_tail(i32* %37, i32* %39)
  %41 = load %struct.most_video_dev*, %struct.most_video_dev** %5, align 8
  %42 = getelementptr inbounds %struct.most_video_dev, %struct.most_video_dev* %41, i32 0, i32 1
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load %struct.most_video_dev*, %struct.most_video_dev** %5, align 8
  %46 = getelementptr inbounds %struct.most_video_dev, %struct.most_video_dev* %45, i32 0, i32 0
  %47 = call i32 @wake_up_interruptible(i32* %46)
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %35, %28, %15
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.most_video_dev* @get_comp_dev(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
