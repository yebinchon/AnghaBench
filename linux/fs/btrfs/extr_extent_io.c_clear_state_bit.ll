; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_clear_state_bit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_clear_state_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_io_tree = type { i64, i32, i64 }
%struct.extent_state = type { i32, i64, i64, i32, i32 }
%struct.extent_changeset = type { i32 }

@EXTENT_CTLBITS = common dso_local global i32 0, align 4
@EXTENT_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.extent_state* (%struct.extent_io_tree*, %struct.extent_state*, i32*, i32, %struct.extent_changeset*)* @clear_state_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.extent_state* @clear_state_bit(%struct.extent_io_tree* %0, %struct.extent_state* %1, i32* %2, i32 %3, %struct.extent_changeset* %4) #0 {
  %6 = alloca %struct.extent_io_tree*, align 8
  %7 = alloca %struct.extent_state*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.extent_changeset*, align 8
  %11 = alloca %struct.extent_state*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.extent_io_tree* %0, %struct.extent_io_tree** %6, align 8
  store %struct.extent_state* %1, %struct.extent_state** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.extent_changeset* %4, %struct.extent_changeset** %10, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @EXTENT_CTLBITS, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* @EXTENT_DIRTY, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %52

24:                                               ; preds = %5
  %25 = load %struct.extent_state*, %struct.extent_state** %7, align 8
  %26 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @EXTENT_DIRTY, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %52

31:                                               ; preds = %24
  %32 = load %struct.extent_state*, %struct.extent_state** %7, align 8
  %33 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.extent_state*, %struct.extent_state** %7, align 8
  %36 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %34, %37
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %14, align 8
  %40 = load i64, i64* %14, align 8
  %41 = load %struct.extent_io_tree*, %struct.extent_io_tree** %6, align 8
  %42 = getelementptr inbounds %struct.extent_io_tree, %struct.extent_io_tree* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %40, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @WARN_ON(i32 %45)
  %47 = load i64, i64* %14, align 8
  %48 = load %struct.extent_io_tree*, %struct.extent_io_tree** %6, align 8
  %49 = getelementptr inbounds %struct.extent_io_tree, %struct.extent_io_tree* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %50, %47
  store i64 %51, i64* %49, align 8
  br label %52

52:                                               ; preds = %31, %24, %5
  %53 = load %struct.extent_io_tree*, %struct.extent_io_tree** %6, align 8
  %54 = getelementptr inbounds %struct.extent_io_tree, %struct.extent_io_tree* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %52
  %58 = load %struct.extent_io_tree*, %struct.extent_io_tree** %6, align 8
  %59 = getelementptr inbounds %struct.extent_io_tree, %struct.extent_io_tree* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @is_data_inode(i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %57
  %64 = load %struct.extent_io_tree*, %struct.extent_io_tree** %6, align 8
  %65 = getelementptr inbounds %struct.extent_io_tree, %struct.extent_io_tree* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.extent_state*, %struct.extent_state** %7, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = call i32 @btrfs_clear_delalloc_extent(i64 %66, %struct.extent_state* %67, i32* %68)
  br label %70

70:                                               ; preds = %63, %57, %52
  %71 = load %struct.extent_state*, %struct.extent_state** %7, align 8
  %72 = load i32, i32* %12, align 4
  %73 = load %struct.extent_changeset*, %struct.extent_changeset** %10, align 8
  %74 = call i32 @add_extent_changeset(%struct.extent_state* %71, i32 %72, %struct.extent_changeset* %73, i32 0)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp slt i32 %75, 0
  %77 = zext i1 %76 to i32
  %78 = call i32 @BUG_ON(i32 %77)
  %79 = load i32, i32* %12, align 4
  %80 = xor i32 %79, -1
  %81 = load %struct.extent_state*, %struct.extent_state** %7, align 8
  %82 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = and i32 %83, %80
  store i32 %84, i32* %82, align 8
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %70
  %88 = load %struct.extent_state*, %struct.extent_state** %7, align 8
  %89 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %88, i32 0, i32 4
  %90 = call i32 @wake_up(i32* %89)
  br label %91

91:                                               ; preds = %87, %70
  %92 = load %struct.extent_state*, %struct.extent_state** %7, align 8
  %93 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %116

96:                                               ; preds = %91
  %97 = load %struct.extent_state*, %struct.extent_state** %7, align 8
  %98 = call %struct.extent_state* @next_state(%struct.extent_state* %97)
  store %struct.extent_state* %98, %struct.extent_state** %11, align 8
  %99 = load %struct.extent_state*, %struct.extent_state** %7, align 8
  %100 = call i64 @extent_state_in_tree(%struct.extent_state* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %96
  %103 = load %struct.extent_state*, %struct.extent_state** %7, align 8
  %104 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %103, i32 0, i32 3
  %105 = load %struct.extent_io_tree*, %struct.extent_io_tree** %6, align 8
  %106 = getelementptr inbounds %struct.extent_io_tree, %struct.extent_io_tree* %105, i32 0, i32 1
  %107 = call i32 @rb_erase(i32* %104, i32* %106)
  %108 = load %struct.extent_state*, %struct.extent_state** %7, align 8
  %109 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %108, i32 0, i32 3
  %110 = call i32 @RB_CLEAR_NODE(i32* %109)
  %111 = load %struct.extent_state*, %struct.extent_state** %7, align 8
  %112 = call i32 @free_extent_state(%struct.extent_state* %111)
  br label %115

113:                                              ; preds = %96
  %114 = call i32 @WARN_ON(i32 1)
  br label %115

115:                                              ; preds = %113, %102
  br label %122

116:                                              ; preds = %91
  %117 = load %struct.extent_io_tree*, %struct.extent_io_tree** %6, align 8
  %118 = load %struct.extent_state*, %struct.extent_state** %7, align 8
  %119 = call i32 @merge_state(%struct.extent_io_tree* %117, %struct.extent_state* %118)
  %120 = load %struct.extent_state*, %struct.extent_state** %7, align 8
  %121 = call %struct.extent_state* @next_state(%struct.extent_state* %120)
  store %struct.extent_state* %121, %struct.extent_state** %11, align 8
  br label %122

122:                                              ; preds = %116, %115
  %123 = load %struct.extent_state*, %struct.extent_state** %11, align 8
  ret %struct.extent_state* %123
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @is_data_inode(i64) #1

declare dso_local i32 @btrfs_clear_delalloc_extent(i64, %struct.extent_state*, i32*) #1

declare dso_local i32 @add_extent_changeset(%struct.extent_state*, i32, %struct.extent_changeset*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local %struct.extent_state* @next_state(%struct.extent_state*) #1

declare dso_local i64 @extent_state_in_tree(%struct.extent_state*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @RB_CLEAR_NODE(i32*) #1

declare dso_local i32 @free_extent_state(%struct.extent_state*) #1

declare dso_local i32 @merge_state(%struct.extent_io_tree*, %struct.extent_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
