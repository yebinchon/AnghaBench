; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/console/extr_sticore.c_sti_select_font.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/console/extr_sticore.c_sti_select_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_cooked_font = type { %struct.sti_cooked_font* }
%struct.sti_cooked_rom = type { %struct.sti_cooked_font* }

@num_sti_roms = common dso_local global i32 0, align 4
@font_name = common dso_local global i32* null, align 8
@font_width = common dso_local global i32* null, align 8
@font_height = common dso_local global i32* null, align 8
@font_index = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sti_cooked_font* (%struct.sti_cooked_rom*, i32 (%struct.sti_cooked_rom*, i32, i32)*)* @sti_select_font to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sti_cooked_font* @sti_select_font(%struct.sti_cooked_rom* %0, i32 (%struct.sti_cooked_rom*, i32, i32)* %1) #0 {
  %3 = alloca %struct.sti_cooked_font*, align 8
  %4 = alloca %struct.sti_cooked_rom*, align 8
  %5 = alloca i32 (%struct.sti_cooked_rom*, i32, i32)*, align 8
  %6 = alloca %struct.sti_cooked_font*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sti_cooked_rom* %0, %struct.sti_cooked_rom** %4, align 8
  store i32 (%struct.sti_cooked_rom*, i32, i32)* %1, i32 (%struct.sti_cooked_rom*, i32, i32)** %5, align 8
  %9 = load i32, i32* @num_sti_roms, align 4
  store i32 %9, i32* %8, align 4
  %10 = load %struct.sti_cooked_rom*, %struct.sti_cooked_rom** %4, align 8
  %11 = load i32*, i32** @font_name, align 8
  %12 = load i32, i32* %8, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.sti_cooked_font* @sti_select_fbfont(%struct.sti_cooked_rom* %10, i32 %15)
  store %struct.sti_cooked_font* %16, %struct.sti_cooked_font** %6, align 8
  %17 = icmp ne %struct.sti_cooked_font* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load %struct.sti_cooked_font*, %struct.sti_cooked_font** %6, align 8
  store %struct.sti_cooked_font* %19, %struct.sti_cooked_font** %3, align 8
  br label %85

20:                                               ; preds = %2
  %21 = load i32*, i32** @font_width, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %52

27:                                               ; preds = %20
  %28 = load i32*, i32** @font_height, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %27
  %35 = load i32 (%struct.sti_cooked_rom*, i32, i32)*, i32 (%struct.sti_cooked_rom*, i32, i32)** %5, align 8
  %36 = load %struct.sti_cooked_rom*, %struct.sti_cooked_rom** %4, align 8
  %37 = load i32*, i32** @font_height, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** @font_width, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 %35(%struct.sti_cooked_rom* %36, i32 %41, i32 %46)
  %48 = load i32*, i32** @font_index, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %47, i32* %51, align 4
  br label %52

52:                                               ; preds = %34, %27, %20
  %53 = load %struct.sti_cooked_rom*, %struct.sti_cooked_rom** %4, align 8
  %54 = getelementptr inbounds %struct.sti_cooked_rom, %struct.sti_cooked_rom* %53, i32 0, i32 0
  %55 = load %struct.sti_cooked_font*, %struct.sti_cooked_font** %54, align 8
  store %struct.sti_cooked_font* %55, %struct.sti_cooked_font** %6, align 8
  %56 = load i32*, i32** @font_index, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %70, %52
  %62 = load %struct.sti_cooked_font*, %struct.sti_cooked_font** %6, align 8
  %63 = icmp ne %struct.sti_cooked_font* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* %7, align 4
  %66 = icmp sgt i32 %65, 0
  br label %67

67:                                               ; preds = %64, %61
  %68 = phi i1 [ false, %61 ], [ %66, %64 ]
  br i1 %68, label %69, label %76

69:                                               ; preds = %67
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.sti_cooked_font*, %struct.sti_cooked_font** %6, align 8
  %72 = getelementptr inbounds %struct.sti_cooked_font, %struct.sti_cooked_font* %71, i32 0, i32 0
  %73 = load %struct.sti_cooked_font*, %struct.sti_cooked_font** %72, align 8
  store %struct.sti_cooked_font* %73, %struct.sti_cooked_font** %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %7, align 4
  br label %61

76:                                               ; preds = %67
  %77 = load %struct.sti_cooked_font*, %struct.sti_cooked_font** %6, align 8
  %78 = icmp ne %struct.sti_cooked_font* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load %struct.sti_cooked_font*, %struct.sti_cooked_font** %6, align 8
  store %struct.sti_cooked_font* %80, %struct.sti_cooked_font** %3, align 8
  br label %85

81:                                               ; preds = %76
  %82 = load %struct.sti_cooked_rom*, %struct.sti_cooked_rom** %4, align 8
  %83 = getelementptr inbounds %struct.sti_cooked_rom, %struct.sti_cooked_rom* %82, i32 0, i32 0
  %84 = load %struct.sti_cooked_font*, %struct.sti_cooked_font** %83, align 8
  store %struct.sti_cooked_font* %84, %struct.sti_cooked_font** %3, align 8
  br label %85

85:                                               ; preds = %81, %79, %18
  %86 = load %struct.sti_cooked_font*, %struct.sti_cooked_font** %3, align 8
  ret %struct.sti_cooked_font* %86
}

declare dso_local %struct.sti_cooked_font* @sti_select_fbfont(%struct.sti_cooked_rom*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
