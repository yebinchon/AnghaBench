; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_vc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_vc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32 }

@default_red = common dso_local global i32* null, align 8
@default_grn = common dso_local global i32* null, align 8
@default_blu = common dso_local global i32* null, align 8
@default_color = common dso_local global i32 0, align 4
@default_underline_color = common dso_local global i32 0, align 4
@default_italic_color = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32, i32, i32)* @vc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc_init(%struct.vc_data* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.vc_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %13 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %16 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %7, align 4
  %18 = shl i32 %17, 1
  %19 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %20 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %22 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %25 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = mul i32 %23, %26
  %28 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %29 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %31 = call i32 @set_origin(%struct.vc_data* %30)
  %32 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %33 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %32, i32 0, i32 10
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %36 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %35, i32 0, i32 11
  store i32 %34, i32* %36, align 4
  %37 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %38 = call i32 @reset_vc(%struct.vc_data* %37)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %79, %4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 16
  br i1 %41, label %42, label %82

42:                                               ; preds = %39
  %43 = load i32*, i32** @default_red, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %49 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %48, i32 0, i32 9
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  store i32 %47, i32* %54, align 4
  %55 = load i32*, i32** @default_grn, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %61 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %60, i32 0, i32 9
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  store i32 %59, i32* %66, align 4
  %67 = load i32*, i32** @default_blu, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %73 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %72, i32 0, i32 9
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  store i32 %71, i32* %78, align 4
  br label %79

79:                                               ; preds = %42
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %39

82:                                               ; preds = %39
  %83 = load i32, i32* @default_color, align 4
  %84 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %85 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %84, i32 0, i32 8
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* @default_underline_color, align 4
  %87 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %88 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %87, i32 0, i32 7
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* @default_italic_color, align 4
  %90 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %91 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %90, i32 0, i32 6
  store i32 %89, i32* %91, align 8
  %92 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %93 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %92, i32 0, i32 4
  store i32 8, i32* %93, align 8
  %94 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %95 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %94, i32 0, i32 5
  %96 = call i32 @init_waitqueue_head(i32* %95)
  %97 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @reset_terminal(%struct.vc_data* %97, i32 %98)
  ret void
}

declare dso_local i32 @set_origin(%struct.vc_data*) #1

declare dso_local i32 @reset_vc(%struct.vc_data*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @reset_terminal(%struct.vc_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
