; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_mite.c_mite_request_channel_in_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_mite.c_mite_request_channel_in_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mite_channel = type { %struct.mite_ring* }
%struct.mite = type { i32, %struct.mite_channel* }
%struct.mite_ring = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mite_channel* @mite_request_channel_in_range(%struct.mite* %0, %struct.mite_ring* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mite*, align 8
  %6 = alloca %struct.mite_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mite_channel*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.mite* %0, %struct.mite** %5, align 8
  store %struct.mite_ring* %1, %struct.mite_ring** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store %struct.mite_channel* null, %struct.mite_channel** %9, align 8
  %12 = load %struct.mite*, %struct.mite** %5, align 8
  %13 = getelementptr inbounds %struct.mite, %struct.mite* %12, i32 0, i32 0
  %14 = load i64, i64* %10, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %11, align 4
  br label %17

17:                                               ; preds = %37, %4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ule i32 %18, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %17
  %22 = load %struct.mite*, %struct.mite** %5, align 8
  %23 = getelementptr inbounds %struct.mite, %struct.mite* %22, i32 0, i32 1
  %24 = load %struct.mite_channel*, %struct.mite_channel** %23, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %24, i64 %26
  store %struct.mite_channel* %27, %struct.mite_channel** %9, align 8
  %28 = load %struct.mite_channel*, %struct.mite_channel** %9, align 8
  %29 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %28, i32 0, i32 0
  %30 = load %struct.mite_ring*, %struct.mite_ring** %29, align 8
  %31 = icmp ne %struct.mite_ring* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %21
  %33 = load %struct.mite_ring*, %struct.mite_ring** %6, align 8
  %34 = load %struct.mite_channel*, %struct.mite_channel** %9, align 8
  %35 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %34, i32 0, i32 0
  store %struct.mite_ring* %33, %struct.mite_ring** %35, align 8
  br label %40

36:                                               ; preds = %21
  store %struct.mite_channel* null, %struct.mite_channel** %9, align 8
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %11, align 4
  br label %17

40:                                               ; preds = %32, %17
  %41 = load %struct.mite*, %struct.mite** %5, align 8
  %42 = getelementptr inbounds %struct.mite, %struct.mite* %41, i32 0, i32 0
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load %struct.mite_channel*, %struct.mite_channel** %9, align 8
  ret %struct.mite_channel* %45
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
