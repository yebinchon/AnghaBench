; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio_cm.c_riocm_ch_free_rxbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio_cm.c_riocm_ch_free_rxbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_channel = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8**, i32 }

@EINVAL = common dso_local global i32 0, align 4
@RIOCM_RX_RING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rio_channel*, i8*)* @riocm_ch_free_rxbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @riocm_ch_free_rxbuf(%struct.rio_channel* %0, i8* %1) #0 {
  %3 = alloca %struct.rio_channel*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rio_channel* %0, %struct.rio_channel** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load %struct.rio_channel*, %struct.rio_channel** %3, align 8
  %10 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %9, i32 0, i32 0
  %11 = call i32 @spin_lock_bh(i32* %10)
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %41, %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @RIOCM_RX_RING_SIZE, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %44

16:                                               ; preds = %12
  %17 = load %struct.rio_channel*, %struct.rio_channel** %3, align 8
  %18 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i8**, i8*** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = icmp eq i8* %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %16
  %28 = load %struct.rio_channel*, %struct.rio_channel** %3, align 8
  %29 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i8**, i8*** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  store i8* null, i8** %34, align 8
  %35 = load %struct.rio_channel*, %struct.rio_channel** %3, align 8
  %36 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %37, align 8
  store i32 0, i32* %6, align 4
  br label %44

40:                                               ; preds = %16
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %12

44:                                               ; preds = %27, %12
  %45 = load %struct.rio_channel*, %struct.rio_channel** %3, align 8
  %46 = getelementptr inbounds %struct.rio_channel, %struct.rio_channel* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock_bh(i32* %46)
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %44
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @kfree(i8* %51)
  br label %53

53:                                               ; preds = %50, %44
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
