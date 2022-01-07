; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_via_utility.c_viafb_lcd_get_support_expand_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_via_utility.c_viafb_lcd_get_support_expand_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@viafb_lcd_panel_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @viafb_lcd_get_support_expand_state(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @viafb_lcd_panel_id, align 4
  switch i32 %6, label %111 [
    i32 140, label %7
    i32 139, label %15
    i32 138, label %23
    i32 137, label %31
    i32 136, label %39
    i32 135, label %47
    i32 134, label %55
    i32 133, label %63
    i32 132, label %71
    i32 131, label %79
    i32 130, label %87
    i32 129, label %95
    i32 128, label %103
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 640
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 480
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 1, i32* %5, align 4
  br label %14

14:                                               ; preds = %13, %10, %7
  br label %112

15:                                               ; preds = %2
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 800
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 600
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 1, i32* %5, align 4
  br label %22

22:                                               ; preds = %21, %18, %15
  br label %112

23:                                               ; preds = %2
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %24, 1024
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 768
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 1, i32* %5, align 4
  br label %30

30:                                               ; preds = %29, %26, %23
  br label %112

31:                                               ; preds = %2
  %32 = load i32, i32* %3, align 4
  %33 = icmp slt i32 %32, 1280
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %35, 768
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 1, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %34, %31
  br label %112

39:                                               ; preds = %2
  %40 = load i32, i32* %3, align 4
  %41 = icmp slt i32 %40, 1280
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %43, 1024
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 1, i32* %5, align 4
  br label %46

46:                                               ; preds = %45, %42, %39
  br label %112

47:                                               ; preds = %2
  %48 = load i32, i32* %3, align 4
  %49 = icmp slt i32 %48, 1400
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* %4, align 4
  %52 = icmp slt i32 %51, 1050
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 1, i32* %5, align 4
  br label %54

54:                                               ; preds = %53, %50, %47
  br label %112

55:                                               ; preds = %2
  %56 = load i32, i32* %3, align 4
  %57 = icmp slt i32 %56, 1600
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32, i32* %4, align 4
  %60 = icmp slt i32 %59, 1200
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 1, i32* %5, align 4
  br label %62

62:                                               ; preds = %61, %58, %55
  br label %112

63:                                               ; preds = %2
  %64 = load i32, i32* %3, align 4
  %65 = icmp slt i32 %64, 1366
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i32, i32* %4, align 4
  %68 = icmp slt i32 %67, 768
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 1, i32* %5, align 4
  br label %70

70:                                               ; preds = %69, %66, %63
  br label %112

71:                                               ; preds = %2
  %72 = load i32, i32* %3, align 4
  %73 = icmp slt i32 %72, 1024
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i32, i32* %4, align 4
  %76 = icmp slt i32 %75, 600
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i32 1, i32* %5, align 4
  br label %78

78:                                               ; preds = %77, %74, %71
  br label %112

79:                                               ; preds = %2
  %80 = load i32, i32* %3, align 4
  %81 = icmp slt i32 %80, 1280
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i32, i32* %4, align 4
  %84 = icmp slt i32 %83, 800
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i32 1, i32* %5, align 4
  br label %86

86:                                               ; preds = %85, %82, %79
  br label %112

87:                                               ; preds = %2
  %88 = load i32, i32* %3, align 4
  %89 = icmp slt i32 %88, 800
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i32, i32* %4, align 4
  %92 = icmp slt i32 %91, 480
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  store i32 1, i32* %5, align 4
  br label %94

94:                                               ; preds = %93, %90, %87
  br label %112

95:                                               ; preds = %2
  %96 = load i32, i32* %3, align 4
  %97 = icmp slt i32 %96, 1360
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i32, i32* %4, align 4
  %100 = icmp slt i32 %99, 768
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  store i32 1, i32* %5, align 4
  br label %102

102:                                              ; preds = %101, %98, %95
  br label %112

103:                                              ; preds = %2
  %104 = load i32, i32* %3, align 4
  %105 = icmp slt i32 %104, 480
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load i32, i32* %4, align 4
  %108 = icmp slt i32 %107, 640
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  store i32 1, i32* %5, align 4
  br label %110

110:                                              ; preds = %109, %106, %103
  br label %112

111:                                              ; preds = %2
  store i32 0, i32* %5, align 4
  br label %112

112:                                              ; preds = %111, %110, %102, %94, %86, %78, %70, %62, %54, %46, %38, %30, %22, %14
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
