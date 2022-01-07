; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_wa-hc.h_wa_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_wa-hc.h_wa_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wahc = type { i64, i32*, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@WA_DTI_TRANSFER_RESULT_PENDING = common dso_local global i32 0, align 4
@wa_urb_enqueue_run = common dso_local global i32 0, align 4
@wa_process_errored_transfers_run = common dso_local global i32 0, align 4
@WA_MAX_BUF_IN_URBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wahc*)* @wa_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wa_init(%struct.wahc* %0) #0 {
  %2 = alloca %struct.wahc*, align 8
  %3 = alloca i32, align 4
  store %struct.wahc* %0, %struct.wahc** %2, align 8
  %4 = load %struct.wahc*, %struct.wahc** %2, align 8
  %5 = getelementptr inbounds %struct.wahc, %struct.wahc* %4, i32 0, i32 13
  %6 = call i32 @edc_init(i32* %5)
  %7 = load %struct.wahc*, %struct.wahc** %2, align 8
  %8 = getelementptr inbounds %struct.wahc, %struct.wahc* %7, i32 0, i32 12
  %9 = call i32 @atomic_set(i32* %8, i32 0)
  %10 = load i32, i32* @WA_DTI_TRANSFER_RESULT_PENDING, align 4
  %11 = load %struct.wahc*, %struct.wahc** %2, align 8
  %12 = getelementptr inbounds %struct.wahc, %struct.wahc* %11, i32 0, i32 11
  store i32 %10, i32* %12, align 4
  %13 = load %struct.wahc*, %struct.wahc** %2, align 8
  %14 = call i32 @wa_rpipe_init(%struct.wahc* %13)
  %15 = load %struct.wahc*, %struct.wahc** %2, align 8
  %16 = getelementptr inbounds %struct.wahc, %struct.wahc* %15, i32 0, i32 10
  %17 = call i32 @edc_init(i32* %16)
  %18 = load %struct.wahc*, %struct.wahc** %2, align 8
  %19 = getelementptr inbounds %struct.wahc, %struct.wahc* %18, i32 0, i32 9
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.wahc*, %struct.wahc** %2, align 8
  %22 = getelementptr inbounds %struct.wahc, %struct.wahc* %21, i32 0, i32 8
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.wahc*, %struct.wahc** %2, align 8
  %25 = getelementptr inbounds %struct.wahc, %struct.wahc* %24, i32 0, i32 7
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.wahc*, %struct.wahc** %2, align 8
  %28 = getelementptr inbounds %struct.wahc, %struct.wahc* %27, i32 0, i32 6
  %29 = call i32 @spin_lock_init(i32* %28)
  %30 = load %struct.wahc*, %struct.wahc** %2, align 8
  %31 = getelementptr inbounds %struct.wahc, %struct.wahc* %30, i32 0, i32 5
  %32 = load i32, i32* @wa_urb_enqueue_run, align 4
  %33 = call i32 @INIT_WORK(i32* %31, i32 %32)
  %34 = load %struct.wahc*, %struct.wahc** %2, align 8
  %35 = getelementptr inbounds %struct.wahc, %struct.wahc* %34, i32 0, i32 4
  %36 = load i32, i32* @wa_process_errored_transfers_run, align 4
  %37 = call i32 @INIT_WORK(i32* %35, i32 %36)
  %38 = load %struct.wahc*, %struct.wahc** %2, align 8
  %39 = getelementptr inbounds %struct.wahc, %struct.wahc* %38, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = load %struct.wahc*, %struct.wahc** %2, align 8
  %41 = getelementptr inbounds %struct.wahc, %struct.wahc* %40, i32 0, i32 2
  %42 = call i32 @atomic_set(i32* %41, i32 1)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %55, %1
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @WA_MAX_BUF_IN_URBS, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %43
  %48 = load %struct.wahc*, %struct.wahc** %2, align 8
  %49 = getelementptr inbounds %struct.wahc, %struct.wahc* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = call i32 @usb_init_urb(i32* %53)
  br label %55

55:                                               ; preds = %47
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %43

58:                                               ; preds = %43
  %59 = load %struct.wahc*, %struct.wahc** %2, align 8
  %60 = getelementptr inbounds %struct.wahc, %struct.wahc* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  ret void
}

declare dso_local i32 @edc_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wa_rpipe_init(%struct.wahc*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @usb_init_urb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
