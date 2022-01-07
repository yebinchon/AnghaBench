; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_export.c_ceph_encode_fh.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_export.c_ceph_encode_fh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ceph_nfs_confh = type { i8*, i8* }
%struct.ceph_nfs_fh = type { i8* }

@ceph_encode_fh.handle_length = internal constant i32 2, align 4
@ceph_encode_fh.connected_handle_length = internal constant i32 4, align 4
@CEPH_NOSNAP = common dso_local global i64 0, align 8
@FILEID_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"encode_fh %llx with parent %llx\0A\00", align 1
@FILEID_INO32_GEN_PARENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"encode_fh %llx\0A\00", align 1
@FILEID_INO32_GEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32*, i32*, %struct.inode*)* @ceph_encode_fh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_encode_fh(%struct.inode* %0, i32* %1, i32* %2, %struct.inode* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ceph_nfs_confh*, align 8
  %12 = alloca %struct.ceph_nfs_fh*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.inode* %3, %struct.inode** %9, align 8
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = call i64 @ceph_snap(%struct.inode* %13)
  %15 = load i64, i64* @CEPH_NOSNAP, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load %struct.inode*, %struct.inode** %9, align 8
  %22 = call i32 @ceph_encode_snapfh(%struct.inode* %18, i32* %19, i32* %20, %struct.inode* %21)
  store i32 %22, i32* %5, align 4
  br label %78

23:                                               ; preds = %4
  %24 = load %struct.inode*, %struct.inode** %9, align 8
  %25 = icmp ne %struct.inode* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %28, 4
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32*, i32** %8, align 8
  store i32 4, i32* %31, align 4
  %32 = load i32, i32* @FILEID_INVALID, align 4
  store i32 %32, i32* %5, align 4
  br label %78

33:                                               ; preds = %26, %23
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %35, 2
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32*, i32** %8, align 8
  store i32 2, i32* %38, align 4
  %39 = load i32, i32* @FILEID_INVALID, align 4
  store i32 %39, i32* %5, align 4
  br label %78

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.inode*, %struct.inode** %9, align 8
  %43 = icmp ne %struct.inode* %42, null
  br i1 %43, label %44, label %63

44:                                               ; preds = %41
  %45 = load i32*, i32** %7, align 8
  %46 = bitcast i32* %45 to i8*
  %47 = bitcast i8* %46 to %struct.ceph_nfs_confh*
  store %struct.ceph_nfs_confh* %47, %struct.ceph_nfs_confh** %11, align 8
  %48 = load %struct.inode*, %struct.inode** %6, align 8
  %49 = call i8* @ceph_ino(%struct.inode* %48)
  %50 = load %struct.inode*, %struct.inode** %9, align 8
  %51 = call i8* @ceph_ino(%struct.inode* %50)
  %52 = call i32 (i8*, i8*, ...) @dout(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %49, i8* %51)
  %53 = load %struct.inode*, %struct.inode** %6, align 8
  %54 = call i8* @ceph_ino(%struct.inode* %53)
  %55 = load %struct.ceph_nfs_confh*, %struct.ceph_nfs_confh** %11, align 8
  %56 = getelementptr inbounds %struct.ceph_nfs_confh, %struct.ceph_nfs_confh* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load %struct.inode*, %struct.inode** %9, align 8
  %58 = call i8* @ceph_ino(%struct.inode* %57)
  %59 = load %struct.ceph_nfs_confh*, %struct.ceph_nfs_confh** %11, align 8
  %60 = getelementptr inbounds %struct.ceph_nfs_confh, %struct.ceph_nfs_confh* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load i32*, i32** %8, align 8
  store i32 4, i32* %61, align 4
  %62 = load i32, i32* @FILEID_INO32_GEN_PARENT, align 4
  store i32 %62, i32* %10, align 4
  br label %76

63:                                               ; preds = %41
  %64 = load i32*, i32** %7, align 8
  %65 = bitcast i32* %64 to i8*
  %66 = bitcast i8* %65 to %struct.ceph_nfs_fh*
  store %struct.ceph_nfs_fh* %66, %struct.ceph_nfs_fh** %12, align 8
  %67 = load %struct.inode*, %struct.inode** %6, align 8
  %68 = call i8* @ceph_ino(%struct.inode* %67)
  %69 = call i32 (i8*, i8*, ...) @dout(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %68)
  %70 = load %struct.inode*, %struct.inode** %6, align 8
  %71 = call i8* @ceph_ino(%struct.inode* %70)
  %72 = load %struct.ceph_nfs_fh*, %struct.ceph_nfs_fh** %12, align 8
  %73 = getelementptr inbounds %struct.ceph_nfs_fh, %struct.ceph_nfs_fh* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  %74 = load i32*, i32** %8, align 8
  store i32 2, i32* %74, align 4
  %75 = load i32, i32* @FILEID_INO32_GEN, align 4
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %63, %44
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %76, %37, %30, %17
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i64 @ceph_snap(%struct.inode*) #1

declare dso_local i32 @ceph_encode_snapfh(%struct.inode*, i32*, i32*, %struct.inode*) #1

declare dso_local i32 @dout(i8*, i8*, ...) #1

declare dso_local i8* @ceph_ino(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
