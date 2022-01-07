; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_config.c_get_space.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_config.c_get_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.dlm_space = type { i32 }
%struct.config_item = type { i32 }

@space_list = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dlm_space* (i8*)* @get_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dlm_space* @get_space(i8* %0) #0 {
  %2 = alloca %struct.dlm_space*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.config_item*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** @space_list, align 8
  %6 = icmp ne %struct.TYPE_5__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.dlm_space* null, %struct.dlm_space** %2, align 8
  br label %24

8:                                                ; preds = %1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @space_list, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @space_list, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call %struct.config_item* @config_group_find_item(%struct.TYPE_5__* %14, i8* %15)
  store %struct.config_item* %16, %struct.config_item** %4, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @space_list, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = call i32 @mutex_unlock(i32* %20)
  %22 = load %struct.config_item*, %struct.config_item** %4, align 8
  %23 = call %struct.dlm_space* @config_item_to_space(%struct.config_item* %22)
  store %struct.dlm_space* %23, %struct.dlm_space** %2, align 8
  br label %24

24:                                               ; preds = %8, %7
  %25 = load %struct.dlm_space*, %struct.dlm_space** %2, align 8
  ret %struct.dlm_space* %25
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.config_item* @config_group_find_item(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.dlm_space* @config_item_to_space(%struct.config_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
