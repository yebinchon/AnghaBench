; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_say_next_word.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_say_next_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i32 }

@spk_parked = common dso_local global i32 0, align 4
@spk_x = common dso_local global i32 0, align 4
@spk_y = common dso_local global i32 0, align 4
@edge_bottom = common dso_local global i64 0, align 8
@spk_pos = common dso_local global i64 0, align 8
@SPACE = common dso_local global i32 0, align 4
@edge_right = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*)* @say_next_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @say_next_word(%struct.vc_data* %0) #0 {
  %2 = alloca %struct.vc_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.vc_data* %0, %struct.vc_data** %2, align 8
  store i64 0, i64* %5, align 8
  store i64 2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %8 = load i32, i32* @spk_parked, align 4
  %9 = or i32 %8, 1
  store i32 %9, i32* @spk_parked, align 4
  %10 = load i32, i32* @spk_x, align 4
  %11 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %12 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %13, 1
  %15 = icmp eq i32 %10, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %1
  %17 = load i32, i32* @spk_y, align 4
  %18 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %19 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %20, 1
  %22 = icmp eq i32 %17, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %25 = load i64, i64* @edge_bottom, align 8
  %26 = call i32 @announce_edge(%struct.vc_data* %24, i64 %25)
  br label %92

27:                                               ; preds = %16, %1
  br label %28

28:                                               ; preds = %27, %78
  %29 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %30 = load i64, i64* @spk_pos, align 8
  %31 = inttoptr i64 %30 to i64*
  %32 = call i32 @get_char(%struct.vc_data* %29, i64* %31, i32* %3)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @SPACE, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %39, label %36

36:                                               ; preds = %28
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36, %28
  store i64 0, i64* %7, align 8
  br label %50

40:                                               ; preds = %36
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %41, 256
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i32, i32* %4, align 4
  %45 = call i64 @IS_WDLM(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i64 1, i64* %7, align 8
  br label %49

48:                                               ; preds = %43, %40
  store i64 2, i64* %7, align 8
  br label %49

49:                                               ; preds = %48, %47
  br label %50

50:                                               ; preds = %49, %39
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %6, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %82

55:                                               ; preds = %50
  %56 = load i32, i32* @spk_x, align 4
  %57 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %58 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %59, 1
  %61 = icmp sge i32 %56, %60
  br i1 %61, label %62, label %75

62:                                               ; preds = %55
  %63 = load i32, i32* @spk_y, align 4
  %64 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %65 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %66, 1
  %68 = icmp eq i32 %63, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i64, i64* @edge_bottom, align 8
  store i64 %70, i64* %5, align 8
  br label %82

71:                                               ; preds = %62
  store i64 0, i64* %7, align 8
  %72 = load i32, i32* @spk_y, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* @spk_y, align 4
  store i32 0, i32* @spk_x, align 4
  %74 = load i64, i64* @edge_right, align 8
  store i64 %74, i64* %5, align 8
  br label %78

75:                                               ; preds = %55
  %76 = load i32, i32* @spk_x, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* @spk_x, align 4
  br label %78

78:                                               ; preds = %75, %71
  %79 = load i64, i64* @spk_pos, align 8
  %80 = add nsw i64 %79, 2
  store i64 %80, i64* @spk_pos, align 8
  %81 = load i64, i64* %7, align 8
  store i64 %81, i64* %6, align 8
  br label %28

82:                                               ; preds = %69, %54
  %83 = load i64, i64* %5, align 8
  %84 = icmp sgt i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %87 = load i64, i64* %5, align 8
  %88 = call i32 @announce_edge(%struct.vc_data* %86, i64 %87)
  br label %89

89:                                               ; preds = %85, %82
  %90 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %91 = call i32 @say_word(%struct.vc_data* %90)
  br label %92

92:                                               ; preds = %89, %23
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
