; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_relocation.c_alloc_backref_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_relocation.c_alloc_backref_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backref_node = type { i32, i32, i32, i32 }
%struct.backref_cache = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.backref_node* (%struct.backref_cache*)* @alloc_backref_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.backref_node* @alloc_backref_node(%struct.backref_cache* %0) #0 {
  %2 = alloca %struct.backref_cache*, align 8
  %3 = alloca %struct.backref_node*, align 8
  store %struct.backref_cache* %0, %struct.backref_cache** %2, align 8
  %4 = load i32, i32* @GFP_NOFS, align 4
  %5 = call %struct.backref_node* @kzalloc(i32 16, i32 %4)
  store %struct.backref_node* %5, %struct.backref_node** %3, align 8
  %6 = load %struct.backref_node*, %struct.backref_node** %3, align 8
  %7 = icmp ne %struct.backref_node* %6, null
  br i1 %7, label %8, label %25

8:                                                ; preds = %1
  %9 = load %struct.backref_node*, %struct.backref_node** %3, align 8
  %10 = getelementptr inbounds %struct.backref_node, %struct.backref_node* %9, i32 0, i32 3
  %11 = call i32 @INIT_LIST_HEAD(i32* %10)
  %12 = load %struct.backref_node*, %struct.backref_node** %3, align 8
  %13 = getelementptr inbounds %struct.backref_node, %struct.backref_node* %12, i32 0, i32 2
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load %struct.backref_node*, %struct.backref_node** %3, align 8
  %16 = getelementptr inbounds %struct.backref_node, %struct.backref_node* %15, i32 0, i32 1
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.backref_node*, %struct.backref_node** %3, align 8
  %19 = getelementptr inbounds %struct.backref_node, %struct.backref_node* %18, i32 0, i32 0
  %20 = call i32 @RB_CLEAR_NODE(i32* %19)
  %21 = load %struct.backref_cache*, %struct.backref_cache** %2, align 8
  %22 = getelementptr inbounds %struct.backref_cache, %struct.backref_cache* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %8, %1
  %26 = load %struct.backref_node*, %struct.backref_node** %3, align 8
  ret %struct.backref_node* %26
}

declare dso_local %struct.backref_node* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @RB_CLEAR_NODE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
