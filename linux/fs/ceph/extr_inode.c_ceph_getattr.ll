; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_inode.c_ceph_getattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_inode.c_ceph_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32 }
%struct.kstat = type { i32, i32, i32, i32, i64, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.inode = type { %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ceph_inode_info = type { i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }

@STATX_BASIC_STATS = common dso_local global i32 0, align 4
@AT_STATX_DONT_SYNC = common dso_local global i32 0, align 4
@AT_STATX_FORCE_SYNC = common dso_local global i32 0, align 4
@STATX_BTIME = common dso_local global i32 0, align 4
@CEPH_NOSNAP = common dso_local global i64 0, align 8
@RBYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_getattr(%struct.path* %0, %struct.kstat* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.path*, align 8
  %7 = alloca %struct.kstat*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.ceph_inode_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.path* %0, %struct.path** %6, align 8
  store %struct.kstat* %1, %struct.kstat** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.path*, %struct.path** %6, align 8
  %15 = getelementptr inbounds %struct.path, %struct.path* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.inode* @d_inode(i32 %16)
  store %struct.inode* %17, %struct.inode** %10, align 8
  %18 = load %struct.inode*, %struct.inode** %10, align 8
  %19 = call %struct.ceph_inode_info* @ceph_inode(%struct.inode* %18)
  store %struct.ceph_inode_info* %19, %struct.ceph_inode_info** %11, align 8
  %20 = load i32, i32* @STATX_BASIC_STATS, align 4
  store i32 %20, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @AT_STATX_DONT_SYNC, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %4
  %26 = load %struct.inode*, %struct.inode** %10, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @statx_to_caps(i32 %27)
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @AT_STATX_FORCE_SYNC, align 4
  %31 = and i32 %29, %30
  %32 = call i32 @ceph_do_getattr(%struct.inode* %26, i32 %28, i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load i32, i32* %13, align 4
  store i32 %36, i32* %5, align 4
  br label %155

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %37, %4
  %39 = load %struct.inode*, %struct.inode** %10, align 8
  %40 = load %struct.kstat*, %struct.kstat** %7, align 8
  %41 = call i32 @generic_fillattr(%struct.inode* %39, %struct.kstat* %40)
  %42 = load %struct.inode*, %struct.inode** %10, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = load %struct.inode*, %struct.inode** %10, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ceph_translate_ino(%struct.TYPE_7__* %44, i32 %47)
  %49 = load %struct.kstat*, %struct.kstat** %7, align 8
  %50 = getelementptr inbounds %struct.kstat, %struct.kstat* %49, i32 0, i32 7
  store i32 %48, i32* %50, align 8
  %51 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %11, align 8
  %52 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %38
  %57 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %11, align 8
  %58 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %56, %38
  %63 = load %struct.kstat*, %struct.kstat** %7, align 8
  %64 = getelementptr inbounds %struct.kstat, %struct.kstat* %63, i32 0, i32 6
  %65 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %11, align 8
  %66 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %65, i32 0, i32 4
  %67 = bitcast %struct.TYPE_5__* %64 to i8*
  %68 = bitcast %struct.TYPE_5__* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %67, i8* align 8 %68, i64 16, i1 false)
  %69 = load i32, i32* @STATX_BTIME, align 4
  %70 = load i32, i32* %12, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %12, align 4
  br label %72

72:                                               ; preds = %62, %56
  %73 = load %struct.inode*, %struct.inode** %10, align 8
  %74 = call i64 @ceph_snap(%struct.inode* %73)
  %75 = load i64, i64* @CEPH_NOSNAP, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %72
  %78 = load %struct.inode*, %struct.inode** %10, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 0
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.kstat*, %struct.kstat** %7, align 8
  %84 = getelementptr inbounds %struct.kstat, %struct.kstat* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 8
  br label %101

85:                                               ; preds = %72
  %86 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %11, align 8
  %87 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %86, i32 0, i32 3
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = icmp ne %struct.TYPE_6__* %88, null
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %11, align 8
  %92 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %91, i32 0, i32 3
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  br label %97

96:                                               ; preds = %85
  br label %97

97:                                               ; preds = %96, %90
  %98 = phi i32 [ %95, %90 ], [ 0, %96 ]
  %99 = load %struct.kstat*, %struct.kstat** %7, align 8
  %100 = getelementptr inbounds %struct.kstat, %struct.kstat* %99, i32 0, i32 5
  store i32 %98, i32* %100, align 8
  br label %101

101:                                              ; preds = %97, %77
  %102 = load %struct.inode*, %struct.inode** %10, align 8
  %103 = getelementptr inbounds %struct.inode, %struct.inode* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @S_ISDIR(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %148

107:                                              ; preds = %101
  %108 = load %struct.inode*, %struct.inode** %10, align 8
  %109 = getelementptr inbounds %struct.inode, %struct.inode* %108, i32 0, i32 0
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = call i32 @ceph_sb_to_client(%struct.TYPE_7__* %110)
  %112 = load i32, i32* @RBYTES, align 4
  %113 = call i64 @ceph_test_mount_opt(i32 %111, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %107
  %116 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %11, align 8
  %117 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.kstat*, %struct.kstat** %7, align 8
  %120 = getelementptr inbounds %struct.kstat, %struct.kstat* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  br label %131

121:                                              ; preds = %107
  %122 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %11, align 8
  %123 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %11, align 8
  %126 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %124, %127
  %129 = load %struct.kstat*, %struct.kstat** %7, align 8
  %130 = getelementptr inbounds %struct.kstat, %struct.kstat* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  br label %131

131:                                              ; preds = %121, %115
  %132 = load %struct.kstat*, %struct.kstat** %7, align 8
  %133 = getelementptr inbounds %struct.kstat, %struct.kstat* %132, i32 0, i32 4
  store i64 0, i64* %133, align 8
  %134 = load %struct.kstat*, %struct.kstat** %7, align 8
  %135 = getelementptr inbounds %struct.kstat, %struct.kstat* %134, i32 0, i32 1
  store i32 65536, i32* %135, align 4
  %136 = load %struct.kstat*, %struct.kstat** %7, align 8
  %137 = getelementptr inbounds %struct.kstat, %struct.kstat* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = icmp eq i32 %138, 1
  br i1 %139, label %140, label %147

140:                                              ; preds = %131
  %141 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %11, align 8
  %142 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 2, %143
  %145 = load %struct.kstat*, %struct.kstat** %7, align 8
  %146 = getelementptr inbounds %struct.kstat, %struct.kstat* %145, i32 0, i32 2
  store i32 %144, i32* %146, align 8
  br label %147

147:                                              ; preds = %140, %131
  br label %148

148:                                              ; preds = %147, %101
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* %12, align 4
  %151 = and i32 %149, %150
  %152 = load %struct.kstat*, %struct.kstat** %7, align 8
  %153 = getelementptr inbounds %struct.kstat, %struct.kstat* %152, i32 0, i32 3
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* %13, align 4
  store i32 %154, i32* %5, align 4
  br label %155

155:                                              ; preds = %148, %35
  %156 = load i32, i32* %5, align 4
  ret i32 %156
}

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local %struct.ceph_inode_info* @ceph_inode(%struct.inode*) #1

declare dso_local i32 @ceph_do_getattr(%struct.inode*, i32, i32) #1

declare dso_local i32 @statx_to_caps(i32) #1

declare dso_local i32 @generic_fillattr(%struct.inode*, %struct.kstat*) #1

declare dso_local i32 @ceph_translate_ino(%struct.TYPE_7__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ceph_snap(%struct.inode*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @ceph_test_mount_opt(i32, i32) #1

declare dso_local i32 @ceph_sb_to_client(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
