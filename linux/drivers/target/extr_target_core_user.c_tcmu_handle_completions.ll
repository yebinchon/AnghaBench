; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_user.c_tcmu_handle_completions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_user.c_tcmu_handle_completions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcmu_dev = type { i64, i32, i32, i64, i32, i32, i32, i32, %struct.tcmu_mailbox* }
%struct.tcmu_mailbox = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.tcmu_cmd = type { i32 }
%struct.tcmu_cmd_entry = type { i64, i64, %struct.TYPE_2__ }

@TCMU_DEV_BIT_BROKEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"ring broken, not handling completions\0A\00", align 1
@CMDR_OFF = common dso_local global i32 0, align 4
@TCMU_OP_PAD = common dso_local global i64 0, align 8
@TCMU_OP_CMD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"cmd_id %u not found, ring is broken\0A\00", align 1
@global_db_count = common dso_local global i32 0, align 4
@tcmu_global_max_blocks = common dso_local global i64 0, align 8
@tcmu_unmap_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcmu_dev*)* @tcmu_handle_completions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcmu_handle_completions(%struct.tcmu_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tcmu_dev*, align 8
  %4 = alloca %struct.tcmu_mailbox*, align 8
  %5 = alloca %struct.tcmu_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcmu_cmd_entry*, align 8
  store %struct.tcmu_dev* %0, %struct.tcmu_dev** %3, align 8
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* @TCMU_DEV_BIT_BROKEN, align 4
  %9 = load %struct.tcmu_dev*, %struct.tcmu_dev** %3, align 8
  %10 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %9, i32 0, i32 6
  %11 = call i64 @test_bit(i32 %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %152

15:                                               ; preds = %1
  %16 = load %struct.tcmu_dev*, %struct.tcmu_dev** %3, align 8
  %17 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %16, i32 0, i32 8
  %18 = load %struct.tcmu_mailbox*, %struct.tcmu_mailbox** %17, align 8
  store %struct.tcmu_mailbox* %18, %struct.tcmu_mailbox** %4, align 8
  %19 = load %struct.tcmu_mailbox*, %struct.tcmu_mailbox** %4, align 8
  %20 = call i32 @tcmu_flush_dcache_range(%struct.tcmu_mailbox* %19, i32 24)
  br label %21

21:                                               ; preds = %94, %51, %15
  %22 = load %struct.tcmu_dev*, %struct.tcmu_dev** %3, align 8
  %23 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.tcmu_mailbox*, %struct.tcmu_mailbox** %4, align 8
  %26 = getelementptr inbounds %struct.tcmu_mailbox, %struct.tcmu_mailbox* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @READ_ONCE(i64 %27)
  %29 = icmp ne i64 %24, %28
  br i1 %29, label %30, label %114

30:                                               ; preds = %21
  %31 = load %struct.tcmu_mailbox*, %struct.tcmu_mailbox** %4, align 8
  %32 = bitcast %struct.tcmu_mailbox* %31 to i8*
  %33 = load i32, i32* @CMDR_OFF, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr i8, i8* %32, i64 %34
  %36 = load %struct.tcmu_dev*, %struct.tcmu_dev** %3, align 8
  %37 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr i8, i8* %35, i64 %38
  %40 = bitcast i8* %39 to %struct.tcmu_cmd_entry*
  store %struct.tcmu_cmd_entry* %40, %struct.tcmu_cmd_entry** %7, align 8
  %41 = load %struct.tcmu_cmd_entry*, %struct.tcmu_cmd_entry** %7, align 8
  %42 = bitcast %struct.tcmu_cmd_entry* %41 to %struct.tcmu_mailbox*
  %43 = call i32 @tcmu_flush_dcache_range(%struct.tcmu_mailbox* %42, i32 24)
  %44 = load %struct.tcmu_cmd_entry*, %struct.tcmu_cmd_entry** %7, align 8
  %45 = getelementptr inbounds %struct.tcmu_cmd_entry, %struct.tcmu_cmd_entry* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @tcmu_hdr_get_op(i32 %47)
  %49 = load i64, i64* @TCMU_OP_PAD, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %30
  %52 = load %struct.tcmu_dev*, %struct.tcmu_dev** %3, align 8
  %53 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = load %struct.tcmu_cmd_entry*, %struct.tcmu_cmd_entry** %7, align 8
  %57 = getelementptr inbounds %struct.tcmu_cmd_entry, %struct.tcmu_cmd_entry* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @tcmu_hdr_get_len(i32 %59)
  %61 = load %struct.tcmu_dev*, %struct.tcmu_dev** %3, align 8
  %62 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @UPDATE_HEAD(i32 %55, i32 %60, i32 %63)
  br label %21

65:                                               ; preds = %30
  %66 = load %struct.tcmu_cmd_entry*, %struct.tcmu_cmd_entry** %7, align 8
  %67 = getelementptr inbounds %struct.tcmu_cmd_entry, %struct.tcmu_cmd_entry* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @tcmu_hdr_get_op(i32 %69)
  %71 = load i64, i64* @TCMU_OP_CMD, align 8
  %72 = icmp ne i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @WARN_ON(i32 %73)
  %75 = load %struct.tcmu_dev*, %struct.tcmu_dev** %3, align 8
  %76 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %75, i32 0, i32 7
  %77 = load %struct.tcmu_cmd_entry*, %struct.tcmu_cmd_entry** %7, align 8
  %78 = getelementptr inbounds %struct.tcmu_cmd_entry, %struct.tcmu_cmd_entry* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call %struct.tcmu_cmd* @idr_remove(i32* %76, i32 %80)
  store %struct.tcmu_cmd* %81, %struct.tcmu_cmd** %5, align 8
  %82 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %5, align 8
  %83 = icmp ne %struct.tcmu_cmd* %82, null
  br i1 %83, label %94, label %84

84:                                               ; preds = %65
  %85 = load %struct.tcmu_cmd_entry*, %struct.tcmu_cmd_entry** %7, align 8
  %86 = getelementptr inbounds %struct.tcmu_cmd_entry, %struct.tcmu_cmd_entry* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @TCMU_DEV_BIT_BROKEN, align 4
  %91 = load %struct.tcmu_dev*, %struct.tcmu_dev** %3, align 8
  %92 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %91, i32 0, i32 6
  %93 = call i32 @set_bit(i32 %90, i32* %92)
  br label %114

94:                                               ; preds = %65
  %95 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %5, align 8
  %96 = load %struct.tcmu_cmd_entry*, %struct.tcmu_cmd_entry** %7, align 8
  %97 = bitcast %struct.tcmu_cmd_entry* %96 to %struct.tcmu_mailbox*
  %98 = call i32 @tcmu_handle_completion(%struct.tcmu_cmd* %95, %struct.tcmu_mailbox* %97)
  %99 = load %struct.tcmu_dev*, %struct.tcmu_dev** %3, align 8
  %100 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = trunc i64 %101 to i32
  %103 = load %struct.tcmu_cmd_entry*, %struct.tcmu_cmd_entry** %7, align 8
  %104 = getelementptr inbounds %struct.tcmu_cmd_entry, %struct.tcmu_cmd_entry* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @tcmu_hdr_get_len(i32 %106)
  %108 = load %struct.tcmu_dev*, %struct.tcmu_dev** %3, align 8
  %109 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @UPDATE_HEAD(i32 %102, i32 %107, i32 %110)
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %6, align 4
  br label %21

114:                                              ; preds = %84, %21
  %115 = load %struct.tcmu_mailbox*, %struct.tcmu_mailbox** %4, align 8
  %116 = getelementptr inbounds %struct.tcmu_mailbox, %struct.tcmu_mailbox* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.tcmu_mailbox*, %struct.tcmu_mailbox** %4, align 8
  %119 = getelementptr inbounds %struct.tcmu_mailbox, %struct.tcmu_mailbox* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %117, %120
  br i1 %121, label %122, label %138

122:                                              ; preds = %114
  %123 = load %struct.tcmu_dev*, %struct.tcmu_dev** %3, align 8
  %124 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %123, i32 0, i32 1
  %125 = call i32 @del_timer(i32* %124)
  %126 = load %struct.tcmu_dev*, %struct.tcmu_dev** %3, align 8
  %127 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %126, i32 0, i32 4
  %128 = call i64 @list_empty(i32* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %122
  %131 = call i64 @atomic_read(i32* @global_db_count)
  %132 = load i64, i64* @tcmu_global_max_blocks, align 8
  %133 = icmp sgt i64 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = call i32 @schedule_delayed_work(i32* @tcmu_unmap_work, i32 0)
  br label %136

136:                                              ; preds = %134, %130
  br label %137

137:                                              ; preds = %136, %122
  br label %150

138:                                              ; preds = %114
  %139 = load %struct.tcmu_dev*, %struct.tcmu_dev** %3, align 8
  %140 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %138
  %144 = load %struct.tcmu_dev*, %struct.tcmu_dev** %3, align 8
  %145 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %144, i32 0, i32 2
  %146 = load %struct.tcmu_dev*, %struct.tcmu_dev** %3, align 8
  %147 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %146, i32 0, i32 1
  %148 = call i32 @tcmu_set_next_deadline(i32* %145, i32* %147)
  br label %149

149:                                              ; preds = %143, %138
  br label %150

150:                                              ; preds = %149, %137
  %151 = load i32, i32* %6, align 4
  store i32 %151, i32* %2, align 4
  br label %152

152:                                              ; preds = %150, %13
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @tcmu_flush_dcache_range(%struct.tcmu_mailbox*, i32) #1

declare dso_local i64 @READ_ONCE(i64) #1

declare dso_local i64 @tcmu_hdr_get_op(i32) #1

declare dso_local i32 @UPDATE_HEAD(i32, i32, i32) #1

declare dso_local i32 @tcmu_hdr_get_len(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.tcmu_cmd* @idr_remove(i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @tcmu_handle_completion(%struct.tcmu_cmd*, %struct.tcmu_mailbox*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @tcmu_set_next_deadline(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
