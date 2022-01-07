; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_megaraid.c_mega_prepare_extpassthru.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_megaraid.c_mega_prepare_extpassthru.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_17__* }
%struct.scsi_cmnd = type { i32*, %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i64, i32 }

@BOARD_40LD = common dso_local global i32 0, align 4
@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"scsi%d: scanning scsi channel %d [P%d] for physical devices\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_17__* (%struct.TYPE_18__*, %struct.TYPE_16__*, %struct.scsi_cmnd*, i32, i32)* @mega_prepare_extpassthru to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_17__* @mega_prepare_extpassthru(%struct.TYPE_18__* %0, %struct.TYPE_16__* %1, %struct.scsi_cmnd* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.scsi_cmnd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %7, align 8
  store %struct.scsi_cmnd* %2, %struct.scsi_cmnd** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %11, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %16 = call i32 @memset(%struct.TYPE_17__* %15, i32 0, i32 56)
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  store i32 2, i32* %18, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 1
  store i32 1, i32* %20, align 4
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 2
  store i32 14, i32* %22, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 11
  store i64 0, i64* %24, align 8
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @BOARD_40LD, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %5
  br label %34

32:                                               ; preds = %5
  %33 = load i32, i32* %9, align 4
  br label %34

34:                                               ; preds = %32, %31
  %35 = phi i32 [ 0, %31 ], [ %33, %32 ]
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @BOARD_40LD, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %34
  %45 = load i32, i32* %9, align 4
  %46 = shl i32 %45, 4
  %47 = load i32, i32* %10, align 4
  %48 = or i32 %46, %47
  br label %51

49:                                               ; preds = %34
  %50 = load i32, i32* %10, align 4
  br label %51

51:                                               ; preds = %49, %44
  %52 = phi i32 [ %48, %44 ], [ %50, %49 ]
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 8
  %55 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %56 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 10
  store i32 %57, i32* %59, align 8
  %60 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %61 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %60, i32 0, i32 1
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 9
  store i32 %64, i32* %66, align 4
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 8
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %71 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %74 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @memcpy(i32 %69, i32* %72, i32 %75)
  %77 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %81 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  switch i32 %84, label %128 [
    i32 129, label %85
    i32 128, label %85
  ]

85:                                               ; preds = %51, %51
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %91 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %90, i32 0, i32 1
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = shl i64 1, %94
  %96 = and i64 %89, %95
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %127, label %98

98:                                               ; preds = %85
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %109 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %108, i32 0, i32 1
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @dev_notice(i32* %102, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %107, i64 %112, i32 %113)
  %115 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %116 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %115, i32 0, i32 1
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = shl i64 1, %119
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = or i64 %124, %120
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %122, align 8
  br label %127

127:                                              ; preds = %98, %85
  br label %128

128:                                              ; preds = %51, %127
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 6
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 5
  %135 = call i32 @mega_build_sglist(%struct.TYPE_18__* %129, %struct.TYPE_16__* %130, i32* %132, i32* %134)
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 7
  store i32 %135, i32* %137, align 4
  br label %138

138:                                              ; preds = %128
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  ret %struct.TYPE_17__* %139
}

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @dev_notice(i32*, i8*, i32, i64, i32) #1

declare dso_local i32 @mega_build_sglist(%struct.TYPE_18__*, %struct.TYPE_16__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
