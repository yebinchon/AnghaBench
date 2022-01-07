; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_wa-nep.c_wa_nep_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_wa-nep.c_wa_nep_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wahc = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.wa_notif_work = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"Too many notifications queued, throttling back\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"No memory to queue notification\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@wa_notif_dispatch = common dso_local global i32 0, align 4
@wusbd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wahc*, i64)* @wa_nep_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wa_nep_queue(%struct.wahc* %0, i64 %1) #0 {
  %3 = alloca %struct.wahc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.wa_notif_work*, align 8
  store %struct.wahc* %0, %struct.wahc** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.wahc*, %struct.wahc** %3, align 8
  %9 = getelementptr inbounds %struct.wahc, %struct.wahc* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load %struct.wahc*, %struct.wahc** %3, align 8
  %14 = getelementptr inbounds %struct.wahc, %struct.wahc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ugt i64 %12, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load i64, i64* %4, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %78

22:                                               ; preds = %2
  %23 = load %struct.wahc*, %struct.wahc** %3, align 8
  %24 = getelementptr inbounds %struct.wahc, %struct.wahc* %23, i32 0, i32 1
  %25 = call i32 @atomic_read(i32* %24)
  %26 = icmp sgt i32 %25, 200
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = call i64 (...) @printk_ratelimit()
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = call i32 @dev_err(%struct.device* %31, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %27
  br label %78

34:                                               ; preds = %22
  %35 = load i64, i64* %4, align 8
  %36 = add i64 24, %35
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* @GFP_ATOMIC, align 4
  %39 = call %struct.wa_notif_work* @kzalloc(i32 %37, i32 %38)
  store %struct.wa_notif_work* %39, %struct.wa_notif_work** %7, align 8
  %40 = load %struct.wa_notif_work*, %struct.wa_notif_work** %7, align 8
  %41 = icmp eq %struct.wa_notif_work* %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %34
  %43 = call i64 (...) @printk_ratelimit()
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.device*, %struct.device** %6, align 8
  %47 = call i32 @dev_err(%struct.device* %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %78

51:                                               ; preds = %34
  %52 = load %struct.wa_notif_work*, %struct.wa_notif_work** %7, align 8
  %53 = getelementptr inbounds %struct.wa_notif_work, %struct.wa_notif_work* %52, i32 0, i32 1
  %54 = load i32, i32* @wa_notif_dispatch, align 4
  %55 = call i32 @INIT_WORK(i32* %53, i32 %54)
  %56 = load %struct.wahc*, %struct.wahc** %3, align 8
  %57 = call i32 @wa_get(%struct.wahc* %56)
  %58 = load %struct.wa_notif_work*, %struct.wa_notif_work** %7, align 8
  %59 = getelementptr inbounds %struct.wa_notif_work, %struct.wa_notif_work* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 8
  %60 = load i64, i64* %4, align 8
  %61 = load %struct.wa_notif_work*, %struct.wa_notif_work** %7, align 8
  %62 = getelementptr inbounds %struct.wa_notif_work, %struct.wa_notif_work* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load %struct.wa_notif_work*, %struct.wa_notif_work** %7, align 8
  %64 = getelementptr inbounds %struct.wa_notif_work, %struct.wa_notif_work* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.wahc*, %struct.wahc** %3, align 8
  %67 = getelementptr inbounds %struct.wahc, %struct.wahc* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i64, i64* %4, align 8
  %70 = call i32 @memcpy(i32 %65, i32 %68, i64 %69)
  %71 = load %struct.wahc*, %struct.wahc** %3, align 8
  %72 = getelementptr inbounds %struct.wahc, %struct.wahc* %71, i32 0, i32 1
  %73 = call i32 @atomic_inc(i32* %72)
  %74 = load i32, i32* @wusbd, align 4
  %75 = load %struct.wa_notif_work*, %struct.wa_notif_work** %7, align 8
  %76 = getelementptr inbounds %struct.wa_notif_work, %struct.wa_notif_work* %75, i32 0, i32 1
  %77 = call i32 @queue_work(i32 %74, i32* %76)
  br label %78

78:                                               ; preds = %51, %48, %33, %21
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.wa_notif_work* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @wa_get(%struct.wahc*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
