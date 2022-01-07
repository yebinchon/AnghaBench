; ModuleID = '/home/carl/AnghaBench/linux/fs/adfs/extr_inode.c_adfs_adfs2unix_time.c'
source_filename = "/home/carl/AnghaBench/linux/fs/adfs/extr_inode.c_adfs_adfs2unix_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec64 = type { i64, i64 }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@adfs_adfs2unix_time.nsec_unix_epoch_diff_risc_os_epoch = internal constant i32 550567936, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timespec64*, %struct.inode*)* @adfs_adfs2unix_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adfs_adfs2unix_time(%struct.timespec64* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.timespec64*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.timespec64, align 8
  %9 = alloca %struct.timespec64, align 8
  store %struct.timespec64* %0, %struct.timespec64** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call i32 @adfs_inode_is_stamped(%struct.inode* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %45

14:                                               ; preds = %2
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = call %struct.TYPE_2__* @ADFS_I(%struct.inode* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 255
  store i32 %19, i32* %5, align 4
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = call %struct.TYPE_2__* @ADFS_I(%struct.inode* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = shl i32 %24, 32
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %25, %26
  %28 = mul nsw i32 %27, 10000000
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 550567936
  br i1 %30, label %31, label %32

31:                                               ; preds = %14
  br label %56

32:                                               ; preds = %14
  %33 = load i32, i32* %7, align 4
  %34 = sub nsw i32 %33, 550567936
  store i32 %34, i32* %7, align 4
  %35 = load %struct.timespec64*, %struct.timespec64** %3, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call { i64, i64 } @ns_to_timespec64(i32 %36)
  %38 = bitcast %struct.timespec64* %8 to { i64, i64 }*
  %39 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %38, i32 0, i32 0
  %40 = extractvalue { i64, i64 } %37, 0
  store i64 %40, i64* %39, align 8
  %41 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %38, i32 0, i32 1
  %42 = extractvalue { i64, i64 } %37, 1
  store i64 %42, i64* %41, align 8
  %43 = bitcast %struct.timespec64* %35 to i8*
  %44 = bitcast %struct.timespec64* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 8 %44, i64 16, i1 false)
  br label %61

45:                                               ; preds = %13
  %46 = load %struct.timespec64*, %struct.timespec64** %3, align 8
  %47 = load %struct.inode*, %struct.inode** %4, align 8
  %48 = call { i64, i64 } @current_time(%struct.inode* %47)
  %49 = bitcast %struct.timespec64* %9 to { i64, i64 }*
  %50 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %49, i32 0, i32 0
  %51 = extractvalue { i64, i64 } %48, 0
  store i64 %51, i64* %50, align 8
  %52 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %49, i32 0, i32 1
  %53 = extractvalue { i64, i64 } %48, 1
  store i64 %53, i64* %52, align 8
  %54 = bitcast %struct.timespec64* %46 to i8*
  %55 = bitcast %struct.timespec64* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %54, i8* align 8 %55, i64 16, i1 false)
  br label %61

56:                                               ; preds = %31
  %57 = load %struct.timespec64*, %struct.timespec64** %3, align 8
  %58 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  %59 = load %struct.timespec64*, %struct.timespec64** %3, align 8
  %60 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %56, %45, %32
  ret void
}

declare dso_local i32 @adfs_inode_is_stamped(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @ADFS_I(%struct.inode*) #1

declare dso_local { i64, i64 } @ns_to_timespec64(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local { i64, i64 } @current_time(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
