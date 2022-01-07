; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_btt.c_btt_flog_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_btt.c_btt_flog_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arena_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i64 }
%struct.log_entry = type { i32 }

@NVDIMM_IO_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arena_info*, i64, i64, %struct.log_entry*)* @btt_flog_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btt_flog_write(%struct.arena_info* %0, i64 %1, i64 %2, %struct.log_entry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.arena_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.log_entry*, align 8
  %10 = alloca i32, align 4
  store %struct.arena_info* %0, %struct.arena_info** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.log_entry* %3, %struct.log_entry** %9, align 8
  %11 = load %struct.arena_info*, %struct.arena_info** %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* %8, align 8
  %14 = load %struct.log_entry*, %struct.log_entry** %9, align 8
  %15 = load i32, i32* @NVDIMM_IO_ATOMIC, align 4
  %16 = call i32 @__btt_log_write(%struct.arena_info* %11, i64 %12, i64 %13, %struct.log_entry* %14, i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %5, align 4
  br label %79

21:                                               ; preds = %4
  %22 = load %struct.arena_info*, %struct.arena_info** %6, align 8
  %23 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 1, %28
  %30 = load %struct.arena_info*, %struct.arena_info** %6, align 8
  %31 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  store i64 %29, i64* %35, align 8
  %36 = load %struct.arena_info*, %struct.arena_info** %6, align 8
  %37 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 8
  %44 = icmp eq i32 %43, 4
  br i1 %44, label %45, label %52

45:                                               ; preds = %21
  %46 = load %struct.arena_info*, %struct.arena_info** %6, align 8
  %47 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i64, i64* %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  br label %52

52:                                               ; preds = %45, %21
  %53 = load %struct.log_entry*, %struct.log_entry** %9, align 8
  %54 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le32_to_cpu(i32 %55)
  %57 = call i64 @ent_e_flag(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %52
  %60 = load %struct.arena_info*, %struct.arena_info** %6, align 8
  %61 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i64, i64* %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  store i32 1, i32* %65, align 4
  br label %66

66:                                               ; preds = %59, %52
  %67 = load %struct.log_entry*, %struct.log_entry** %9, align 8
  %68 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @le32_to_cpu(i32 %69)
  %71 = call i32 @ent_lba(i32 %70)
  %72 = load %struct.arena_info*, %struct.arena_info** %6, align 8
  %73 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i64, i64* %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  store i32 %71, i32* %77, align 8
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %66, %19
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @__btt_log_write(%struct.arena_info*, i64, i64, %struct.log_entry*, i32) #1

declare dso_local i64 @ent_e_flag(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ent_lba(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
