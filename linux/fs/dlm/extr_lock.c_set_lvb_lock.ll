; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_set_lvb_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_set_lvb_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_rsb = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dlm_lkb = type { i32, i32, i32, i32, i64, i64 }

@dlm_lvb_operations = common dso_local global i32** null, align 8
@DLM_LKF_VALBLK = common dso_local global i32 0, align 4
@DLM_LKF_IVVALBLK = common dso_local global i32 0, align 4
@RSB_VALNOTVALID = common dso_local global i32 0, align 4
@DLM_SBF_VALNOTVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_rsb*, %struct.dlm_lkb*)* @set_lvb_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_lvb_lock(%struct.dlm_rsb* %0, %struct.dlm_lkb* %1) #0 {
  %3 = alloca %struct.dlm_rsb*, align 8
  %4 = alloca %struct.dlm_lkb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dlm_rsb* %0, %struct.dlm_rsb** %3, align 8
  store %struct.dlm_lkb* %1, %struct.dlm_lkb** %4, align 8
  %7 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %8 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32**, i32*** @dlm_lvb_operations, align 8
  %13 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %14 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32*, i32** %12, i64 %17
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %21 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %19, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %63

29:                                               ; preds = %2
  %30 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %31 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %142

35:                                               ; preds = %29
  %36 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %37 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @DLM_LKF_VALBLK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  br label %142

43:                                               ; preds = %35
  %44 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %45 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  br label %142

49:                                               ; preds = %43
  %50 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %51 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %54 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @memcpy(i64 %52, i64 %55, i32 %56)
  %58 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %59 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %62 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %61, i32 0, i32 4
  store i64 %60, i64* %62, align 8
  br label %131

63:                                               ; preds = %2
  %64 = load i32, i32* %5, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %130

66:                                               ; preds = %63
  %67 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %68 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @DLM_LKF_IVVALBLK, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %75 = load i32, i32* @RSB_VALNOTVALID, align 4
  %76 = call i32 @rsb_set_flag(%struct.dlm_rsb* %74, i32 %75)
  br label %142

77:                                               ; preds = %66
  %78 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %79 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  br label %142

83:                                               ; preds = %77
  %84 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %85 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @DLM_LKF_VALBLK, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %83
  br label %142

91:                                               ; preds = %83
  %92 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %93 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %103, label %96

96:                                               ; preds = %91
  %97 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %98 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %97, i32 0, i32 2
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = call i64 @dlm_allocate_lvb(%struct.TYPE_2__* %99)
  %101 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %102 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %101, i32 0, i32 1
  store i64 %100, i64* %102, align 8
  br label %103

103:                                              ; preds = %96, %91
  %104 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %105 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %103
  br label %142

109:                                              ; preds = %103
  %110 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %111 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %114 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %113, i32 0, i32 5
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @memcpy(i64 %112, i64 %115, i32 %116)
  %118 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %119 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %120, 1
  store i64 %121, i64* %119, align 8
  %122 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %123 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %126 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %125, i32 0, i32 4
  store i64 %124, i64* %126, align 8
  %127 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %128 = load i32, i32* @RSB_VALNOTVALID, align 4
  %129 = call i32 @rsb_clear_flag(%struct.dlm_rsb* %127, i32 %128)
  br label %130

130:                                              ; preds = %109, %63
  br label %131

131:                                              ; preds = %130, %49
  %132 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %133 = load i32, i32* @RSB_VALNOTVALID, align 4
  %134 = call i64 @rsb_flag(%struct.dlm_rsb* %132, i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %131
  %137 = load i32, i32* @DLM_SBF_VALNOTVALID, align 4
  %138 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %139 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %34, %42, %48, %73, %82, %90, %108, %136, %131
  ret void
}

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @rsb_set_flag(%struct.dlm_rsb*, i32) #1

declare dso_local i64 @dlm_allocate_lvb(%struct.TYPE_2__*) #1

declare dso_local i32 @rsb_clear_flag(%struct.dlm_rsb*, i32) #1

declare dso_local i64 @rsb_flag(%struct.dlm_rsb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
