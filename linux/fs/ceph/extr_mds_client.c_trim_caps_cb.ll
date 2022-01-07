; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_trim_caps_cb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_trim_caps_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ceph_cap = type { i32, i32 }
%struct.ceph_inode_info = type { i32, i32, i32, i64, i64, %struct.ceph_cap* }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [61 x i8] c"trim_caps_cb %p cap %p mine %s oissued %s used %s wanted %s\0A\00", align 1
@CEPH_CAP_ANY_WR = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_CACHE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"trim_caps_cb %p cap %p pruned, count now %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ceph_cap*, i8*)* @trim_caps_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trim_caps_cb(%struct.inode* %0, %struct.ceph_cap* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ceph_cap*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ceph_inode_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.dentry*, align 8
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.ceph_cap* %1, %struct.ceph_cap** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %8, align 8
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = call %struct.ceph_inode_info* @ceph_inode(%struct.inode* %18)
  store %struct.ceph_inode_info* %19, %struct.ceph_inode_info** %9, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %163

24:                                               ; preds = %3
  %25 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %9, align 8
  %26 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %25, i32 0, i32 0
  %27 = call i32 @spin_lock(i32* %26)
  %28 = load %struct.ceph_cap*, %struct.ceph_cap** %6, align 8
  %29 = getelementptr inbounds %struct.ceph_cap, %struct.ceph_cap* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ceph_cap*, %struct.ceph_cap** %6, align 8
  %32 = getelementptr inbounds %struct.ceph_cap, %struct.ceph_cap* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %30, %33
  store i32 %34, i32* %13, align 4
  %35 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %9, align 8
  %36 = call i32 @__ceph_caps_used(%struct.ceph_inode_info* %35)
  store i32 %36, i32* %10, align 4
  %37 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %9, align 8
  %38 = call i32 @__ceph_caps_file_wanted(%struct.ceph_inode_info* %37)
  store i32 %38, i32* %11, align 4
  %39 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %9, align 8
  %40 = load %struct.ceph_cap*, %struct.ceph_cap** %6, align 8
  %41 = call i32 @__ceph_caps_issued_other(%struct.ceph_inode_info* %39, %struct.ceph_cap* %40)
  store i32 %41, i32* %12, align 4
  %42 = load %struct.inode*, %struct.inode** %5, align 8
  %43 = load %struct.ceph_cap*, %struct.ceph_cap** %6, align 8
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @ceph_cap_string(i32 %44)
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @ceph_cap_string(i32 %46)
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @ceph_cap_string(i32 %48)
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @ceph_cap_string(i32 %50)
  %52 = call i32 (i8*, %struct.inode*, %struct.ceph_cap*, i32, ...) @dout(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), %struct.inode* %42, %struct.ceph_cap* %43, i32 %45, i32 %47, i32 %49, i32 %51)
  %53 = load %struct.ceph_cap*, %struct.ceph_cap** %6, align 8
  %54 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %9, align 8
  %55 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %54, i32 0, i32 5
  %56 = load %struct.ceph_cap*, %struct.ceph_cap** %55, align 8
  %57 = icmp eq %struct.ceph_cap* %53, %56
  br i1 %57, label %58, label %89

58:                                               ; preds = %24
  %59 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %9, align 8
  %60 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %58
  %64 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %9, align 8
  %65 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %9, align 8
  %70 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %69, i32 0, i32 2
  %71 = call i32 @list_empty(i32* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %68, %63, %58
  br label %159

74:                                               ; preds = %68
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %11, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @CEPH_CAP_ANY_WR, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %159

82:                                               ; preds = %74
  %83 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %9, align 8
  %84 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %83, i32 0, i32 1
  %85 = call i64 @atomic_read(i32* %84)
  %86 = icmp sgt i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %159

88:                                               ; preds = %82
  br label %89

89:                                               ; preds = %88, %24
  %90 = load i32, i32* %11, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %89
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @CEPH_CAP_FILE_CACHE, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %92
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* @CEPH_CAP_FILE_CACHE, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %96
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %102

102:                                              ; preds = %101, %96, %92, %89
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %11, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* %12, align 4
  %107 = xor i32 %106, -1
  %108 = and i32 %105, %107
  %109 = load i32, i32* %13, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %102
  br label %159

113:                                              ; preds = %102
  %114 = load i32, i32* %12, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %113
  %117 = load %struct.ceph_cap*, %struct.ceph_cap** %6, align 8
  %118 = call i32 @__ceph_remove_cap(%struct.ceph_cap* %117, i32 1)
  %119 = load i32*, i32** %8, align 8
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %119, align 4
  br label %158

122:                                              ; preds = %113
  %123 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %9, align 8
  %124 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %123, i32 0, i32 0
  %125 = call i32 @spin_unlock(i32* %124)
  %126 = load %struct.inode*, %struct.inode** %5, align 8
  %127 = call %struct.dentry* @d_find_any_alias(%struct.inode* %126)
  store %struct.dentry* %127, %struct.dentry** %14, align 8
  %128 = load %struct.dentry*, %struct.dentry** %14, align 8
  %129 = icmp ne %struct.dentry* %128, null
  br i1 %129, label %130, label %154

130:                                              ; preds = %122
  %131 = load %struct.dentry*, %struct.dentry** %14, align 8
  %132 = call i64 @drop_negative_children(%struct.dentry* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %154

134:                                              ; preds = %130
  %135 = load %struct.dentry*, %struct.dentry** %14, align 8
  %136 = call i32 @dput(%struct.dentry* %135)
  %137 = load %struct.inode*, %struct.inode** %5, align 8
  %138 = call i32 @d_prune_aliases(%struct.inode* %137)
  %139 = load %struct.inode*, %struct.inode** %5, align 8
  %140 = getelementptr inbounds %struct.inode, %struct.inode* %139, i32 0, i32 0
  %141 = call i64 @atomic_read(i32* %140)
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %15, align 4
  %143 = load i32, i32* %15, align 4
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %145, label %149

145:                                              ; preds = %134
  %146 = load i32*, i32** %8, align 8
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, -1
  store i32 %148, i32* %146, align 4
  br label %149

149:                                              ; preds = %145, %134
  %150 = load %struct.inode*, %struct.inode** %5, align 8
  %151 = load %struct.ceph_cap*, %struct.ceph_cap** %6, align 8
  %152 = load i32, i32* %15, align 4
  %153 = call i32 (i8*, %struct.inode*, %struct.ceph_cap*, i32, ...) @dout(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), %struct.inode* %150, %struct.ceph_cap* %151, i32 %152)
  br label %157

154:                                              ; preds = %130, %122
  %155 = load %struct.dentry*, %struct.dentry** %14, align 8
  %156 = call i32 @dput(%struct.dentry* %155)
  br label %157

157:                                              ; preds = %154, %149
  store i32 0, i32* %4, align 4
  br label %163

158:                                              ; preds = %116
  br label %159

159:                                              ; preds = %158, %112, %87, %81, %73
  %160 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %9, align 8
  %161 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %160, i32 0, i32 0
  %162 = call i32 @spin_unlock(i32* %161)
  store i32 0, i32* %4, align 4
  br label %163

163:                                              ; preds = %159, %157, %23
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local %struct.ceph_inode_info* @ceph_inode(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__ceph_caps_used(%struct.ceph_inode_info*) #1

declare dso_local i32 @__ceph_caps_file_wanted(%struct.ceph_inode_info*) #1

declare dso_local i32 @__ceph_caps_issued_other(%struct.ceph_inode_info*, %struct.ceph_cap*) #1

declare dso_local i32 @dout(i8*, %struct.inode*, %struct.ceph_cap*, i32, ...) #1

declare dso_local i32 @ceph_cap_string(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @__ceph_remove_cap(%struct.ceph_cap*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.dentry* @d_find_any_alias(%struct.inode*) #1

declare dso_local i64 @drop_negative_children(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @d_prune_aliases(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
