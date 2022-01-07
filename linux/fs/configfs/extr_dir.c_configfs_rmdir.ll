; ModuleID = '/home/carl/AnghaBench/linux/fs/configfs/extr_dir.c_configfs_rmdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/configfs/extr_dir.c_configfs_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.dentry*, %struct.configfs_dirent* }
%struct.configfs_dirent = type { i32, %struct.configfs_fragment*, i64 }
%struct.configfs_fragment = type { i32, i32 }
%struct.config_item = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.module* }
%struct.module = type { i32 }
%struct.configfs_subsystem = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.module* }
%struct.TYPE_11__ = type { %struct.configfs_subsystem* }

@CONFIGFS_USET_DEFAULT = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@configfs_symlink_mutex = common dso_local global i32 0, align 4
@configfs_dirent_lock = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@CONFIGFS_USET_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @configfs_rmdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @configfs_rmdir(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.config_item*, align 8
  %7 = alloca %struct.config_item*, align 8
  %8 = alloca %struct.configfs_subsystem*, align 8
  %9 = alloca %struct.configfs_dirent*, align 8
  %10 = alloca %struct.configfs_fragment*, align 8
  %11 = alloca %struct.module*, align 8
  %12 = alloca %struct.module*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.dentry*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.module* null, %struct.module** %11, align 8
  store %struct.module* null, %struct.module** %12, align 8
  %15 = load %struct.dentry*, %struct.dentry** %5, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 1
  %17 = load %struct.configfs_dirent*, %struct.configfs_dirent** %16, align 8
  store %struct.configfs_dirent* %17, %struct.configfs_dirent** %9, align 8
  %18 = load %struct.configfs_dirent*, %struct.configfs_dirent** %9, align 8
  %19 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @CONFIGFS_USET_DEFAULT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EPERM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %198

27:                                               ; preds = %2
  %28 = load %struct.dentry*, %struct.dentry** %5, align 8
  %29 = getelementptr inbounds %struct.dentry, %struct.dentry* %28, i32 0, i32 0
  %30 = load %struct.dentry*, %struct.dentry** %29, align 8
  %31 = call %struct.config_item* @configfs_get_config_item(%struct.dentry* %30)
  store %struct.config_item* %31, %struct.config_item** %6, align 8
  %32 = load %struct.config_item*, %struct.config_item** %6, align 8
  %33 = call %struct.TYPE_11__* @to_config_group(%struct.config_item* %32)
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load %struct.configfs_subsystem*, %struct.configfs_subsystem** %34, align 8
  store %struct.configfs_subsystem* %35, %struct.configfs_subsystem** %8, align 8
  %36 = load %struct.configfs_subsystem*, %struct.configfs_subsystem** %8, align 8
  %37 = icmp ne %struct.configfs_subsystem* %36, null
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @BUG_ON(i32 %39)
  %41 = load %struct.config_item*, %struct.config_item** %6, align 8
  %42 = getelementptr inbounds %struct.config_item, %struct.config_item* %41, i32 0, i32 0
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = icmp ne %struct.TYPE_10__* %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %27
  %46 = load %struct.config_item*, %struct.config_item** %6, align 8
  %47 = call i32 @config_item_put(%struct.config_item* %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %198

50:                                               ; preds = %27
  %51 = load %struct.configfs_subsystem*, %struct.configfs_subsystem** %8, align 8
  %52 = getelementptr inbounds %struct.configfs_subsystem, %struct.configfs_subsystem* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = icmp ne %struct.TYPE_7__* %55, null
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i32 @BUG_ON(i32 %58)
  %60 = load %struct.configfs_subsystem*, %struct.configfs_subsystem** %8, align 8
  %61 = getelementptr inbounds %struct.configfs_subsystem, %struct.configfs_subsystem* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load %struct.module*, %struct.module** %65, align 8
  store %struct.module* %66, %struct.module** %11, align 8
  br label %67

67:                                               ; preds = %115, %50
  %68 = call i32 @mutex_lock(i32* @configfs_symlink_mutex)
  %69 = call i32 @spin_lock(i32* @configfs_dirent_lock)
  %70 = load %struct.configfs_dirent*, %struct.configfs_dirent** %9, align 8
  %71 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load i32, i32* @EBUSY, align 4
  %76 = sub nsw i32 0, %75
  br label %78

77:                                               ; preds = %67
  br label %78

78:                                               ; preds = %77, %74
  %79 = phi i32 [ %76, %74 ], [ 0, %77 ]
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %91, label %82

82:                                               ; preds = %78
  %83 = load %struct.dentry*, %struct.dentry** %5, align 8
  %84 = call i32 @configfs_detach_prep(%struct.dentry* %83, %struct.dentry** %14)
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load %struct.dentry*, %struct.dentry** %5, align 8
  %89 = call i32 @configfs_detach_rollback(%struct.dentry* %88)
  br label %90

90:                                               ; preds = %87, %82
  br label %91

91:                                               ; preds = %90, %78
  %92 = call i32 @spin_unlock(i32* @configfs_dirent_lock)
  %93 = call i32 @mutex_unlock(i32* @configfs_symlink_mutex)
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %114

96:                                               ; preds = %91
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* @EAGAIN, align 4
  %99 = sub nsw i32 0, %98
  %100 = icmp ne i32 %97, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load %struct.config_item*, %struct.config_item** %6, align 8
  %103 = call i32 @config_item_put(%struct.config_item* %102)
  %104 = load i32, i32* %13, align 4
  store i32 %104, i32* %3, align 4
  br label %198

105:                                              ; preds = %96
  %106 = load %struct.dentry*, %struct.dentry** %14, align 8
  %107 = call i32 @d_inode(%struct.dentry* %106)
  %108 = call i32 @inode_lock(i32 %107)
  %109 = load %struct.dentry*, %struct.dentry** %14, align 8
  %110 = call i32 @d_inode(%struct.dentry* %109)
  %111 = call i32 @inode_unlock(i32 %110)
  %112 = load %struct.dentry*, %struct.dentry** %14, align 8
  %113 = call i32 @dput(%struct.dentry* %112)
  br label %114

114:                                              ; preds = %105, %91
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* @EAGAIN, align 4
  %118 = sub nsw i32 0, %117
  %119 = icmp eq i32 %116, %118
  br i1 %119, label %67, label %120

120:                                              ; preds = %115
  %121 = load %struct.configfs_dirent*, %struct.configfs_dirent** %9, align 8
  %122 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %121, i32 0, i32 1
  %123 = load %struct.configfs_fragment*, %struct.configfs_fragment** %122, align 8
  store %struct.configfs_fragment* %123, %struct.configfs_fragment** %10, align 8
  %124 = load %struct.configfs_fragment*, %struct.configfs_fragment** %10, align 8
  %125 = getelementptr inbounds %struct.configfs_fragment, %struct.configfs_fragment* %124, i32 0, i32 1
  %126 = call i64 @down_write_killable(i32* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %120
  %129 = call i32 @spin_lock(i32* @configfs_dirent_lock)
  %130 = load %struct.dentry*, %struct.dentry** %5, align 8
  %131 = call i32 @configfs_detach_rollback(%struct.dentry* %130)
  %132 = call i32 @spin_unlock(i32* @configfs_dirent_lock)
  %133 = load i32, i32* @EINTR, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %3, align 4
  br label %198

135:                                              ; preds = %120
  %136 = load %struct.configfs_fragment*, %struct.configfs_fragment** %10, align 8
  %137 = getelementptr inbounds %struct.configfs_fragment, %struct.configfs_fragment* %136, i32 0, i32 0
  store i32 1, i32* %137, align 4
  %138 = load %struct.configfs_fragment*, %struct.configfs_fragment** %10, align 8
  %139 = getelementptr inbounds %struct.configfs_fragment, %struct.configfs_fragment* %138, i32 0, i32 1
  %140 = call i32 @up_write(i32* %139)
  %141 = load %struct.dentry*, %struct.dentry** %5, align 8
  %142 = call %struct.config_item* @configfs_get_config_item(%struct.dentry* %141)
  store %struct.config_item* %142, %struct.config_item** %7, align 8
  %143 = load %struct.config_item*, %struct.config_item** %6, align 8
  %144 = call i32 @config_item_put(%struct.config_item* %143)
  %145 = load %struct.config_item*, %struct.config_item** %7, align 8
  %146 = getelementptr inbounds %struct.config_item, %struct.config_item* %145, i32 0, i32 0
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %146, align 8
  %148 = icmp ne %struct.TYPE_10__* %147, null
  br i1 %148, label %149, label %155

149:                                              ; preds = %135
  %150 = load %struct.config_item*, %struct.config_item** %7, align 8
  %151 = getelementptr inbounds %struct.config_item, %struct.config_item* %150, i32 0, i32 0
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  %154 = load %struct.module*, %struct.module** %153, align 8
  store %struct.module* %154, %struct.module** %12, align 8
  br label %155

155:                                              ; preds = %149, %135
  %156 = load %struct.configfs_dirent*, %struct.configfs_dirent** %9, align 8
  %157 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @CONFIGFS_USET_DIR, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %174

162:                                              ; preds = %155
  %163 = load %struct.config_item*, %struct.config_item** %7, align 8
  %164 = call i32 @configfs_detach_group(%struct.config_item* %163)
  %165 = load %struct.configfs_subsystem*, %struct.configfs_subsystem** %8, align 8
  %166 = getelementptr inbounds %struct.configfs_subsystem, %struct.configfs_subsystem* %165, i32 0, i32 0
  %167 = call i32 @mutex_lock(i32* %166)
  %168 = load %struct.config_item*, %struct.config_item** %6, align 8
  %169 = load %struct.config_item*, %struct.config_item** %7, align 8
  %170 = call i32 @client_disconnect_notify(%struct.config_item* %168, %struct.config_item* %169)
  %171 = load %struct.config_item*, %struct.config_item** %7, align 8
  %172 = call %struct.TYPE_11__* @to_config_group(%struct.config_item* %171)
  %173 = call i32 @unlink_group(%struct.TYPE_11__* %172)
  br label %185

174:                                              ; preds = %155
  %175 = load %struct.config_item*, %struct.config_item** %7, align 8
  %176 = call i32 @configfs_detach_item(%struct.config_item* %175)
  %177 = load %struct.configfs_subsystem*, %struct.configfs_subsystem** %8, align 8
  %178 = getelementptr inbounds %struct.configfs_subsystem, %struct.configfs_subsystem* %177, i32 0, i32 0
  %179 = call i32 @mutex_lock(i32* %178)
  %180 = load %struct.config_item*, %struct.config_item** %6, align 8
  %181 = load %struct.config_item*, %struct.config_item** %7, align 8
  %182 = call i32 @client_disconnect_notify(%struct.config_item* %180, %struct.config_item* %181)
  %183 = load %struct.config_item*, %struct.config_item** %7, align 8
  %184 = call i32 @unlink_obj(%struct.config_item* %183)
  br label %185

185:                                              ; preds = %174, %162
  %186 = load %struct.config_item*, %struct.config_item** %6, align 8
  %187 = load %struct.config_item*, %struct.config_item** %7, align 8
  %188 = call i32 @client_drop_item(%struct.config_item* %186, %struct.config_item* %187)
  %189 = load %struct.configfs_subsystem*, %struct.configfs_subsystem** %8, align 8
  %190 = getelementptr inbounds %struct.configfs_subsystem, %struct.configfs_subsystem* %189, i32 0, i32 0
  %191 = call i32 @mutex_unlock(i32* %190)
  %192 = load %struct.config_item*, %struct.config_item** %7, align 8
  %193 = call i32 @config_item_put(%struct.config_item* %192)
  %194 = load %struct.module*, %struct.module** %12, align 8
  %195 = call i32 @module_put(%struct.module* %194)
  %196 = load %struct.module*, %struct.module** %11, align 8
  %197 = call i32 @module_put(%struct.module* %196)
  store i32 0, i32* %3, align 4
  br label %198

198:                                              ; preds = %185, %128, %101, %45, %24
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

declare dso_local %struct.config_item* @configfs_get_config_item(%struct.dentry*) #1

declare dso_local %struct.TYPE_11__* @to_config_group(%struct.config_item*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @config_item_put(%struct.config_item*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @configfs_detach_prep(%struct.dentry*, %struct.dentry**) #1

declare dso_local i32 @configfs_detach_rollback(%struct.dentry*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @inode_lock(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @inode_unlock(i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i64 @down_write_killable(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @configfs_detach_group(%struct.config_item*) #1

declare dso_local i32 @client_disconnect_notify(%struct.config_item*, %struct.config_item*) #1

declare dso_local i32 @unlink_group(%struct.TYPE_11__*) #1

declare dso_local i32 @configfs_detach_item(%struct.config_item*) #1

declare dso_local i32 @unlink_obj(%struct.config_item*) #1

declare dso_local i32 @client_drop_item(%struct.config_item*, %struct.config_item*) #1

declare dso_local i32 @module_put(%struct.module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
