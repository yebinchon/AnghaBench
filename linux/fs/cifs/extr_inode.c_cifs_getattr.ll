; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_inode.c_cifs_getattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_inode.c_cifs_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.kstat = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cifs_sb_info = type { i32, i32 }
%struct.cifs_tcon = type { i32 }
%struct.inode = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32, i64, i32 }

@STATX_BTIME = common dso_local global i32 0, align 4
@STATX_ATTR_COMPRESSED = common dso_local global i32 0, align 4
@STATX_ATTR_ENCRYPTED = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_COMPRESSED = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_ENCRYPTED = common dso_local global i32 0, align 4
@CIFS_MOUNT_MULTIUSER = common dso_local global i32 0, align 4
@CIFS_MOUNT_CIFS_ACL = common dso_local global i32 0, align 4
@CIFS_MOUNT_OVERR_UID = common dso_local global i32 0, align 4
@CIFS_MOUNT_OVERR_GID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_getattr(%struct.path* %0, %struct.kstat* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.path*, align 8
  %7 = alloca %struct.kstat*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.cifs_sb_info*, align 8
  %12 = alloca %struct.cifs_tcon*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca i32, align 4
  store %struct.path* %0, %struct.path** %6, align 8
  store %struct.kstat* %1, %struct.kstat** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.path*, %struct.path** %6, align 8
  %16 = getelementptr inbounds %struct.path, %struct.path* %15, i32 0, i32 0
  %17 = load %struct.dentry*, %struct.dentry** %16, align 8
  store %struct.dentry* %17, %struct.dentry** %10, align 8
  %18 = load %struct.dentry*, %struct.dentry** %10, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.cifs_sb_info* @CIFS_SB(i32 %20)
  store %struct.cifs_sb_info* %21, %struct.cifs_sb_info** %11, align 8
  %22 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %11, align 8
  %23 = call %struct.cifs_tcon* @cifs_sb_master_tcon(%struct.cifs_sb_info* %22)
  store %struct.cifs_tcon* %23, %struct.cifs_tcon** %12, align 8
  %24 = load %struct.dentry*, %struct.dentry** %10, align 8
  %25 = call %struct.inode* @d_inode(%struct.dentry* %24)
  store %struct.inode* %25, %struct.inode** %13, align 8
  %26 = load %struct.inode*, %struct.inode** %13, align 8
  %27 = call %struct.TYPE_6__* @CIFS_I(%struct.inode* %26)
  %28 = call i32 @CIFS_CACHE_READ(%struct.TYPE_6__* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %57, label %30

30:                                               ; preds = %4
  %31 = load %struct.inode*, %struct.inode** %13, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = icmp ne %struct.TYPE_5__* %33, null
  br i1 %34, label %35, label %57

35:                                               ; preds = %30
  %36 = load %struct.inode*, %struct.inode** %13, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %35
  %43 = load %struct.inode*, %struct.inode** %13, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = call i32 @filemap_fdatawait(%struct.TYPE_5__* %45)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %42
  %50 = load %struct.inode*, %struct.inode** %13, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @mapping_set_error(%struct.TYPE_5__* %52, i32 %53)
  %55 = load i32, i32* %14, align 4
  store i32 %55, i32* %5, align 4
  br label %177

56:                                               ; preds = %42
  br label %57

57:                                               ; preds = %56, %35, %30, %4
  %58 = load %struct.dentry*, %struct.dentry** %10, align 8
  %59 = call i32 @cifs_revalidate_dentry_attr(%struct.dentry* %58)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %14, align 4
  store i32 %63, i32* %5, align 4
  br label %177

64:                                               ; preds = %57
  %65 = load %struct.inode*, %struct.inode** %13, align 8
  %66 = load %struct.kstat*, %struct.kstat** %7, align 8
  %67 = call i32 @generic_fillattr(%struct.inode* %65, %struct.kstat* %66)
  %68 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %11, align 8
  %69 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.kstat*, %struct.kstat** %7, align 8
  %72 = getelementptr inbounds %struct.kstat, %struct.kstat* %71, i32 0, i32 7
  store i32 %70, i32* %72, align 4
  %73 = load %struct.inode*, %struct.inode** %13, align 8
  %74 = call %struct.TYPE_6__* @CIFS_I(%struct.inode* %73)
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.kstat*, %struct.kstat** %7, align 8
  %78 = getelementptr inbounds %struct.kstat, %struct.kstat* %77, i32 0, i32 6
  store i32 %76, i32* %78, align 4
  %79 = load %struct.inode*, %struct.inode** %13, align 8
  %80 = call %struct.TYPE_6__* @CIFS_I(%struct.inode* %79)
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %64
  %85 = load i32, i32* @STATX_BTIME, align 4
  %86 = load %struct.kstat*, %struct.kstat** %7, align 8
  %87 = getelementptr inbounds %struct.kstat, %struct.kstat* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  %90 = load %struct.inode*, %struct.inode** %13, align 8
  %91 = call %struct.TYPE_6__* @CIFS_I(%struct.inode* %90)
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @cpu_to_le64(i64 %93)
  %95 = call i32 @cifs_NTtimeToUnix(i32 %94)
  %96 = load %struct.kstat*, %struct.kstat** %7, align 8
  %97 = getelementptr inbounds %struct.kstat, %struct.kstat* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 4
  br label %98

98:                                               ; preds = %84, %64
  %99 = load i32, i32* @STATX_ATTR_COMPRESSED, align 4
  %100 = load i32, i32* @STATX_ATTR_ENCRYPTED, align 4
  %101 = or i32 %99, %100
  %102 = load %struct.kstat*, %struct.kstat** %7, align 8
  %103 = getelementptr inbounds %struct.kstat, %struct.kstat* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  %106 = load %struct.inode*, %struct.inode** %13, align 8
  %107 = call %struct.TYPE_6__* @CIFS_I(%struct.inode* %106)
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @FILE_ATTRIBUTE_COMPRESSED, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %98
  %114 = load i32, i32* @STATX_ATTR_COMPRESSED, align 4
  %115 = load %struct.kstat*, %struct.kstat** %7, align 8
  %116 = getelementptr inbounds %struct.kstat, %struct.kstat* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %113, %98
  %120 = load %struct.inode*, %struct.inode** %13, align 8
  %121 = call %struct.TYPE_6__* @CIFS_I(%struct.inode* %120)
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @FILE_ATTRIBUTE_ENCRYPTED, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %119
  %128 = load i32, i32* @STATX_ATTR_ENCRYPTED, align 4
  %129 = load %struct.kstat*, %struct.kstat** %7, align 8
  %130 = getelementptr inbounds %struct.kstat, %struct.kstat* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %127, %119
  %134 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %11, align 8
  %135 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @CIFS_MOUNT_MULTIUSER, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %175

140:                                              ; preds = %133
  %141 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %11, align 8
  %142 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @CIFS_MOUNT_CIFS_ACL, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %175, label %147

147:                                              ; preds = %140
  %148 = load %struct.cifs_tcon*, %struct.cifs_tcon** %12, align 8
  %149 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %175, label %152

152:                                              ; preds = %147
  %153 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %11, align 8
  %154 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @CIFS_MOUNT_OVERR_UID, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %163, label %159

159:                                              ; preds = %152
  %160 = call i32 (...) @current_fsuid()
  %161 = load %struct.kstat*, %struct.kstat** %7, align 8
  %162 = getelementptr inbounds %struct.kstat, %struct.kstat* %161, i32 0, i32 3
  store i32 %160, i32* %162, align 4
  br label %163

163:                                              ; preds = %159, %152
  %164 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %11, align 8
  %165 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @CIFS_MOUNT_OVERR_GID, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %174, label %170

170:                                              ; preds = %163
  %171 = call i32 (...) @current_fsgid()
  %172 = load %struct.kstat*, %struct.kstat** %7, align 8
  %173 = getelementptr inbounds %struct.kstat, %struct.kstat* %172, i32 0, i32 2
  store i32 %171, i32* %173, align 4
  br label %174

174:                                              ; preds = %170, %163
  br label %175

175:                                              ; preds = %174, %147, %140, %133
  %176 = load i32, i32* %14, align 4
  store i32 %176, i32* %5, align 4
  br label %177

177:                                              ; preds = %175, %62, %49
  %178 = load i32, i32* %5, align 4
  ret i32 %178
}

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local %struct.cifs_tcon* @cifs_sb_master_tcon(%struct.cifs_sb_info*) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @CIFS_CACHE_READ(%struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_6__* @CIFS_I(%struct.inode*) #1

declare dso_local i32 @filemap_fdatawait(%struct.TYPE_5__*) #1

declare dso_local i32 @mapping_set_error(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @cifs_revalidate_dentry_attr(%struct.dentry*) #1

declare dso_local i32 @generic_fillattr(%struct.inode*, %struct.kstat*) #1

declare dso_local i32 @cifs_NTtimeToUnix(i32) #1

declare dso_local i32 @cpu_to_le64(i64) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @current_fsgid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
