; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usbtest.c_unlink_queued_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usbtest.c_unlink_queued_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, %struct.queued_ctx* }
%struct.queued_ctx = type { i32, i32, i32, i32, %struct.urb** }

@ECONNRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @unlink_queued_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unlink_queued_callback(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.queued_ctx*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %5 = load %struct.urb*, %struct.urb** %2, align 8
  %6 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %3, align 4
  %8 = load %struct.urb*, %struct.urb** %2, align 8
  %9 = getelementptr inbounds %struct.urb, %struct.urb* %8, i32 0, i32 1
  %10 = load %struct.queued_ctx*, %struct.queued_ctx** %9, align 8
  store %struct.queued_ctx* %10, %struct.queued_ctx** %4, align 8
  %11 = load %struct.queued_ctx*, %struct.queued_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.queued_ctx, %struct.queued_ctx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %57

16:                                               ; preds = %1
  %17 = load %struct.urb*, %struct.urb** %2, align 8
  %18 = load %struct.queued_ctx*, %struct.queued_ctx** %4, align 8
  %19 = getelementptr inbounds %struct.queued_ctx, %struct.queued_ctx* %18, i32 0, i32 4
  %20 = load %struct.urb**, %struct.urb*** %19, align 8
  %21 = load %struct.queued_ctx*, %struct.queued_ctx** %4, align 8
  %22 = getelementptr inbounds %struct.queued_ctx, %struct.queued_ctx* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %23, 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.urb*, %struct.urb** %20, i64 %25
  %27 = load %struct.urb*, %struct.urb** %26, align 8
  %28 = icmp eq %struct.urb* %17, %27
  br i1 %28, label %42, label %29

29:                                               ; preds = %16
  %30 = load %struct.urb*, %struct.urb** %2, align 8
  %31 = load %struct.queued_ctx*, %struct.queued_ctx** %4, align 8
  %32 = getelementptr inbounds %struct.queued_ctx, %struct.queued_ctx* %31, i32 0, i32 4
  %33 = load %struct.urb**, %struct.urb*** %32, align 8
  %34 = load %struct.queued_ctx*, %struct.queued_ctx** %4, align 8
  %35 = getelementptr inbounds %struct.queued_ctx, %struct.queued_ctx* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %36, 2
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.urb*, %struct.urb** %33, i64 %38
  %40 = load %struct.urb*, %struct.urb** %39, align 8
  %41 = icmp eq %struct.urb* %30, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %29, %16
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @ECONNRESET, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %57

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48, %29
  %50 = load i32, i32* %3, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i32, i32* %3, align 4
  %54 = load %struct.queued_ctx*, %struct.queued_ctx** %4, align 8
  %55 = getelementptr inbounds %struct.queued_ctx, %struct.queued_ctx* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  br label %56

56:                                               ; preds = %52, %49
  br label %57

57:                                               ; preds = %56, %47, %15
  %58 = load %struct.queued_ctx*, %struct.queued_ctx** %4, align 8
  %59 = getelementptr inbounds %struct.queued_ctx, %struct.queued_ctx* %58, i32 0, i32 3
  %60 = call i64 @atomic_dec_and_test(i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load %struct.queued_ctx*, %struct.queued_ctx** %4, align 8
  %64 = getelementptr inbounds %struct.queued_ctx, %struct.queued_ctx* %63, i32 0, i32 2
  %65 = call i32 @complete(i32* %64)
  br label %66

66:                                               ; preds = %62, %57
  ret void
}

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
