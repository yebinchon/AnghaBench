; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c_need_send_readdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c_need_send_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_dir_file_info = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_dir_file_info*, i32)* @need_send_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @need_send_readdir(%struct.ceph_dir_file_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ceph_dir_file_info*, align 8
  %5 = alloca i32, align 4
  store %struct.ceph_dir_file_info* %0, %struct.ceph_dir_file_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %4, align 8
  %7 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %33

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @is_hash_order(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %4, align 8
  %17 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @fpos_hash(i32 %19)
  %21 = call i32 @ceph_frag_contains_value(i64 %18, i32 %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %3, align 4
  br label %33

25:                                               ; preds = %11
  %26 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %4, align 8
  %27 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i64 @fpos_frag(i32 %29)
  %31 = icmp ne i64 %28, %30
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %25, %15, %10
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @is_hash_order(i32) #1

declare dso_local i32 @ceph_frag_contains_value(i64, i32) #1

declare dso_local i32 @fpos_hash(i32) #1

declare dso_local i64 @fpos_frag(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
