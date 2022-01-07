; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_uas.c_uas_wait_for_pending_cmnds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_uas.c_uas_wait_for_pending_cmnds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uas_dev_info = type { i32, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@ETIME = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uas_dev_info*)* @uas_wait_for_pending_cmnds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uas_wait_for_pending_cmnds(%struct.uas_dev_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uas_dev_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.uas_dev_info* %0, %struct.uas_dev_info** %3, align 8
  %6 = load i64, i64* @jiffies, align 8
  store i64 %6, i64* %4, align 8
  br label %7

7:                                                ; preds = %41, %1
  %8 = load %struct.uas_dev_info*, %struct.uas_dev_info** %3, align 8
  %9 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %8, i32 0, i32 2
  %10 = call i32 @flush_work(i32* %9)
  %11 = load %struct.uas_dev_info*, %struct.uas_dev_info** %3, align 8
  %12 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %11, i32 0, i32 1
  %13 = call i32 @usb_wait_anchor_empty_timeout(i32* %12, i32 5000)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %7
  %17 = load i32, i32* @ETIME, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %47

19:                                               ; preds = %7
  %20 = load %struct.uas_dev_info*, %struct.uas_dev_info** %3, align 8
  %21 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %20, i32 0, i32 0
  %22 = call i32 @usb_wait_anchor_empty_timeout(i32* %21, i32 500)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @ETIME, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %47

28:                                               ; preds = %19
  %29 = load i64, i64* @jiffies, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load i32, i32* @HZ, align 4
  %32 = mul nsw i32 5, %31
  %33 = sext i32 %32 to i64
  %34 = add i64 %30, %33
  %35 = call i64 @time_after(i64 %29, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load i32, i32* @ETIME, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %47

40:                                               ; preds = %28
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.uas_dev_info*, %struct.uas_dev_info** %3, align 8
  %43 = call i32 @uas_cmnd_list_empty(%struct.uas_dev_info* %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br i1 %45, label %7, label %46

46:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %37, %25, %16
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @usb_wait_anchor_empty_timeout(i32*, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @uas_cmnd_list_empty(%struct.uas_dev_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
