; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_can_be_granted.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_can_be_granted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_rsb = type { i32 }
%struct.dlm_lkb = type { i64, i64, i32, i32, i32 }

@DLM_LOCK_IV = common dso_local global i64 0, align 8
@DLM_LKF_CONVDEADLK = common dso_local global i32 0, align 4
@DLM_LOCK_NL = common dso_local global i64 0, align 8
@DLM_SBF_DEMOTED = common dso_local global i32 0, align 4
@EDEADLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"can_be_granted deadlock %x now %d\00", align 1
@DLM_LOCK_PR = common dso_local global i64 0, align 8
@DLM_LKF_ALTPR = common dso_local global i32 0, align 4
@DLM_LOCK_CW = common dso_local global i64 0, align 8
@DLM_LKF_ALTCW = common dso_local global i32 0, align 4
@DLM_SBF_ALTMODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_rsb*, %struct.dlm_lkb*, i32, i32, i32*)* @can_be_granted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_be_granted(%struct.dlm_rsb* %0, %struct.dlm_lkb* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.dlm_rsb*, align 8
  %7 = alloca %struct.dlm_lkb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.dlm_rsb* %0, %struct.dlm_rsb** %6, align 8
  store %struct.dlm_lkb* %1, %struct.dlm_lkb** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i64 0, i64* %12, align 8
  %15 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %16 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %13, align 8
  %18 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %19 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DLM_LOCK_IV, align 8
  %22 = icmp ne i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %14, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32*, i32** %10, align 8
  store i32 0, i32* %28, align 4
  br label %29

29:                                               ; preds = %27, %5
  %30 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %31 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @_can_be_granted(%struct.dlm_rsb* %30, %struct.dlm_lkb* %31, i32 %32, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %135

38:                                               ; preds = %29
  %39 = load i64, i64* %14, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %83

41:                                               ; preds = %38
  %42 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %43 = call i64 @can_be_queued(%struct.dlm_lkb* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %83

45:                                               ; preds = %41
  %46 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %47 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %48 = call i64 @conversion_deadlock_detect(%struct.dlm_rsb* %46, %struct.dlm_lkb* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %83

50:                                               ; preds = %45
  %51 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %52 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @DLM_LKF_CONVDEADLK, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %50
  %58 = load i64, i64* @DLM_LOCK_NL, align 8
  %59 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %60 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load i32, i32* @DLM_SBF_DEMOTED, align 4
  %62 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %63 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %82

66:                                               ; preds = %50
  %67 = load i32*, i32** %10, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32, i32* @EDEADLK, align 4
  %71 = sub nsw i32 0, %70
  %72 = load i32*, i32** %10, align 8
  store i32 %71, i32* %72, align 4
  br label %81

73:                                               ; preds = %66
  %74 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %75 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @log_print(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %77)
  %79 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %80 = call i32 @dlm_dump_rsb(%struct.dlm_rsb* %79)
  br label %81

81:                                               ; preds = %73, %69
  br label %82

82:                                               ; preds = %81, %57
  br label %135

83:                                               ; preds = %45, %41, %38
  %84 = load i64, i64* %13, align 8
  %85 = load i64, i64* @DLM_LOCK_PR, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %83
  %88 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %89 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @DLM_LKF_ALTPR, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  %95 = load i64, i64* @DLM_LOCK_PR, align 8
  store i64 %95, i64* %12, align 8
  br label %110

96:                                               ; preds = %87, %83
  %97 = load i64, i64* %13, align 8
  %98 = load i64, i64* @DLM_LOCK_CW, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %96
  %101 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %102 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @DLM_LKF_ALTCW, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %100
  %108 = load i64, i64* @DLM_LOCK_CW, align 8
  store i64 %108, i64* %12, align 8
  br label %109

109:                                              ; preds = %107, %100, %96
  br label %110

110:                                              ; preds = %109, %94
  %111 = load i64, i64* %12, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %134

113:                                              ; preds = %110
  %114 = load i64, i64* %12, align 8
  %115 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %116 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  %117 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %118 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @_can_be_granted(%struct.dlm_rsb* %117, %struct.dlm_lkb* %118, i32 %119, i32 0)
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %11, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %113
  %124 = load i32, i32* @DLM_SBF_ALTMODE, align 4
  %125 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %126 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 4
  br label %133

129:                                              ; preds = %113
  %130 = load i64, i64* %13, align 8
  %131 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %132 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  br label %133

133:                                              ; preds = %129, %123
  br label %134

134:                                              ; preds = %133, %110
  br label %135

135:                                              ; preds = %134, %82, %37
  %136 = load i32, i32* %11, align 4
  ret i32 %136
}

declare dso_local i32 @_can_be_granted(%struct.dlm_rsb*, %struct.dlm_lkb*, i32, i32) #1

declare dso_local i64 @can_be_queued(%struct.dlm_lkb*) #1

declare dso_local i64 @conversion_deadlock_detect(%struct.dlm_rsb*, %struct.dlm_lkb*) #1

declare dso_local i32 @log_print(i8*, i32, i32) #1

declare dso_local i32 @dlm_dump_rsb(%struct.dlm_rsb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
