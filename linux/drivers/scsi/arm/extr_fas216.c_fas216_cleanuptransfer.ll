; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_fas216.c_fas216_cleanuptransfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_fas216.c_fas216_cleanuptransfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__, %struct.TYPE_12__ }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_12__ = type { i64 }

@fasdma_none = common dso_local global i64 0, align 8
@fasdma_pio = common dso_local global i64 0, align 8
@fasdma_real_all = common dso_local global i64 0, align 8
@REG_CFIS = common dso_local global i32 0, align 4
@CFIS_CF = common dso_local global i64 0, align 8
@LOG_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"cleaning up from previous transfer: length 0x%06x, residual 0x%x, fifo %d\00", align 1
@PHASE_DATAOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @fas216_cleanuptransfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fas216_cleanuptransfer(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* @fasdma_none, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  store i64 %11, i64* %14, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @fasdma_pio, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @fasdma_none, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %1
  br label %69

23:                                               ; preds = %18
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @fasdma_real_all, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %3, align 8
  br label %39

33:                                               ; preds = %23
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %3, align 8
  br label %39

39:                                               ; preds = %33, %27
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %41 = call i64 @fas216_get_ctc(%struct.TYPE_13__* %40)
  store i64 %41, i64* %4, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %43 = load i32, i32* @REG_CFIS, align 4
  %44 = call i64 @fas216_readb(%struct.TYPE_13__* %42, i32 %43)
  %45 = load i64, i64* @CFIS_CF, align 8
  %46 = and i64 %44, %45
  store i64 %46, i64* %5, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %48 = load i32, i32* @LOG_BUFFER, align 4
  %49 = load i64, i64* %3, align 8
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @fas216_log(%struct.TYPE_13__* %47, i32 %48, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i64 %49, i64 %50, i64 %51)
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @PHASE_DATAOUT, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %39
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* %4, align 8
  %62 = add i64 %61, %60
  store i64 %62, i64* %4, align 8
  br label %63

63:                                               ; preds = %59, %39
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %65 = load i64, i64* %3, align 8
  %66 = load i64, i64* %4, align 8
  %67 = sub i64 %65, %66
  %68 = call i32 @fas216_updateptrs(%struct.TYPE_13__* %64, i64 %67)
  br label %69

69:                                               ; preds = %63, %22
  ret void
}

declare dso_local i64 @fas216_get_ctc(%struct.TYPE_13__*) #1

declare dso_local i64 @fas216_readb(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @fas216_log(%struct.TYPE_13__*, i32, i8*, i64, i64, i64) #1

declare dso_local i32 @fas216_updateptrs(%struct.TYPE_13__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
