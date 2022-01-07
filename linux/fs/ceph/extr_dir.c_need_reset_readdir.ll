; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c_need_reset_readdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c_need_reset_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_dir_file_info = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ceph_mds_reply_info_parsed }
%struct.ceph_mds_reply_info_parsed = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_dir_file_info*, i64)* @need_reset_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @need_reset_readdir(%struct.ceph_dir_file_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ceph_dir_file_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ceph_mds_reply_info_parsed*, align 8
  %7 = alloca i64, align 8
  store %struct.ceph_dir_file_info* %0, %struct.ceph_dir_file_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %65

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = call i64 @is_hash_order(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %25

16:                                               ; preds = %11
  %17 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %4, align 8
  %18 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i64 @fpos_frag(i64 %20)
  %22 = icmp ne i64 %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %65

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24, %15
  %26 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %4, align 8
  %27 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = icmp ne %struct.TYPE_4__* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.ceph_dir_file_info*, %struct.ceph_dir_file_info** %4, align 8
  %32 = getelementptr inbounds %struct.ceph_dir_file_info, %struct.ceph_dir_file_info* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  br label %36

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %35, %30
  %37 = phi %struct.ceph_mds_reply_info_parsed* [ %34, %30 ], [ null, %35 ]
  store %struct.ceph_mds_reply_info_parsed* %37, %struct.ceph_mds_reply_info_parsed** %6, align 8
  %38 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %6, align 8
  %39 = icmp ne %struct.ceph_mds_reply_info_parsed* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %6, align 8
  %42 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40, %36
  store i32 1, i32* %3, align 4
  br label %65

46:                                               ; preds = %40
  %47 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %6, align 8
  %48 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %7, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* %7, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %46
  %57 = load i64, i64* %5, align 8
  %58 = call i64 @is_hash_order(i64 %57)
  %59 = load i64, i64* %7, align 8
  %60 = call i64 @is_hash_order(i64 %59)
  %61 = icmp ne i64 %58, %60
  br label %62

62:                                               ; preds = %56, %46
  %63 = phi i1 [ true, %46 ], [ %61, %56 ]
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %62, %45, %23, %10
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @is_hash_order(i64) #1

declare dso_local i64 @fpos_frag(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
