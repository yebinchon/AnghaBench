; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_raw3270.c_raw3270_read_modified.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_raw3270.c_raw3270_read_modified.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3270 = type { i64, %struct.TYPE_6__, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64, i32, i32 }

@RAW3270_STATE_W4ATTN = common dso_local global i64 0, align 8
@TC_READMOD = common dso_local global i32 0, align 4
@CCW_FLAG_SLI = common dso_local global i32 0, align 4
@raw3270_read_modified_cb = common dso_local global i32 0, align 4
@RAW3270_STATE_READMOD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.raw3270*)* @raw3270_read_modified to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raw3270_read_modified(%struct.raw3270* %0) #0 {
  %2 = alloca %struct.raw3270*, align 8
  store %struct.raw3270* %0, %struct.raw3270** %2, align 8
  %3 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %4 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @RAW3270_STATE_W4ATTN, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %49

9:                                                ; preds = %1
  %10 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %11 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %10, i32 0, i32 1
  %12 = call i32 @memset(%struct.TYPE_6__* %11, i32 0, i32 32)
  %13 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %14 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %13, i32 0, i32 3
  %15 = call i32 @memset(%struct.TYPE_6__* %14, i32 0, i32 32)
  %16 = load i32, i32* @TC_READMOD, align 4
  %17 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %18 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 3
  store i32 %16, i32* %20, align 4
  %21 = load i32, i32* @CCW_FLAG_SLI, align 4
  %22 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %23 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  store i32 %21, i32* %25, align 8
  %26 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %27 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 32, i32* %29, align 8
  %30 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %31 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %30, i32 0, i32 3
  %32 = call i64 @__pa(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %31)
  %33 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %34 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  store i64 %32, i64* %36, align 8
  %37 = load i32, i32* @raw3270_read_modified_cb, align 4
  %38 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %39 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load i64, i64* @RAW3270_STATE_READMOD, align 8
  %42 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %43 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %45 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %44, i32 0, i32 2
  %46 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %47 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %46, i32 0, i32 1
  %48 = call i32 @raw3270_start_irq(i32* %45, %struct.TYPE_6__* %47)
  br label %49

49:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i64 @__pa(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8) #1

declare dso_local i32 @raw3270_start_irq(i32*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
