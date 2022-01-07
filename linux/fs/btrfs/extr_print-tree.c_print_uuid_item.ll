; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_print-tree.c_print_uuid_item.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_print-tree.c_print_uuid_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"BTRFS: uuid item with illegal size %lu!\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"\09\09subvol_id %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.extent_buffer*, i64, i64)* @print_uuid_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_uuid_item(%struct.extent_buffer* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.extent_buffer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.extent_buffer* %0, %struct.extent_buffer** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = call i32 @IS_ALIGNED(i64 %8, i32 4)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @pr_warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %12)
  br label %29

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %18, %14
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %15
  %19 = load %struct.extent_buffer*, %struct.extent_buffer** %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @read_extent_buffer(%struct.extent_buffer* %19, i32* %7, i64 %20, i32 4)
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @le64_to_cpu(i32 %22)
  %24 = call i32 @pr_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %23)
  %25 = load i64, i64* %6, align 8
  %26 = sub i64 %25, 4
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %5, align 8
  %28 = add i64 %27, 4
  store i64 %28, i64* %5, align 8
  br label %15

29:                                               ; preds = %11, %15
  ret void
}

declare dso_local i32 @IS_ALIGNED(i64, i32) #1

declare dso_local i32 @pr_warn(i8*, i64) #1

declare dso_local i32 @read_extent_buffer(%struct.extent_buffer*, i32*, i64, i32) #1

declare dso_local i32 @pr_info(i8*, i64) #1

declare dso_local i64 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
