; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_send_clone.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_send_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_ctx = type { %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.clone_root = type { i32, %struct.TYPE_7__*, i32 }
%struct.fs_path = type { i32 }

@.str = private unnamed_addr constant [85 x i8] c"send_clone offset=%llu, len=%d, clone_root=%llu, clone_inode=%llu, clone_offset=%llu\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_SEND_C_CLONE = common dso_local global i32 0, align 4
@BTRFS_SEND_A_FILE_OFFSET = common dso_local global i32 0, align 4
@BTRFS_SEND_A_CLONE_LEN = common dso_local global i32 0, align 4
@BTRFS_SEND_A_PATH = common dso_local global i32 0, align 4
@BTRFS_SEND_A_CLONE_UUID = common dso_local global i32 0, align 4
@BTRFS_SEND_A_CLONE_CTRANSID = common dso_local global i32 0, align 4
@BTRFS_SEND_A_CLONE_PATH = common dso_local global i32 0, align 4
@BTRFS_SEND_A_CLONE_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.send_ctx*, i32, i32, %struct.clone_root*)* @send_clone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_clone(%struct.send_ctx* %0, i32 %1, i32 %2, %struct.clone_root* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.send_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.clone_root*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.fs_path*, align 8
  %12 = alloca i32, align 4
  store %struct.send_ctx* %0, %struct.send_ctx** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.clone_root* %3, %struct.clone_root** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.send_ctx*, %struct.send_ctx** %6, align 8
  %14 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.clone_root*, %struct.clone_root** %9, align 8
  %21 = getelementptr inbounds %struct.clone_root, %struct.clone_root* %20, i32 0, i32 1
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.clone_root*, %struct.clone_root** %9, align 8
  %27 = getelementptr inbounds %struct.clone_root, %struct.clone_root* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.clone_root*, %struct.clone_root** %9, align 8
  %30 = getelementptr inbounds %struct.clone_root, %struct.clone_root* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @btrfs_debug(i32 %17, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19, i32 %25, i32 %28, i32 %31)
  %33 = call %struct.fs_path* (...) @fs_path_alloc()
  store %struct.fs_path* %33, %struct.fs_path** %11, align 8
  %34 = load %struct.fs_path*, %struct.fs_path** %11, align 8
  %35 = icmp ne %struct.fs_path* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %4
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %168

39:                                               ; preds = %4
  %40 = load %struct.send_ctx*, %struct.send_ctx** %6, align 8
  %41 = load i32, i32* @BTRFS_SEND_C_CLONE, align 4
  %42 = call i32 @begin_cmd(%struct.send_ctx* %40, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %164

46:                                               ; preds = %39
  %47 = load %struct.send_ctx*, %struct.send_ctx** %6, align 8
  %48 = load %struct.send_ctx*, %struct.send_ctx** %6, align 8
  %49 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.send_ctx*, %struct.send_ctx** %6, align 8
  %52 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.fs_path*, %struct.fs_path** %11, align 8
  %55 = call i32 @get_cur_path(%struct.send_ctx* %47, i32 %50, i32 %53, %struct.fs_path* %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %46
  br label %164

59:                                               ; preds = %46
  %60 = load %struct.send_ctx*, %struct.send_ctx** %6, align 8
  %61 = load i32, i32* @BTRFS_SEND_A_FILE_OFFSET, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @TLV_PUT_U64(%struct.send_ctx* %60, i32 %61, i32 %62)
  %64 = load %struct.send_ctx*, %struct.send_ctx** %6, align 8
  %65 = load i32, i32* @BTRFS_SEND_A_CLONE_LEN, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @TLV_PUT_U64(%struct.send_ctx* %64, i32 %65, i32 %66)
  %68 = load %struct.send_ctx*, %struct.send_ctx** %6, align 8
  %69 = load i32, i32* @BTRFS_SEND_A_PATH, align 4
  %70 = load %struct.fs_path*, %struct.fs_path** %11, align 8
  %71 = call i32 @TLV_PUT_PATH(%struct.send_ctx* %68, i32 %69, %struct.fs_path* %70)
  %72 = load %struct.clone_root*, %struct.clone_root** %9, align 8
  %73 = getelementptr inbounds %struct.clone_root, %struct.clone_root* %72, i32 0, i32 1
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = load %struct.send_ctx*, %struct.send_ctx** %6, align 8
  %76 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %75, i32 0, i32 0
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = icmp eq %struct.TYPE_7__* %74, %77
  br i1 %78, label %79, label %98

79:                                               ; preds = %59
  %80 = load %struct.send_ctx*, %struct.send_ctx** %6, align 8
  %81 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %80, i32 0, i32 0
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = load %struct.clone_root*, %struct.clone_root** %9, align 8
  %84 = getelementptr inbounds %struct.clone_root, %struct.clone_root* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @get_inode_info(%struct.TYPE_7__* %82, i32 %85, i32* null, i32* %12, i32* null, i32* null, i32* null, i32* null)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %79
  br label %164

90:                                               ; preds = %79
  %91 = load %struct.send_ctx*, %struct.send_ctx** %6, align 8
  %92 = load %struct.clone_root*, %struct.clone_root** %9, align 8
  %93 = getelementptr inbounds %struct.clone_root, %struct.clone_root* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %12, align 4
  %96 = load %struct.fs_path*, %struct.fs_path** %11, align 8
  %97 = call i32 @get_cur_path(%struct.send_ctx* %91, i32 %94, i32 %95, %struct.fs_path* %96)
  store i32 %97, i32* %10, align 4
  br label %107

98:                                               ; preds = %59
  %99 = load %struct.clone_root*, %struct.clone_root** %9, align 8
  %100 = getelementptr inbounds %struct.clone_root, %struct.clone_root* %99, i32 0, i32 1
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = load %struct.clone_root*, %struct.clone_root** %9, align 8
  %103 = getelementptr inbounds %struct.clone_root, %struct.clone_root* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.fs_path*, %struct.fs_path** %11, align 8
  %106 = call i32 @get_inode_path(%struct.TYPE_7__* %101, i32 %104, %struct.fs_path* %105)
  store i32 %106, i32* %10, align 4
  br label %107

107:                                              ; preds = %98, %90
  %108 = load i32, i32* %10, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  br label %164

111:                                              ; preds = %107
  %112 = load %struct.clone_root*, %struct.clone_root** %9, align 8
  %113 = getelementptr inbounds %struct.clone_root, %struct.clone_root* %112, i32 0, i32 1
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @btrfs_is_empty_uuid(i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %130, label %120

120:                                              ; preds = %111
  %121 = load %struct.send_ctx*, %struct.send_ctx** %6, align 8
  %122 = load i32, i32* @BTRFS_SEND_A_CLONE_UUID, align 4
  %123 = load %struct.clone_root*, %struct.clone_root** %9, align 8
  %124 = getelementptr inbounds %struct.clone_root, %struct.clone_root* %123, i32 0, i32 1
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @TLV_PUT_UUID(%struct.send_ctx* %121, i32 %122, i32 %128)
  br label %140

130:                                              ; preds = %111
  %131 = load %struct.send_ctx*, %struct.send_ctx** %6, align 8
  %132 = load i32, i32* @BTRFS_SEND_A_CLONE_UUID, align 4
  %133 = load %struct.clone_root*, %struct.clone_root** %9, align 8
  %134 = getelementptr inbounds %struct.clone_root, %struct.clone_root* %133, i32 0, i32 1
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @TLV_PUT_UUID(%struct.send_ctx* %131, i32 %132, i32 %138)
  br label %140

140:                                              ; preds = %130, %120
  %141 = load %struct.send_ctx*, %struct.send_ctx** %6, align 8
  %142 = load i32, i32* @BTRFS_SEND_A_CLONE_CTRANSID, align 4
  %143 = load %struct.clone_root*, %struct.clone_root** %9, align 8
  %144 = getelementptr inbounds %struct.clone_root, %struct.clone_root* %143, i32 0, i32 1
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @le64_to_cpu(i32 %148)
  %150 = call i32 @TLV_PUT_U64(%struct.send_ctx* %141, i32 %142, i32 %149)
  %151 = load %struct.send_ctx*, %struct.send_ctx** %6, align 8
  %152 = load i32, i32* @BTRFS_SEND_A_CLONE_PATH, align 4
  %153 = load %struct.fs_path*, %struct.fs_path** %11, align 8
  %154 = call i32 @TLV_PUT_PATH(%struct.send_ctx* %151, i32 %152, %struct.fs_path* %153)
  %155 = load %struct.send_ctx*, %struct.send_ctx** %6, align 8
  %156 = load i32, i32* @BTRFS_SEND_A_CLONE_OFFSET, align 4
  %157 = load %struct.clone_root*, %struct.clone_root** %9, align 8
  %158 = getelementptr inbounds %struct.clone_root, %struct.clone_root* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @TLV_PUT_U64(%struct.send_ctx* %155, i32 %156, i32 %159)
  %161 = load %struct.send_ctx*, %struct.send_ctx** %6, align 8
  %162 = call i32 @send_cmd(%struct.send_ctx* %161)
  store i32 %162, i32* %10, align 4
  br label %163

163:                                              ; preds = %140
  br label %164

164:                                              ; preds = %163, %110, %89, %58, %45
  %165 = load %struct.fs_path*, %struct.fs_path** %11, align 8
  %166 = call i32 @fs_path_free(%struct.fs_path* %165)
  %167 = load i32, i32* %10, align 4
  store i32 %167, i32* %5, align 4
  br label %168

168:                                              ; preds = %164, %36
  %169 = load i32, i32* %5, align 4
  ret i32 %169
}

declare dso_local i32 @btrfs_debug(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.fs_path* @fs_path_alloc(...) #1

declare dso_local i32 @begin_cmd(%struct.send_ctx*, i32) #1

declare dso_local i32 @get_cur_path(%struct.send_ctx*, i32, i32, %struct.fs_path*) #1

declare dso_local i32 @TLV_PUT_U64(%struct.send_ctx*, i32, i32) #1

declare dso_local i32 @TLV_PUT_PATH(%struct.send_ctx*, i32, %struct.fs_path*) #1

declare dso_local i32 @get_inode_info(%struct.TYPE_7__*, i32, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @get_inode_path(%struct.TYPE_7__*, i32, %struct.fs_path*) #1

declare dso_local i32 @btrfs_is_empty_uuid(i32) #1

declare dso_local i32 @TLV_PUT_UUID(%struct.send_ctx*, i32, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @send_cmd(%struct.send_ctx*) #1

declare dso_local i32 @fs_path_free(%struct.fs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
