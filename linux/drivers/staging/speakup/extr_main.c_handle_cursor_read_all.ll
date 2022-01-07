; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_handle_cursor_read_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_handle_cursor_read_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32)* @handle_cursor_read_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_cursor_read_all(%struct.vc_data* %0, i32 %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %99 [
    i32 131, label %10
    i32 129, label %49
    i32 132, label %50
    i32 130, label %53
    i32 135, label %54
    i32 134, label %67
    i32 133, label %87
    i32 128, label %88
  ]

10:                                               ; preds = %2
  %11 = call i32 @spk_get_index_count(i32* %5, i32* %6)
  %12 = load i32, i32* %6, align 4
  %13 = add nsw i32 %12, 1
  %14 = call i32 @spk_reset_index_count(i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %27

17:                                               ; preds = %10
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, 1
  %20 = call i32 @say_sentence_num(i32 %19, i32 0)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %24 = call i32 @kbd_fakekey2(%struct.vc_data* %23, i32 134)
  br label %99

25:                                               ; preds = %17
  %26 = call i32 @synth_insert_next_index(i32 0)
  br label %46

27:                                               ; preds = %10
  store i32 0, i32* %8, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  %30 = call i32 @say_sentence_num(i32 %29, i32 1)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  store i32 1, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @spk_reset_index_count(i32 %33)
  br label %37

35:                                               ; preds = %27
  %36 = call i32 @synth_insert_next_index(i32 0)
  br label %37

37:                                               ; preds = %35, %32
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @say_sentence_num(i32 %38, i32 0)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %43 = call i32 @kbd_fakekey2(%struct.vc_data* %42, i32 134)
  br label %99

44:                                               ; preds = %37
  %45 = call i32 @synth_insert_next_index(i32 0)
  br label %46

46:                                               ; preds = %44, %25
  %47 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %48 = call i32 @start_read_all_timer(%struct.vc_data* %47, i32 128)
  br label %99

49:                                               ; preds = %2
  br label %99

50:                                               ; preds = %2
  %51 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %52 = call i32 @read_all_doc(%struct.vc_data* %51)
  br label %99

53:                                               ; preds = %2
  br label %99

54:                                               ; preds = %2
  %55 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %56 = call i32 @get_sentence_buf(%struct.vc_data* %55, i32 0)
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %60 = call i32 @kbd_fakekey2(%struct.vc_data* %59, i32 135)
  br label %66

61:                                               ; preds = %54
  %62 = call i32 @say_sentence_num(i32 0, i32 0)
  %63 = call i32 @synth_insert_next_index(i32 0)
  %64 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %65 = call i32 @start_read_all_timer(%struct.vc_data* %64, i32 128)
  br label %66

66:                                               ; preds = %61, %58
  br label %99

67:                                               ; preds = %2
  %68 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %69 = call i32 @get_sentence_buf(%struct.vc_data* %68, i32 0)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %74 = call i32 @read_all_doc(%struct.vc_data* %73)
  br label %75

75:                                               ; preds = %72, %67
  %76 = load i32, i32* %7, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %80 = call i32 @kbd_fakekey2(%struct.vc_data* %79, i32 134)
  br label %86

81:                                               ; preds = %75
  %82 = call i32 @say_sentence_num(i32 1, i32 0)
  %83 = call i32 @synth_insert_next_index(i32 0)
  %84 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %85 = call i32 @start_read_all_timer(%struct.vc_data* %84, i32 128)
  br label %86

86:                                               ; preds = %81, %78
  br label %99

87:                                               ; preds = %2
  br label %99

88:                                               ; preds = %2
  %89 = call i32 @spk_get_index_count(i32* %5, i32* %6)
  %90 = load i32, i32* %5, align 4
  %91 = icmp slt i32 %90, 2
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %94 = call i32 @kbd_fakekey2(%struct.vc_data* %93, i32 135)
  br label %98

95:                                               ; preds = %88
  %96 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %97 = call i32 @start_read_all_timer(%struct.vc_data* %96, i32 128)
  br label %98

98:                                               ; preds = %95, %92
  br label %99

99:                                               ; preds = %22, %41, %2, %98, %87, %86, %66, %53, %50, %49, %46
  ret void
}

declare dso_local i32 @spk_get_index_count(i32*, i32*) #1

declare dso_local i32 @spk_reset_index_count(i32) #1

declare dso_local i32 @say_sentence_num(i32, i32) #1

declare dso_local i32 @kbd_fakekey2(%struct.vc_data*, i32) #1

declare dso_local i32 @synth_insert_next_index(i32) #1

declare dso_local i32 @start_read_all_timer(%struct.vc_data*, i32) #1

declare dso_local i32 @read_all_doc(%struct.vc_data*) #1

declare dso_local i32 @get_sentence_buf(%struct.vc_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
