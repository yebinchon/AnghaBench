; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_dir_edit.c_afs_dir_scan_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_dir_edit.c_afs_dir_scan_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.afs_xdr_dir_block = type { %union.afs_xdr_dirent* }
%union.afs_xdr_dirent = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.qstr = type { i32, i32 }
%struct.TYPE_3__ = type { i64* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AFS_DIR_RESV_BLOCKS0 = common dso_local global i32 0, align 4
@AFS_DIR_RESV_BLOCKS = common dso_local global i32 0, align 4
@AFS_DIR_SLOTS_PER_BLOCK = common dso_local global i32 0, align 4
@AFS_DIR_DIRENT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.afs_xdr_dir_block*, %struct.qstr*, i32)* @afs_dir_scan_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_dir_scan_block(%union.afs_xdr_dir_block* %0, %struct.qstr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.afs_xdr_dir_block*, align 8
  %6 = alloca %struct.qstr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.afs_xdr_dirent*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %union.afs_xdr_dir_block* %0, %union.afs_xdr_dir_block** %5, align 8
  store %struct.qstr* %1, %struct.qstr** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %14 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %5, align 8
  %15 = bitcast %union.afs_xdr_dir_block* %14 to %struct.TYPE_3__*
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = shl i32 %20, 0
  store i32 %21, i32* %9, align 4
  %22 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %5, align 8
  %23 = bitcast %union.afs_xdr_dir_block* %22 to %struct.TYPE_3__*
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 1
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = shl i32 %28, 8
  %30 = load i32, i32* %9, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %9, align 4
  %32 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %5, align 8
  %33 = bitcast %union.afs_xdr_dir_block* %32 to %struct.TYPE_3__*
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 2
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = shl i32 %38, 16
  %40 = load i32, i32* %9, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %9, align 4
  %42 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %5, align 8
  %43 = bitcast %union.afs_xdr_dir_block* %42 to %struct.TYPE_3__*
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 3
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = shl i32 %48, 24
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %9, align 4
  %52 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %5, align 8
  %53 = bitcast %union.afs_xdr_dir_block* %52 to %struct.TYPE_3__*
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 4
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = shl i32 %58, 32
  %60 = load i32, i32* %9, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %9, align 4
  %62 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %5, align 8
  %63 = bitcast %union.afs_xdr_dir_block* %62 to %struct.TYPE_3__*
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 5
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = shl i32 %68, 40
  %70 = load i32, i32* %9, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %9, align 4
  %72 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %5, align 8
  %73 = bitcast %union.afs_xdr_dir_block* %72 to %struct.TYPE_3__*
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 6
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = shl i32 %78, 48
  %80 = load i32, i32* %9, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %9, align 4
  %82 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %5, align 8
  %83 = bitcast %union.afs_xdr_dir_block* %82 to %struct.TYPE_3__*
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i64*, i64** %84, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 7
  %87 = load i64, i64* %86, align 8
  %88 = trunc i64 %87 to i32
  %89 = shl i32 %88, 56
  %90 = load i32, i32* %9, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %3
  %95 = load i32, i32* @AFS_DIR_RESV_BLOCKS0, align 4
  br label %98

96:                                               ; preds = %3
  %97 = load i32, i32* @AFS_DIR_RESV_BLOCKS, align 4
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi i32 [ %95, %94 ], [ %97, %96 ]
  store i32 %99, i32* %10, align 4
  br label %100

100:                                              ; preds = %164, %98
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @AFS_DIR_SLOTS_PER_BLOCK, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %167

104:                                              ; preds = %100
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %10, align 4
  %107 = ashr i32 %105, %106
  %108 = and i32 %107, 1
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %104
  br label %164

111:                                              ; preds = %104
  %112 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %5, align 8
  %113 = bitcast %union.afs_xdr_dir_block* %112 to %union.afs_xdr_dirent**
  %114 = load %union.afs_xdr_dirent*, %union.afs_xdr_dirent** %113, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %union.afs_xdr_dirent, %union.afs_xdr_dirent* %114, i64 %116
  store %union.afs_xdr_dirent* %117, %union.afs_xdr_dirent** %8, align 8
  %118 = load %union.afs_xdr_dirent*, %union.afs_xdr_dirent** %8, align 8
  %119 = bitcast %union.afs_xdr_dirent* %118 to %struct.TYPE_4__*
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 1
  br i1 %122, label %123, label %124

123:                                              ; preds = %111
  br label %164

124:                                              ; preds = %111
  %125 = load %union.afs_xdr_dirent*, %union.afs_xdr_dirent** %8, align 8
  %126 = bitcast %union.afs_xdr_dirent* %125 to %struct.TYPE_4__*
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @strlen(i32 %128)
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* %11, align 4
  %131 = load %struct.qstr*, %struct.qstr** %6, align 8
  %132 = getelementptr inbounds %struct.qstr, %struct.qstr* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %130, %133
  br i1 %134, label %135, label %150

135:                                              ; preds = %124
  %136 = load %union.afs_xdr_dirent*, %union.afs_xdr_dirent** %8, align 8
  %137 = bitcast %union.afs_xdr_dirent* %136 to %struct.TYPE_4__*
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.qstr*, %struct.qstr** %6, align 8
  %141 = getelementptr inbounds %struct.qstr, %struct.qstr* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.qstr*, %struct.qstr** %6, align 8
  %144 = getelementptr inbounds %struct.qstr, %struct.qstr* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i64 @memcmp(i32 %139, i32 %142, i32 %145)
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %135
  %149 = load i32, i32* %10, align 4
  store i32 %149, i32* %4, align 4
  br label %168

150:                                              ; preds = %135, %124
  %151 = load i32, i32* %11, align 4
  %152 = add nsw i32 12, %151
  %153 = add nsw i32 %152, 1
  %154 = add nsw i32 %153, 4
  %155 = load i32, i32* @AFS_DIR_DIRENT_SIZE, align 4
  %156 = call i32 @round_up(i32 %154, i32 %155)
  store i32 %156, i32* %12, align 4
  %157 = load i32, i32* @AFS_DIR_DIRENT_SIZE, align 4
  %158 = load i32, i32* %12, align 4
  %159 = sdiv i32 %158, %157
  store i32 %159, i32* %12, align 4
  %160 = load i32, i32* %12, align 4
  %161 = sub nsw i32 %160, 1
  %162 = load i32, i32* %10, align 4
  %163 = add nsw i32 %162, %161
  store i32 %163, i32* %10, align 4
  br label %164

164:                                              ; preds = %150, %123, %110
  %165 = load i32, i32* %10, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %10, align 4
  br label %100

167:                                              ; preds = %100
  store i32 -1, i32* %4, align 4
  br label %168

168:                                              ; preds = %167, %148
  %169 = load i32, i32* %4, align 4
  ret i32 %169
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @round_up(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
