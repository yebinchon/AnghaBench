; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_megaraid.c_issue_scb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_megaraid.c_issue_scb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_15__*, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32, i64, i64 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i64 }

@max_mbox_busy_wait = common dso_local global i32 0, align 4
@SCB_ISSUED = common dso_local global i32 0, align 4
@BOARD_MEMMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_14__*)* @issue_scb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @issue_scb(%struct.TYPE_17__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 4
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  store %struct.TYPE_16__* %11, %struct.TYPE_16__** %6, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load volatile i32, i32* %17, align 8
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %36, %21
  %23 = call i32 @udelay(i32 1)
  %24 = load i32, i32* %8, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %22
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load volatile i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @max_mbox_busy_wait, align 4
  %35 = icmp ult i32 %33, %34
  br label %36

36:                                               ; preds = %32, %26
  %37 = phi i1 [ false, %26 ], [ %35, %32 ]
  br i1 %37, label %22, label %38

38:                                               ; preds = %36
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load volatile i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 -1, i32* %3, align 4
  br label %120

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %2
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 1
  %49 = bitcast %struct.TYPE_12__* %48 to i8*
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = call i32 @memcpy(i8* %49, i8* %53, i32 4)
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 2
  store volatile i32 %57, i32* %60, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  store volatile i32 1, i32* %63, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 2
  %66 = call i32 @atomic_inc(i32* %65)
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load volatile i32, i32* %69, align 8
  switch i32 %70, label %83 [
    i32 130, label %71
    i32 129, label %71
    i32 128, label %71
    i32 131, label %71
  ]

71:                                               ; preds = %46, %46, %46, %46
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = load volatile i32, i32* %74, align 4
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  store volatile i32 %75, i32* %77, align 4
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 1
  store volatile i32 0, i32* %79, align 4
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  store volatile i32 -1, i32* %82, align 4
  br label %88

83:                                               ; preds = %46
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  store volatile i32 0, i32* %85, align 4
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 1
  store volatile i32 0, i32* %87, align 4
  br label %88

88:                                               ; preds = %83, %71
  %89 = load i32, i32* @SCB_ISSUED, align 4
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @BOARD_MEMMAP, align 4
  %98 = and i32 %96, %97
  %99 = call i64 @likely(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %88
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 2
  store volatile i64 0, i64* %104, align 8
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 1
  store volatile i64 0, i64* %107, align 8
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, 1
  %113 = call i32 @WRINDOOR(%struct.TYPE_17__* %108, i32 %112)
  br label %119

114:                                              ; preds = %88
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %116 = call i32 @irq_enable(%struct.TYPE_17__* %115)
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %118 = call i32 @issue_command(%struct.TYPE_17__* %117)
  br label %119

119:                                              ; preds = %114, %101
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %119, %44
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @WRINDOOR(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @irq_enable(%struct.TYPE_17__*) #1

declare dso_local i32 @issue_command(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
