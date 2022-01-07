; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_dynamic.c___of_changeset_entry_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_dynamic.c___of_changeset_entry_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.of_changeset_entry = type { i64, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@OF_RECONFIG_ATTACH_NODE = common dso_local global i64 0, align 8
@OF_OVERLAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [142 x i8] c"ERROR: memory leak, expected refcount 1 instead of %d, of_node_get()/of_node_put() unbalanced - destroy cset entry: attach overlay node %pOF\0A\00", align 1
@OF_OVERLAY_FREE_CSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.of_changeset_entry*)* @__of_changeset_entry_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__of_changeset_entry_destroy(%struct.of_changeset_entry* %0) #0 {
  %2 = alloca %struct.of_changeset_entry*, align 8
  store %struct.of_changeset_entry* %0, %struct.of_changeset_entry** %2, align 8
  %3 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %2, align 8
  %4 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @OF_RECONFIG_ATTACH_NODE, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %41

8:                                                ; preds = %1
  %9 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %2, align 8
  %10 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %9, i32 0, i32 2
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = load i32, i32* @OF_OVERLAY, align 4
  %13 = call i64 @of_node_check_flag(%struct.TYPE_7__* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %41

15:                                               ; preds = %8
  %16 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %2, align 8
  %17 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %16, i32 0, i32 2
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = call i32 @kref_read(i32* %20)
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %34

23:                                               ; preds = %15
  %24 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %2, align 8
  %25 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %24, i32 0, i32 2
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = call i32 @kref_read(i32* %28)
  %30 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %2, align 8
  %31 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %30, i32 0, i32 2
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str, i64 0, i64 0), i32 %29, %struct.TYPE_7__* %32)
  br label %40

34:                                               ; preds = %15
  %35 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %2, align 8
  %36 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %35, i32 0, i32 2
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = load i32, i32* @OF_OVERLAY_FREE_CSET, align 4
  %39 = call i32 @of_node_set_flag(%struct.TYPE_7__* %37, i32 %38)
  br label %40

40:                                               ; preds = %34, %23
  br label %41

41:                                               ; preds = %40, %8, %1
  %42 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %2, align 8
  %43 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %42, i32 0, i32 2
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = call i32 @of_node_put(%struct.TYPE_7__* %44)
  %46 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %2, align 8
  %47 = getelementptr inbounds %struct.of_changeset_entry, %struct.of_changeset_entry* %46, i32 0, i32 1
  %48 = call i32 @list_del(i32* %47)
  %49 = load %struct.of_changeset_entry*, %struct.of_changeset_entry** %2, align 8
  %50 = call i32 @kfree(%struct.of_changeset_entry* %49)
  ret void
}

declare dso_local i64 @of_node_check_flag(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @kref_read(i32*) #1

declare dso_local i32 @pr_err(i8*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @of_node_set_flag(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @of_node_put(%struct.TYPE_7__*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.of_changeset_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
