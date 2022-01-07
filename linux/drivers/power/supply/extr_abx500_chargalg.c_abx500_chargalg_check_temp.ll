; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_abx500_chargalg.c_abx500_chargalg_check_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_abx500_chargalg.c_abx500_chargalg_check_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abx500_chargalg = type { i64, i64, %struct.TYPE_6__, i32, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [66 x i8] c"Within hysteresis limit temp: %d hyst_lowhigh %d, hyst normal %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.abx500_chargalg*)* @abx500_chargalg_check_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @abx500_chargalg_check_temp(%struct.abx500_chargalg* %0) #0 {
  %2 = alloca %struct.abx500_chargalg*, align 8
  store %struct.abx500_chargalg* %0, %struct.abx500_chargalg** %2, align 8
  %3 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %4 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %8 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %7, i32 0, i32 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %13 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %11, %14
  %16 = icmp sgt i64 %6, %15
  br i1 %16, label %17, label %43

17:                                               ; preds = %1
  %18 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %19 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %23 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %22, i32 0, i32 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %28 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %26, %29
  %31 = icmp slt i64 %21, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %17
  %33 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %34 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %37 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store i32 0, i32* %38, align 4
  %39 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %40 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %42 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  br label %166

43:                                               ; preds = %17, %1
  %44 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %45 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %49 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %48, i32 0, i32 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp sge i64 %47, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %43
  %55 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %56 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %60 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %59, i32 0, i32 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %65 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %63, %66
  %68 = icmp slt i64 %58, %67
  br i1 %68, label %95, label %69

69:                                               ; preds = %54, %43
  %70 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %71 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %75 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %74, i32 0, i32 4
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %80 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %78, %81
  %83 = icmp sgt i64 %73, %82
  br i1 %83, label %84, label %111

84:                                               ; preds = %69
  %85 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %86 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %90 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %89, i32 0, i32 4
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp sle i64 %88, %93
  br i1 %94, label %95, label %111

95:                                               ; preds = %84, %54
  %96 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %97 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %96, i32 0, i32 5
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store i32 0, i32* %98, align 8
  %99 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %100 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %99, i32 0, i32 5
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  store i32 1, i32* %101, align 4
  %102 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %103 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %102, i32 0, i32 4
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %108 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  %109 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %110 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %109, i32 0, i32 1
  store i64 0, i64* %110, align 8
  br label %165

111:                                              ; preds = %84, %69
  %112 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %113 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %117 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %116, i32 0, i32 4
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = icmp sle i64 %115, %120
  br i1 %121, label %133, label %122

122:                                              ; preds = %111
  %123 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %124 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %128 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %127, i32 0, i32 4
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp sge i64 %126, %131
  br i1 %132, label %133, label %149

133:                                              ; preds = %122, %111
  %134 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %135 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %134, i32 0, i32 5
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  store i32 1, i32* %136, align 8
  %137 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %138 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %137, i32 0, i32 5
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  store i32 0, i32* %139, align 4
  %140 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %141 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %140, i32 0, i32 0
  store i64 0, i64* %141, align 8
  %142 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %143 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %142, i32 0, i32 4
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 4
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %148 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %147, i32 0, i32 1
  store i64 %146, i64* %148, align 8
  br label %164

149:                                              ; preds = %122
  %150 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %151 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %154 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %158 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %161 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @dev_dbg(i32 %152, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i64 %156, i64 %159, i64 %162)
  br label %164

164:                                              ; preds = %149, %133
  br label %165

165:                                              ; preds = %164, %95
  br label %166

166:                                              ; preds = %165, %32
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
