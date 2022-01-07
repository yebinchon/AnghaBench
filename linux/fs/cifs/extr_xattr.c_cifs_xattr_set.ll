; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_xattr.c_cifs_xattr_set.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_xattr.c_cifs_xattr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xattr_handler = type { i32 }
%struct.dentry = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.inode = type { i32 }
%struct.cifs_sb_info = type { i32, i32 }
%struct.tcon_link = type { i32 }
%struct.cifs_tcon = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32, %struct.cifs_tcon*, i8*, i8*, i8*, i32, i32, %struct.cifs_sb_info*)*, i32 (i8*, i64, %struct.inode*, i8*, i32)* }
%struct.cifs_ntsd = type opaque
%struct.TYPE_8__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_EA_VALUE_SIZE = common dso_local global i64 0, align 8
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"size of EA value too large\0A\00", align 1
@CIFS_MOUNT_NO_XATTR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@CIFS_ACL_DACL = common dso_local global i32 0, align 4
@ACL_TYPE_ACCESS = common dso_local global i32 0, align 4
@ACL_TYPE_DEFAULT = common dso_local global i32 0, align 4
@SB_POSIXACL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xattr_handler*, %struct.dentry*, %struct.inode*, i8*, i8*, i64, i32)* @cifs_xattr_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_xattr_set(%struct.xattr_handler* %0, %struct.dentry* %1, %struct.inode* %2, i8* %3, i8* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.xattr_handler*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.super_block*, align 8
  %19 = alloca %struct.cifs_sb_info*, align 8
  %20 = alloca %struct.tcon_link*, align 8
  %21 = alloca %struct.cifs_tcon*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.cifs_ntsd*, align 8
  store %struct.xattr_handler* %0, %struct.xattr_handler** %9, align 8
  store %struct.dentry* %1, %struct.dentry** %10, align 8
  store %struct.inode* %2, %struct.inode** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %16, align 4
  %26 = load %struct.dentry*, %struct.dentry** %10, align 8
  %27 = getelementptr inbounds %struct.dentry, %struct.dentry* %26, i32 0, i32 0
  %28 = load %struct.super_block*, %struct.super_block** %27, align 8
  store %struct.super_block* %28, %struct.super_block** %18, align 8
  %29 = load %struct.super_block*, %struct.super_block** %18, align 8
  %30 = call %struct.cifs_sb_info* @CIFS_SB(%struct.super_block* %29)
  store %struct.cifs_sb_info* %30, %struct.cifs_sb_info** %19, align 8
  %31 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %19, align 8
  %32 = call %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info* %31)
  store %struct.tcon_link* %32, %struct.tcon_link** %20, align 8
  %33 = load %struct.tcon_link*, %struct.tcon_link** %20, align 8
  %34 = call i64 @IS_ERR(%struct.tcon_link* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %7
  %37 = load %struct.tcon_link*, %struct.tcon_link** %20, align 8
  %38 = call i32 @PTR_ERR(%struct.tcon_link* %37)
  store i32 %38, i32* %8, align 4
  br label %181

39:                                               ; preds = %7
  %40 = load %struct.tcon_link*, %struct.tcon_link** %20, align 8
  %41 = call %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link* %40)
  store %struct.cifs_tcon* %41, %struct.cifs_tcon** %21, align 8
  %42 = call i32 (...) @get_xid()
  store i32 %42, i32* %17, align 4
  %43 = load %struct.dentry*, %struct.dentry** %10, align 8
  %44 = call i8* @build_path_from_dentry(%struct.dentry* %43)
  store i8* %44, i8** %22, align 8
  %45 = load i8*, i8** %22, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %16, align 4
  br label %173

50:                                               ; preds = %39
  %51 = load i64, i64* %14, align 8
  %52 = load i64, i64* @MAX_EA_VALUE_SIZE, align 8
  %53 = icmp ugt i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i32, i32* @FYI, align 4
  %56 = call i32 @cifs_dbg(i32 %55, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* @EOPNOTSUPP, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %16, align 4
  br label %173

59:                                               ; preds = %50
  %60 = load %struct.xattr_handler*, %struct.xattr_handler** %9, align 8
  %61 = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %172 [
    i32 128, label %63
    i32 129, label %105
    i32 131, label %170
    i32 130, label %171
  ]

63:                                               ; preds = %59
  %64 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %19, align 8
  %65 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @CIFS_MOUNT_NO_XATTR, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %173

71:                                               ; preds = %63
  %72 = load %struct.cifs_tcon*, %struct.cifs_tcon** %21, align 8
  %73 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %72, i32 0, i32 0
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32 (i32, %struct.cifs_tcon*, i8*, i8*, i8*, i32, i32, %struct.cifs_sb_info*)*, i32 (i32, %struct.cifs_tcon*, i8*, i8*, i8*, i32, i32, %struct.cifs_sb_info*)** %79, align 8
  %81 = icmp ne i32 (i32, %struct.cifs_tcon*, i8*, i8*, i8*, i32, i32, %struct.cifs_sb_info*)* %80, null
  br i1 %81, label %82, label %104

82:                                               ; preds = %71
  %83 = load %struct.cifs_tcon*, %struct.cifs_tcon** %21, align 8
  %84 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %83, i32 0, i32 0
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32 (i32, %struct.cifs_tcon*, i8*, i8*, i8*, i32, i32, %struct.cifs_sb_info*)*, i32 (i32, %struct.cifs_tcon*, i8*, i8*, i8*, i32, i32, %struct.cifs_sb_info*)** %90, align 8
  %92 = load i32, i32* %17, align 4
  %93 = load %struct.cifs_tcon*, %struct.cifs_tcon** %21, align 8
  %94 = load i8*, i8** %22, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = load i8*, i8** %13, align 8
  %97 = load i64, i64* %14, align 8
  %98 = trunc i64 %97 to i32
  %99 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %19, align 8
  %100 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %19, align 8
  %103 = call i32 %91(i32 %92, %struct.cifs_tcon* %93, i8* %94, i8* %95, i8* %96, i32 %98, i32 %101, %struct.cifs_sb_info* %102)
  store i32 %103, i32* %16, align 4
  br label %104

104:                                              ; preds = %82, %71
  br label %172

105:                                              ; preds = %59
  %106 = load i8*, i8** %13, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %105
  br label %173

109:                                              ; preds = %105
  %110 = load i64, i64* %14, align 8
  %111 = load i32, i32* @GFP_KERNEL, align 4
  %112 = call i8* @kmalloc(i64 %110, i32 %111)
  %113 = bitcast i8* %112 to %struct.cifs_ntsd*
  store %struct.cifs_ntsd* %113, %struct.cifs_ntsd** %23, align 8
  %114 = load %struct.cifs_ntsd*, %struct.cifs_ntsd** %23, align 8
  %115 = icmp ne %struct.cifs_ntsd* %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %109
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %16, align 4
  br label %169

119:                                              ; preds = %109
  %120 = load %struct.cifs_ntsd*, %struct.cifs_ntsd** %23, align 8
  %121 = bitcast %struct.cifs_ntsd* %120 to i8*
  %122 = load i8*, i8** %13, align 8
  %123 = load i64, i64* %14, align 8
  %124 = call i32 @memcpy(i8* %121, i8* %122, i64 %123)
  %125 = load i8*, i8** %13, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %155

127:                                              ; preds = %119
  %128 = load %struct.cifs_tcon*, %struct.cifs_tcon** %21, align 8
  %129 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %128, i32 0, i32 0
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 1
  %136 = load i32 (i8*, i64, %struct.inode*, i8*, i32)*, i32 (i8*, i64, %struct.inode*, i8*, i32)** %135, align 8
  %137 = icmp ne i32 (i8*, i64, %struct.inode*, i8*, i32)* %136, null
  br i1 %137, label %138, label %155

138:                                              ; preds = %127
  %139 = load %struct.cifs_tcon*, %struct.cifs_tcon** %21, align 8
  %140 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %139, i32 0, i32 0
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 1
  %147 = load i32 (i8*, i64, %struct.inode*, i8*, i32)*, i32 (i8*, i64, %struct.inode*, i8*, i32)** %146, align 8
  %148 = load %struct.cifs_ntsd*, %struct.cifs_ntsd** %23, align 8
  %149 = bitcast %struct.cifs_ntsd* %148 to i8*
  %150 = load i64, i64* %14, align 8
  %151 = load %struct.inode*, %struct.inode** %11, align 8
  %152 = load i8*, i8** %22, align 8
  %153 = load i32, i32* @CIFS_ACL_DACL, align 4
  %154 = call i32 %147(i8* %149, i64 %150, %struct.inode* %151, i8* %152, i32 %153)
  store i32 %154, i32* %16, align 4
  br label %158

155:                                              ; preds = %127, %119
  %156 = load i32, i32* @EOPNOTSUPP, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %16, align 4
  br label %158

158:                                              ; preds = %155, %138
  %159 = load i32, i32* %16, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %158
  %162 = load %struct.inode*, %struct.inode** %11, align 8
  %163 = call %struct.TYPE_8__* @CIFS_I(%struct.inode* %162)
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  store i32 0, i32* %164, align 4
  br label %165

165:                                              ; preds = %161, %158
  %166 = load %struct.cifs_ntsd*, %struct.cifs_ntsd** %23, align 8
  %167 = bitcast %struct.cifs_ntsd* %166 to i8*
  %168 = call i32 @kfree(i8* %167)
  br label %169

169:                                              ; preds = %165, %116
  br label %172

170:                                              ; preds = %59
  br label %172

171:                                              ; preds = %59
  br label %172

172:                                              ; preds = %59, %171, %170, %169, %104
  br label %173

173:                                              ; preds = %172, %108, %70, %54, %47
  %174 = load i8*, i8** %22, align 8
  %175 = call i32 @kfree(i8* %174)
  %176 = load i32, i32* %17, align 4
  %177 = call i32 @free_xid(i32 %176)
  %178 = load %struct.tcon_link*, %struct.tcon_link** %20, align 8
  %179 = call i32 @cifs_put_tlink(%struct.tcon_link* %178)
  %180 = load i32, i32* %16, align 4
  store i32 %180, i32* %8, align 4
  br label %181

181:                                              ; preds = %173, %36
  %182 = load i32, i32* %8, align 4
  ret i32 %182
}

declare dso_local %struct.cifs_sb_info* @CIFS_SB(%struct.super_block*) #1

declare dso_local %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info*) #1

declare dso_local i64 @IS_ERR(%struct.tcon_link*) #1

declare dso_local i32 @PTR_ERR(%struct.tcon_link*) #1

declare dso_local %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link*) #1

declare dso_local i32 @get_xid(...) #1

declare dso_local i8* @build_path_from_dentry(%struct.dentry*) #1

declare dso_local i32 @cifs_dbg(i32, i8*) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local %struct.TYPE_8__* @CIFS_I(%struct.inode*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @free_xid(i32) #1

declare dso_local i32 @cifs_put_tlink(%struct.tcon_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
