; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_check-integrity.c_btrfsic_block_link_lookup_or_add.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_check-integrity.c_btrfsic_block_link_lookup_or_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfsic_block_link = type { i32, i8*, i32, i32, %struct.btrfsic_block*, %struct.btrfsic_block* }
%struct.btrfsic_state = type { i32, i32 }
%struct.btrfsic_block_data_ctx = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.btrfsic_block = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"btrfsic: error, kmalloc failed!\0A\00", align 1
@BTRFSIC_PRINT_MASK_VERBOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.btrfsic_block_link* (%struct.btrfsic_state*, %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block*, %struct.btrfsic_block*, i8*)* @btrfsic_block_link_lookup_or_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.btrfsic_block_link* @btrfsic_block_link_lookup_or_add(%struct.btrfsic_state* %0, %struct.btrfsic_block_data_ctx* %1, %struct.btrfsic_block* %2, %struct.btrfsic_block* %3, i8* %4) #0 {
  %6 = alloca %struct.btrfsic_block_link*, align 8
  %7 = alloca %struct.btrfsic_state*, align 8
  %8 = alloca %struct.btrfsic_block_data_ctx*, align 8
  %9 = alloca %struct.btrfsic_block*, align 8
  %10 = alloca %struct.btrfsic_block*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.btrfsic_block_link*, align 8
  store %struct.btrfsic_state* %0, %struct.btrfsic_state** %7, align 8
  store %struct.btrfsic_block_data_ctx* %1, %struct.btrfsic_block_data_ctx** %8, align 8
  store %struct.btrfsic_block* %2, %struct.btrfsic_block** %9, align 8
  store %struct.btrfsic_block* %3, %struct.btrfsic_block** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %8, align 8
  %14 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %8, align 8
  %19 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.btrfsic_block*, %struct.btrfsic_block** %10, align 8
  %22 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %21, i32 0, i32 3
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.btrfsic_block*, %struct.btrfsic_block** %10, align 8
  %27 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.btrfsic_state*, %struct.btrfsic_state** %7, align 8
  %30 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %29, i32 0, i32 1
  %31 = call %struct.btrfsic_block_link* @btrfsic_block_link_hashtable_lookup(i32 %17, i32 %20, i32 %25, i32 %28, i32* %30)
  store %struct.btrfsic_block_link* %31, %struct.btrfsic_block_link** %12, align 8
  %32 = load %struct.btrfsic_block_link*, %struct.btrfsic_block_link** %12, align 8
  %33 = icmp eq %struct.btrfsic_block_link* null, %32
  br i1 %33, label %34, label %77

34:                                               ; preds = %5
  %35 = call %struct.btrfsic_block_link* (...) @btrfsic_block_link_alloc()
  store %struct.btrfsic_block_link* %35, %struct.btrfsic_block_link** %12, align 8
  %36 = load %struct.btrfsic_block_link*, %struct.btrfsic_block_link** %12, align 8
  %37 = icmp eq %struct.btrfsic_block_link* null, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call i32 @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store %struct.btrfsic_block_link* null, %struct.btrfsic_block_link** %6, align 8
  br label %98

40:                                               ; preds = %34
  %41 = load %struct.btrfsic_block*, %struct.btrfsic_block** %9, align 8
  %42 = load %struct.btrfsic_block_link*, %struct.btrfsic_block_link** %12, align 8
  %43 = getelementptr inbounds %struct.btrfsic_block_link, %struct.btrfsic_block_link* %42, i32 0, i32 5
  store %struct.btrfsic_block* %41, %struct.btrfsic_block** %43, align 8
  %44 = load %struct.btrfsic_block*, %struct.btrfsic_block** %10, align 8
  %45 = load %struct.btrfsic_block_link*, %struct.btrfsic_block_link** %12, align 8
  %46 = getelementptr inbounds %struct.btrfsic_block_link, %struct.btrfsic_block_link* %45, i32 0, i32 4
  store %struct.btrfsic_block* %44, %struct.btrfsic_block** %46, align 8
  %47 = load %struct.btrfsic_block_link*, %struct.btrfsic_block_link** %12, align 8
  %48 = getelementptr inbounds %struct.btrfsic_block_link, %struct.btrfsic_block_link* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = load %struct.btrfsic_block_link*, %struct.btrfsic_block_link** %12, align 8
  %51 = getelementptr inbounds %struct.btrfsic_block_link, %struct.btrfsic_block_link* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load %struct.btrfsic_state*, %struct.btrfsic_state** %7, align 8
  %53 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @BTRFSIC_PRINT_MASK_VERBOSE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %40
  %59 = load %struct.btrfsic_state*, %struct.btrfsic_state** %7, align 8
  %60 = load %struct.btrfsic_block_link*, %struct.btrfsic_block_link** %12, align 8
  %61 = call i32 @btrfsic_print_add_link(%struct.btrfsic_state* %59, %struct.btrfsic_block_link* %60)
  br label %62

62:                                               ; preds = %58, %40
  %63 = load %struct.btrfsic_block_link*, %struct.btrfsic_block_link** %12, align 8
  %64 = getelementptr inbounds %struct.btrfsic_block_link, %struct.btrfsic_block_link* %63, i32 0, i32 3
  %65 = load %struct.btrfsic_block*, %struct.btrfsic_block** %10, align 8
  %66 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %65, i32 0, i32 1
  %67 = call i32 @list_add(i32* %64, i32* %66)
  %68 = load %struct.btrfsic_block_link*, %struct.btrfsic_block_link** %12, align 8
  %69 = getelementptr inbounds %struct.btrfsic_block_link, %struct.btrfsic_block_link* %68, i32 0, i32 2
  %70 = load %struct.btrfsic_block*, %struct.btrfsic_block** %9, align 8
  %71 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %70, i32 0, i32 0
  %72 = call i32 @list_add(i32* %69, i32* %71)
  %73 = load %struct.btrfsic_block_link*, %struct.btrfsic_block_link** %12, align 8
  %74 = load %struct.btrfsic_state*, %struct.btrfsic_state** %7, align 8
  %75 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %74, i32 0, i32 1
  %76 = call i32 @btrfsic_block_link_hashtable_add(%struct.btrfsic_block_link* %73, i32* %75)
  br label %96

77:                                               ; preds = %5
  %78 = load %struct.btrfsic_block_link*, %struct.btrfsic_block_link** %12, align 8
  %79 = getelementptr inbounds %struct.btrfsic_block_link, %struct.btrfsic_block_link* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 8
  %82 = load i8*, i8** %11, align 8
  %83 = load %struct.btrfsic_block_link*, %struct.btrfsic_block_link** %12, align 8
  %84 = getelementptr inbounds %struct.btrfsic_block_link, %struct.btrfsic_block_link* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  %85 = load %struct.btrfsic_state*, %struct.btrfsic_state** %7, align 8
  %86 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @BTRFSIC_PRINT_MASK_VERBOSE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %77
  %92 = load %struct.btrfsic_state*, %struct.btrfsic_state** %7, align 8
  %93 = load %struct.btrfsic_block_link*, %struct.btrfsic_block_link** %12, align 8
  %94 = call i32 @btrfsic_print_add_link(%struct.btrfsic_state* %92, %struct.btrfsic_block_link* %93)
  br label %95

95:                                               ; preds = %91, %77
  br label %96

96:                                               ; preds = %95, %62
  %97 = load %struct.btrfsic_block_link*, %struct.btrfsic_block_link** %12, align 8
  store %struct.btrfsic_block_link* %97, %struct.btrfsic_block_link** %6, align 8
  br label %98

98:                                               ; preds = %96, %38
  %99 = load %struct.btrfsic_block_link*, %struct.btrfsic_block_link** %6, align 8
  ret %struct.btrfsic_block_link* %99
}

declare dso_local %struct.btrfsic_block_link* @btrfsic_block_link_hashtable_lookup(i32, i32, i32, i32, i32*) #1

declare dso_local %struct.btrfsic_block_link* @btrfsic_block_link_alloc(...) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @btrfsic_print_add_link(%struct.btrfsic_state*, %struct.btrfsic_block_link*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @btrfsic_block_link_hashtable_add(%struct.btrfsic_block_link*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
