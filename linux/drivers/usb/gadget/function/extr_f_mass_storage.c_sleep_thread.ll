; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_sleep_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_sleep_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_common = type { i32 }
%struct.fsg_buffhd = type { i32 }

@BUF_STATE_EMPTY = common dso_local global i64 0, align 8
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsg_common*, i32, %struct.fsg_buffhd*)* @sleep_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sleep_thread(%struct.fsg_common* %0, i32 %1, %struct.fsg_buffhd* %2) #0 {
  %4 = alloca %struct.fsg_common*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsg_buffhd*, align 8
  %7 = alloca i32, align 4
  store %struct.fsg_common* %0, %struct.fsg_common** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.fsg_buffhd* %2, %struct.fsg_buffhd** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %3
  %11 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %12 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %6, align 8
  %15 = icmp ne %struct.fsg_buffhd* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %10
  %17 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %6, align 8
  %18 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %17, i32 0, i32 0
  %19 = call i64 @smp_load_acquire(i32* %18)
  %20 = load i64, i64* @BUF_STATE_EMPTY, align 8
  %21 = icmp sge i64 %19, %20
  br label %22

22:                                               ; preds = %16, %10
  %23 = phi i1 [ false, %10 ], [ %21, %16 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @wait_event_freezable(i32 %13, i32 %24)
  store i32 %25, i32* %7, align 4
  br label %42

26:                                               ; preds = %3
  %27 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %28 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %6, align 8
  %31 = icmp ne %struct.fsg_buffhd* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %6, align 8
  %34 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %33, i32 0, i32 0
  %35 = call i64 @smp_load_acquire(i32* %34)
  %36 = load i64, i64* @BUF_STATE_EMPTY, align 8
  %37 = icmp sge i64 %35, %36
  br label %38

38:                                               ; preds = %32, %26
  %39 = phi i1 [ false, %26 ], [ %37, %32 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @wait_event_interruptible(i32 %29, i32 %40)
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %38, %22
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* @EINTR, align 4
  %47 = sub nsw i32 0, %46
  br label %49

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48, %45
  %50 = phi i32 [ %47, %45 ], [ 0, %48 ]
  ret i32 %50
}

declare dso_local i32 @wait_event_freezable(i32, i32) #1

declare dso_local i64 @smp_load_acquire(i32*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
