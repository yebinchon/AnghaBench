; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_will_overwrite_ref.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_will_overwrite_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_ctx = type { i64, i64 }

@BTRFS_FIRST_FREE_OBJECTID = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.send_ctx*, i64, i64, i8*, i32, i64*, i64*, i64*)* @will_overwrite_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @will_overwrite_ref(%struct.send_ctx* %0, i64 %1, i64 %2, i8* %3, i32 %4, i64* %5, i64* %6, i64* %7) #0 {
  %9 = alloca %struct.send_ctx*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.send_ctx* %0, %struct.send_ctx** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i64* %5, i64** %14, align 8
  store i64* %6, i64** %15, align 8
  store i64* %7, i64** %16, align 8
  store i32 0, i32* %17, align 4
  store i64 0, i64* %19, align 8
  store i32 0, i32* %20, align 4
  %21 = load %struct.send_ctx*, %struct.send_ctx** %9, align 8
  %22 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %8
  br label %114

26:                                               ; preds = %8
  %27 = load %struct.send_ctx*, %struct.send_ctx** %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %11, align 8
  %30 = call i32 @is_inode_existent(%struct.send_ctx* %27, i64 %28, i64 %29)
  store i32 %30, i32* %17, align 4
  %31 = load i32, i32* %17, align 4
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %114

34:                                               ; preds = %26
  %35 = load %struct.send_ctx*, %struct.send_ctx** %9, align 8
  %36 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %67

39:                                               ; preds = %34
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* @BTRFS_FIRST_FREE_OBJECTID, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %67

43:                                               ; preds = %39
  %44 = load %struct.send_ctx*, %struct.send_ctx** %9, align 8
  %45 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @get_inode_info(i64 %46, i64 %47, i32* null, i64* %18, i64* null, i32* null, i32* null, i32* null)
  store i32 %48, i32* %17, align 4
  %49 = load i32, i32* %17, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %43
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* @ENOENT, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp ne i32 %52, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %114

57:                                               ; preds = %51, %43
  %58 = load i32, i32* %17, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 0, i32* %17, align 4
  br label %114

61:                                               ; preds = %57
  %62 = load i64, i64* %18, align 8
  %63 = load i64, i64* %11, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %114

66:                                               ; preds = %61
  br label %67

67:                                               ; preds = %66, %39, %34
  %68 = load %struct.send_ctx*, %struct.send_ctx** %9, align 8
  %69 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %10, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @lookup_dir_item_inode(i64 %70, i64 %71, i8* %72, i32 %73, i64* %19, i32* %20)
  store i32 %74, i32* %17, align 4
  %75 = load i32, i32* %17, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %67
  %78 = load i32, i32* %17, align 4
  %79 = load i32, i32* @ENOENT, align 4
  %80 = sub nsw i32 0, %79
  %81 = icmp ne i32 %78, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %114

83:                                               ; preds = %77, %67
  %84 = load i32, i32* %17, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i32 0, i32* %17, align 4
  br label %114

87:                                               ; preds = %83
  %88 = load i64, i64* %19, align 8
  %89 = load %struct.send_ctx*, %struct.send_ctx** %9, align 8
  %90 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp sgt i64 %88, %91
  br i1 %92, label %98, label %93

93:                                               ; preds = %87
  %94 = load %struct.send_ctx*, %struct.send_ctx** %9, align 8
  %95 = load i64, i64* %19, align 8
  %96 = call i64 @is_waiting_for_move(%struct.send_ctx* %94, i64 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %112

98:                                               ; preds = %93, %87
  %99 = load %struct.send_ctx*, %struct.send_ctx** %9, align 8
  %100 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %19, align 8
  %103 = load i64*, i64** %15, align 8
  %104 = load i64*, i64** %16, align 8
  %105 = call i32 @get_inode_info(i64 %101, i64 %102, i32* null, i64* %103, i64* %104, i32* null, i32* null, i32* null)
  store i32 %105, i32* %17, align 4
  %106 = load i32, i32* %17, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %98
  br label %114

109:                                              ; preds = %98
  store i32 1, i32* %17, align 4
  %110 = load i64, i64* %19, align 8
  %111 = load i64*, i64** %14, align 8
  store i64 %110, i64* %111, align 8
  br label %113

112:                                              ; preds = %93
  store i32 0, i32* %17, align 4
  br label %113

113:                                              ; preds = %112, %109
  br label %114

114:                                              ; preds = %113, %108, %86, %82, %65, %60, %56, %33, %25
  %115 = load i32, i32* %17, align 4
  ret i32 %115
}

declare dso_local i32 @is_inode_existent(%struct.send_ctx*, i64, i64) #1

declare dso_local i32 @get_inode_info(i64, i64, i32*, i64*, i64*, i32*, i32*, i32*) #1

declare dso_local i32 @lookup_dir_item_inode(i64, i64, i8*, i32, i64*, i32*) #1

declare dso_local i64 @is_waiting_for_move(%struct.send_ctx*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
