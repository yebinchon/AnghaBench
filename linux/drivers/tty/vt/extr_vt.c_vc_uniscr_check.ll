; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_vc_uniscr_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_vc_uniscr_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i32, i32, %struct.uni_screen*, i64, i32 }
%struct.uni_screen = type { i32** }

@NO_VC_UNI_SCREEN = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc_uniscr_check(%struct.vc_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca %struct.uni_screen*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  %11 = load i32, i32* @NO_VC_UNI_SCREEN, align 4
  %12 = call i64 @__is_defined(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @EOPNOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %99

17:                                               ; preds = %1
  %18 = call i32 (...) @WARN_CONSOLE_UNLOCKED()
  %19 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %20 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @ENODATA, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %99

26:                                               ; preds = %17
  %27 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %28 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %27, i32 0, i32 3
  %29 = load %struct.uni_screen*, %struct.uni_screen** %28, align 8
  %30 = icmp ne %struct.uni_screen* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %99

32:                                               ; preds = %26
  %33 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %34 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %37 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.uni_screen* @vc_uniscr_alloc(i32 %35, i32 %38)
  store %struct.uni_screen* %39, %struct.uni_screen** %4, align 8
  %40 = load %struct.uni_screen*, %struct.uni_screen** %4, align 8
  %41 = icmp ne %struct.uni_screen* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %32
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %99

45:                                               ; preds = %32
  %46 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %47 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i16*
  store i16* %49, i16** %5, align 8
  %50 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %51 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, 255
  store i32 %53, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %92, %45
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %57 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %95

60:                                               ; preds = %54
  %61 = load %struct.uni_screen*, %struct.uni_screen** %4, align 8
  %62 = getelementptr inbounds %struct.uni_screen, %struct.uni_screen* %61, i32 0, i32 0
  %63 = load i32**, i32*** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  %67 = load i32*, i32** %66, align 8
  store i32* %67, i32** %9, align 8
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %88, %60
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %71 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %91

74:                                               ; preds = %68
  %75 = load i16*, i16** %5, align 8
  %76 = getelementptr inbounds i16, i16* %75, i32 1
  store i16* %76, i16** %5, align 8
  %77 = ptrtoint i16* %75 to i32
  %78 = call i32 @scr_readw(i32 %77)
  %79 = load i32, i32* %8, align 4
  %80 = and i32 %78, %79
  store i32 %80, i32* %10, align 4
  %81 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @inverse_translate(%struct.vc_data* %81, i32 %82, i32 1)
  %84 = load i32*, i32** %9, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %83, i32* %87, align 4
  br label %88

88:                                               ; preds = %74
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  br label %68

91:                                               ; preds = %68
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %54

95:                                               ; preds = %54
  %96 = load %struct.uni_screen*, %struct.uni_screen** %4, align 8
  %97 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %98 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %97, i32 0, i32 3
  store %struct.uni_screen* %96, %struct.uni_screen** %98, align 8
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %95, %42, %31, %23, %14
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i64 @__is_defined(i32) #1

declare dso_local i32 @WARN_CONSOLE_UNLOCKED(...) #1

declare dso_local %struct.uni_screen* @vc_uniscr_alloc(i32, i32) #1

declare dso_local i32 @scr_readw(i32) #1

declare dso_local i32 @inverse_translate(%struct.vc_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
