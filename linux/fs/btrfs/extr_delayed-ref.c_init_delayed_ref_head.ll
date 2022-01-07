; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-ref.c_init_delayed_ref_head.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-ref.c_init_delayed_ref_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_delayed_ref_head = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i8*, i8*, i32 }
%struct.btrfs_qgroup_extent_record = type { i32*, i8*, i8*, i8*, i8* }

@BTRFS_UPDATE_DELAYED_HEAD = common dso_local global i32 0, align 4
@BTRFS_DROP_DELAYED_REF = common dso_local global i32 0, align 4
@BTRFS_ADD_DELAYED_EXTENT = common dso_local global i32 0, align 4
@RB_ROOT_CACHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_delayed_ref_head*, %struct.btrfs_qgroup_extent_record*, i8*, i8*, i8*, i8*, i32, i32, i32)* @init_delayed_ref_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_delayed_ref_head(%struct.btrfs_delayed_ref_head* %0, %struct.btrfs_qgroup_extent_record* %1, i8* %2, i8* %3, i8* %4, i8* %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.btrfs_delayed_ref_head*, align 8
  %11 = alloca %struct.btrfs_qgroup_extent_record*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.btrfs_delayed_ref_head* %0, %struct.btrfs_delayed_ref_head** %10, align 8
  store %struct.btrfs_qgroup_extent_record* %1, %struct.btrfs_qgroup_extent_record** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  store i32 1, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %21 = load i32, i32* %17, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %9
  %24 = load i8*, i8** %15, align 8
  %25 = icmp ne i8* %24, null
  br label %26

26:                                               ; preds = %23, %9
  %27 = phi i1 [ false, %9 ], [ %25, %23 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load i32, i32* %16, align 4
  %31 = load i32, i32* @BTRFS_UPDATE_DELAYED_HEAD, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 0, i32* %19, align 4
  br label %40

34:                                               ; preds = %26
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* @BTRFS_DROP_DELAYED_REF, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 -1, i32* %19, align 4
  br label %39

39:                                               ; preds = %38, %34
  br label %40

40:                                               ; preds = %39, %33
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* @BTRFS_ADD_DELAYED_EXTENT, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 1, i32* %20, align 4
  br label %46

45:                                               ; preds = %40
  store i32 0, i32* %20, align 4
  br label %46

46:                                               ; preds = %45, %44
  %47 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %10, align 8
  %48 = getelementptr inbounds %struct.btrfs_delayed_ref_head, %struct.btrfs_delayed_ref_head* %47, i32 0, i32 13
  %49 = call i32 @refcount_set(i32* %48, i32 1)
  %50 = load i8*, i8** %12, align 8
  %51 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %10, align 8
  %52 = getelementptr inbounds %struct.btrfs_delayed_ref_head, %struct.btrfs_delayed_ref_head* %51, i32 0, i32 12
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** %13, align 8
  %54 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %10, align 8
  %55 = getelementptr inbounds %struct.btrfs_delayed_ref_head, %struct.btrfs_delayed_ref_head* %54, i32 0, i32 11
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* %19, align 4
  %57 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %10, align 8
  %58 = getelementptr inbounds %struct.btrfs_delayed_ref_head, %struct.btrfs_delayed_ref_head* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %20, align 4
  %60 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %10, align 8
  %61 = getelementptr inbounds %struct.btrfs_delayed_ref_head, %struct.btrfs_delayed_ref_head* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %17, align 4
  %63 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %10, align 8
  %64 = getelementptr inbounds %struct.btrfs_delayed_ref_head, %struct.btrfs_delayed_ref_head* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* %18, align 4
  %66 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %10, align 8
  %67 = getelementptr inbounds %struct.btrfs_delayed_ref_head, %struct.btrfs_delayed_ref_head* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @RB_ROOT_CACHED, align 4
  %69 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %10, align 8
  %70 = getelementptr inbounds %struct.btrfs_delayed_ref_head, %struct.btrfs_delayed_ref_head* %69, i32 0, i32 10
  store i32 %68, i32* %70, align 8
  %71 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %10, align 8
  %72 = getelementptr inbounds %struct.btrfs_delayed_ref_head, %struct.btrfs_delayed_ref_head* %71, i32 0, i32 9
  %73 = call i32 @INIT_LIST_HEAD(i32* %72)
  %74 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %10, align 8
  %75 = getelementptr inbounds %struct.btrfs_delayed_ref_head, %struct.btrfs_delayed_ref_head* %74, i32 0, i32 8
  %76 = call i32 @RB_CLEAR_NODE(i32* %75)
  %77 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %10, align 8
  %78 = getelementptr inbounds %struct.btrfs_delayed_ref_head, %struct.btrfs_delayed_ref_head* %77, i32 0, i32 7
  store i64 0, i64* %78, align 8
  %79 = load i32, i32* %19, align 4
  %80 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %10, align 8
  %81 = getelementptr inbounds %struct.btrfs_delayed_ref_head, %struct.btrfs_delayed_ref_head* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 8
  %82 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %10, align 8
  %83 = getelementptr inbounds %struct.btrfs_delayed_ref_head, %struct.btrfs_delayed_ref_head* %82, i32 0, i32 6
  %84 = call i32 @spin_lock_init(i32* %83)
  %85 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %10, align 8
  %86 = getelementptr inbounds %struct.btrfs_delayed_ref_head, %struct.btrfs_delayed_ref_head* %85, i32 0, i32 5
  %87 = call i32 @mutex_init(i32* %86)
  %88 = load %struct.btrfs_qgroup_extent_record*, %struct.btrfs_qgroup_extent_record** %11, align 8
  %89 = icmp ne %struct.btrfs_qgroup_extent_record* %88, null
  br i1 %89, label %90, label %112

90:                                               ; preds = %46
  %91 = load i8*, i8** %14, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %103

93:                                               ; preds = %90
  %94 = load i8*, i8** %15, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %103

96:                                               ; preds = %93
  %97 = load i8*, i8** %15, align 8
  %98 = load %struct.btrfs_qgroup_extent_record*, %struct.btrfs_qgroup_extent_record** %11, align 8
  %99 = getelementptr inbounds %struct.btrfs_qgroup_extent_record, %struct.btrfs_qgroup_extent_record* %98, i32 0, i32 4
  store i8* %97, i8** %99, align 8
  %100 = load i8*, i8** %14, align 8
  %101 = load %struct.btrfs_qgroup_extent_record*, %struct.btrfs_qgroup_extent_record** %11, align 8
  %102 = getelementptr inbounds %struct.btrfs_qgroup_extent_record, %struct.btrfs_qgroup_extent_record* %101, i32 0, i32 3
  store i8* %100, i8** %102, align 8
  br label %103

103:                                              ; preds = %96, %93, %90
  %104 = load i8*, i8** %12, align 8
  %105 = load %struct.btrfs_qgroup_extent_record*, %struct.btrfs_qgroup_extent_record** %11, align 8
  %106 = getelementptr inbounds %struct.btrfs_qgroup_extent_record, %struct.btrfs_qgroup_extent_record* %105, i32 0, i32 2
  store i8* %104, i8** %106, align 8
  %107 = load i8*, i8** %13, align 8
  %108 = load %struct.btrfs_qgroup_extent_record*, %struct.btrfs_qgroup_extent_record** %11, align 8
  %109 = getelementptr inbounds %struct.btrfs_qgroup_extent_record, %struct.btrfs_qgroup_extent_record* %108, i32 0, i32 1
  store i8* %107, i8** %109, align 8
  %110 = load %struct.btrfs_qgroup_extent_record*, %struct.btrfs_qgroup_extent_record** %11, align 8
  %111 = getelementptr inbounds %struct.btrfs_qgroup_extent_record, %struct.btrfs_qgroup_extent_record* %110, i32 0, i32 0
  store i32* null, i32** %111, align 8
  br label %112

112:                                              ; preds = %103, %46
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @RB_CLEAR_NODE(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
