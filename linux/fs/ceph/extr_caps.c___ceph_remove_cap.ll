; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_caps.c___ceph_remove_cap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_caps.c___ceph_remove_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_cap = type { i64, i32, i32, %struct.ceph_inode_info*, %struct.ceph_mds_session*, i32, i32 }
%struct.ceph_inode_info = type { i64, i64, %struct.TYPE_3__, %struct.ceph_cap*, i32, %struct.ceph_mds_session }
%struct.TYPE_3__ = type { i32 }
%struct.ceph_mds_session = type { i64, i32, i32, i32, %struct.ceph_cap*, i32 }
%struct.ceph_mds_client = type { i32 }
%struct.TYPE_4__ = type { %struct.ceph_mds_client* }

@.str = private unnamed_addr constant [30 x i8] c"__ceph_remove_cap %p from %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"__ceph_remove_cap  delaying %p removal from session %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__ceph_remove_cap(%struct.ceph_cap* %0, i32 %1) #0 {
  %3 = alloca %struct.ceph_cap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ceph_mds_session*, align 8
  %6 = alloca %struct.ceph_inode_info*, align 8
  %7 = alloca %struct.ceph_mds_client*, align 8
  %8 = alloca i32, align 4
  store %struct.ceph_cap* %0, %struct.ceph_cap** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ceph_cap*, %struct.ceph_cap** %3, align 8
  %10 = getelementptr inbounds %struct.ceph_cap, %struct.ceph_cap* %9, i32 0, i32 4
  %11 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %10, align 8
  store %struct.ceph_mds_session* %11, %struct.ceph_mds_session** %5, align 8
  %12 = load %struct.ceph_cap*, %struct.ceph_cap** %3, align 8
  %13 = getelementptr inbounds %struct.ceph_cap, %struct.ceph_cap* %12, i32 0, i32 3
  %14 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %13, align 8
  store %struct.ceph_inode_info* %14, %struct.ceph_inode_info** %6, align 8
  %15 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %16 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.TYPE_4__* @ceph_sb_to_client(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %20, align 8
  store %struct.ceph_mds_client* %21, %struct.ceph_mds_client** %7, align 8
  store i32 0, i32* %8, align 4
  %22 = load %struct.ceph_cap*, %struct.ceph_cap** %3, align 8
  %23 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %24 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %23, i32 0, i32 5
  %25 = call i32 @dout(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.ceph_cap* %22, %struct.ceph_mds_session* %24)
  %26 = load %struct.ceph_cap*, %struct.ceph_cap** %3, align 8
  %27 = getelementptr inbounds %struct.ceph_cap, %struct.ceph_cap* %26, i32 0, i32 6
  %28 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %29 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %28, i32 0, i32 4
  %30 = call i32 @rb_erase(i32* %27, i32* %29)
  %31 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %32 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %31, i32 0, i32 3
  %33 = load %struct.ceph_cap*, %struct.ceph_cap** %32, align 8
  %34 = load %struct.ceph_cap*, %struct.ceph_cap** %3, align 8
  %35 = icmp eq %struct.ceph_cap* %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %2
  %37 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %38 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %37, i32 0, i32 3
  store %struct.ceph_cap* null, %struct.ceph_cap** %38, align 8
  br label %39

39:                                               ; preds = %36, %2
  %40 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %41 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %40, i32 0, i32 1
  %42 = call i32 @spin_lock(i32* %41)
  %43 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %44 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %43, i32 0, i32 4
  %45 = load %struct.ceph_cap*, %struct.ceph_cap** %44, align 8
  %46 = load %struct.ceph_cap*, %struct.ceph_cap** %3, align 8
  %47 = icmp eq %struct.ceph_cap* %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %39
  %49 = load %struct.ceph_cap*, %struct.ceph_cap** %3, align 8
  %50 = load %struct.ceph_cap*, %struct.ceph_cap** %3, align 8
  %51 = getelementptr inbounds %struct.ceph_cap, %struct.ceph_cap* %50, i32 0, i32 4
  %52 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %51, align 8
  %53 = call i32 @dout(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), %struct.ceph_cap* %49, %struct.ceph_mds_session* %52)
  br label %64

54:                                               ; preds = %39
  %55 = load %struct.ceph_cap*, %struct.ceph_cap** %3, align 8
  %56 = getelementptr inbounds %struct.ceph_cap, %struct.ceph_cap* %55, i32 0, i32 5
  %57 = call i32 @list_del_init(i32* %56)
  %58 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %59 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %59, align 8
  %62 = load %struct.ceph_cap*, %struct.ceph_cap** %3, align 8
  %63 = getelementptr inbounds %struct.ceph_cap, %struct.ceph_cap* %62, i32 0, i32 4
  store %struct.ceph_mds_session* null, %struct.ceph_mds_session** %63, align 8
  store i32 1, i32* %8, align 4
  br label %64

64:                                               ; preds = %54, %48
  %65 = load %struct.ceph_cap*, %struct.ceph_cap** %3, align 8
  %66 = getelementptr inbounds %struct.ceph_cap, %struct.ceph_cap* %65, i32 0, i32 3
  store %struct.ceph_inode_info* null, %struct.ceph_inode_info** %66, align 8
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %92

69:                                               ; preds = %64
  %70 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %71 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = load %struct.ceph_cap*, %struct.ceph_cap** %3, align 8
  %76 = getelementptr inbounds %struct.ceph_cap, %struct.ceph_cap* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %79 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %77, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %74, %69
  %83 = load %struct.ceph_cap*, %struct.ceph_cap** %3, align 8
  %84 = getelementptr inbounds %struct.ceph_cap, %struct.ceph_cap* %83, i32 0, i32 1
  store i32 1, i32* %84, align 8
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %89 = load %struct.ceph_cap*, %struct.ceph_cap** %3, align 8
  %90 = call i32 @__ceph_queue_cap_release(%struct.ceph_mds_session* %88, %struct.ceph_cap* %89)
  store i32 0, i32* %8, align 4
  br label %91

91:                                               ; preds = %87, %82
  br label %95

92:                                               ; preds = %74, %64
  %93 = load %struct.ceph_cap*, %struct.ceph_cap** %3, align 8
  %94 = getelementptr inbounds %struct.ceph_cap, %struct.ceph_cap* %93, i32 0, i32 1
  store i32 0, i32* %94, align 8
  br label %95

95:                                               ; preds = %92, %91
  %96 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %97 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.ceph_cap*, %struct.ceph_cap** %3, align 8
  %101 = getelementptr inbounds %struct.ceph_cap, %struct.ceph_cap* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 4
  %102 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %103 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %102, i32 0, i32 1
  %104 = call i32 @spin_unlock(i32* %103)
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %95
  %108 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %7, align 8
  %109 = load %struct.ceph_cap*, %struct.ceph_cap** %3, align 8
  %110 = call i32 @ceph_put_cap(%struct.ceph_mds_client* %108, %struct.ceph_cap* %109)
  br label %111

111:                                              ; preds = %107, %95
  %112 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %113 = call i32 @__ceph_is_any_caps(%struct.ceph_inode_info* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %128, label %115

115:                                              ; preds = %111
  %116 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %117 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %115
  %121 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %122 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %127 = call i32 @drop_inode_snap_realm(%struct.ceph_inode_info* %126)
  br label %128

128:                                              ; preds = %125, %120, %115, %111
  %129 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %130 = call i32 @__ceph_is_any_real_caps(%struct.ceph_inode_info* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %128
  %133 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %7, align 8
  %134 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %6, align 8
  %135 = call i32 @__cap_delay_cancel(%struct.ceph_mds_client* %133, %struct.ceph_inode_info* %134)
  br label %136

136:                                              ; preds = %132, %128
  ret void
}

declare dso_local %struct.TYPE_4__* @ceph_sb_to_client(i32) #1

declare dso_local i32 @dout(i8*, %struct.ceph_cap*, %struct.ceph_mds_session*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @__ceph_queue_cap_release(%struct.ceph_mds_session*, %struct.ceph_cap*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ceph_put_cap(%struct.ceph_mds_client*, %struct.ceph_cap*) #1

declare dso_local i32 @__ceph_is_any_caps(%struct.ceph_inode_info*) #1

declare dso_local i32 @drop_inode_snap_realm(%struct.ceph_inode_info*) #1

declare dso_local i32 @__ceph_is_any_real_caps(%struct.ceph_inode_info*) #1

declare dso_local i32 @__cap_delay_cancel(%struct.ceph_mds_client*, %struct.ceph_inode_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
