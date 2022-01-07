; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_quota.c_check_quota_exceeded.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_quota.c_check_quota_exceeded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ceph_mds_client = type { i32 }
%struct.ceph_inode_info = type { i32, i32, i32, i32, i32, i32, %struct.ceph_snap_realm* }
%struct.ceph_snap_realm = type { i32, %struct.ceph_snap_realm*, i32 }
%struct.TYPE_2__ = type { %struct.ceph_mds_client* }

@CEPH_NOSNAP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"check_quota_exceeded: ino (%llx.%llx) null i_snap_realm\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Invalid quota check op (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32)* @check_quota_exceeded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_quota_exceeded(%struct.inode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ceph_mds_client*, align 8
  %9 = alloca %struct.ceph_inode_info*, align 8
  %10 = alloca %struct.ceph_snap_realm*, align 8
  %11 = alloca %struct.ceph_snap_realm*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = call %struct.TYPE_2__* @ceph_inode_to_client(%struct.inode* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %19, align 8
  store %struct.ceph_mds_client* %20, %struct.ceph_mds_client** %8, align 8
  store i32 0, i32* %15, align 4
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = call i64 @ceph_snap(%struct.inode* %21)
  %23 = load i64, i64* @CEPH_NOSNAP, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %205

26:                                               ; preds = %3
  %27 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %8, align 8
  %28 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %27, i32 0, i32 0
  %29 = call i32 @down_read(i32* %28)
  br label %30

30:                                               ; preds = %95, %26
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = call %struct.ceph_inode_info* @ceph_inode(%struct.inode* %31)
  %33 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %32, i32 0, i32 6
  %34 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %33, align 8
  store %struct.ceph_snap_realm* %34, %struct.ceph_snap_realm** %10, align 8
  %35 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %10, align 8
  %36 = icmp ne %struct.ceph_snap_realm* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %8, align 8
  %39 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %10, align 8
  %40 = call i32 @ceph_get_snap_realm(%struct.ceph_mds_client* %38, %struct.ceph_snap_realm* %39)
  br label %45

41:                                               ; preds = %30
  %42 = load %struct.inode*, %struct.inode** %5, align 8
  %43 = call i32 @ceph_vinop(%struct.inode* %42)
  %44 = call i32 @pr_err_ratelimited(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %41, %37
  br label %46

46:                                               ; preds = %185, %45
  %47 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %10, align 8
  %48 = icmp ne %struct.ceph_snap_realm* %47, null
  br i1 %48, label %49, label %193

49:                                               ; preds = %46
  %50 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %10, align 8
  %51 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %50, i32 0, i32 2
  %52 = call i32 @spin_lock(i32* %51)
  %53 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %10, align 8
  %54 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %16, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %49
  %59 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %10, align 8
  %60 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call %struct.inode* @igrab(i32 %61)
  br label %64

63:                                               ; preds = %49
  br label %64

64:                                               ; preds = %63, %58
  %65 = phi %struct.inode* [ %62, %58 ], [ null, %63 ]
  store %struct.inode* %65, %struct.inode** %12, align 8
  %66 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %10, align 8
  %67 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %66, i32 0, i32 2
  %68 = call i32 @spin_unlock(i32* %67)
  %69 = load i32, i32* %16, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load %struct.inode*, %struct.inode** %12, align 8
  %73 = icmp ne %struct.inode* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  br label %193

75:                                               ; preds = %71, %64
  %76 = load %struct.inode*, %struct.inode** %12, align 8
  %77 = icmp ne %struct.inode* %76, null
  br i1 %77, label %99, label %78

78:                                               ; preds = %75
  %79 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %8, align 8
  %80 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %79, i32 0, i32 0
  %81 = call i32 @up_read(i32* %80)
  %82 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %8, align 8
  %83 = load %struct.inode*, %struct.inode** %5, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %10, align 8
  %87 = call %struct.inode* @lookup_quotarealm_inode(%struct.ceph_mds_client* %82, i32 %85, %struct.ceph_snap_realm* %86)
  store %struct.inode* %87, %struct.inode** %12, align 8
  %88 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %8, align 8
  %89 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %88, i32 0, i32 0
  %90 = call i32 @down_read(i32* %89)
  %91 = load %struct.inode*, %struct.inode** %12, align 8
  %92 = call i64 @IS_ERR_OR_NULL(%struct.inode* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %78
  br label %193

95:                                               ; preds = %78
  %96 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %8, align 8
  %97 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %10, align 8
  %98 = call i32 @ceph_put_snap_realm(%struct.ceph_mds_client* %96, %struct.ceph_snap_realm* %97)
  br label %30

99:                                               ; preds = %75
  %100 = load %struct.inode*, %struct.inode** %12, align 8
  %101 = call %struct.ceph_inode_info* @ceph_inode(%struct.inode* %100)
  store %struct.ceph_inode_info* %101, %struct.ceph_inode_info** %9, align 8
  %102 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %9, align 8
  %103 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %102, i32 0, i32 5
  %104 = call i32 @spin_lock(i32* %103)
  %105 = load i32, i32* %6, align 4
  %106 = icmp eq i32 %105, 128
  br i1 %106, label %107, label %118

107:                                              ; preds = %99
  %108 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %9, align 8
  %109 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  store i32 %110, i32* %13, align 4
  %111 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %9, align 8
  %112 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %9, align 8
  %115 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %113, %116
  store i32 %117, i32* %14, align 4
  br label %125

118:                                              ; preds = %99
  %119 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %9, align 8
  %120 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %13, align 4
  %122 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %9, align 8
  %123 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  store i32 %124, i32* %14, align 4
  br label %125

125:                                              ; preds = %118, %107
  %126 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %9, align 8
  %127 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %126, i32 0, i32 5
  %128 = call i32 @spin_unlock(i32* %127)
  %129 = load i32, i32* %6, align 4
  switch i32 %129, label %170 [
    i32 128, label %130
    i32 129, label %140
    i32 130, label %152
  ]

130:                                              ; preds = %125
  %131 = load i32, i32* %13, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %130
  %134 = load i32, i32* %14, align 4
  %135 = load i32, i32* %13, align 4
  %136 = icmp sge i32 %134, %135
  br label %137

137:                                              ; preds = %133, %130
  %138 = phi i1 [ false, %130 ], [ %136, %133 ]
  %139 = zext i1 %138 to i32
  store i32 %139, i32* %15, align 4
  br label %173

140:                                              ; preds = %125
  %141 = load i32, i32* %13, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %140
  %144 = load i32, i32* %14, align 4
  %145 = load i32, i32* %7, align 4
  %146 = add nsw i32 %144, %145
  %147 = load i32, i32* %13, align 4
  %148 = icmp sgt i32 %146, %147
  br label %149

149:                                              ; preds = %143, %140
  %150 = phi i1 [ false, %140 ], [ %148, %143 ]
  %151 = zext i1 %150 to i32
  store i32 %151, i32* %15, align 4
  br label %173

152:                                              ; preds = %125
  %153 = load i32, i32* %13, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %169

155:                                              ; preds = %152
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* %13, align 4
  %158 = icmp sge i32 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  store i32 1, i32* %15, align 4
  br label %168

160:                                              ; preds = %155
  %161 = load i32, i32* %13, align 4
  %162 = load i32, i32* %14, align 4
  %163 = sub nsw i32 %161, %162
  %164 = ashr i32 %163, 4
  %165 = load i32, i32* %7, align 4
  %166 = icmp slt i32 %164, %165
  %167 = zext i1 %166 to i32
  store i32 %167, i32* %15, align 4
  br label %168

168:                                              ; preds = %160, %159
  br label %169

169:                                              ; preds = %168, %152
  br label %173

170:                                              ; preds = %125
  %171 = load i32, i32* %6, align 4
  %172 = call i32 @pr_warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %171)
  store i32 1, i32* %15, align 4
  br label %173

173:                                              ; preds = %170, %169, %149, %137
  %174 = load %struct.inode*, %struct.inode** %12, align 8
  %175 = call i32 @ceph_async_iput(%struct.inode* %174)
  %176 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %10, align 8
  %177 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %176, i32 0, i32 1
  %178 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %177, align 8
  store %struct.ceph_snap_realm* %178, %struct.ceph_snap_realm** %11, align 8
  %179 = load i32, i32* %15, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %184, label %181

181:                                              ; preds = %173
  %182 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %11, align 8
  %183 = icmp ne %struct.ceph_snap_realm* %182, null
  br i1 %183, label %185, label %184

184:                                              ; preds = %181, %173
  br label %193

185:                                              ; preds = %181
  %186 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %8, align 8
  %187 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %11, align 8
  %188 = call i32 @ceph_get_snap_realm(%struct.ceph_mds_client* %186, %struct.ceph_snap_realm* %187)
  %189 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %8, align 8
  %190 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %10, align 8
  %191 = call i32 @ceph_put_snap_realm(%struct.ceph_mds_client* %189, %struct.ceph_snap_realm* %190)
  %192 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %11, align 8
  store %struct.ceph_snap_realm* %192, %struct.ceph_snap_realm** %10, align 8
  br label %46

193:                                              ; preds = %184, %94, %74, %46
  %194 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %10, align 8
  %195 = icmp ne %struct.ceph_snap_realm* %194, null
  br i1 %195, label %196, label %200

196:                                              ; preds = %193
  %197 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %8, align 8
  %198 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %10, align 8
  %199 = call i32 @ceph_put_snap_realm(%struct.ceph_mds_client* %197, %struct.ceph_snap_realm* %198)
  br label %200

200:                                              ; preds = %196, %193
  %201 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %8, align 8
  %202 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %201, i32 0, i32 0
  %203 = call i32 @up_read(i32* %202)
  %204 = load i32, i32* %15, align 4
  store i32 %204, i32* %4, align 4
  br label %205

205:                                              ; preds = %200, %25
  %206 = load i32, i32* %4, align 4
  ret i32 %206
}

declare dso_local %struct.TYPE_2__* @ceph_inode_to_client(%struct.inode*) #1

declare dso_local i64 @ceph_snap(%struct.inode*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.ceph_inode_info* @ceph_inode(%struct.inode*) #1

declare dso_local i32 @ceph_get_snap_realm(%struct.ceph_mds_client*, %struct.ceph_snap_realm*) #1

declare dso_local i32 @pr_err_ratelimited(i8*, i32) #1

declare dso_local i32 @ceph_vinop(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.inode* @igrab(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local %struct.inode* @lookup_quotarealm_inode(%struct.ceph_mds_client*, i32, %struct.ceph_snap_realm*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.inode*) #1

declare dso_local i32 @ceph_put_snap_realm(%struct.ceph_mds_client*, %struct.ceph_snap_realm*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @ceph_async_iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
