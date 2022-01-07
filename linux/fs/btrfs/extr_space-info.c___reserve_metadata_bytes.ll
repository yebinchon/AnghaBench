; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_space-info.c___reserve_metadata_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_space-info.c___reserve_metadata_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.btrfs_fs_info = type { i32, i32 }
%struct.btrfs_space_info = type { i64, i32, i32, i32, i32, i32 }
%struct.reserve_ticket = type { i32, i32, i64, i64 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@BTRFS_RESERVE_FLUSH_ALL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@BTRFS_RESERVE_NO_FLUSH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"enospc\00", align 1
@system_unbound_wq = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_METADATA = common dso_local global i32 0, align 4
@BTRFS_FS_LOG_RECOVERING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"preempt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*, %struct.btrfs_space_info*, i64, i32, i32)* @__reserve_metadata_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__reserve_metadata_bytes(%struct.btrfs_fs_info* %0, %struct.btrfs_space_info* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_fs_info*, align 8
  %8 = alloca %struct.btrfs_space_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.reserve_ticket, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %7, align 8
  store %struct.btrfs_space_info* %1, %struct.btrfs_space_info** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %16 = load i64, i64* %9, align 8
  %17 = trunc i64 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %5
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @BTRFS_RESERVE_FLUSH_ALL, align 4
  %26 = icmp ne i32 %24, %25
  br label %27

27:                                               ; preds = %23, %5
  %28 = phi i1 [ true, %5 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @ASSERT(i32 %29)
  %31 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %8, align 8
  %32 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %31, i32 0, i32 3
  %33 = call i32 @spin_lock(i32* %32)
  %34 = load i32, i32* @ENOSPC, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %14, align 4
  %36 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %8, align 8
  %37 = call i64 @btrfs_space_info_used(%struct.btrfs_space_info* %36, i32 1)
  store i64 %37, i64* %13, align 8
  %38 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %8, align 8
  %39 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %38, i32 0, i32 5
  %40 = call i32 @list_empty(i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %27
  %43 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %8, align 8
  %44 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %43, i32 0, i32 4
  %45 = call i32 @list_empty(i32* %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  br label %48

48:                                               ; preds = %42, %27
  %49 = phi i1 [ true, %27 ], [ %47, %42 ]
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %15, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %74, label %53

53:                                               ; preds = %48
  %54 = load i64, i64* %13, align 8
  %55 = load i64, i64* %9, align 8
  %56 = add nsw i64 %54, %55
  %57 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %8, align 8
  %58 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp sle i64 %56, %59
  br i1 %60, label %69, label %61

61:                                               ; preds = %53
  %62 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %63 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %8, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i64 @can_overcommit(%struct.btrfs_fs_info* %62, %struct.btrfs_space_info* %63, i64 %64, i32 %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %61, %53
  %70 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %71 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %8, align 8
  %72 = load i64, i64* %9, align 8
  %73 = call i32 @btrfs_space_info_update_bytes_may_use(%struct.btrfs_fs_info* %70, %struct.btrfs_space_info* %71, i64 %72)
  store i32 0, i32* %14, align 4
  br label %74

74:                                               ; preds = %69, %61, %48
  %75 = load i32, i32* %14, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %120

77:                                               ; preds = %74
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @BTRFS_RESERVE_NO_FLUSH, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %120

81:                                               ; preds = %77
  %82 = load i64, i64* %9, align 8
  %83 = getelementptr inbounds %struct.reserve_ticket, %struct.reserve_ticket* %12, i32 0, i32 3
  store i64 %82, i64* %83, align 8
  %84 = getelementptr inbounds %struct.reserve_ticket, %struct.reserve_ticket* %12, i32 0, i32 2
  store i64 0, i64* %84, align 8
  %85 = getelementptr inbounds %struct.reserve_ticket, %struct.reserve_ticket* %12, i32 0, i32 1
  %86 = call i32 @init_waitqueue_head(i32* %85)
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @BTRFS_RESERVE_FLUSH_ALL, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %114

90:                                               ; preds = %81
  %91 = getelementptr inbounds %struct.reserve_ticket, %struct.reserve_ticket* %12, i32 0, i32 0
  %92 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %8, align 8
  %93 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %92, i32 0, i32 5
  %94 = call i32 @list_add_tail(i32* %91, i32* %93)
  %95 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %8, align 8
  %96 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %113, label %99

99:                                               ; preds = %90
  %100 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %8, align 8
  %101 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %100, i32 0, i32 1
  store i32 1, i32* %101, align 8
  %102 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %103 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %8, align 8
  %104 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load i64, i64* %9, align 8
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @trace_btrfs_trigger_flush(%struct.btrfs_fs_info* %102, i32 %105, i64 %106, i32 %107, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %109 = load i32, i32* @system_unbound_wq, align 4
  %110 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %111 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %110, i32 0, i32 0
  %112 = call i32 @queue_work(i32 %109, i32* %111)
  br label %113

113:                                              ; preds = %99, %90
  br label %119

114:                                              ; preds = %81
  %115 = getelementptr inbounds %struct.reserve_ticket, %struct.reserve_ticket* %12, i32 0, i32 0
  %116 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %8, align 8
  %117 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %116, i32 0, i32 4
  %118 = call i32 @list_add_tail(i32* %115, i32* %117)
  br label %119

119:                                              ; preds = %114, %113
  br label %165

120:                                              ; preds = %77, %74
  %121 = load i32, i32* %14, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %164, label %123

123:                                              ; preds = %120
  %124 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %8, align 8
  %125 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @BTRFS_BLOCK_GROUP_METADATA, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %164

130:                                              ; preds = %123
  %131 = load i64, i64* %9, align 8
  %132 = load i64, i64* %13, align 8
  %133 = add nsw i64 %132, %131
  store i64 %133, i64* %13, align 8
  %134 = load i32, i32* @BTRFS_FS_LOG_RECOVERING, align 4
  %135 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %136 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %135, i32 0, i32 1
  %137 = call i32 @test_bit(i32 %134, i32* %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %163, label %139

139:                                              ; preds = %130
  %140 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %141 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %8, align 8
  %142 = load i64, i64* %13, align 8
  %143 = load i32, i32* %11, align 4
  %144 = call i64 @need_do_async_reclaim(%struct.btrfs_fs_info* %140, %struct.btrfs_space_info* %141, i64 %142, i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %163

146:                                              ; preds = %139
  %147 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %148 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %147, i32 0, i32 0
  %149 = call i32 @work_busy(i32* %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %163, label %151

151:                                              ; preds = %146
  %152 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %153 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %8, align 8
  %154 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load i64, i64* %9, align 8
  %157 = load i32, i32* %10, align 4
  %158 = call i32 @trace_btrfs_trigger_flush(%struct.btrfs_fs_info* %152, i32 %155, i64 %156, i32 %157, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %159 = load i32, i32* @system_unbound_wq, align 4
  %160 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %161 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %160, i32 0, i32 0
  %162 = call i32 @queue_work(i32 %159, i32* %161)
  br label %163

163:                                              ; preds = %151, %146, %139, %130
  br label %164

164:                                              ; preds = %163, %123, %120
  br label %165

165:                                              ; preds = %164, %119
  %166 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %8, align 8
  %167 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %166, i32 0, i32 3
  %168 = call i32 @spin_unlock(i32* %167)
  %169 = load i32, i32* %14, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %165
  %172 = load i32, i32* %10, align 4
  %173 = load i32, i32* @BTRFS_RESERVE_NO_FLUSH, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %171, %165
  %176 = load i32, i32* %14, align 4
  store i32 %176, i32* %6, align 4
  br label %182

177:                                              ; preds = %171
  %178 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %179 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %8, align 8
  %180 = load i32, i32* %10, align 4
  %181 = call i32 @handle_reserve_ticket(%struct.btrfs_fs_info* %178, %struct.btrfs_space_info* %179, %struct.reserve_ticket* %12, i32 %180)
  store i32 %181, i32* %6, align 4
  br label %182

182:                                              ; preds = %177, %175
  %183 = load i32, i32* %6, align 4
  ret i32 %183
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @btrfs_space_info_used(%struct.btrfs_space_info*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @can_overcommit(%struct.btrfs_fs_info*, %struct.btrfs_space_info*, i64, i32, i32) #1

declare dso_local i32 @btrfs_space_info_update_bytes_may_use(%struct.btrfs_fs_info*, %struct.btrfs_space_info*, i64) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @trace_btrfs_trigger_flush(%struct.btrfs_fs_info*, i32, i64, i32, i8*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @need_do_async_reclaim(%struct.btrfs_fs_info*, %struct.btrfs_space_info*, i64, i32) #1

declare dso_local i32 @work_busy(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @handle_reserve_ticket(%struct.btrfs_fs_info*, %struct.btrfs_space_info*, %struct.reserve_ticket*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
