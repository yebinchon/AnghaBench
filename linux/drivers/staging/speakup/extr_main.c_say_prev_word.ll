; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_say_prev_word.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_say_prev_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i64 }

@spk_parked = common dso_local global i32 0, align 4
@spk_x = common dso_local global i64 0, align 8
@spk_y = common dso_local global i64 0, align 8
@edge_top = common dso_local global i64 0, align 8
@edge_quiet = common dso_local global i64 0, align 8
@edge_left = common dso_local global i64 0, align 8
@spk_pos = common dso_local global i64 0, align 8
@SPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*)* @say_prev_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @say_prev_word(%struct.vc_data* %0) #0 {
  %2 = alloca %struct.vc_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.vc_data* %0, %struct.vc_data** %2, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %8 = load i32, i32* @spk_parked, align 4
  %9 = or i32 %8, 1
  store i32 %9, i32* @spk_parked, align 4
  %10 = load i64, i64* @spk_x, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %1
  %13 = load i64, i64* @spk_y, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %17 = load i64, i64* @edge_top, align 8
  %18 = call i32 @announce_edge(%struct.vc_data* %16, i64 %17)
  br label %113

19:                                               ; preds = %12
  %20 = load i64, i64* @spk_y, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* @spk_y, align 8
  %22 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %23 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* @spk_x, align 8
  %25 = load i64, i64* @edge_quiet, align 8
  store i64 %25, i64* %5, align 8
  br label %26

26:                                               ; preds = %19, %1
  br label %27

27:                                               ; preds = %26, %88
  %28 = load i64, i64* @spk_x, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %27
  %31 = load i64, i64* @spk_y, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i64, i64* @edge_top, align 8
  store i64 %34, i64* %5, align 8
  br label %90

35:                                               ; preds = %30
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @edge_quiet, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i64, i64* @edge_left, align 8
  store i64 %40, i64* %5, align 8
  br label %41

41:                                               ; preds = %39, %35
  %42 = load i64, i64* %7, align 8
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %90

45:                                               ; preds = %41
  %46 = load i64, i64* @spk_y, align 8
  %47 = add nsw i64 %46, -1
  store i64 %47, i64* @spk_y, align 8
  %48 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %49 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %50, 1
  store i64 %51, i64* @spk_x, align 8
  br label %55

52:                                               ; preds = %27
  %53 = load i64, i64* @spk_x, align 8
  %54 = add nsw i64 %53, -1
  store i64 %54, i64* @spk_x, align 8
  br label %55

55:                                               ; preds = %52, %45
  %56 = load i64, i64* @spk_pos, align 8
  %57 = sub nsw i64 %56, 2
  store i64 %57, i64* @spk_pos, align 8
  %58 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %59 = load i64, i64* @spk_pos, align 8
  %60 = inttoptr i64 %59 to i64*
  %61 = call i32 @get_char(%struct.vc_data* %58, i64* %60, i32* %3)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @SPACE, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %68, label %65

65:                                               ; preds = %55
  %66 = load i32, i32* %4, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65, %55
  store i64 0, i64* %7, align 8
  br label %79

69:                                               ; preds = %65
  %70 = load i32, i32* %4, align 4
  %71 = icmp slt i32 %70, 256
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load i32, i32* %4, align 4
  %74 = call i64 @IS_WDLM(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i64 1, i64* %7, align 8
  br label %78

77:                                               ; preds = %72, %69
  store i64 2, i64* %7, align 8
  br label %78

78:                                               ; preds = %77, %76
  br label %79

79:                                               ; preds = %78, %68
  %80 = load i64, i64* %7, align 8
  %81 = load i64, i64* %6, align 8
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = load i64, i64* @spk_pos, align 8
  %85 = add nsw i64 %84, 2
  store i64 %85, i64* @spk_pos, align 8
  %86 = load i64, i64* @spk_x, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* @spk_x, align 8
  br label %90

88:                                               ; preds = %79
  %89 = load i64, i64* %7, align 8
  store i64 %89, i64* %6, align 8
  br label %27

90:                                               ; preds = %83, %44, %33
  %91 = load i64, i64* @spk_x, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = load i64, i64* %5, align 8
  %95 = load i64, i64* @edge_quiet, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load i64, i64* @edge_left, align 8
  store i64 %98, i64* %5, align 8
  br label %99

99:                                               ; preds = %97, %93, %90
  %100 = load i64, i64* %5, align 8
  %101 = icmp sgt i64 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %99
  %103 = load i64, i64* %5, align 8
  %104 = load i64, i64* @edge_quiet, align 8
  %105 = icmp slt i64 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %108 = load i64, i64* %5, align 8
  %109 = call i32 @announce_edge(%struct.vc_data* %107, i64 %108)
  br label %110

110:                                              ; preds = %106, %102, %99
  %111 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %112 = call i32 @say_word(%struct.vc_data* %111)
  br label %113

113:                                              ; preds = %110, %15
  ret void
}

declare dso_local i32 @announce_edge(%struct.vc_data*, i64) #1

declare dso_local i32 @get_char(%struct.vc_data*, i64*, i32*) #1

declare dso_local i64 @IS_WDLM(i32) #1

declare dso_local i32 @say_word(%struct.vc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
