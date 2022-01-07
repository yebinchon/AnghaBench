; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_set_request_path_attr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_set_request_path_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c" inode %p %llx.%llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c" dentry %p %llx/%.*s\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c" path %.*s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*, i8*, i64, i8**, i32*, i64*, i32*, i32)* @set_request_path_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_request_path_attr(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, i8* %3, i64 %4, i8** %5, i32* %6, i64* %7, i32* %8, i32 %9) #0 {
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.dentry*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %11, align 8
  store %struct.dentry* %1, %struct.dentry** %12, align 8
  store %struct.inode* %2, %struct.inode** %13, align 8
  store i8* %3, i8** %14, align 8
  store i64 %4, i64* %15, align 8
  store i8** %5, i8*** %16, align 8
  store i32* %6, i32** %17, align 8
  store i64* %7, i64** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32 %9, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %22 = load %struct.inode*, %struct.inode** %11, align 8
  %23 = icmp ne %struct.inode* %22, null
  br i1 %23, label %24, label %40

24:                                               ; preds = %10
  %25 = load %struct.inode*, %struct.inode** %11, align 8
  %26 = load i8**, i8*** %16, align 8
  %27 = load i32*, i32** %17, align 8
  %28 = load i64*, i64** %18, align 8
  %29 = load i32*, i32** %19, align 8
  %30 = call i32 @build_inode_path(%struct.inode* %25, i8** %26, i32* %27, i64* %28, i32* %29)
  store i32 %30, i32* %21, align 4
  %31 = load %struct.inode*, %struct.inode** %11, align 8
  %32 = ptrtoint %struct.inode* %31 to i32
  %33 = load %struct.inode*, %struct.inode** %11, align 8
  %34 = call i32 @ceph_ino(%struct.inode* %33)
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  %37 = load %struct.inode*, %struct.inode** %11, align 8
  %38 = call i32 @ceph_snap(%struct.inode* %37)
  %39 = call i32 (i8*, i32, i8*, ...) @dout(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %32, i8* %36, i32 %38)
  br label %88

40:                                               ; preds = %10
  %41 = load %struct.dentry*, %struct.dentry** %12, align 8
  %42 = icmp ne %struct.dentry* %41, null
  br i1 %42, label %43, label %62

43:                                               ; preds = %40
  %44 = load %struct.dentry*, %struct.dentry** %12, align 8
  %45 = load %struct.inode*, %struct.inode** %13, align 8
  %46 = load i8**, i8*** %16, align 8
  %47 = load i32*, i32** %17, align 8
  %48 = load i64*, i64** %18, align 8
  %49 = load i32*, i32** %19, align 8
  %50 = load i32, i32* %20, align 4
  %51 = call i32 @build_dentry_path(%struct.dentry* %44, %struct.inode* %45, i8** %46, i32* %47, i64* %48, i32* %49, i32 %50)
  store i32 %51, i32* %21, align 4
  %52 = load %struct.dentry*, %struct.dentry** %12, align 8
  %53 = ptrtoint %struct.dentry* %52 to i32
  %54 = load i64*, i64** %18, align 8
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = load i32*, i32** %17, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load i8**, i8*** %16, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 (i8*, i32, i8*, ...) @dout(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %53, i8* %56, i32 %58, i8* %60)
  br label %87

62:                                               ; preds = %40
  %63 = load i8*, i8** %14, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i64, i64* %15, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %86

68:                                               ; preds = %65, %62
  %69 = load i64, i64* %15, align 8
  %70 = load i64*, i64** %18, align 8
  store i64 %69, i64* %70, align 8
  %71 = load i8*, i8** %14, align 8
  %72 = load i8**, i8*** %16, align 8
  store i8* %71, i8** %72, align 8
  %73 = load i8*, i8** %14, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load i8*, i8** %14, align 8
  %77 = call i32 @strlen(i8* %76)
  br label %79

78:                                               ; preds = %68
  br label %79

79:                                               ; preds = %78, %75
  %80 = phi i32 [ %77, %75 ], [ 0, %78 ]
  %81 = load i32*, i32** %17, align 8
  store i32 %80, i32* %81, align 4
  %82 = load i32*, i32** %17, align 8
  %83 = load i32, i32* %82, align 4
  %84 = load i8*, i8** %14, align 8
  %85 = call i32 (i8*, i32, i8*, ...) @dout(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %83, i8* %84)
  br label %86

86:                                               ; preds = %79, %65
  br label %87

87:                                               ; preds = %86, %43
  br label %88

88:                                               ; preds = %87, %24
  %89 = load i32, i32* %21, align 4
  ret i32 %89
}

declare dso_local i32 @build_inode_path(%struct.inode*, i8**, i32*, i64*, i32*) #1

declare dso_local i32 @dout(i8*, i32, i8*, ...) #1

declare dso_local i32 @ceph_ino(%struct.inode*) #1

declare dso_local i32 @ceph_snap(%struct.inode*) #1

declare dso_local i32 @build_dentry_path(%struct.dentry*, %struct.inode*, i8**, i32*, i64*, i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
