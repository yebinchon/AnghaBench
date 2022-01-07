; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_snap.c___ceph_finish_cap_snap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_snap.c___ceph_finish_cap_snap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_inode_info = type { i32, i32, i32, i32, i32, i32, %struct.inode }
%struct.inode = type { i32, i32, i32, i32, i32 }
%struct.ceph_cap_snap = type { i32, i32, %struct.TYPE_3__*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ceph_mds_client = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.ceph_mds_client* }

@.str = private unnamed_addr constant [81 x i8] c"finish_cap_snap %p cap_snap %p snapc %p %llu %s s=%llu still has %d dirty pages\0A\00", align 1
@CEPH_I_FLUSH_SNAPS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"finish_cap_snap %p cap_snap %p snapc %p %llu %s s=%llu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ceph_finish_cap_snap(%struct.ceph_inode_info* %0, %struct.ceph_cap_snap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ceph_inode_info*, align 8
  %5 = alloca %struct.ceph_cap_snap*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ceph_mds_client*, align 8
  store %struct.ceph_inode_info* %0, %struct.ceph_inode_info** %4, align 8
  store %struct.ceph_cap_snap* %1, %struct.ceph_cap_snap** %5, align 8
  %8 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %9 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %8, i32 0, i32 6
  store %struct.inode* %9, %struct.inode** %6, align 8
  %10 = load %struct.inode*, %struct.inode** %6, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.TYPE_4__* @ceph_sb_to_client(i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %14, align 8
  store %struct.ceph_mds_client* %15, %struct.ceph_mds_client** %7, align 8
  %16 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %5, align 8
  %17 = getelementptr inbounds %struct.ceph_cap_snap, %struct.ceph_cap_snap* %16, i32 0, i32 12
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %5, align 8
  %24 = getelementptr inbounds %struct.ceph_cap_snap, %struct.ceph_cap_snap* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.inode*, %struct.inode** %6, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %5, align 8
  %29 = getelementptr inbounds %struct.ceph_cap_snap, %struct.ceph_cap_snap* %28, i32 0, i32 11
  store i32 %27, i32* %29, align 4
  %30 = load %struct.inode*, %struct.inode** %6, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %5, align 8
  %34 = getelementptr inbounds %struct.ceph_cap_snap, %struct.ceph_cap_snap* %33, i32 0, i32 10
  store i32 %32, i32* %34, align 8
  %35 = load %struct.inode*, %struct.inode** %6, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %5, align 8
  %39 = getelementptr inbounds %struct.ceph_cap_snap, %struct.ceph_cap_snap* %38, i32 0, i32 9
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %41 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %5, align 8
  %44 = getelementptr inbounds %struct.ceph_cap_snap, %struct.ceph_cap_snap* %43, i32 0, i32 8
  store i32 %42, i32* %44, align 8
  %45 = load %struct.inode*, %struct.inode** %6, align 8
  %46 = call i32 @inode_peek_iversion_raw(%struct.inode* %45)
  %47 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %5, align 8
  %48 = getelementptr inbounds %struct.ceph_cap_snap, %struct.ceph_cap_snap* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 4
  %49 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %50 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %5, align 8
  %53 = getelementptr inbounds %struct.ceph_cap_snap, %struct.ceph_cap_snap* %52, i32 0, i32 6
  store i32 %51, i32* %53, align 8
  %54 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %55 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %5, align 8
  %58 = getelementptr inbounds %struct.ceph_cap_snap, %struct.ceph_cap_snap* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 4
  %59 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %60 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %5, align 8
  %63 = getelementptr inbounds %struct.ceph_cap_snap, %struct.ceph_cap_snap* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  %64 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %5, align 8
  %65 = getelementptr inbounds %struct.ceph_cap_snap, %struct.ceph_cap_snap* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %90

68:                                               ; preds = %2
  %69 = load %struct.inode*, %struct.inode** %6, align 8
  %70 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %5, align 8
  %71 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %5, align 8
  %72 = getelementptr inbounds %struct.ceph_cap_snap, %struct.ceph_cap_snap* %71, i32 0, i32 2
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %5, align 8
  %75 = getelementptr inbounds %struct.ceph_cap_snap, %struct.ceph_cap_snap* %74, i32 0, i32 2
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %5, align 8
  %80 = getelementptr inbounds %struct.ceph_cap_snap, %struct.ceph_cap_snap* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ceph_cap_string(i32 %81)
  %83 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %5, align 8
  %84 = getelementptr inbounds %struct.ceph_cap_snap, %struct.ceph_cap_snap* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %5, align 8
  %87 = getelementptr inbounds %struct.ceph_cap_snap, %struct.ceph_cap_snap* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = call i32 (i8*, %struct.inode*, %struct.ceph_cap_snap*, %struct.TYPE_3__*, i32, i32, i32, ...) @dout(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), %struct.inode* %69, %struct.ceph_cap_snap* %70, %struct.TYPE_3__* %73, i32 %78, i32 %82, i32 %85, i64 %88)
  store i32 0, i32* %3, align 4
  br label %131

90:                                               ; preds = %2
  %91 = load i32, i32* @CEPH_I_FLUSH_SNAPS, align 4
  %92 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %93 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  %96 = load %struct.inode*, %struct.inode** %6, align 8
  %97 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %5, align 8
  %98 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %5, align 8
  %99 = getelementptr inbounds %struct.ceph_cap_snap, %struct.ceph_cap_snap* %98, i32 0, i32 2
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %5, align 8
  %102 = getelementptr inbounds %struct.ceph_cap_snap, %struct.ceph_cap_snap* %101, i32 0, i32 2
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %5, align 8
  %107 = getelementptr inbounds %struct.ceph_cap_snap, %struct.ceph_cap_snap* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @ceph_cap_string(i32 %108)
  %110 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %5, align 8
  %111 = getelementptr inbounds %struct.ceph_cap_snap, %struct.ceph_cap_snap* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 (i8*, %struct.inode*, %struct.ceph_cap_snap*, %struct.TYPE_3__*, i32, i32, i32, ...) @dout(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), %struct.inode* %96, %struct.ceph_cap_snap* %97, %struct.TYPE_3__* %100, i32 %105, i32 %109, i32 %112)
  %114 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %7, align 8
  %115 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %114, i32 0, i32 0
  %116 = call i32 @spin_lock(i32* %115)
  %117 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %118 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %117, i32 0, i32 0
  %119 = call i64 @list_empty(i32* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %90
  %122 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %123 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %122, i32 0, i32 0
  %124 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %7, align 8
  %125 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %124, i32 0, i32 1
  %126 = call i32 @list_add_tail(i32* %123, i32* %125)
  br label %127

127:                                              ; preds = %121, %90
  %128 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %7, align 8
  %129 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %128, i32 0, i32 0
  %130 = call i32 @spin_unlock(i32* %129)
  store i32 1, i32* %3, align 4
  br label %131

131:                                              ; preds = %127, %68
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local %struct.TYPE_4__* @ceph_sb_to_client(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @inode_peek_iversion_raw(%struct.inode*) #1

declare dso_local i32 @dout(i8*, %struct.inode*, %struct.ceph_cap_snap*, %struct.TYPE_3__*, i32, i32, i32, ...) #1

declare dso_local i32 @ceph_cap_string(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
