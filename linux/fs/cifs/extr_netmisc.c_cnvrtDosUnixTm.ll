; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_netmisc.c_cnvrtDosUnixTm.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_netmisc.c_cnvrtDosUnixTm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec64 = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"date %d time %d\0A\00", align 1
@VFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"illegal time min %d sec %lld\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"illegal hours %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"illegal date, month %d day: %d\0A\00", align 1
@total_days_of_prev_months = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i32, i64 } @cnvrtDosUnixTm(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.timespec64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_3__*, align 8
  %17 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @le16_to_cpu(i32 %18)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @le16_to_cpu(i32 %20)
  store i32 %21, i32* %15, align 4
  %22 = bitcast i32* %15 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %22, %struct.TYPE_3__** %16, align 8
  %23 = bitcast i32* %14 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %17, align 8
  %24 = load i32, i32* @FYI, align 4
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* %15, align 4
  %27 = call i32 (i32, i8*, i32, ...) @cifs_dbg(i32 %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 2, %30
  store i32 %31, i32* %8, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp sgt i32 %35, 59
  br i1 %36, label %40, label %37

37:                                               ; preds = %3
  %38 = load i32, i32* %10, align 4
  %39 = icmp sgt i32 %38, 59
  br i1 %39, label %40, label %45

40:                                               ; preds = %37, %3
  %41 = load i32, i32* @VFS, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 (i32, i8*, i32, ...) @cifs_dbg(i32 %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %40, %37
  %46 = load i32, i32* %10, align 4
  %47 = mul nsw i32 %46, 60
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %8, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 3600, %52
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %8, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %58, 24
  br i1 %59, label %60, label %66

60:                                               ; preds = %45
  %61 = load i32, i32* @VFS, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i32, i8*, i32, ...) @cifs_dbg(i32 %61, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %60, %45
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %11, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp slt i32 %73, 1
  br i1 %74, label %84, label %75

75:                                               ; preds = %66
  %76 = load i32, i32* %11, align 4
  %77 = icmp sgt i32 %76, 31
  br i1 %77, label %84, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %12, align 4
  %80 = icmp slt i32 %79, 1
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %12, align 4
  %83 = icmp sgt i32 %82, 12
  br i1 %83, label %84, label %93

84:                                               ; preds = %81, %78, %75, %66
  %85 = load i32, i32* @VFS, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %11, align 4
  %88 = call i32 (i32, i8*, i32, ...) @cifs_dbg(i32 %85, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %86, i32 %87)
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @clamp(i32 %89, i32 1, i32 31)
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @clamp(i32 %91, i32 1, i32 12)
  store i32 %92, i32* %12, align 4
  br label %93

93:                                               ; preds = %84, %81
  %94 = load i32, i32* %12, align 4
  %95 = sub nsw i32 %94, 1
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %11, align 4
  %97 = load i32*, i32** @total_days_of_prev_months, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %96, %101
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 3652
  store i32 %104, i32* %9, align 4
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %13, align 4
  %109 = mul nsw i32 %108, 365
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %13, align 4
  %113 = sdiv i32 %112, 4
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %13, align 4
  %117 = icmp sge i32 %116, 120
  br i1 %117, label %118, label %121

118:                                              ; preds = %93
  %119 = load i32, i32* %9, align 4
  %120 = sub nsw i32 %119, 1
  store i32 %120, i32* %9, align 4
  br label %121

121:                                              ; preds = %118, %93
  %122 = load i32, i32* %13, align 4
  %123 = icmp ne i32 %122, 120
  br i1 %123, label %124, label %139

124:                                              ; preds = %121
  %125 = load i32, i32* %13, align 4
  %126 = and i32 %125, 3
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %124
  %129 = load i32, i32* %12, align 4
  %130 = icmp slt i32 %129, 2
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i32 1, i32 0
  %133 = icmp ne i32 %132, 0
  br label %134

134:                                              ; preds = %128, %124
  %135 = phi i1 [ false, %124 ], [ %133, %128 ]
  %136 = zext i1 %135 to i32
  %137 = load i32, i32* %9, align 4
  %138 = sub nsw i32 %137, %136
  store i32 %138, i32* %9, align 4
  br label %139

139:                                              ; preds = %134, %121
  %140 = load i32, i32* %9, align 4
  %141 = mul nsw i32 86400, %140
  %142 = load i32, i32* %8, align 4
  %143 = add nsw i32 %142, %141
  store i32 %143, i32* %8, align 4
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* %7, align 4
  %146 = add nsw i32 %144, %145
  %147 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %4, i32 0, i32 0
  store i32 %146, i32* %147, align 8
  %148 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %4, i32 0, i32 1
  store i64 0, i64* %148, align 8
  %149 = bitcast %struct.timespec64* %4 to { i32, i64 }*
  %150 = load { i32, i64 }, { i32, i64 }* %149, align 8
  ret { i32, i64 } %150
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @cifs_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @clamp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
