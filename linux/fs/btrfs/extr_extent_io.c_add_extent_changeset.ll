; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_add_extent_changeset.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_add_extent_changeset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_state = type { i32, i64, i64 }
%struct.extent_changeset = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.extent_state*, i32, %struct.extent_changeset*, i32)* @add_extent_changeset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_extent_changeset(%struct.extent_state* %0, i32 %1, %struct.extent_changeset* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.extent_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.extent_changeset*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.extent_state* %0, %struct.extent_state** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.extent_changeset* %2, %struct.extent_changeset** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.extent_changeset*, %struct.extent_changeset** %8, align 8
  %12 = icmp ne %struct.extent_changeset* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %63

14:                                               ; preds = %4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = load %struct.extent_state*, %struct.extent_state** %6, align 8
  %19 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %63

26:                                               ; preds = %17, %14
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %26
  %30 = load %struct.extent_state*, %struct.extent_state** %6, align 8
  %31 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %63

37:                                               ; preds = %29, %26
  %38 = load %struct.extent_state*, %struct.extent_state** %6, align 8
  %39 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.extent_state*, %struct.extent_state** %6, align 8
  %42 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %40, %43
  %45 = add nsw i64 %44, 1
  %46 = load %struct.extent_changeset*, %struct.extent_changeset** %8, align 8
  %47 = getelementptr inbounds %struct.extent_changeset, %struct.extent_changeset* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %45
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %47, align 4
  %52 = load %struct.extent_changeset*, %struct.extent_changeset** %8, align 8
  %53 = getelementptr inbounds %struct.extent_changeset, %struct.extent_changeset* %52, i32 0, i32 0
  %54 = load %struct.extent_state*, %struct.extent_state** %6, align 8
  %55 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.extent_state*, %struct.extent_state** %6, align 8
  %58 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @GFP_ATOMIC, align 4
  %61 = call i32 @ulist_add(i32* %53, i64 %56, i64 %59, i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %37, %36, %25, %13
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @ulist_add(i32*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
