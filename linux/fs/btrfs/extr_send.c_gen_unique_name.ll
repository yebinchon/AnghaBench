; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_gen_unique_name.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_gen_unique_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_ctx = type { i32, i32 }
%struct.fs_path = type { i32 }
%struct.btrfs_path = type { i32 }
%struct.btrfs_dir_item = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"o%llu-%llu-%llu\00", align 1
@BTRFS_FIRST_FREE_OBJECTID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.send_ctx*, i64, i64, %struct.fs_path*)* @gen_unique_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen_unique_name(%struct.send_ctx* %0, i64 %1, i64 %2, %struct.fs_path* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.send_ctx*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.fs_path*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.btrfs_path*, align 8
  %12 = alloca %struct.btrfs_dir_item*, align 8
  %13 = alloca [64 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.send_ctx* %0, %struct.send_ctx** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.fs_path* %3, %struct.fs_path** %9, align 8
  store i32 0, i32* %10, align 4
  store i64 0, i64* %15, align 8
  %16 = call %struct.btrfs_path* (...) @alloc_path_for_send()
  store %struct.btrfs_path* %16, %struct.btrfs_path** %11, align 8
  %17 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %18 = icmp ne %struct.btrfs_path* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %98

22:                                               ; preds = %4
  br label %23

23:                                               ; preds = %22, %54, %84
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %15, align 8
  %28 = call i32 @snprintf(i8* %24, i32 64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %25, i64 %26, i64 %27)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp ult i64 %30, 64
  %32 = zext i1 %31 to i32
  %33 = call i32 @ASSERT(i32 %32)
  %34 = load %struct.send_ctx*, %struct.send_ctx** %6, align 8
  %35 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %38 = load i32, i32* @BTRFS_FIRST_FREE_OBJECTID, align 4
  %39 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %40 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %41 = call i32 @strlen(i8* %40)
  %42 = call %struct.btrfs_dir_item* @btrfs_lookup_dir_item(i32* null, i32 %36, %struct.btrfs_path* %37, i32 %38, i8* %39, i32 %41, i32 0)
  store %struct.btrfs_dir_item* %42, %struct.btrfs_dir_item** %12, align 8
  %43 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %44 = call i32 @btrfs_release_path(%struct.btrfs_path* %43)
  %45 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %12, align 8
  %46 = call i64 @IS_ERR(%struct.btrfs_dir_item* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %23
  %49 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %12, align 8
  %50 = call i32 @PTR_ERR(%struct.btrfs_dir_item* %49)
  store i32 %50, i32* %10, align 4
  br label %94

51:                                               ; preds = %23
  %52 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %12, align 8
  %53 = icmp ne %struct.btrfs_dir_item* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i64, i64* %15, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %15, align 8
  br label %23

57:                                               ; preds = %51
  %58 = load %struct.send_ctx*, %struct.send_ctx** %6, align 8
  %59 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  store i32 0, i32* %10, align 4
  br label %88

63:                                               ; preds = %57
  %64 = load %struct.send_ctx*, %struct.send_ctx** %6, align 8
  %65 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %68 = load i32, i32* @BTRFS_FIRST_FREE_OBJECTID, align 4
  %69 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %70 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %71 = call i32 @strlen(i8* %70)
  %72 = call %struct.btrfs_dir_item* @btrfs_lookup_dir_item(i32* null, i32 %66, %struct.btrfs_path* %67, i32 %68, i8* %69, i32 %71, i32 0)
  store %struct.btrfs_dir_item* %72, %struct.btrfs_dir_item** %12, align 8
  %73 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %74 = call i32 @btrfs_release_path(%struct.btrfs_path* %73)
  %75 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %12, align 8
  %76 = call i64 @IS_ERR(%struct.btrfs_dir_item* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %63
  %79 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %12, align 8
  %80 = call i32 @PTR_ERR(%struct.btrfs_dir_item* %79)
  store i32 %80, i32* %10, align 4
  br label %94

81:                                               ; preds = %63
  %82 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %12, align 8
  %83 = icmp ne %struct.btrfs_dir_item* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i64, i64* %15, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %15, align 8
  br label %23

87:                                               ; preds = %81
  br label %88

88:                                               ; preds = %87, %62
  %89 = load %struct.fs_path*, %struct.fs_path** %9, align 8
  %90 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %91 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %92 = call i32 @strlen(i8* %91)
  %93 = call i32 @fs_path_add(%struct.fs_path* %89, i8* %90, i32 %92)
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %88, %78, %48
  %95 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %96 = call i32 @btrfs_free_path(%struct.btrfs_path* %95)
  %97 = load i32, i32* %10, align 4
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %94, %19
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local %struct.btrfs_path* @alloc_path_for_send(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64, i64, i64) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.btrfs_dir_item* @btrfs_lookup_dir_item(i32*, i32, %struct.btrfs_path*, i32, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_dir_item*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_dir_item*) #1

declare dso_local i32 @fs_path_add(%struct.fs_path*, i8*, i32) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
