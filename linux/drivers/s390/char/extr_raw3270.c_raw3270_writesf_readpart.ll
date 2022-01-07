; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_raw3270.c_raw3270_writesf_readpart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_raw3270.c_raw3270_writesf_readpart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3270 = type { %struct.TYPE_7__, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64, i32, i32 }

@raw3270_writesf_readpart.wbuf = internal constant [7 x i8] c"\00\07\01\FF\03\00\81", align 1
@TC_WRITESF = common dso_local global i32 0, align 4
@CCW_FLAG_SLI = common dso_local global i32 0, align 4
@RAW3270_STATE_W4ATTN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.raw3270*)* @raw3270_writesf_readpart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raw3270_writesf_readpart(%struct.raw3270* %0) #0 {
  %2 = alloca %struct.raw3270*, align 8
  store %struct.raw3270* %0, %struct.raw3270** %2, align 8
  %3 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %4 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %3, i32 0, i32 0
  %5 = call i32 @memset(%struct.TYPE_7__* %4, i32 0, i32 24)
  %6 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %7 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %6, i32 0, i32 3
  %8 = call i32 @memset(%struct.TYPE_7__* %7, i32 0, i32 24)
  %9 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %10 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %9, i32 0, i32 3
  %11 = call i32 @memcpy(%struct.TYPE_7__* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @raw3270_writesf_readpart.wbuf, i64 0, i64 0), i32 7)
  %12 = load i32, i32* @TC_WRITESF, align 4
  %13 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %14 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 3
  store i32 %12, i32* %16, align 4
  %17 = load i32, i32* @CCW_FLAG_SLI, align 4
  %18 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %19 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  store i32 %17, i32* %21, align 8
  %22 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %23 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32 7, i32* %25, align 8
  %26 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %27 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %26, i32 0, i32 3
  %28 = call i64 @__pa(%struct.TYPE_7__* %27)
  %29 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %30 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  store i64 %28, i64* %32, align 8
  %33 = load i32, i32* @RAW3270_STATE_W4ATTN, align 4
  %34 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %35 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %37 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %36, i32 0, i32 1
  %38 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %39 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %38, i32 0, i32 0
  %40 = call i32 @raw3270_start_irq(i32* %37, %struct.TYPE_7__* %39)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i64 @__pa(%struct.TYPE_7__*) #1

declare dso_local i32 @raw3270_start_irq(i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
