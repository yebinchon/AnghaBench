; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_end_dio_bio.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_end_dio_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.TYPE_7__, i32, i64, %struct.btrfs_dio_private* }
%struct.TYPE_7__ = type { i32, i64 }
%struct.btrfs_dio_private = type { i32, i32, %struct.TYPE_8__*, i32, i32, i64 (i32, i32, i64)* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [64 x i8] c"direct IO failed ino %llu rw %d,%u sector %#Lx len %u err no %d\00", align 1
@BLK_STS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @btrfs_end_dio_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btrfs_end_dio_bio(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.btrfs_dio_private*, align 8
  %4 = alloca i64, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %5 = load %struct.bio*, %struct.bio** %2, align 8
  %6 = getelementptr inbounds %struct.bio, %struct.bio* %5, i32 0, i32 3
  %7 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %6, align 8
  store %struct.btrfs_dio_private* %7, %struct.btrfs_dio_private** %3, align 8
  %8 = load %struct.bio*, %struct.bio** %2, align 8
  %9 = getelementptr inbounds %struct.bio, %struct.bio* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %42

13:                                               ; preds = %1
  %14 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %3, align 8
  %15 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_9__* @BTRFS_I(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %3, align 8
  %23 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.TYPE_9__* @BTRFS_I(i32 %24)
  %26 = call i32 @btrfs_ino(%struct.TYPE_9__* %25)
  %27 = load %struct.bio*, %struct.bio** %2, align 8
  %28 = call i32 @bio_op(%struct.bio* %27)
  %29 = load %struct.bio*, %struct.bio** %2, align 8
  %30 = getelementptr inbounds %struct.bio, %struct.bio* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.bio*, %struct.bio** %2, align 8
  %33 = getelementptr inbounds %struct.bio, %struct.bio* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.bio*, %struct.bio** %2, align 8
  %37 = getelementptr inbounds %struct.bio, %struct.bio* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @btrfs_warn(i32 %21, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %28, i32 %31, i64 %35, i32 %39, i64 %40)
  br label %42

42:                                               ; preds = %13, %1
  %43 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %3, align 8
  %44 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %43, i32 0, i32 5
  %45 = load i64 (i32, i32, i64)*, i64 (i32, i32, i64)** %44, align 8
  %46 = icmp ne i64 (i32, i32, i64)* %45, null
  br i1 %46, label %47, label %58

47:                                               ; preds = %42
  %48 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %3, align 8
  %49 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %48, i32 0, i32 5
  %50 = load i64 (i32, i32, i64)*, i64 (i32, i32, i64)** %49, align 8
  %51 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %3, align 8
  %52 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.bio*, %struct.bio** %2, align 8
  %55 = call i32 @btrfs_io_bio(%struct.bio* %54)
  %56 = load i64, i64* %4, align 8
  %57 = call i64 %50(i32 %53, i32 %55, i64 %56)
  store i64 %57, i64* %4, align 8
  br label %58

58:                                               ; preds = %47, %42
  %59 = load i64, i64* %4, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %3, align 8
  %63 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  br label %64

64:                                               ; preds = %61, %58
  %65 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %3, align 8
  %66 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %65, i32 0, i32 3
  %67 = call i32 @atomic_dec_and_test(i32* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %64
  br label %91

70:                                               ; preds = %64
  %71 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %3, align 8
  %72 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %3, align 8
  %77 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @bio_io_error(i32 %78)
  br label %90

80:                                               ; preds = %70
  %81 = load i32, i32* @BLK_STS_OK, align 4
  %82 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %3, align 8
  %83 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %82, i32 0, i32 2
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  store i32 %81, i32* %85, align 4
  %86 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %3, align 8
  %87 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @bio_endio(i32 %88)
  br label %90

90:                                               ; preds = %80, %75
  br label %91

91:                                               ; preds = %90, %69
  %92 = load %struct.bio*, %struct.bio** %2, align 8
  %93 = call i32 @bio_put(%struct.bio* %92)
  ret void
}

declare dso_local i32 @btrfs_warn(i32, i8*, i32, i32, i32, i64, i32, i64) #1

declare dso_local %struct.TYPE_9__* @BTRFS_I(i32) #1

declare dso_local i32 @btrfs_ino(%struct.TYPE_9__*) #1

declare dso_local i32 @bio_op(%struct.bio*) #1

declare dso_local i32 @btrfs_io_bio(%struct.bio*) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @bio_io_error(i32) #1

declare dso_local i32 @bio_endio(i32) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
