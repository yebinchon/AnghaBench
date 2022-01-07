; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_did_overwrite_ref.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_did_overwrite_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_ctx = type { i64, i64, i64, i32, i32 }

@BTRFS_FIRST_FREE_OBJECTID = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.send_ctx*, i64, i64, i64, i64, i8*, i32)* @did_overwrite_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @did_overwrite_ref(%struct.send_ctx* %0, i64 %1, i64 %2, i64 %3, i64 %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.send_ctx*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.send_ctx* %0, %struct.send_ctx** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %19 = load %struct.send_ctx*, %struct.send_ctx** %8, align 8
  %20 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %7
  br label %125

24:                                               ; preds = %7
  %25 = load %struct.send_ctx*, %struct.send_ctx** %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* %10, align 8
  %28 = call i32 @is_inode_existent(%struct.send_ctx* %25, i64 %26, i64 %27)
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %15, align 4
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %125

32:                                               ; preds = %24
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @BTRFS_FIRST_FREE_OBJECTID, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %60

36:                                               ; preds = %32
  %37 = load %struct.send_ctx*, %struct.send_ctx** %8, align 8
  %38 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @get_inode_info(i32 %39, i64 %40, i32* null, i64* %16, i32* null, i32* null, i32* null, i32* null)
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* @ENOENT, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %125

50:                                               ; preds = %44, %36
  %51 = load i32, i32* %15, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 0, i32* %15, align 4
  br label %125

54:                                               ; preds = %50
  %55 = load i64, i64* %16, align 8
  %56 = load i64, i64* %10, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %125

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %59, %32
  %61 = load %struct.send_ctx*, %struct.send_ctx** %8, align 8
  %62 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load i8*, i8** %13, align 8
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @lookup_dir_item_inode(i32 %63, i64 %64, i8* %65, i32 %66, i64* %17, i32* %18)
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %15, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %60
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* @ENOENT, align 4
  %73 = sub nsw i32 0, %72
  %74 = icmp ne i32 %71, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %125

76:                                               ; preds = %70, %60
  %77 = load i32, i32* %15, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i32 0, i32* %15, align 4
  br label %125

80:                                               ; preds = %76
  %81 = load %struct.send_ctx*, %struct.send_ctx** %8, align 8
  %82 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load i64, i64* %17, align 8
  %85 = call i32 @get_inode_info(i32 %83, i64 %84, i32* null, i64* %16, i32* null, i32* null, i32* null, i32* null)
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %15, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %125

89:                                               ; preds = %80
  %90 = load i64, i64* %17, align 8
  %91 = load i64, i64* %11, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load i64, i64* %16, align 8
  %95 = load i64, i64* %12, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  store i32 0, i32* %15, align 4
  br label %125

98:                                               ; preds = %93, %89
  %99 = load i64, i64* %17, align 8
  %100 = load %struct.send_ctx*, %struct.send_ctx** %8, align 8
  %101 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp slt i64 %99, %102
  br i1 %103, label %122, label %104

104:                                              ; preds = %98
  %105 = load i64, i64* %11, align 8
  %106 = load %struct.send_ctx*, %struct.send_ctx** %8, align 8
  %107 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %105, %108
  br i1 %109, label %110, label %123

110:                                              ; preds = %104
  %111 = load i64, i64* %17, align 8
  %112 = load %struct.send_ctx*, %struct.send_ctx** %8, align 8
  %113 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %111, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %110
  %117 = load i64, i64* %16, align 8
  %118 = load %struct.send_ctx*, %struct.send_ctx** %8, align 8
  %119 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %117, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %116, %98
  store i32 1, i32* %15, align 4
  br label %124

123:                                              ; preds = %116, %110, %104
  store i32 0, i32* %15, align 4
  br label %124

124:                                              ; preds = %123, %122
  br label %125

125:                                              ; preds = %124, %97, %88, %79, %75, %58, %53, %49, %31, %23
  %126 = load i32, i32* %15, align 4
  ret i32 %126
}

declare dso_local i32 @is_inode_existent(%struct.send_ctx*, i64, i64) #1

declare dso_local i32 @get_inode_info(i32, i64, i32*, i64*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @lookup_dir_item_inode(i32, i64, i8*, i32, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
