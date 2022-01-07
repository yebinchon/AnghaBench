; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_qlogicpti.c_qlogicpti_set_hostdev_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_qlogicpti.c_qlogicpti_set_hostdev_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlogicpti = type { %struct.TYPE_4__*, i64, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }

@MAX_TARGETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlogicpti*)* @qlogicpti_set_hostdev_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlogicpti_set_hostdev_defaults(%struct.qlogicpti* %0) #0 {
  %2 = alloca %struct.qlogicpti*, align 8
  %3 = alloca i32, align 4
  store %struct.qlogicpti* %0, %struct.qlogicpti** %2, align 8
  %4 = load %struct.qlogicpti*, %struct.qlogicpti** %2, align 8
  %5 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.qlogicpti*, %struct.qlogicpti** %2, align 8
  %8 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 11
  store i32 %6, i32* %9, align 8
  %10 = load %struct.qlogicpti*, %struct.qlogicpti** %2, align 8
  %11 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i32 3, i32* %12, align 8
  %13 = load %struct.qlogicpti*, %struct.qlogicpti** %2, align 8
  %14 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 10
  store i64 0, i64* %15, align 8
  %16 = load %struct.qlogicpti*, %struct.qlogicpti** %2, align 8
  %17 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  store i32 5, i32* %18, align 4
  %19 = load %struct.qlogicpti*, %struct.qlogicpti** %2, align 8
  %20 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  store i32 3, i32* %21, align 8
  %22 = load %struct.qlogicpti*, %struct.qlogicpti** %2, align 8
  %23 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 3
  store i32 1, i32* %24, align 4
  %25 = load %struct.qlogicpti*, %struct.qlogicpti** %2, align 8
  %26 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 4
  store i32 1, i32* %27, align 8
  %28 = load %struct.qlogicpti*, %struct.qlogicpti** %2, align 8
  %29 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 5
  store i32 1, i32* %30, align 4
  %31 = load %struct.qlogicpti*, %struct.qlogicpti** %2, align 8
  %32 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 6
  store i32 1, i32* %33, align 8
  %34 = load %struct.qlogicpti*, %struct.qlogicpti** %2, align 8
  %35 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 7
  store i32 8, i32* %36, align 4
  %37 = load %struct.qlogicpti*, %struct.qlogicpti** %2, align 8
  %38 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 8
  store i32 250, i32* %39, align 8
  %40 = load %struct.qlogicpti*, %struct.qlogicpti** %2, align 8
  %41 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 9
  store i32 256, i32* %42, align 4
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %104, %1
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @MAX_TARGETS, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %107

47:                                               ; preds = %43
  %48 = load %struct.qlogicpti*, %struct.qlogicpti** %2, align 8
  %49 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 205, i32* %54, align 4
  %55 = load %struct.qlogicpti*, %struct.qlogicpti** %2, align 8
  %56 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i32 16, i32* %61, align 4
  %62 = load %struct.qlogicpti*, %struct.qlogicpti** %2, align 8
  %63 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %47
  %67 = load %struct.qlogicpti*, %struct.qlogicpti** %2, align 8
  %68 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  store i32 12, i32* %73, align 4
  %74 = load %struct.qlogicpti*, %struct.qlogicpti** %2, align 8
  %75 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i32, i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 3
  store i32 8, i32* %80, align 4
  br label %96

81:                                               ; preds = %47
  %82 = load %struct.qlogicpti*, %struct.qlogicpti** %2, align 8
  %83 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  store i32 25, i32* %88, align 4
  %89 = load %struct.qlogicpti*, %struct.qlogicpti** %2, align 8
  %90 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = load i32, i32* %3, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 3
  store i32 12, i32* %95, align 4
  br label %96

96:                                               ; preds = %81, %66
  %97 = load %struct.qlogicpti*, %struct.qlogicpti** %2, align 8
  %98 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = load i32, i32* %3, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 4
  store i32 1, i32* %103, align 4
  br label %104

104:                                              ; preds = %96
  %105 = load i32, i32* %3, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %3, align 4
  br label %43

107:                                              ; preds = %43
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
