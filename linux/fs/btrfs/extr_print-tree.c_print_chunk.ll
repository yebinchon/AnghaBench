; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_print-tree.c_print_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_print-tree.c_print_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { i32 }
%struct.btrfs_chunk = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"\09\09chunk length %llu owner %llu type %llu num_stripes %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"\09\09\09stripe %d devid %llu offset %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.extent_buffer*, %struct.btrfs_chunk*)* @print_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_chunk(%struct.extent_buffer* %0, %struct.btrfs_chunk* %1) #0 {
  %3 = alloca %struct.extent_buffer*, align 8
  %4 = alloca %struct.btrfs_chunk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.extent_buffer* %0, %struct.extent_buffer** %3, align 8
  store %struct.btrfs_chunk* %1, %struct.btrfs_chunk** %4, align 8
  %7 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %8 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %4, align 8
  %9 = call i32 @btrfs_chunk_num_stripes(%struct.extent_buffer* %7, %struct.btrfs_chunk* %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %11 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %4, align 8
  %12 = call i32 @btrfs_chunk_length(%struct.extent_buffer* %10, %struct.btrfs_chunk* %11)
  %13 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %14 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %4, align 8
  %15 = call i32 @btrfs_chunk_owner(%struct.extent_buffer* %13, %struct.btrfs_chunk* %14)
  %16 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %17 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %4, align 8
  %18 = call i32 @btrfs_chunk_type(%struct.extent_buffer* %16, %struct.btrfs_chunk* %17)
  %19 = load i32, i32* %5, align 4
  %20 = call i32 (i8*, i32, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15, i32 %18, i32 %19)
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %36, %2
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %28 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @btrfs_stripe_devid_nr(%struct.extent_buffer* %27, %struct.btrfs_chunk* %28, i32 %29)
  %31 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %32 = load %struct.btrfs_chunk*, %struct.btrfs_chunk** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @btrfs_stripe_offset_nr(%struct.extent_buffer* %31, %struct.btrfs_chunk* %32, i32 %33)
  %35 = call i32 (i8*, i32, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %30, i32 %34)
  br label %36

36:                                               ; preds = %25
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %21

39:                                               ; preds = %21
  ret void
}

declare dso_local i32 @btrfs_chunk_num_stripes(%struct.extent_buffer*, %struct.btrfs_chunk*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32, ...) #1

declare dso_local i32 @btrfs_chunk_length(%struct.extent_buffer*, %struct.btrfs_chunk*) #1

declare dso_local i32 @btrfs_chunk_owner(%struct.extent_buffer*, %struct.btrfs_chunk*) #1

declare dso_local i32 @btrfs_chunk_type(%struct.extent_buffer*, %struct.btrfs_chunk*) #1

declare dso_local i32 @btrfs_stripe_devid_nr(%struct.extent_buffer*, %struct.btrfs_chunk*, i32) #1

declare dso_local i32 @btrfs_stripe_offset_nr(%struct.extent_buffer*, %struct.btrfs_chunk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
