; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_early_core.c_sclp_early_set_event_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_early_core.c_sclp_early_set_event_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.init_sccb = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@sclp_mask_compat_mode = common dso_local global i32 0, align 4
@SCLP_MASK_SIZE_COMPAT = common dso_local global i32 0, align 4
@SCLP_CMDW_WRITE_EVENT_MASK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sclp_early_set_event_mask(%struct.init_sccb* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.init_sccb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.init_sccb* %0, %struct.init_sccb** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  br label %8

8:                                                ; preds = %46, %3
  %9 = load %struct.init_sccb*, %struct.init_sccb** %5, align 8
  %10 = call i32 @memset(%struct.init_sccb* %9, i32 0, i32 12)
  %11 = load %struct.init_sccb*, %struct.init_sccb** %5, align 8
  %12 = getelementptr inbounds %struct.init_sccb, %struct.init_sccb* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 12, i32* %13, align 4
  %14 = load i32, i32* @sclp_mask_compat_mode, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %8
  %17 = load i32, i32* @SCLP_MASK_SIZE_COMPAT, align 4
  %18 = load %struct.init_sccb*, %struct.init_sccb** %5, align 8
  %19 = getelementptr inbounds %struct.init_sccb, %struct.init_sccb* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  br label %23

20:                                               ; preds = %8
  %21 = load %struct.init_sccb*, %struct.init_sccb** %5, align 8
  %22 = getelementptr inbounds %struct.init_sccb, %struct.init_sccb* %21, i32 0, i32 0
  store i32 4, i32* %22, align 4
  br label %23

23:                                               ; preds = %20, %16
  %24 = load %struct.init_sccb*, %struct.init_sccb** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @sccb_set_recv_mask(%struct.init_sccb* %24, i32 %25)
  %27 = load %struct.init_sccb*, %struct.init_sccb** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @sccb_set_send_mask(%struct.init_sccb* %27, i32 %28)
  %30 = load i32, i32* @SCLP_CMDW_WRITE_EVENT_MASK, align 4
  %31 = load %struct.init_sccb*, %struct.init_sccb** %5, align 8
  %32 = call i64 @sclp_early_cmd(i32 %30, %struct.init_sccb* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %57

37:                                               ; preds = %23
  %38 = load %struct.init_sccb*, %struct.init_sccb** %5, align 8
  %39 = getelementptr inbounds %struct.init_sccb, %struct.init_sccb* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 29936
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i32, i32* @sclp_mask_compat_mode, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  store i32 1, i32* @sclp_mask_compat_mode, align 4
  br label %8

47:                                               ; preds = %43, %37
  %48 = load %struct.init_sccb*, %struct.init_sccb** %5, align 8
  %49 = getelementptr inbounds %struct.init_sccb, %struct.init_sccb* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 32
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %57

56:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %53, %34
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @memset(%struct.init_sccb*, i32, i32) #1

declare dso_local i32 @sccb_set_recv_mask(%struct.init_sccb*, i32) #1

declare dso_local i32 @sccb_set_send_mask(%struct.init_sccb*, i32) #1

declare dso_local i64 @sclp_early_cmd(i32, %struct.init_sccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
