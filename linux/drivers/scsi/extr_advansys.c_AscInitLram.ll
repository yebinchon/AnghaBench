; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_AscInitLram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_AscInitLram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@ASC_QADR_BEG = common dso_local global i64 0, align 8
@ASC_MIN_ACTIVE_QNO = common dso_local global i32 0, align 4
@ASC_QBLK_SIZE = common dso_local global i64 0, align 8
@ASC_SCSIQ_B_FWD = common dso_local global i64 0, align 8
@ASC_SCSIQ_B_BWD = common dso_local global i64 0, align 8
@ASC_SCSIQ_B_QNO = common dso_local global i64 0, align 8
@ASC_QLINK_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @AscInitLram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AscInitLram(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i64, i64* @ASC_QADR_BEG, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 2
  %15 = add nsw i32 %14, 1
  %16 = mul nsw i32 %15, 64
  %17 = ashr i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = call i32 @AscMemWordSetLram(i32 %9, i64 %10, i32 0, i64 %18)
  %20 = load i32, i32* @ASC_MIN_ACTIVE_QNO, align 4
  store i32 %20, i32* %3, align 4
  %21 = load i64, i64* @ASC_QADR_BEG, align 8
  %22 = load i64, i64* @ASC_QBLK_SIZE, align 8
  %23 = add nsw i64 %21, %22
  store i64 %23, i64* %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @ASC_SCSIQ_B_FWD, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  %30 = call i32 @AscWriteLramByte(i32 %24, i64 %27, i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @ASC_SCSIQ_B_BWD, align 8
  %34 = add nsw i64 %32, %33
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @AscWriteLramByte(i32 %31, i64 %34, i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = load i64, i64* %4, align 8
  %41 = load i64, i64* @ASC_SCSIQ_B_QNO, align 8
  %42 = add nsw i64 %40, %41
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @AscWriteLramByte(i32 %39, i64 %42, i32 %43)
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  %47 = load i64, i64* @ASC_QBLK_SIZE, align 8
  %48 = load i64, i64* %4, align 8
  %49 = add nsw i64 %48, %47
  store i64 %49, i64* %4, align 8
  br label %50

50:                                               ; preds = %77, %1
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %83

56:                                               ; preds = %50
  %57 = load i32, i32* %5, align 4
  %58 = load i64, i64* %4, align 8
  %59 = load i64, i64* @ASC_SCSIQ_B_FWD, align 8
  %60 = add nsw i64 %58, %59
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  %63 = call i32 @AscWriteLramByte(i32 %57, i64 %60, i32 %62)
  %64 = load i32, i32* %5, align 4
  %65 = load i64, i64* %4, align 8
  %66 = load i64, i64* @ASC_SCSIQ_B_BWD, align 8
  %67 = add nsw i64 %65, %66
  %68 = load i32, i32* %3, align 4
  %69 = sub nsw i32 %68, 1
  %70 = call i32 @AscWriteLramByte(i32 %64, i64 %67, i32 %69)
  %71 = load i32, i32* %5, align 4
  %72 = load i64, i64* %4, align 8
  %73 = load i64, i64* @ASC_SCSIQ_B_QNO, align 8
  %74 = add nsw i64 %72, %73
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @AscWriteLramByte(i32 %71, i64 %74, i32 %75)
  br label %77

77:                                               ; preds = %56
  %78 = load i32, i32* %3, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %3, align 4
  %80 = load i64, i64* @ASC_QBLK_SIZE, align 8
  %81 = load i64, i64* %4, align 8
  %82 = add nsw i64 %81, %80
  store i64 %82, i64* %4, align 8
  br label %50

83:                                               ; preds = %50
  %84 = load i32, i32* %5, align 4
  %85 = load i64, i64* %4, align 8
  %86 = load i64, i64* @ASC_SCSIQ_B_FWD, align 8
  %87 = add nsw i64 %85, %86
  %88 = load i64, i64* @ASC_QLINK_END, align 8
  %89 = trunc i64 %88 to i32
  %90 = call i32 @AscWriteLramByte(i32 %84, i64 %87, i32 %89)
  %91 = load i32, i32* %5, align 4
  %92 = load i64, i64* %4, align 8
  %93 = load i64, i64* @ASC_SCSIQ_B_BWD, align 8
  %94 = add nsw i64 %92, %93
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 %97, 1
  %99 = call i32 @AscWriteLramByte(i32 %91, i64 %94, i32 %98)
  %100 = load i32, i32* %5, align 4
  %101 = load i64, i64* %4, align 8
  %102 = load i64, i64* @ASC_SCSIQ_B_QNO, align 8
  %103 = add nsw i64 %101, %102
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @AscWriteLramByte(i32 %100, i64 %103, i32 %106)
  %108 = load i32, i32* %3, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %3, align 4
  %110 = load i64, i64* @ASC_QBLK_SIZE, align 8
  %111 = load i64, i64* %4, align 8
  %112 = add nsw i64 %111, %110
  store i64 %112, i64* %4, align 8
  br label %113

113:                                              ; preds = %139, %83
  %114 = load i32, i32* %3, align 4
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 3
  %119 = icmp sle i32 %114, %118
  br i1 %119, label %120, label %145

120:                                              ; preds = %113
  %121 = load i32, i32* %5, align 4
  %122 = load i64, i64* %4, align 8
  %123 = load i64, i64* @ASC_SCSIQ_B_FWD, align 8
  %124 = add nsw i64 %122, %123
  %125 = load i32, i32* %3, align 4
  %126 = call i32 @AscWriteLramByte(i32 %121, i64 %124, i32 %125)
  %127 = load i32, i32* %5, align 4
  %128 = load i64, i64* %4, align 8
  %129 = load i64, i64* @ASC_SCSIQ_B_BWD, align 8
  %130 = add nsw i64 %128, %129
  %131 = load i32, i32* %3, align 4
  %132 = call i32 @AscWriteLramByte(i32 %127, i64 %130, i32 %131)
  %133 = load i32, i32* %5, align 4
  %134 = load i64, i64* %4, align 8
  %135 = load i64, i64* @ASC_SCSIQ_B_QNO, align 8
  %136 = add nsw i64 %134, %135
  %137 = load i32, i32* %3, align 4
  %138 = call i32 @AscWriteLramByte(i32 %133, i64 %136, i32 %137)
  br label %139

139:                                              ; preds = %120
  %140 = load i32, i32* %3, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %3, align 4
  %142 = load i64, i64* @ASC_QBLK_SIZE, align 8
  %143 = load i64, i64* %4, align 8
  %144 = add nsw i64 %143, %142
  store i64 %144, i64* %4, align 8
  br label %113

145:                                              ; preds = %113
  ret void
}

declare dso_local i32 @AscMemWordSetLram(i32, i64, i32, i64) #1

declare dso_local i32 @AscWriteLramByte(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
