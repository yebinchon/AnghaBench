; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_user.c_is_ring_space_avail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_user.c_is_ring_space_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcmu_dev = type { i32, i64, i64, i32, i32, %struct.tcmu_mailbox* }
%struct.tcmu_mailbox = type { i32 }
%struct.tcmu_cmd = type { i32 }

@DATA_BLOCK_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"no cmd space: %u %u %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"no data space: only %lu available, but ask for %zu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcmu_dev*, %struct.tcmu_cmd*, i64, i64)* @is_ring_space_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_ring_space_avail(%struct.tcmu_dev* %0, %struct.tcmu_cmd* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcmu_dev*, align 8
  %7 = alloca %struct.tcmu_cmd*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.tcmu_mailbox*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.tcmu_dev* %0, %struct.tcmu_dev** %6, align 8
  store %struct.tcmu_cmd* %1, %struct.tcmu_cmd** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %17 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %16, i32 0, i32 5
  %18 = load %struct.tcmu_mailbox*, %struct.tcmu_mailbox** %17, align 8
  store %struct.tcmu_mailbox* %18, %struct.tcmu_mailbox** %10, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* @DATA_BLOCK_SIZE, align 8
  %21 = add i64 %19, %20
  %22 = sub i64 %21, 1
  %23 = load i64, i64* @DATA_BLOCK_SIZE, align 8
  %24 = udiv i64 %22, %23
  store i64 %24, i64* %11, align 8
  %25 = load %struct.tcmu_mailbox*, %struct.tcmu_mailbox** %10, align 8
  %26 = call i32 @tcmu_flush_dcache_range(%struct.tcmu_mailbox* %25, i32 4)
  %27 = load %struct.tcmu_mailbox*, %struct.tcmu_mailbox** %10, align 8
  %28 = getelementptr inbounds %struct.tcmu_mailbox, %struct.tcmu_mailbox* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %31 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = srem i32 %29, %32
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %36 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @head_to_end(i32 %34, i32 %37)
  %39 = load i64, i64* %8, align 8
  %40 = icmp uge i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %4
  %42 = load i64, i64* %8, align 8
  store i64 %42, i64* %13, align 8
  br label %51

43:                                               ; preds = %4
  %44 = load i64, i64* %8, align 8
  %45 = load i32, i32* %14, align 4
  %46 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %47 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @head_to_end(i32 %45, i32 %48)
  %50 = add i64 %44, %49
  store i64 %50, i64* %13, align 8
  br label %51

51:                                               ; preds = %43, %41
  %52 = load i32, i32* %14, align 4
  %53 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %54 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %57 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @spc_free(i32 %52, i32 %55, i32 %58)
  store i64 %59, i64* %12, align 8
  %60 = load i64, i64* %12, align 8
  %61 = load i64, i64* %13, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %51
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %67 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %71 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (i8*, i64, i64, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %65, i64 %69, i32 %72)
  store i32 0, i32* %5, align 4
  br label %130

74:                                               ; preds = %51
  %75 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %76 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %79 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @spc_bitmap_free(i32 %77, i64 %80)
  store i64 %81, i64* %12, align 8
  %82 = load i64, i64* %12, align 8
  %83 = load i64, i64* @DATA_BLOCK_SIZE, align 8
  %84 = mul i64 %82, %83
  %85 = load i64, i64* %9, align 8
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %87, label %126

87:                                               ; preds = %74
  %88 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %89 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %92 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = sub i64 %90, %93
  %95 = load i64, i64* %12, align 8
  %96 = add i64 %94, %95
  store i64 %96, i64* %15, align 8
  %97 = load i64, i64* %15, align 8
  %98 = load i64, i64* %11, align 8
  %99 = icmp ult i64 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %87
  %101 = load i64, i64* %15, align 8
  %102 = load i64, i64* @DATA_BLOCK_SIZE, align 8
  %103 = mul i64 %101, %102
  %104 = load i64, i64* %9, align 8
  %105 = call i32 (i8*, i64, i64, ...) @pr_debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %103, i64 %104)
  store i32 0, i32* %5, align 4
  br label %130

106:                                              ; preds = %87
  %107 = load i64, i64* %11, align 8
  %108 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %109 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = add i64 %110, %107
  store i64 %111, i64* %109, align 8
  %112 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %113 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %116 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp ugt i64 %114, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %106
  %120 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %121 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %124 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %123, i32 0, i32 1
  store i64 %122, i64* %124, align 8
  br label %125

125:                                              ; preds = %119, %106
  br label %126

126:                                              ; preds = %125, %74
  %127 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %128 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %7, align 8
  %129 = call i32 @tcmu_get_empty_blocks(%struct.tcmu_dev* %127, %struct.tcmu_cmd* %128)
  store i32 %129, i32* %5, align 4
  br label %130

130:                                              ; preds = %126, %100, %63
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i32 @tcmu_flush_dcache_range(%struct.tcmu_mailbox*, i32) #1

declare dso_local i64 @head_to_end(i32, i32) #1

declare dso_local i64 @spc_free(i32, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i64, i64, ...) #1

declare dso_local i64 @spc_bitmap_free(i32, i64) #1

declare dso_local i32 @tcmu_get_empty_blocks(%struct.tcmu_dev*, %struct.tcmu_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
