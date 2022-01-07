; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifsfs.c_cifs_smb3_do_mount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifsfs.c_cifs_smb3_do_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, i32, i64 }
%struct.file_system_type = type { i32 }
%struct.super_block = type { i32, i32, i64 }
%struct.cifs_sb_info = type { %struct.cifs_sb_info*, %struct.cifs_sb_info* }
%struct.smb_vol = type { i32, i32, i64 }
%struct.cifs_mnt_data = type { i32, %struct.cifs_sb_info*, %struct.super_block* }

@cifsFYI = common dso_local global i64 0, align 8
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Devname: %s flags: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Attempting to mount %s\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@SB_SILENT = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"cifs_mount failed w/return code = %d\0A\00", align 1
@SB_NODIRATIME = common dso_local global i32 0, align 4
@SB_NOATIME = common dso_local global i32 0, align 4
@cifs_match_super = common dso_local global i32 0, align 4
@cifs_set_super = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Use existing superblock\0A\00", align 1
@SB_ACTIVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"dentry root is: %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.file_system_type*, i32, i8*, i8*, i32)* @cifs_smb3_do_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @cifs_smb3_do_mount(%struct.file_system_type* %0, i32 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.file_system_type*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.super_block*, align 8
  %14 = alloca %struct.cifs_sb_info*, align 8
  %15 = alloca %struct.smb_vol*, align 8
  %16 = alloca %struct.cifs_mnt_data, align 8
  %17 = alloca %struct.dentry*, align 8
  store %struct.file_system_type* %0, %struct.file_system_type** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load i64, i64* @cifsFYI, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %5
  %21 = load i32, i32* @FYI, align 4
  %22 = load i8*, i8** %9, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %22, i32 %23)
  br label %28

25:                                               ; preds = %5
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 @cifs_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %25, %20
  %29 = load i8*, i8** %10, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call %struct.super_block* @cifs_get_volume_info(i8* %29, i8* %30, i32 %31)
  %33 = bitcast %struct.super_block* %32 to %struct.smb_vol*
  store %struct.smb_vol* %33, %struct.smb_vol** %15, align 8
  %34 = load %struct.smb_vol*, %struct.smb_vol** %15, align 8
  %35 = bitcast %struct.smb_vol* %34 to %struct.super_block*
  %36 = call i64 @IS_ERR(%struct.super_block* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %28
  %39 = load %struct.smb_vol*, %struct.smb_vol** %15, align 8
  %40 = bitcast %struct.smb_vol* %39 to %struct.super_block*
  %41 = call %struct.super_block* @ERR_CAST(%struct.super_block* %40)
  %42 = bitcast %struct.super_block* %41 to %struct.dentry*
  store %struct.dentry* %42, %struct.dentry** %6, align 8
  br label %191

43:                                               ; preds = %28
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.cifs_sb_info* @kzalloc(i32 16, i32 %44)
  store %struct.cifs_sb_info* %45, %struct.cifs_sb_info** %14, align 8
  %46 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %14, align 8
  %47 = icmp eq %struct.cifs_sb_info* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  %51 = call %struct.super_block* @ERR_PTR(i32 %50)
  %52 = bitcast %struct.super_block* %51 to %struct.dentry*
  store %struct.dentry* %52, %struct.dentry** %17, align 8
  br label %186

53:                                               ; preds = %43
  %54 = load i8*, i8** %10, align 8
  %55 = load i32, i32* @PAGE_SIZE, align 4
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call %struct.cifs_sb_info* @kstrndup(i8* %54, i32 %55, i32 %56)
  %58 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %14, align 8
  %59 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %58, i32 0, i32 0
  store %struct.cifs_sb_info* %57, %struct.cifs_sb_info** %59, align 8
  %60 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %14, align 8
  %61 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %60, i32 0, i32 0
  %62 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %61, align 8
  %63 = icmp eq %struct.cifs_sb_info* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %53
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  %67 = call %struct.super_block* @ERR_PTR(i32 %66)
  %68 = bitcast %struct.super_block* %67 to %struct.dentry*
  store %struct.dentry* %68, %struct.dentry** %17, align 8
  br label %175

69:                                               ; preds = %53
  %70 = load %struct.smb_vol*, %struct.smb_vol** %15, align 8
  %71 = bitcast %struct.smb_vol* %70 to %struct.super_block*
  %72 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %14, align 8
  %73 = call i32 @cifs_setup_cifs_sb(%struct.super_block* %71, %struct.cifs_sb_info* %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %69
  %77 = load i32, i32* %12, align 4
  %78 = call %struct.super_block* @ERR_PTR(i32 %77)
  %79 = bitcast %struct.super_block* %78 to %struct.dentry*
  store %struct.dentry* %79, %struct.dentry** %17, align 8
  br label %175

80:                                               ; preds = %69
  %81 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %14, align 8
  %82 = load %struct.smb_vol*, %struct.smb_vol** %15, align 8
  %83 = bitcast %struct.smb_vol* %82 to %struct.super_block*
  %84 = call i32 @cifs_mount(%struct.cifs_sb_info* %81, %struct.super_block* %83)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %80
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @SB_SILENT, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %87
  %93 = load i32, i32* @VFS, align 4
  %94 = load i32, i32* %12, align 4
  %95 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %93, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %92, %87
  %97 = load i32, i32* %12, align 4
  %98 = call %struct.super_block* @ERR_PTR(i32 %97)
  %99 = bitcast %struct.super_block* %98 to %struct.dentry*
  store %struct.dentry* %99, %struct.dentry** %17, align 8
  br label %175

100:                                              ; preds = %80
  %101 = load %struct.smb_vol*, %struct.smb_vol** %15, align 8
  %102 = bitcast %struct.smb_vol* %101 to %struct.super_block*
  %103 = getelementptr inbounds %struct.cifs_mnt_data, %struct.cifs_mnt_data* %16, i32 0, i32 2
  store %struct.super_block* %102, %struct.super_block** %103, align 8
  %104 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %14, align 8
  %105 = getelementptr inbounds %struct.cifs_mnt_data, %struct.cifs_mnt_data* %16, i32 0, i32 1
  store %struct.cifs_sb_info* %104, %struct.cifs_sb_info** %105, align 8
  %106 = load i32, i32* %8, align 4
  %107 = getelementptr inbounds %struct.cifs_mnt_data, %struct.cifs_mnt_data* %16, i32 0, i32 0
  store i32 %106, i32* %107, align 8
  %108 = load i32, i32* @SB_NODIRATIME, align 4
  %109 = load i32, i32* @SB_NOATIME, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* %8, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %8, align 4
  %113 = load %struct.file_system_type*, %struct.file_system_type** %7, align 8
  %114 = load i32, i32* @cifs_match_super, align 4
  %115 = load i32, i32* @cifs_set_super, align 4
  %116 = load i32, i32* %8, align 4
  %117 = call %struct.super_block* @sget(%struct.file_system_type* %113, i32 %114, i32 %115, i32 %116, %struct.cifs_mnt_data* %16)
  store %struct.super_block* %117, %struct.super_block** %13, align 8
  %118 = load %struct.super_block*, %struct.super_block** %13, align 8
  %119 = call i64 @IS_ERR(%struct.super_block* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %100
  %122 = load %struct.super_block*, %struct.super_block** %13, align 8
  %123 = call %struct.super_block* @ERR_CAST(%struct.super_block* %122)
  %124 = bitcast %struct.super_block* %123 to %struct.dentry*
  store %struct.dentry* %124, %struct.dentry** %17, align 8
  %125 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %14, align 8
  %126 = call i32 @cifs_umount(%struct.cifs_sb_info* %125)
  br label %170

127:                                              ; preds = %100
  %128 = load %struct.super_block*, %struct.super_block** %13, align 8
  %129 = getelementptr inbounds %struct.super_block, %struct.super_block* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %127
  %133 = load i32, i32* @FYI, align 4
  %134 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %133, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %135 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %14, align 8
  %136 = call i32 @cifs_umount(%struct.cifs_sb_info* %135)
  br label %152

137:                                              ; preds = %127
  %138 = load %struct.super_block*, %struct.super_block** %13, align 8
  %139 = call i32 @cifs_read_super(%struct.super_block* %138)
  store i32 %139, i32* %12, align 4
  %140 = load i32, i32* %12, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %137
  %143 = load i32, i32* %12, align 4
  %144 = call %struct.super_block* @ERR_PTR(i32 %143)
  %145 = bitcast %struct.super_block* %144 to %struct.dentry*
  store %struct.dentry* %145, %struct.dentry** %17, align 8
  br label %167

146:                                              ; preds = %137
  %147 = load i32, i32* @SB_ACTIVE, align 4
  %148 = load %struct.super_block*, %struct.super_block** %13, align 8
  %149 = getelementptr inbounds %struct.super_block, %struct.super_block* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 4
  br label %152

152:                                              ; preds = %146, %132
  %153 = load %struct.smb_vol*, %struct.smb_vol** %15, align 8
  %154 = bitcast %struct.smb_vol* %153 to %struct.super_block*
  %155 = load %struct.super_block*, %struct.super_block** %13, align 8
  %156 = call %struct.super_block* @cifs_get_root(%struct.super_block* %154, %struct.super_block* %155)
  %157 = bitcast %struct.super_block* %156 to %struct.dentry*
  store %struct.dentry* %157, %struct.dentry** %17, align 8
  %158 = load %struct.dentry*, %struct.dentry** %17, align 8
  %159 = bitcast %struct.dentry* %158 to %struct.super_block*
  %160 = call i64 @IS_ERR(%struct.super_block* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %152
  br label %167

163:                                              ; preds = %152
  %164 = load i32, i32* @FYI, align 4
  %165 = load %struct.dentry*, %struct.dentry** %17, align 8
  %166 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %164, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), %struct.dentry* %165)
  br label %170

167:                                              ; preds = %162, %142
  %168 = load %struct.super_block*, %struct.super_block** %13, align 8
  %169 = call i32 @deactivate_locked_super(%struct.super_block* %168)
  br label %170

170:                                              ; preds = %186, %167, %163, %121
  %171 = load %struct.smb_vol*, %struct.smb_vol** %15, align 8
  %172 = bitcast %struct.smb_vol* %171 to %struct.super_block*
  %173 = call i32 @cifs_cleanup_volume_info(%struct.super_block* %172)
  %174 = load %struct.dentry*, %struct.dentry** %17, align 8
  store %struct.dentry* %174, %struct.dentry** %6, align 8
  br label %191

175:                                              ; preds = %96, %76, %64
  %176 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %14, align 8
  %177 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %176, i32 0, i32 1
  %178 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %177, align 8
  %179 = call i32 @kfree(%struct.cifs_sb_info* %178)
  %180 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %14, align 8
  %181 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %180, i32 0, i32 0
  %182 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %181, align 8
  %183 = call i32 @kfree(%struct.cifs_sb_info* %182)
  %184 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %14, align 8
  %185 = call i32 @kfree(%struct.cifs_sb_info* %184)
  br label %186

186:                                              ; preds = %175, %48
  %187 = load %struct.smb_vol*, %struct.smb_vol** %15, align 8
  %188 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @unload_nls(i32 %189)
  br label %170

191:                                              ; preds = %170, %38
  %192 = load %struct.dentry*, %struct.dentry** %6, align 8
  ret %struct.dentry* %192
}

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

declare dso_local i32 @cifs_info(i8*, i8*) #1

declare dso_local %struct.super_block* @cifs_get_volume_info(i8*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.super_block*) #1

declare dso_local %struct.super_block* @ERR_CAST(%struct.super_block*) #1

declare dso_local %struct.cifs_sb_info* @kzalloc(i32, i32) #1

declare dso_local %struct.super_block* @ERR_PTR(i32) #1

declare dso_local %struct.cifs_sb_info* @kstrndup(i8*, i32, i32) #1

declare dso_local i32 @cifs_setup_cifs_sb(%struct.super_block*, %struct.cifs_sb_info*) #1

declare dso_local i32 @cifs_mount(%struct.cifs_sb_info*, %struct.super_block*) #1

declare dso_local %struct.super_block* @sget(%struct.file_system_type*, i32, i32, i32, %struct.cifs_mnt_data*) #1

declare dso_local i32 @cifs_umount(%struct.cifs_sb_info*) #1

declare dso_local i32 @cifs_read_super(%struct.super_block*) #1

declare dso_local %struct.super_block* @cifs_get_root(%struct.super_block*, %struct.super_block*) #1

declare dso_local i32 @deactivate_locked_super(%struct.super_block*) #1

declare dso_local i32 @cifs_cleanup_volume_info(%struct.super_block*) #1

declare dso_local i32 @kfree(%struct.cifs_sb_info*) #1

declare dso_local i32 @unload_nls(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
