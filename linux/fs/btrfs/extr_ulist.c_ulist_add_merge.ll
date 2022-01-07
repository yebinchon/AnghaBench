; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ulist.c_ulist_add_merge.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ulist.c_ulist_add_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ulist = type { i32, i32 }
%struct.ulist_node = type { i32, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ulist_add_merge(%struct.ulist* %0, i8* %1, i8* %2, i8** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ulist*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ulist_node*, align 8
  store %struct.ulist* %0, %struct.ulist** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.ulist*, %struct.ulist** %7, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call %struct.ulist_node* @ulist_rbtree_search(%struct.ulist* %14, i8* %15)
  store %struct.ulist_node* %16, %struct.ulist_node** %13, align 8
  %17 = load %struct.ulist_node*, %struct.ulist_node** %13, align 8
  %18 = icmp ne %struct.ulist_node* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %5
  %20 = load i8**, i8*** %10, align 8
  %21 = icmp ne i8** %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load %struct.ulist_node*, %struct.ulist_node** %13, align 8
  %24 = getelementptr inbounds %struct.ulist_node, %struct.ulist_node* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = load i8**, i8*** %10, align 8
  store i8* %25, i8** %26, align 8
  br label %27

27:                                               ; preds = %22, %19
  store i32 0, i32* %6, align 4
  br label %60

28:                                               ; preds = %5
  %29 = load i32, i32* %11, align 4
  %30 = call %struct.ulist_node* @kmalloc(i32 24, i32 %29)
  store %struct.ulist_node* %30, %struct.ulist_node** %13, align 8
  %31 = load %struct.ulist_node*, %struct.ulist_node** %13, align 8
  %32 = icmp ne %struct.ulist_node* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %60

36:                                               ; preds = %28
  %37 = load i8*, i8** %8, align 8
  %38 = load %struct.ulist_node*, %struct.ulist_node** %13, align 8
  %39 = getelementptr inbounds %struct.ulist_node, %struct.ulist_node* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = load %struct.ulist_node*, %struct.ulist_node** %13, align 8
  %42 = getelementptr inbounds %struct.ulist_node, %struct.ulist_node* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load %struct.ulist*, %struct.ulist** %7, align 8
  %44 = load %struct.ulist_node*, %struct.ulist_node** %13, align 8
  %45 = call i32 @ulist_rbtree_insert(%struct.ulist* %43, %struct.ulist_node* %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i32 @ASSERT(i32 %49)
  %51 = load %struct.ulist_node*, %struct.ulist_node** %13, align 8
  %52 = getelementptr inbounds %struct.ulist_node, %struct.ulist_node* %51, i32 0, i32 0
  %53 = load %struct.ulist*, %struct.ulist** %7, align 8
  %54 = getelementptr inbounds %struct.ulist, %struct.ulist* %53, i32 0, i32 1
  %55 = call i32 @list_add_tail(i32* %52, i32* %54)
  %56 = load %struct.ulist*, %struct.ulist** %7, align 8
  %57 = getelementptr inbounds %struct.ulist, %struct.ulist* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  store i32 1, i32* %6, align 4
  br label %60

60:                                               ; preds = %36, %33, %27
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local %struct.ulist_node* @ulist_rbtree_search(%struct.ulist*, i8*) #1

declare dso_local %struct.ulist_node* @kmalloc(i32, i32) #1

declare dso_local i32 @ulist_rbtree_insert(%struct.ulist*, %struct.ulist_node*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
