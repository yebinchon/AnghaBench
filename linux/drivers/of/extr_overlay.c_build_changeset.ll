; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_overlay.c_build_changeset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_overlay.c_build_changeset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.overlay_changeset = type { i32, %struct.fragment*, i64 }
%struct.fragment = type { i32, i32 }
%struct.target = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"fragment apply failed '%pOF'\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"symbols fragment apply failed '%pOF'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.overlay_changeset*)* @build_changeset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_changeset(%struct.overlay_changeset* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.overlay_changeset*, align 8
  %4 = alloca %struct.fragment*, align 8
  %5 = alloca %struct.target, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.overlay_changeset* %0, %struct.overlay_changeset** %3, align 8
  %9 = load %struct.overlay_changeset*, %struct.overlay_changeset** %3, align 8
  %10 = getelementptr inbounds %struct.overlay_changeset, %struct.overlay_changeset* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.overlay_changeset*, %struct.overlay_changeset** %3, align 8
  %15 = getelementptr inbounds %struct.overlay_changeset, %struct.overlay_changeset* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %6, align 4
  br label %22

18:                                               ; preds = %1
  %19 = load %struct.overlay_changeset*, %struct.overlay_changeset** %3, align 8
  %20 = getelementptr inbounds %struct.overlay_changeset, %struct.overlay_changeset* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %18, %13
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %53, %22
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %56

27:                                               ; preds = %23
  %28 = load %struct.overlay_changeset*, %struct.overlay_changeset** %3, align 8
  %29 = getelementptr inbounds %struct.overlay_changeset, %struct.overlay_changeset* %28, i32 0, i32 1
  %30 = load %struct.fragment*, %struct.fragment** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.fragment, %struct.fragment* %30, i64 %32
  store %struct.fragment* %33, %struct.fragment** %4, align 8
  %34 = load %struct.fragment*, %struct.fragment** %4, align 8
  %35 = getelementptr inbounds %struct.fragment, %struct.fragment* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.target, %struct.target* %5, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.target, %struct.target* %5, i32 0, i32 0
  store i32 1, i32* %38, align 4
  %39 = load %struct.overlay_changeset*, %struct.overlay_changeset** %3, align 8
  %40 = load %struct.fragment*, %struct.fragment** %4, align 8
  %41 = getelementptr inbounds %struct.fragment, %struct.fragment* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @build_changeset_next_level(%struct.overlay_changeset* %39, %struct.target* %5, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %27
  %47 = load %struct.fragment*, %struct.fragment** %4, align 8
  %48 = getelementptr inbounds %struct.fragment, %struct.fragment* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %2, align 4
  br label %93

52:                                               ; preds = %27
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %23

56:                                               ; preds = %23
  %57 = load %struct.overlay_changeset*, %struct.overlay_changeset** %3, align 8
  %58 = getelementptr inbounds %struct.overlay_changeset, %struct.overlay_changeset* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %90

61:                                               ; preds = %56
  %62 = load %struct.overlay_changeset*, %struct.overlay_changeset** %3, align 8
  %63 = getelementptr inbounds %struct.overlay_changeset, %struct.overlay_changeset* %62, i32 0, i32 1
  %64 = load %struct.fragment*, %struct.fragment** %63, align 8
  %65 = load %struct.overlay_changeset*, %struct.overlay_changeset** %3, align 8
  %66 = getelementptr inbounds %struct.overlay_changeset, %struct.overlay_changeset* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.fragment, %struct.fragment* %64, i64 %69
  store %struct.fragment* %70, %struct.fragment** %4, align 8
  %71 = load %struct.fragment*, %struct.fragment** %4, align 8
  %72 = getelementptr inbounds %struct.fragment, %struct.fragment* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.target, %struct.target* %5, i32 0, i32 1
  store i32 %73, i32* %74, align 4
  %75 = getelementptr inbounds %struct.target, %struct.target* %5, i32 0, i32 0
  store i32 1, i32* %75, align 4
  %76 = load %struct.overlay_changeset*, %struct.overlay_changeset** %3, align 8
  %77 = load %struct.fragment*, %struct.fragment** %4, align 8
  %78 = getelementptr inbounds %struct.fragment, %struct.fragment* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @build_changeset_symbols_node(%struct.overlay_changeset* %76, %struct.target* %5, i32 %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %61
  %84 = load %struct.fragment*, %struct.fragment** %4, align 8
  %85 = getelementptr inbounds %struct.fragment, %struct.fragment* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %2, align 4
  br label %93

89:                                               ; preds = %61
  br label %90

90:                                               ; preds = %89, %56
  %91 = load %struct.overlay_changeset*, %struct.overlay_changeset** %3, align 8
  %92 = call i32 @changeset_dup_entry_check(%struct.overlay_changeset* %91)
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %90, %83, %46
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @build_changeset_next_level(%struct.overlay_changeset*, %struct.target*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @build_changeset_symbols_node(%struct.overlay_changeset*, %struct.target*, i32) #1

declare dso_local i32 @changeset_dup_entry_check(%struct.overlay_changeset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
