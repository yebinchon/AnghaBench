; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_btt.c_btt_log_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_btt.c_btt_log_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arena_info = type { i64, i64, i64, i64 }
%struct.log_entry = type { i8*, i8*, i8*, i8* }

@SZ_4K = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"arena->logoff: %#llx is unaligned\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"chunk size: %#zx is unaligned\0A\00", align 1
@LOG_SEQ_INIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arena_info*)* @btt_log_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btt_log_init(%struct.arena_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.arena_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.log_entry, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.arena_info* %0, %struct.arena_info** %3, align 8
  %12 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %13 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %16 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = sub i64 %14, %17
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* @SZ_4K, align 8
  store i64 %19, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @kzalloc(i64 %20, i32 %21)
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %119

28:                                               ; preds = %1
  %29 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %30 = call i32 @to_dev(%struct.arena_info* %29)
  %31 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %32 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @IS_ALIGNED(i64 %33, i32 512)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %39 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @dev_WARN_ONCE(i32 %30, i32 %37, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %40)
  br label %42

42:                                               ; preds = %68, %28
  %43 = load i64, i64* %4, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %76

45:                                               ; preds = %42
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* %5, align 8
  %48 = call i64 @min(i64 %46, i64 %47)
  store i64 %48, i64* %11, align 8
  %49 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %50 = call i32 @to_dev(%struct.arena_info* %49)
  %51 = load i64, i64* %11, align 8
  %52 = icmp ult i64 %51, 512
  %53 = zext i1 %52 to i32
  %54 = load i64, i64* %11, align 8
  %55 = call i32 @dev_WARN_ONCE(i32 %50, i32 %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %54)
  %56 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %57 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %58 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %6, align 8
  %61 = add i64 %59, %60
  %62 = load i8*, i8** %8, align 8
  %63 = load i64, i64* %11, align 8
  %64 = call i32 @arena_write_bytes(%struct.arena_info* %56, i64 %61, i8* %62, i64 %63, i32 0)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %45
  br label %115

68:                                               ; preds = %45
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* %6, align 8
  %71 = add i64 %70, %69
  store i64 %71, i64* %6, align 8
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* %4, align 8
  %74 = sub i64 %73, %72
  store i64 %74, i64* %4, align 8
  %75 = call i32 (...) @cond_resched()
  br label %42

76:                                               ; preds = %42
  store i64 0, i64* %10, align 8
  br label %77

77:                                               ; preds = %111, %76
  %78 = load i64, i64* %10, align 8
  %79 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %80 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp slt i64 %78, %81
  br i1 %82, label %83, label %114

83:                                               ; preds = %77
  %84 = load i64, i64* %10, align 8
  %85 = call i8* @cpu_to_le32(i64 %84)
  %86 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %7, i32 0, i32 3
  store i8* %85, i8** %86, align 8
  %87 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %88 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %10, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i8* @cpu_to_le32(i64 %91)
  %93 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %7, i32 0, i32 2
  store i8* %92, i8** %93, align 8
  %94 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %95 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %10, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i8* @cpu_to_le32(i64 %98)
  %100 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %7, i32 0, i32 1
  store i8* %99, i8** %100, align 8
  %101 = load i64, i64* @LOG_SEQ_INIT, align 8
  %102 = call i8* @cpu_to_le32(i64 %101)
  %103 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %7, i32 0, i32 0
  store i8* %102, i8** %103, align 8
  %104 = load %struct.arena_info*, %struct.arena_info** %3, align 8
  %105 = load i64, i64* %10, align 8
  %106 = call i32 @__btt_log_write(%struct.arena_info* %104, i64 %105, i32 0, %struct.log_entry* %7, i32 0)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %83
  br label %115

110:                                              ; preds = %83
  br label %111

111:                                              ; preds = %110
  %112 = load i64, i64* %10, align 8
  %113 = add nsw i64 %112, 1
  store i64 %113, i64* %10, align 8
  br label %77

114:                                              ; preds = %77
  br label %115

115:                                              ; preds = %114, %109, %67
  %116 = load i8*, i8** %8, align 8
  %117 = call i32 @kfree(i8* %116)
  %118 = load i32, i32* %9, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %115, %25
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @dev_WARN_ONCE(i32, i32, i8*, i64) #1

declare dso_local i32 @to_dev(%struct.arena_info*) #1

declare dso_local i32 @IS_ALIGNED(i64, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @arena_write_bytes(%struct.arena_info*, i64, i8*, i64, i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @__btt_log_write(%struct.arena_info*, i64, i32, %struct.log_entry*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
