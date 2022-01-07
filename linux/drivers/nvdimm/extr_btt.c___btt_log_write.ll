; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_btt.c___btt_log_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_btt.c___btt_log_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arena_info = type { i64*, i64 }
%struct.log_entry = type { i32 }

@LOG_ENT_SIZE = common dso_local global i32 0, align 4
@LOG_GRP_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arena_info*, i64, i64, %struct.log_entry*, i64)* @__btt_log_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__btt_log_write(%struct.arena_info* %0, i64 %1, i64 %2, %struct.log_entry* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.arena_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.log_entry*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store %struct.arena_info* %0, %struct.arena_info** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.log_entry* %3, %struct.log_entry** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load %struct.arena_info*, %struct.arena_info** %7, align 8
  %18 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* %9, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %13, align 8
  %23 = load i32, i32* @LOG_ENT_SIZE, align 4
  %24 = sdiv i32 %23, 2
  store i32 %24, i32* %14, align 4
  %25 = load %struct.log_entry*, %struct.log_entry** %10, align 8
  %26 = bitcast %struct.log_entry* %25 to i8*
  store i8* %26, i8** %15, align 8
  %27 = load %struct.arena_info*, %struct.arena_info** %7, align 8
  %28 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @LOG_GRP_SIZE, align 8
  %32 = mul i64 %30, %31
  %33 = add i64 %29, %32
  %34 = load i64, i64* %13, align 8
  %35 = load i32, i32* @LOG_ENT_SIZE, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %34, %36
  %38 = add i64 %33, %37
  store i64 %38, i64* %16, align 8
  %39 = load %struct.arena_info*, %struct.arena_info** %7, align 8
  %40 = load i64, i64* %16, align 8
  %41 = load i8*, i8** %15, align 8
  %42 = load i32, i32* %14, align 4
  %43 = load i64, i64* %11, align 8
  %44 = call i32 @arena_write_bytes(%struct.arena_info* %39, i64 %40, i8* %41, i32 %42, i64 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %5
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %6, align 4
  br label %64

49:                                               ; preds = %5
  %50 = load i32, i32* %14, align 4
  %51 = zext i32 %50 to i64
  %52 = load i64, i64* %16, align 8
  %53 = add nsw i64 %52, %51
  store i64 %53, i64* %16, align 8
  %54 = load i32, i32* %14, align 4
  %55 = load i8*, i8** %15, align 8
  %56 = zext i32 %54 to i64
  %57 = getelementptr i8, i8* %55, i64 %56
  store i8* %57, i8** %15, align 8
  %58 = load %struct.arena_info*, %struct.arena_info** %7, align 8
  %59 = load i64, i64* %16, align 8
  %60 = load i8*, i8** %15, align 8
  %61 = load i32, i32* %14, align 4
  %62 = load i64, i64* %11, align 8
  %63 = call i32 @arena_write_bytes(%struct.arena_info* %58, i64 %59, i8* %60, i32 %61, i64 %62)
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %49, %47
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i32 @arena_write_bytes(%struct.arena_info*, i64, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
