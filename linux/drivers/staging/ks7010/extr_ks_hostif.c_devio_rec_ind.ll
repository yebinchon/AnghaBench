; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_devio_rec_ind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_devio_rec_ind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_wlan_private = type { i8**, i32*, i32, i32, i32, i32, i32 }

@DEVICE_STOCK_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks_wlan_private*, i8*, i32)* @devio_rec_ind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @devio_rec_ind(%struct.ks_wlan_private* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ks_wlan_private*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.ks_wlan_private* %0, %struct.ks_wlan_private** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %8 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %61

12:                                               ; preds = %3
  %13 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %14 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %13, i32 0, i32 2
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load i8*, i8** %5, align 8
  %17 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %18 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %17, i32 0, i32 0
  %19 = load i8**, i8*** %18, align 8
  %20 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %21 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %20, i32 0, i32 4
  %22 = call i64 @atomic_read(i32* %21)
  %23 = getelementptr inbounds i8*, i8** %19, i64 %22
  store i8* %16, i8** %23, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %26 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %29 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %28, i32 0, i32 4
  %30 = call i64 @atomic_read(i32* %29)
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  store i32 %24, i32* %31, align 4
  %32 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %33 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %32, i32 0, i32 5
  %34 = call i64 @atomic_read(i32* %33)
  %35 = load i64, i64* @DEVICE_STOCK_COUNT, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %12
  %38 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %39 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %38, i32 0, i32 5
  %40 = call i32 @atomic_inc(i32* %39)
  br label %41

41:                                               ; preds = %37, %12
  %42 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %43 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %42, i32 0, i32 4
  %44 = call i32 @atomic_inc(i32* %43)
  %45 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %46 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %45, i32 0, i32 4
  %47 = call i64 @atomic_read(i32* %46)
  %48 = load i64, i64* @DEVICE_STOCK_COUNT, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %52 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %51, i32 0, i32 4
  %53 = call i32 @atomic_set(i32* %52, i32 0)
  br label %54

54:                                               ; preds = %50, %41
  %55 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %56 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %55, i32 0, i32 3
  %57 = call i32 @wake_up_interruptible_all(i32* %56)
  %58 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %59 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %58, i32 0, i32 2
  %60 = call i32 @spin_unlock(i32* %59)
  br label %61

61:                                               ; preds = %54, %11
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wake_up_interruptible_all(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
