; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c__can_be_granted.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c__can_be_granted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_rsb = type { i32, i32, i32 }
%struct.dlm_lkb = type { i64, i32 }

@DLM_LOCK_IV = common dso_local global i64 0, align 8
@DLM_LKF_EXPEDITE = common dso_local global i32 0, align 4
@DLM_LKF_QUECVT = common dso_local global i32 0, align 4
@DLM_LKF_NOORDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_rsb*, %struct.dlm_lkb*, i32, i32)* @_can_be_granted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_can_be_granted(%struct.dlm_rsb* %0, %struct.dlm_lkb* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dlm_rsb*, align 8
  %7 = alloca %struct.dlm_lkb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dlm_rsb* %0, %struct.dlm_rsb** %6, align 8
  store %struct.dlm_lkb* %1, %struct.dlm_lkb** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %12 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DLM_LOCK_IV, align 8
  %15 = icmp ne i64 %13, %14
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %10, align 4
  %17 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %18 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @DLM_LKF_EXPEDITE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %136

24:                                               ; preds = %4
  %25 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %26 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %25, i32 0, i32 2
  %27 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %28 = call i64 @queue_conflict(i32* %26, %struct.dlm_lkb* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %136

31:                                               ; preds = %24
  %32 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %33 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %32, i32 0, i32 1
  %34 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %35 = call i64 @queue_conflict(i32* %33, %struct.dlm_lkb* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %136

38:                                               ; preds = %31
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 1, i32* %5, align 4
  br label %136

45:                                               ; preds = %41, %38
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %53 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @DLM_LKF_QUECVT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %51
  store i32 1, i32* %5, align 4
  br label %136

59:                                               ; preds = %51, %48, %45
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %59
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %62
  %66 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %67 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @DLM_LKF_QUECVT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %65
  %73 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %74 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %73, i32 0, i32 1
  %75 = call i64 @list_empty(i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i32 1, i32* %5, align 4
  br label %136

78:                                               ; preds = %72
  store i32 0, i32* %5, align 4
  br label %136

79:                                               ; preds = %65, %62, %59
  %80 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %81 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @DLM_LKF_NOORDER, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  store i32 1, i32* %5, align 4
  br label %136

87:                                               ; preds = %79
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %100, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %95 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %96 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %95, i32 0, i32 1
  %97 = call i64 @first_in_list(%struct.dlm_lkb* %94, i32* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  store i32 1, i32* %5, align 4
  br label %136

100:                                              ; preds = %93, %90, %87
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %100
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %117, label %106

106:                                              ; preds = %103
  %107 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %108 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %107, i32 0, i32 1
  %109 = call i64 @list_empty(i32* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %106
  %112 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %113 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %112, i32 0, i32 0
  %114 = call i64 @list_empty(i32* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  store i32 1, i32* %5, align 4
  br label %136

117:                                              ; preds = %111, %106, %103, %100
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %135, label %120

120:                                              ; preds = %117
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %135, label %123

123:                                              ; preds = %120
  %124 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %125 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %124, i32 0, i32 1
  %126 = call i64 @list_empty(i32* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %123
  %129 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %130 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %131 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %130, i32 0, i32 0
  %132 = call i64 @first_in_list(%struct.dlm_lkb* %129, i32* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  store i32 1, i32* %5, align 4
  br label %136

135:                                              ; preds = %128, %123, %120, %117
  store i32 0, i32* %5, align 4
  br label %136

136:                                              ; preds = %135, %134, %116, %99, %86, %78, %77, %58, %44, %37, %30, %23
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local i64 @queue_conflict(i32*, %struct.dlm_lkb*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i64 @first_in_list(%struct.dlm_lkb*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
