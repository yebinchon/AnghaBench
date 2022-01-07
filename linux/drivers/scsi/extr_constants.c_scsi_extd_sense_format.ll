; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_constants.c_scsi_extd_sense_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_constants.c_scsi_extd_sense_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i16, i64 }
%struct.TYPE_4__ = type { i8*, i8, i8, i8, i8* }

@additional = common dso_local global %struct.TYPE_5__* null, align 8
@additional_text = common dso_local global i8* null, align 8
@additional2 = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @scsi_extd_sense_format(i8 zeroext %0, i8 zeroext %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  store i8 %0, i8* %5, align 1
  store i8 %1, i8* %6, align 1
  store i8** %2, i8*** %7, align 8
  %11 = load i8, i8* %5, align 1
  %12 = zext i8 %11 to i32
  %13 = shl i32 %12, 8
  %14 = load i8, i8* %6, align 1
  %15 = zext i8 %14 to i32
  %16 = or i32 %13, %15
  %17 = trunc i32 %16 to i16
  store i16 %17, i16* %9, align 2
  store i32 0, i32* %10, align 4
  %18 = load i8**, i8*** %7, align 8
  store i8* null, i8** %18, align 8
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %51, %3
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** @additional, align 8
  %22 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %21)
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %54

24:                                               ; preds = %19
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** @additional, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i16, i16* %29, align 8
  %31 = zext i16 %30 to i32
  %32 = load i16, i16* %9, align 2
  %33 = zext i16 %32 to i32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %24
  %36 = load i8*, i8** @additional_text, align 8
  %37 = load i32, i32* %10, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  store i8* %39, i8** %4, align 8
  br label %115

40:                                               ; preds = %24
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** @additional, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = zext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %40
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %19

54:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %111, %54
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @additional2, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %114

63:                                               ; preds = %55
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @additional2, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i8, i8* %68, align 8
  %70 = zext i8 %69 to i32
  %71 = load i8, i8* %5, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %74, label %110

74:                                               ; preds = %63
  %75 = load i8, i8* %6, align 1
  %76 = zext i8 %75 to i32
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** @additional2, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp sge i32 %76, %83
  br i1 %84, label %85, label %110

85:                                               ; preds = %74
  %86 = load i8, i8* %6, align 1
  %87 = zext i8 %86 to i32
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** @additional2, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 3
  %93 = load i8, i8* %92, align 2
  %94 = zext i8 %93 to i32
  %95 = icmp sle i32 %87, %94
  br i1 %95, label %96, label %110

96:                                               ; preds = %85
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** @additional2, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = load i8**, i8*** %7, align 8
  store i8* %102, i8** %103, align 8
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** @additional2, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 4
  %109 = load i8*, i8** %108, align 8
  store i8* %109, i8** %4, align 8
  br label %115

110:                                              ; preds = %85, %74, %63
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %8, align 4
  br label %55

114:                                              ; preds = %55
  store i8* null, i8** %4, align 8
  br label %115

115:                                              ; preds = %114, %96, %35
  %116 = load i8*, i8** %4, align 8
  ret i8* %116
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
