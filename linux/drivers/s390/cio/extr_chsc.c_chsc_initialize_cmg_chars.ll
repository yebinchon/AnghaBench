; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chsc.c_chsc_initialize_cmg_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chsc.c_chsc_initialize_cmg_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel_path = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }
%struct.cmg_chars = type { i64* }

@NR_MEASUREMENT_CHARS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.channel_path*, i32, %struct.cmg_chars*)* @chsc_initialize_cmg_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chsc_initialize_cmg_chars(%struct.channel_path* %0, i32 %1, %struct.cmg_chars* %2) #0 {
  %4 = alloca %struct.channel_path*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cmg_chars*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.channel_path* %0, %struct.channel_path** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.cmg_chars* %2, %struct.cmg_chars** %6, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %45, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @NR_MEASUREMENT_CHARS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %48

13:                                               ; preds = %9
  %14 = load i32, i32* %7, align 4
  %15 = add nsw i32 %14, 3
  %16 = ashr i32 128, %15
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %8, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %13
  %22 = load %struct.cmg_chars*, %struct.cmg_chars** %6, align 8
  %23 = getelementptr inbounds %struct.cmg_chars, %struct.cmg_chars* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.channel_path*, %struct.channel_path** %4, align 8
  %30 = getelementptr inbounds %struct.channel_path, %struct.channel_path* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  store i64 %28, i64* %35, align 8
  br label %44

36:                                               ; preds = %13
  %37 = load %struct.channel_path*, %struct.channel_path** %4, align 8
  %38 = getelementptr inbounds %struct.channel_path, %struct.channel_path* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %36, %21
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %9

48:                                               ; preds = %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
