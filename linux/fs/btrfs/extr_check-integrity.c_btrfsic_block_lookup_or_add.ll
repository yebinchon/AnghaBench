; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_check-integrity.c_btrfsic_block_lookup_or_add.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_check-integrity.c_btrfsic_block_lookup_or_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfsic_block = type { i32, i32, i32, i32, i32, i32, i32, %struct.btrfsic_dev_state* }
%struct.btrfsic_dev_state = type { i32 }
%struct.btrfsic_state = type { i32, i32, i32 }
%struct.btrfsic_block_data_ctx = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"btrfsic: error, kmalloc failed!\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"btrfsic: error, lookup dev_state failed!\0A\00", align 1
@BTRFSIC_PRINT_MASK_VERBOSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"New %s%c-block @%llu (%s/%llu/%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.btrfsic_block* (%struct.btrfsic_state*, %struct.btrfsic_block_data_ctx*, i8*, i32, i32, i32, i32, i32*)* @btrfsic_block_lookup_or_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.btrfsic_block* @btrfsic_block_lookup_or_add(%struct.btrfsic_state* %0, %struct.btrfsic_block_data_ctx* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca %struct.btrfsic_block*, align 8
  %10 = alloca %struct.btrfsic_state*, align 8
  %11 = alloca %struct.btrfsic_block_data_ctx*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.btrfsic_block*, align 8
  %19 = alloca %struct.btrfsic_dev_state*, align 8
  store %struct.btrfsic_state* %0, %struct.btrfsic_state** %10, align 8
  store %struct.btrfsic_block_data_ctx* %1, %struct.btrfsic_block_data_ctx** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  %20 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %11, align 8
  %21 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %20, i32 0, i32 2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %11, align 8
  %26 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.btrfsic_state*, %struct.btrfsic_state** %10, align 8
  %29 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %28, i32 0, i32 1
  %30 = call %struct.btrfsic_block* @btrfsic_block_hashtable_lookup(%struct.TYPE_4__* %24, i32 %27, i32* %29)
  store %struct.btrfsic_block* %30, %struct.btrfsic_block** %18, align 8
  %31 = load %struct.btrfsic_block*, %struct.btrfsic_block** %18, align 8
  %32 = icmp eq %struct.btrfsic_block* null, %31
  br i1 %32, label %33, label %117

33:                                               ; preds = %8
  %34 = call %struct.btrfsic_block* (...) @btrfsic_block_alloc()
  store %struct.btrfsic_block* %34, %struct.btrfsic_block** %18, align 8
  %35 = load %struct.btrfsic_block*, %struct.btrfsic_block** %18, align 8
  %36 = icmp eq %struct.btrfsic_block* null, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store %struct.btrfsic_block* null, %struct.btrfsic_block** %9, align 8
  br label %125

39:                                               ; preds = %33
  %40 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %11, align 8
  %41 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %40, i32 0, i32 2
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.btrfsic_dev_state* @btrfsic_dev_state_lookup(i32 %46)
  store %struct.btrfsic_dev_state* %47, %struct.btrfsic_dev_state** %19, align 8
  %48 = load %struct.btrfsic_dev_state*, %struct.btrfsic_dev_state** %19, align 8
  %49 = icmp eq %struct.btrfsic_dev_state* null, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %39
  %51 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %52 = load %struct.btrfsic_block*, %struct.btrfsic_block** %18, align 8
  %53 = call i32 @btrfsic_block_free(%struct.btrfsic_block* %52)
  store %struct.btrfsic_block* null, %struct.btrfsic_block** %9, align 8
  br label %125

54:                                               ; preds = %39
  %55 = load %struct.btrfsic_dev_state*, %struct.btrfsic_dev_state** %19, align 8
  %56 = load %struct.btrfsic_block*, %struct.btrfsic_block** %18, align 8
  %57 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %56, i32 0, i32 7
  store %struct.btrfsic_dev_state* %55, %struct.btrfsic_dev_state** %57, align 8
  %58 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %11, align 8
  %59 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.btrfsic_block*, %struct.btrfsic_block** %18, align 8
  %62 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 4
  %63 = load %struct.btrfsic_block_data_ctx*, %struct.btrfsic_block_data_ctx** %11, align 8
  %64 = getelementptr inbounds %struct.btrfsic_block_data_ctx, %struct.btrfsic_block_data_ctx* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.btrfsic_block*, %struct.btrfsic_block** %18, align 8
  %67 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %66, i32 0, i32 6
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* %13, align 4
  %69 = load %struct.btrfsic_block*, %struct.btrfsic_block** %18, align 8
  %70 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* %14, align 4
  %72 = load %struct.btrfsic_block*, %struct.btrfsic_block** %18, align 8
  %73 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %15, align 4
  %75 = load %struct.btrfsic_block*, %struct.btrfsic_block** %18, align 8
  %76 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* %16, align 4
  %78 = load %struct.btrfsic_block*, %struct.btrfsic_block** %18, align 8
  %79 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load %struct.btrfsic_state*, %struct.btrfsic_state** %10, align 8
  %81 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @BTRFSIC_PRINT_MASK_VERBOSE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %54
  %87 = load i8*, i8** %12, align 8
  %88 = load %struct.btrfsic_state*, %struct.btrfsic_state** %10, align 8
  %89 = load %struct.btrfsic_block*, %struct.btrfsic_block** %18, align 8
  %90 = call i32 @btrfsic_get_block_type(%struct.btrfsic_state* %88, %struct.btrfsic_block* %89)
  %91 = load %struct.btrfsic_block*, %struct.btrfsic_block** %18, align 8
  %92 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.btrfsic_dev_state*, %struct.btrfsic_dev_state** %19, align 8
  %95 = getelementptr inbounds %struct.btrfsic_dev_state, %struct.btrfsic_dev_state* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.btrfsic_block*, %struct.btrfsic_block** %18, align 8
  %98 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %16, align 4
  %101 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %87, i32 %90, i32 %93, i32 %96, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %86, %54
  %103 = load %struct.btrfsic_block*, %struct.btrfsic_block** %18, align 8
  %104 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %103, i32 0, i32 4
  %105 = load %struct.btrfsic_state*, %struct.btrfsic_state** %10, align 8
  %106 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %105, i32 0, i32 2
  %107 = call i32 @list_add(i32* %104, i32* %106)
  %108 = load %struct.btrfsic_block*, %struct.btrfsic_block** %18, align 8
  %109 = load %struct.btrfsic_state*, %struct.btrfsic_state** %10, align 8
  %110 = getelementptr inbounds %struct.btrfsic_state, %struct.btrfsic_state* %109, i32 0, i32 1
  %111 = call i32 @btrfsic_block_hashtable_add(%struct.btrfsic_block* %108, i32* %110)
  %112 = load i32*, i32** %17, align 8
  %113 = icmp ne i32* null, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %102
  %115 = load i32*, i32** %17, align 8
  store i32 1, i32* %115, align 4
  br label %116

116:                                              ; preds = %114, %102
  br label %123

117:                                              ; preds = %8
  %118 = load i32*, i32** %17, align 8
  %119 = icmp ne i32* null, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = load i32*, i32** %17, align 8
  store i32 0, i32* %121, align 4
  br label %122

122:                                              ; preds = %120, %117
  br label %123

123:                                              ; preds = %122, %116
  %124 = load %struct.btrfsic_block*, %struct.btrfsic_block** %18, align 8
  store %struct.btrfsic_block* %124, %struct.btrfsic_block** %9, align 8
  br label %125

125:                                              ; preds = %123, %50, %37
  %126 = load %struct.btrfsic_block*, %struct.btrfsic_block** %9, align 8
  ret %struct.btrfsic_block* %126
}

declare dso_local %struct.btrfsic_block* @btrfsic_block_hashtable_lookup(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local %struct.btrfsic_block* @btrfsic_block_alloc(...) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local %struct.btrfsic_dev_state* @btrfsic_dev_state_lookup(i32) #1

declare dso_local i32 @btrfsic_block_free(%struct.btrfsic_block*) #1

declare dso_local i32 @btrfsic_get_block_type(%struct.btrfsic_state*, %struct.btrfsic_block*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @btrfsic_block_hashtable_add(%struct.btrfsic_block*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
