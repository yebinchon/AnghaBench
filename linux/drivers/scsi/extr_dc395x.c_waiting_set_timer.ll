; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_waiting_set_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_waiting_set_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterCtlBlk = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterCtlBlk*, i64)* @waiting_set_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @waiting_set_timer(%struct.AdapterCtlBlk* %0, i64 %1) #0 {
  %3 = alloca %struct.AdapterCtlBlk*, align 8
  %4 = alloca i64, align 8
  store %struct.AdapterCtlBlk* %0, %struct.AdapterCtlBlk** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %6 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %5, i32 0, i32 1
  %7 = call i64 @timer_pending(%struct.TYPE_3__* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %49

10:                                               ; preds = %2
  %11 = load i32, i32* @jiffies, align 4
  %12 = sext i32 %11 to i64
  %13 = load i64, i64* %4, align 8
  %14 = add i64 %12, %13
  %15 = trunc i64 %14 to i32
  %16 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %17 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @HZ, align 4
  %20 = sdiv i32 %19, 2
  %21 = sub nsw i32 %18, %20
  %22 = call i64 @time_before(i32 %15, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %10
  %25 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %26 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @HZ, align 4
  %29 = sdiv i32 %28, 2
  %30 = sub nsw i32 %27, %29
  %31 = add nsw i32 %30, 1
  %32 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %33 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  br label %45

35:                                               ; preds = %10
  %36 = load i32, i32* @jiffies, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %4, align 8
  %39 = add i64 %37, %38
  %40 = add i64 %39, 1
  %41 = trunc i64 %40 to i32
  %42 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %43 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  br label %45

45:                                               ; preds = %35, %24
  %46 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %47 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %46, i32 0, i32 1
  %48 = call i32 @add_timer(%struct.TYPE_3__* %47)
  br label %49

49:                                               ; preds = %45, %9
  ret void
}

declare dso_local i64 @timer_pending(%struct.TYPE_3__*) #1

declare dso_local i64 @time_before(i32, i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
