; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_check-integrity.c_submit_bh.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_check-integrity.c_submit_bh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i64, i32, i32, %struct.btrfsic_block*, %struct.TYPE_4__*, i32 }
%struct.btrfsic_block = type { i32, i32*, %struct.TYPE_6__, %struct.btrfsic_block*, i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.btrfsic_dev_state = type { i64, %struct.btrfsic_block, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@btrfsic_is_initialized = common dso_local global i32 0, align 4
@btrfsic_mutex = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@BTRFS_BDEV_BLOCKSIZE = common dso_local global i32 0, align 4
@BTRFSIC_PRINT_MASK_SUBMIT_BIO_BH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"submit_bh(op=0x%x,0x%x, blocknr=%llu (bytenr %llu), size=%zu, data=%p, bdev=%p)\0A\00", align 1
@REQ_PREFLUSH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"submit_bh(op=0x%x,0x%x FLUSH, bdev=%p)\0A\00", align 1
@BTRFSIC_PRINT_MASK_VERBOSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [76 x i8] c"btrfsic_submit_bh(%s) with FLUSH but dummy block already in use (ignored)!\0A\00", align 1
@btrfsic_bh_end_io = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfsic_submit_bh(i32 %0, i32 %1, %struct.buffer_head* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.btrfsic_dev_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.btrfsic_block*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.buffer_head* %2, %struct.buffer_head** %7, align 8
  %11 = load i32, i32* @btrfsic_is_initialized, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %17 = call i32 @submit_bh(i32 %14, i32 %15, %struct.buffer_head* %16)
  store i32 %17, i32* %4, align 4
  br label %169

18:                                               ; preds = %3
  %19 = call i32 @mutex_lock(i32* @btrfsic_mutex)
  %20 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %21 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %20, i32 0, i32 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.btrfsic_dev_state* @btrfsic_dev_state_lookup(i32 %24)
  store %struct.btrfsic_dev_state* %25, %struct.btrfsic_dev_state** %8, align 8
  %26 = load %struct.btrfsic_dev_state*, %struct.btrfsic_dev_state** %8, align 8
  %27 = icmp ne %struct.btrfsic_dev_state* null, %26
  br i1 %27, label %28, label %77

28:                                               ; preds = %18
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @REQ_OP_WRITE, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %77

32:                                               ; preds = %28
  %33 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %34 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %77

37:                                               ; preds = %32
  %38 = load i32, i32* @BTRFS_BDEV_BLOCKSIZE, align 4
  %39 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %40 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = mul nsw i32 %38, %41
  store i32 %42, i32* %9, align 4
  %43 = load %struct.btrfsic_dev_state*, %struct.btrfsic_dev_state** %8, align 8
  %44 = getelementptr inbounds %struct.btrfsic_dev_state, %struct.btrfsic_dev_state* %43, i32 0, i32 3
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @BTRFSIC_PRINT_MASK_SUBMIT_BIO_BH, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %37
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %55 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %60 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %63 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %66 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %65, i32 0, i32 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53, i64 %57, i32 %58, i64 %61, i32 %64, %struct.TYPE_4__* %67)
  br label %69

69:                                               ; preds = %51, %37
  %70 = load %struct.btrfsic_dev_state*, %struct.btrfsic_dev_state** %8, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %73 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %72, i32 0, i32 5
  %74 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @btrfsic_process_written_block(%struct.btrfsic_dev_state* %70, i32 %71, i32* %73, i32 1, i32* null, i32* null, %struct.buffer_head* %74, i32 %75)
  br label %163

77:                                               ; preds = %32, %28, %18
  %78 = load %struct.btrfsic_dev_state*, %struct.btrfsic_dev_state** %8, align 8
  %79 = icmp ne %struct.btrfsic_dev_state* null, %78
  br i1 %79, label %80, label %162

80:                                               ; preds = %77
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @REQ_PREFLUSH, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %162

85:                                               ; preds = %80
  %86 = load %struct.btrfsic_dev_state*, %struct.btrfsic_dev_state** %8, align 8
  %87 = getelementptr inbounds %struct.btrfsic_dev_state, %struct.btrfsic_dev_state* %86, i32 0, i32 3
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @BTRFSIC_PRINT_MASK_SUBMIT_BIO_BH, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %85
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* %6, align 4
  %97 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %98 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %97, i32 0, i32 4
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %95, i32 %96, %struct.TYPE_4__* %99)
  br label %101

101:                                              ; preds = %94, %85
  %102 = load %struct.btrfsic_dev_state*, %struct.btrfsic_dev_state** %8, align 8
  %103 = getelementptr inbounds %struct.btrfsic_dev_state, %struct.btrfsic_dev_state* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %103, i32 0, i32 7
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %124, label %107

107:                                              ; preds = %101
  %108 = load %struct.btrfsic_dev_state*, %struct.btrfsic_dev_state** %8, align 8
  %109 = getelementptr inbounds %struct.btrfsic_dev_state, %struct.btrfsic_dev_state* %108, i32 0, i32 3
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @BTRFSIC_PRINT_MASK_SUBMIT_BIO_BH, align 4
  %114 = load i32, i32* @BTRFSIC_PRINT_MASK_VERBOSE, align 4
  %115 = or i32 %113, %114
  %116 = and i32 %112, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %107
  %119 = load %struct.btrfsic_dev_state*, %struct.btrfsic_dev_state** %8, align 8
  %120 = getelementptr inbounds %struct.btrfsic_dev_state, %struct.btrfsic_dev_state* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0), i32 %121)
  br label %123

123:                                              ; preds = %118, %107
  br label %161

124:                                              ; preds = %101
  %125 = load %struct.btrfsic_dev_state*, %struct.btrfsic_dev_state** %8, align 8
  %126 = getelementptr inbounds %struct.btrfsic_dev_state, %struct.btrfsic_dev_state* %125, i32 0, i32 1
  store %struct.btrfsic_block* %126, %struct.btrfsic_block** %10, align 8
  %127 = load %struct.btrfsic_block*, %struct.btrfsic_block** %10, align 8
  %128 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %127, i32 0, i32 7
  store i64 0, i64* %128, align 8
  %129 = load %struct.btrfsic_block*, %struct.btrfsic_block** %10, align 8
  %130 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %129, i32 0, i32 6
  store i64 0, i64* %130, align 8
  %131 = load %struct.btrfsic_block*, %struct.btrfsic_block** %10, align 8
  %132 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %131, i32 0, i32 5
  store i64 0, i64* %132, align 8
  %133 = load %struct.btrfsic_dev_state*, %struct.btrfsic_dev_state** %8, align 8
  %134 = getelementptr inbounds %struct.btrfsic_dev_state, %struct.btrfsic_dev_state* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %135, 1
  %137 = load %struct.btrfsic_block*, %struct.btrfsic_block** %10, align 8
  %138 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %137, i32 0, i32 4
  store i64 %136, i64* %138, align 8
  %139 = load i32, i32* %6, align 4
  %140 = load %struct.btrfsic_block*, %struct.btrfsic_block** %10, align 8
  %141 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  %142 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %143 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %142, i32 0, i32 3
  %144 = load %struct.btrfsic_block*, %struct.btrfsic_block** %143, align 8
  %145 = load %struct.btrfsic_block*, %struct.btrfsic_block** %10, align 8
  %146 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %145, i32 0, i32 3
  store %struct.btrfsic_block* %144, %struct.btrfsic_block** %146, align 8
  %147 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %148 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.btrfsic_block*, %struct.btrfsic_block** %10, align 8
  %151 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  store i32 %149, i32* %152, align 8
  %153 = load %struct.btrfsic_block*, %struct.btrfsic_block** %10, align 8
  %154 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %153, i32 0, i32 1
  store i32* null, i32** %154, align 8
  %155 = load %struct.btrfsic_block*, %struct.btrfsic_block** %10, align 8
  %156 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %157 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %156, i32 0, i32 3
  store %struct.btrfsic_block* %155, %struct.btrfsic_block** %157, align 8
  %158 = load i32, i32* @btrfsic_bh_end_io, align 4
  %159 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %160 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %159, i32 0, i32 2
  store i32 %158, i32* %160, align 4
  br label %161

161:                                              ; preds = %124, %123
  br label %162

162:                                              ; preds = %161, %80, %77
  br label %163

163:                                              ; preds = %162, %69
  %164 = call i32 @mutex_unlock(i32* @btrfsic_mutex)
  %165 = load i32, i32* %5, align 4
  %166 = load i32, i32* %6, align 4
  %167 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %168 = call i32 @submit_bh(i32 %165, i32 %166, %struct.buffer_head* %167)
  store i32 %168, i32* %4, align 4
  br label %169

169:                                              ; preds = %163, %13
  %170 = load i32, i32* %4, align 4
  ret i32 %170
}

declare dso_local i32 @submit_bh(i32, i32, %struct.buffer_head*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.btrfsic_dev_state* @btrfsic_dev_state_lookup(i32) #1

declare dso_local i32 @pr_info(i8*, i32, ...) #1

declare dso_local i32 @btrfsic_process_written_block(%struct.btrfsic_dev_state*, i32, i32*, i32, i32*, i32*, %struct.buffer_head*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
