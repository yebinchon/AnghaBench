; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_addr.c_ceph_pool_perm_check.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_addr.c_ceph_pool_perm_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ceph_inode_info = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.ceph_string = type { i32 }

@CEPH_NOSNAP = common dso_local global i64 0, align 8
@NOPOOLPERM = common dso_local global i32 0, align 4
@CEPH_I_POOL_PERM = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_RD = common dso_local global i32 0, align 4
@CEPH_I_POOL_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"ceph_pool_perm_check pool %lld no read perm\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_WR = common dso_local global i32 0, align 4
@CEPH_I_POOL_WR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"ceph_pool_perm_check pool %lld no write perm\0A\00", align 1
@POOL_READ = common dso_local global i32 0, align 4
@POOL_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_pool_perm_check(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ceph_inode_info*, align 8
  %7 = alloca %struct.ceph_string*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call %struct.ceph_inode_info* @ceph_inode(%struct.inode* %11)
  store %struct.ceph_inode_info* %12, %struct.ceph_inode_info** %6, align 8
  %13 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %14 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CEPH_NOSNAP, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %148

20:                                               ; preds = %2
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = call i32 @ceph_inode_to_client(%struct.inode* %21)
  %23 = load i32, i32* @NOPOOLPERM, align 4
  %24 = call i64 @ceph_test_mount_opt(i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %148

27:                                               ; preds = %20
  %28 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %29 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %28, i32 0, i32 1
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %32 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %10, align 4
  %34 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %35 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %8, align 8
  %38 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %39 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %38, i32 0, i32 1
  %40 = call i32 @spin_unlock(i32* %39)
  br label %41

41:                                               ; preds = %144, %27
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @CEPH_I_POOL_PERM, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %77

46:                                               ; preds = %41
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @CEPH_CAP_FILE_RD, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %46
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @CEPH_I_POOL_RD, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @dout(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %57)
  %59 = load i32, i32* @EPERM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %148

61:                                               ; preds = %51, %46
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @CEPH_CAP_FILE_WR, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %61
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @CEPH_I_POOL_WR, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %66
  %72 = load i64, i64* %8, align 8
  %73 = call i32 @dout(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %72)
  %74 = load i32, i32* @EPERM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %148

76:                                               ; preds = %66, %61
  store i32 0, i32* %3, align 4
  br label %148

77:                                               ; preds = %41
  %78 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %79 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call %struct.ceph_string* @ceph_try_get_string(i32 %81)
  store %struct.ceph_string* %82, %struct.ceph_string** %7, align 8
  %83 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %84 = load i64, i64* %8, align 8
  %85 = load %struct.ceph_string*, %struct.ceph_string** %7, align 8
  %86 = call i32 @__ceph_pool_perm_get(%struct.ceph_inode_info* %83, i64 %84, %struct.ceph_string* %85)
  store i32 %86, i32* %9, align 4
  %87 = load %struct.ceph_string*, %struct.ceph_string** %7, align 8
  %88 = call i32 @ceph_put_string(%struct.ceph_string* %87)
  %89 = load i32, i32* %9, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %77
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %3, align 4
  br label %148

93:                                               ; preds = %77
  %94 = load i32, i32* @CEPH_I_POOL_PERM, align 4
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @POOL_READ, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = load i32, i32* @CEPH_I_POOL_RD, align 4
  %101 = load i32, i32* %10, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %10, align 4
  br label %103

103:                                              ; preds = %99, %93
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @POOL_WRITE, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  %109 = load i32, i32* @CEPH_I_POOL_WR, align 4
  %110 = load i32, i32* %10, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %10, align 4
  br label %112

112:                                              ; preds = %108, %103
  %113 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %114 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %113, i32 0, i32 1
  %115 = call i32 @spin_lock(i32* %114)
  %116 = load i64, i64* %8, align 8
  %117 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %118 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %116, %120
  br i1 %121, label %122, label %136

122:                                              ; preds = %112
  %123 = load %struct.ceph_string*, %struct.ceph_string** %7, align 8
  %124 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %125 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call %struct.ceph_string* @rcu_dereference_raw(i32 %127)
  %129 = icmp eq %struct.ceph_string* %123, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %122
  %131 = load i32, i32* %10, align 4
  %132 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %133 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 8
  br label %144

136:                                              ; preds = %122, %112
  %137 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %138 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  store i64 %140, i64* %8, align 8
  %141 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %142 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  store i32 %143, i32* %10, align 4
  br label %144

144:                                              ; preds = %136, %130
  %145 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %146 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %145, i32 0, i32 1
  %147 = call i32 @spin_unlock(i32* %146)
  br label %41

148:                                              ; preds = %91, %76, %71, %56, %26, %19
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local %struct.ceph_inode_info* @ceph_inode(%struct.inode*) #1

declare dso_local i64 @ceph_test_mount_opt(i32, i32) #1

declare dso_local i32 @ceph_inode_to_client(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dout(i8*, i64) #1

declare dso_local %struct.ceph_string* @ceph_try_get_string(i32) #1

declare dso_local i32 @__ceph_pool_perm_get(%struct.ceph_inode_info*, i64, %struct.ceph_string*) #1

declare dso_local i32 @ceph_put_string(%struct.ceph_string*) #1

declare dso_local %struct.ceph_string* @rcu_dereference_raw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
