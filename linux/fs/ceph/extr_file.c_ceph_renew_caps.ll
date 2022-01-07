; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_file.c_ceph_renew_caps.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_file.c_ceph_renew_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ceph_mds_client = type { i32 }
%struct.ceph_inode_info = type { i32, i64 }
%struct.ceph_mds_request = type { i32, i32, %struct.inode* }
%struct.TYPE_2__ = type { %struct.ceph_mds_client* }

@CEPH_CAP_ANY_WR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"renew caps %p want %s issued %s updating mds_wanted\0A\00", align 1
@CEPH_CAP_FILE_RD = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_WR = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"renew caps %p open result=%d\0A\00", align 1
@CEPH_CAP_FILE_LAZYIO = common dso_local global i32 0, align 4
@O_LAZY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_renew_caps(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.ceph_mds_client*, align 8
  %5 = alloca %struct.ceph_inode_info*, align 8
  %6 = alloca %struct.ceph_mds_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %11 = load %struct.inode*, %struct.inode** %3, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.TYPE_2__* @ceph_sb_to_client(i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %15, align 8
  store %struct.ceph_mds_client* %16, %struct.ceph_mds_client** %4, align 8
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = call %struct.ceph_inode_info* @ceph_inode(%struct.inode* %17)
  store %struct.ceph_inode_info* %18, %struct.ceph_inode_info** %5, align 8
  %19 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %20 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %19, i32 0, i32 0
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %23 = call i32 @__ceph_caps_file_wanted(%struct.ceph_inode_info* %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %25 = call i64 @__ceph_is_any_real_caps(%struct.ceph_inode_info* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %1
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @CEPH_CAP_ANY_WR, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %34 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %32, %27
  %38 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %39 = call i32 @__ceph_caps_issued(%struct.ceph_inode_info* %38, i32* null)
  store i32 %39, i32* %10, align 4
  %40 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %41 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock(i32* %41)
  %43 = load %struct.inode*, %struct.inode** %3, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @ceph_cap_string(i32 %44)
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @ceph_cap_string(i32 %46)
  %48 = call i32 (i8*, %struct.inode*, i32, ...) @dout(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), %struct.inode* %43, i32 %45, i32 %47)
  %49 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %50 = call i32 @ceph_check_caps(%struct.ceph_inode_info* %49, i32 0, i32* null)
  store i32 0, i32* %2, align 4
  br label %120

51:                                               ; preds = %32, %1
  %52 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %53 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %52, i32 0, i32 0
  %54 = call i32 @spin_unlock(i32* %53)
  store i32 0, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @CEPH_CAP_FILE_RD, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %51
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @CEPH_CAP_FILE_WR, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* @O_RDWR, align 4
  store i32 %65, i32* %8, align 4
  br label %82

66:                                               ; preds = %59, %51
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @CEPH_CAP_FILE_RD, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* @O_RDONLY, align 4
  store i32 %72, i32* %8, align 4
  br label %81

73:                                               ; preds = %66
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @CEPH_CAP_FILE_WR, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* @O_WRONLY, align 4
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %78, %73
  br label %81

81:                                               ; preds = %80, %71
  br label %82

82:                                               ; preds = %81, %64
  %83 = load %struct.inode*, %struct.inode** %3, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %8, align 4
  %87 = call %struct.ceph_mds_request* @prepare_open_request(i32 %85, i32 %86, i32 0)
  store %struct.ceph_mds_request* %87, %struct.ceph_mds_request** %6, align 8
  %88 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %89 = call i64 @IS_ERR(%struct.ceph_mds_request* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %82
  %92 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %93 = call i32 @PTR_ERR(%struct.ceph_mds_request* %92)
  store i32 %93, i32* %7, align 4
  br label %109

94:                                               ; preds = %82
  %95 = load %struct.inode*, %struct.inode** %3, align 8
  %96 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %97 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %96, i32 0, i32 2
  store %struct.inode* %95, %struct.inode** %97, align 8
  %98 = load %struct.inode*, %struct.inode** %3, align 8
  %99 = call i32 @ihold(%struct.inode* %98)
  %100 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %101 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %100, i32 0, i32 0
  store i32 1, i32* %101, align 8
  %102 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %103 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %102, i32 0, i32 1
  store i32 -1, i32* %103, align 4
  %104 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %105 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %106 = call i32 @ceph_mdsc_do_request(%struct.ceph_mds_client* %104, i32* null, %struct.ceph_mds_request* %105)
  store i32 %106, i32* %7, align 4
  %107 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %108 = call i32 @ceph_mdsc_put_request(%struct.ceph_mds_request* %107)
  br label %109

109:                                              ; preds = %94, %91
  %110 = load %struct.inode*, %struct.inode** %3, align 8
  %111 = load i32, i32* %7, align 4
  %112 = call i32 (i8*, %struct.inode*, i32, ...) @dout(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), %struct.inode* %110, i32 %111)
  %113 = load i32, i32* %7, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  %116 = load i32, i32* %7, align 4
  br label %118

117:                                              ; preds = %109
  br label %118

118:                                              ; preds = %117, %115
  %119 = phi i32 [ %116, %115 ], [ 0, %117 ]
  store i32 %119, i32* %2, align 4
  br label %120

120:                                              ; preds = %118, %37
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local %struct.TYPE_2__* @ceph_sb_to_client(i32) #1

declare dso_local %struct.ceph_inode_info* @ceph_inode(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__ceph_caps_file_wanted(%struct.ceph_inode_info*) #1

declare dso_local i64 @__ceph_is_any_real_caps(%struct.ceph_inode_info*) #1

declare dso_local i32 @__ceph_caps_issued(%struct.ceph_inode_info*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dout(i8*, %struct.inode*, i32, ...) #1

declare dso_local i32 @ceph_cap_string(i32) #1

declare dso_local i32 @ceph_check_caps(%struct.ceph_inode_info*, i32, i32*) #1

declare dso_local %struct.ceph_mds_request* @prepare_open_request(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ceph_mds_request*) #1

declare dso_local i32 @PTR_ERR(%struct.ceph_mds_request*) #1

declare dso_local i32 @ihold(%struct.inode*) #1

declare dso_local i32 @ceph_mdsc_do_request(%struct.ceph_mds_client*, i32*, %struct.ceph_mds_request*) #1

declare dso_local i32 @ceph_mdsc_put_request(%struct.ceph_mds_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
