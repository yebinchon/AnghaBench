; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_locks.c_ceph_lock_wait_for_completion.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_locks.c_ceph_lock_wait_for_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_client = type { i32 }
%struct.ceph_mds_request = type { i64, i32, i32, i32, %struct.TYPE_4__, %struct.inode*, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.inode = type { i32 }

@CEPH_MDS_OP_SETFILELOCK = common dso_local global i64 0, align 8
@CEPH_LOCK_FCNTL = common dso_local global i64 0, align 8
@CEPH_LOCK_FCNTL_INTR = common dso_local global i32 0, align 4
@CEPH_LOCK_FLOCK = common dso_local global i64 0, align 8
@CEPH_LOCK_FLOCK_INTR = common dso_local global i32 0, align 4
@CEPH_LOCK_UNLOCK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"ceph_lock_wait_for_completion: request %llu was interrupted\0A\00", align 1
@CEPH_MDS_R_GOT_RESULT = common dso_local global i32 0, align 4
@CEPH_MDS_R_ABORTED = common dso_local global i32 0, align 4
@USE_AUTH_MDS = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_mds_client*, %struct.ceph_mds_request*)* @ceph_lock_wait_for_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_lock_wait_for_completion(%struct.ceph_mds_client* %0, %struct.ceph_mds_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ceph_mds_client*, align 8
  %5 = alloca %struct.ceph_mds_request*, align 8
  %6 = alloca %struct.ceph_mds_request*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ceph_mds_client* %0, %struct.ceph_mds_client** %4, align 8
  store %struct.ceph_mds_request* %1, %struct.ceph_mds_request** %5, align 8
  %10 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %5, align 8
  %11 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %10, i32 0, i32 5
  %12 = load %struct.inode*, %struct.inode** %11, align 8
  store %struct.inode* %12, %struct.inode** %7, align 8
  %13 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %5, align 8
  %14 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CEPH_MDS_OP_SETFILELOCK, align 8
  %17 = icmp ne i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %5, align 8
  %21 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CEPH_LOCK_FCNTL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @CEPH_LOCK_FCNTL_INTR, align 4
  store i32 %28, i32* %9, align 4
  br label %42

29:                                               ; preds = %2
  %30 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %5, align 8
  %31 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CEPH_LOCK_FLOCK, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* @CEPH_LOCK_FLOCK_INTR, align 4
  store i32 %38, i32* %9, align 4
  br label %41

39:                                               ; preds = %29
  %40 = call i32 @BUG_ON(i32 1)
  br label %41

41:                                               ; preds = %39, %37
  br label %42

42:                                               ; preds = %41, %27
  %43 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %5, align 8
  %44 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @CEPH_LOCK_UNLOCK, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @BUG_ON(i32 %50)
  %52 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %5, align 8
  %53 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %52, i32 0, i32 10
  %54 = call i32 @wait_for_completion_interruptible(i32* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %156

58:                                               ; preds = %42
  %59 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %5, align 8
  %60 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %59, i32 0, i32 9
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @dout(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %64 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %63, i32 0, i32 0
  %65 = call i32 @mutex_lock(i32* %64)
  %66 = load i32, i32* @CEPH_MDS_R_GOT_RESULT, align 4
  %67 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %5, align 8
  %68 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %67, i32 0, i32 8
  %69 = call i64 @test_bit(i32 %66, i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %58
  store i32 0, i32* %8, align 4
  br label %92

72:                                               ; preds = %58
  %73 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %5, align 8
  %74 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %73, i32 0, i32 7
  %75 = call i32 @mutex_lock(i32* %74)
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %5, align 8
  %78 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* @CEPH_MDS_R_ABORTED, align 4
  %80 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %5, align 8
  %81 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %80, i32 0, i32 8
  %82 = call i32 @set_bit(i32 %79, i32* %81)
  %83 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %5, align 8
  %84 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %83, i32 0, i32 7
  %85 = call i32 @mutex_unlock(i32* %84)
  %86 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %5, align 8
  %87 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %72
  store i32 0, i32* %8, align 4
  br label %91

91:                                               ; preds = %90, %72
  br label %92

92:                                               ; preds = %91, %71
  %93 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %94 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %93, i32 0, i32 0
  %95 = call i32 @mutex_unlock(i32* %94)
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %92
  store i32 0, i32* %3, align 4
  br label %156

99:                                               ; preds = %92
  %100 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %101 = load i64, i64* @CEPH_MDS_OP_SETFILELOCK, align 8
  %102 = load i32, i32* @USE_AUTH_MDS, align 4
  %103 = call %struct.ceph_mds_request* @ceph_mdsc_create_request(%struct.ceph_mds_client* %100, i64 %101, i32 %102)
  store %struct.ceph_mds_request* %103, %struct.ceph_mds_request** %6, align 8
  %104 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %105 = call i64 @IS_ERR(%struct.ceph_mds_request* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %99
  %108 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %109 = call i32 @PTR_ERR(%struct.ceph_mds_request* %108)
  store i32 %109, i32* %3, align 4
  br label %156

110:                                              ; preds = %99
  %111 = load %struct.inode*, %struct.inode** %7, align 8
  %112 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %113 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %112, i32 0, i32 5
  store %struct.inode* %111, %struct.inode** %113, align 8
  %114 = load %struct.inode*, %struct.inode** %7, align 8
  %115 = call i32 @ihold(%struct.inode* %114)
  %116 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %117 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %116, i32 0, i32 2
  store i32 1, i32* %117, align 4
  %118 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %119 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %5, align 8
  %122 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %121, i32 0, i32 4
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = bitcast %struct.TYPE_3__* %120 to i8*
  %125 = bitcast %struct.TYPE_3__* %123 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %124, i8* align 8 %125, i64 16, i1 false)
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %129 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  store i64 %127, i64* %131, align 8
  %132 = load i64, i64* @CEPH_LOCK_UNLOCK, align 8
  %133 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %134 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 1
  store i64 %132, i64* %136, align 8
  %137 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %138 = load %struct.inode*, %struct.inode** %7, align 8
  %139 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %140 = call i32 @ceph_mdsc_do_request(%struct.ceph_mds_client* %137, %struct.inode* %138, %struct.ceph_mds_request* %139)
  store i32 %140, i32* %8, align 4
  %141 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %142 = call i32 @ceph_mdsc_put_request(%struct.ceph_mds_request* %141)
  %143 = load i32, i32* %8, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %110
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* @ERESTARTSYS, align 4
  %148 = sub nsw i32 0, %147
  %149 = icmp ne i32 %146, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %145
  %151 = load i32, i32* %8, align 4
  store i32 %151, i32* %3, align 4
  br label %156

152:                                              ; preds = %145, %110
  %153 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %5, align 8
  %154 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %153, i32 0, i32 3
  %155 = call i32 @wait_for_completion_killable(i32* %154)
  store i32 0, i32* %3, align 4
  br label %156

156:                                              ; preds = %152, %150, %107, %98, %57
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @wait_for_completion_interruptible(i32*) #1

declare dso_local i32 @dout(i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.ceph_mds_request* @ceph_mdsc_create_request(%struct.ceph_mds_client*, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.ceph_mds_request*) #1

declare dso_local i32 @PTR_ERR(%struct.ceph_mds_request*) #1

declare dso_local i32 @ihold(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ceph_mdsc_do_request(%struct.ceph_mds_client*, %struct.inode*, %struct.ceph_mds_request*) #1

declare dso_local i32 @ceph_mdsc_put_request(%struct.ceph_mds_request*) #1

declare dso_local i32 @wait_for_completion_killable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
