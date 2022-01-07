; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_uas.c_uas_cmnd_list_empty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_uas.c_uas_cmnd_list_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uas_dev_info = type { i32, i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uas_dev_info*)* @uas_cmnd_list_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uas_cmnd_list_empty(%struct.uas_dev_info* %0) #0 {
  %2 = alloca %struct.uas_dev_info*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uas_dev_info* %0, %struct.uas_dev_info** %2, align 8
  store i32 1, i32* %5, align 4
  %6 = load %struct.uas_dev_info*, %struct.uas_dev_info** %2, align 8
  %7 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %6, i32 0, i32 1
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %27, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.uas_dev_info*, %struct.uas_dev_info** %2, align 8
  %13 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %10
  %17 = load %struct.uas_dev_info*, %struct.uas_dev_info** %2, align 8
  %18 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %17, i32 0, i32 2
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %30

26:                                               ; preds = %16
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %10

30:                                               ; preds = %25, %10
  %31 = load %struct.uas_dev_info*, %struct.uas_dev_info** %2, align 8
  %32 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %31, i32 0, i32 1
  %33 = load i64, i64* %3, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
