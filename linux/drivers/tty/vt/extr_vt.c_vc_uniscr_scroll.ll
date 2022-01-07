; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_vc_uniscr_scroll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_vc_uniscr_scroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32 }
%struct.uni_screen = type { i32** }

@SM_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32, i32, i32, i32)* @vc_uniscr_scroll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc_uniscr_scroll(%struct.vc_data* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.vc_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.uni_screen*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %19 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %20 = call %struct.uni_screen* @get_vc_uniscr(%struct.vc_data* %19)
  store %struct.uni_screen* %20, %struct.uni_screen** %11, align 8
  %21 = load %struct.uni_screen*, %struct.uni_screen** %11, align 8
  %22 = icmp ne %struct.uni_screen* %21, null
  br i1 %22, label %23, label %110

23:                                               ; preds = %5
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sub i32 %24, %25
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %10, align 4
  %29 = sub i32 %27, %28
  store i32 %29, i32* %17, align 4
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %16, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @SM_DOWN, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %23
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %17, align 4
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* %10, align 4
  %38 = sub i32 %36, %37
  store i32 %38, i32* %16, align 4
  br label %39

39:                                               ; preds = %34, %23
  store i32 0, i32* %12, align 4
  br label %40

40:                                               ; preds = %102, %39
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %16, align 4
  %43 = load i32, i32* %15, align 4
  %44 = call i32 @gcd(i32 %42, i32 %43)
  %45 = icmp ult i32 %41, %44
  br i1 %45, label %46, label %105

46:                                               ; preds = %40
  %47 = load %struct.uni_screen*, %struct.uni_screen** %11, align 8
  %48 = getelementptr inbounds %struct.uni_screen, %struct.uni_screen* %47, i32 0, i32 0
  %49 = load i32**, i32*** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %12, align 4
  %52 = add i32 %50, %51
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %49, i64 %53
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %18, align 8
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %13, align 4
  br label %57

57:                                               ; preds = %46, %73
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %16, align 4
  %60 = add i32 %58, %59
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %15, align 4
  %63 = icmp uge i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %14, align 4
  %67 = sub i32 %66, %65
  store i32 %67, i32* %14, align 4
  br label %68

68:                                               ; preds = %64, %57
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %92

73:                                               ; preds = %68
  %74 = load %struct.uni_screen*, %struct.uni_screen** %11, align 8
  %75 = getelementptr inbounds %struct.uni_screen, %struct.uni_screen* %74, i32 0, i32 0
  %76 = load i32**, i32*** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %14, align 4
  %79 = add i32 %77, %78
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32*, i32** %76, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.uni_screen*, %struct.uni_screen** %11, align 8
  %84 = getelementptr inbounds %struct.uni_screen, %struct.uni_screen* %83, i32 0, i32 0
  %85 = load i32**, i32*** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %13, align 4
  %88 = add i32 %86, %87
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32*, i32** %85, i64 %89
  store i32* %82, i32** %90, align 8
  %91 = load i32, i32* %14, align 4
  store i32 %91, i32* %13, align 4
  br label %57

92:                                               ; preds = %72
  %93 = load i32*, i32** %18, align 8
  %94 = load %struct.uni_screen*, %struct.uni_screen** %11, align 8
  %95 = getelementptr inbounds %struct.uni_screen, %struct.uni_screen* %94, i32 0, i32 0
  %96 = load i32**, i32*** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %13, align 4
  %99 = add i32 %97, %98
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32*, i32** %96, i64 %100
  store i32* %93, i32** %101, align 8
  br label %102

102:                                              ; preds = %92
  %103 = load i32, i32* %12, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %12, align 4
  br label %40

105:                                              ; preds = %40
  %106 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %107 = load i32, i32* %17, align 4
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @vc_uniscr_clear_lines(%struct.vc_data* %106, i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %105, %5
  ret void
}

declare dso_local %struct.uni_screen* @get_vc_uniscr(%struct.vc_data*) #1

declare dso_local i32 @gcd(i32, i32) #1

declare dso_local i32 @vc_uniscr_clear_lines(%struct.vc_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
