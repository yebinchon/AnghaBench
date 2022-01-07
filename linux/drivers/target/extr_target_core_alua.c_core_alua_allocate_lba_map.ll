; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_alua.c_core_alua_allocate_lba_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_alua.c_core_alua_allocate_lba_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t10_alua_lba_map = type { i32, i8*, i8*, i32 }
%struct.list_head = type { i32 }

@t10_alua_lba_map_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Unable to allocate struct t10_alua_lba_map\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.t10_alua_lba_map* @core_alua_allocate_lba_map(%struct.list_head* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.t10_alua_lba_map*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.t10_alua_lba_map*, align 8
  store %struct.list_head* %0, %struct.list_head** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* @t10_alua_lba_map_cache, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.t10_alua_lba_map* @kmem_cache_zalloc(i32 %9, i32 %10)
  store %struct.t10_alua_lba_map* %11, %struct.t10_alua_lba_map** %8, align 8
  %12 = load %struct.t10_alua_lba_map*, %struct.t10_alua_lba_map** %8, align 8
  %13 = icmp ne %struct.t10_alua_lba_map* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.t10_alua_lba_map* @ERR_PTR(i32 %17)
  store %struct.t10_alua_lba_map* %18, %struct.t10_alua_lba_map** %4, align 8
  br label %34

19:                                               ; preds = %3
  %20 = load %struct.t10_alua_lba_map*, %struct.t10_alua_lba_map** %8, align 8
  %21 = getelementptr inbounds %struct.t10_alua_lba_map, %struct.t10_alua_lba_map* %20, i32 0, i32 3
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.t10_alua_lba_map*, %struct.t10_alua_lba_map** %8, align 8
  %25 = getelementptr inbounds %struct.t10_alua_lba_map, %struct.t10_alua_lba_map* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load %struct.t10_alua_lba_map*, %struct.t10_alua_lba_map** %8, align 8
  %28 = getelementptr inbounds %struct.t10_alua_lba_map, %struct.t10_alua_lba_map* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load %struct.t10_alua_lba_map*, %struct.t10_alua_lba_map** %8, align 8
  %30 = getelementptr inbounds %struct.t10_alua_lba_map, %struct.t10_alua_lba_map* %29, i32 0, i32 0
  %31 = load %struct.list_head*, %struct.list_head** %5, align 8
  %32 = call i32 @list_add_tail(i32* %30, %struct.list_head* %31)
  %33 = load %struct.t10_alua_lba_map*, %struct.t10_alua_lba_map** %8, align 8
  store %struct.t10_alua_lba_map* %33, %struct.t10_alua_lba_map** %4, align 8
  br label %34

34:                                               ; preds = %19, %14
  %35 = load %struct.t10_alua_lba_map*, %struct.t10_alua_lba_map** %4, align 8
  ret %struct.t10_alua_lba_map* %35
}

declare dso_local %struct.t10_alua_lba_map* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.t10_alua_lba_map* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
