; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_inode.c_cifs_mkdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_inode.c_cifs_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.cifs_sb_info = type { i32 }
%struct.tcon_link = type { i32 }
%struct.cifs_tcon = type { %struct.TYPE_5__, %struct.TYPE_7__*, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TCP_Server_Info* }
%struct.TCP_Server_Info = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (i32, %struct.inode*, i32, %struct.cifs_tcon*, i8*, %struct.cifs_sb_info*)*, i32 (i32, %struct.inode*, i32, %struct.cifs_tcon*, i8*, %struct.cifs_sb_info*)* }
%struct.TYPE_8__ = type { i64 }

@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"In cifs_mkdir, mode = 0x%hx inode = 0x%p\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CIFS_UNIX_POSIX_PATH_OPS_CAP = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"cifs_mkdir returned 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cifs_sb_info*, align 8
  %11 = alloca %struct.tcon_link*, align 8
  %12 = alloca %struct.cifs_tcon*, align 8
  %13 = alloca %struct.TCP_Server_Info*, align 8
  %14 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* @FYI, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = call i32 (i32, i8*, i32, ...) @cifs_dbg(i32 %15, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %16, %struct.inode* %17)
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.cifs_sb_info* @CIFS_SB(i32 %21)
  store %struct.cifs_sb_info* %22, %struct.cifs_sb_info** %10, align 8
  %23 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %10, align 8
  %24 = call %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info* %23)
  store %struct.tcon_link* %24, %struct.tcon_link** %11, align 8
  %25 = load %struct.tcon_link*, %struct.tcon_link** %11, align 8
  %26 = call i64 @IS_ERR(%struct.tcon_link* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load %struct.tcon_link*, %struct.tcon_link** %11, align 8
  %30 = call i32 @PTR_ERR(%struct.tcon_link* %29)
  store i32 %30, i32* %4, align 4
  br label %155

31:                                               ; preds = %3
  %32 = load %struct.tcon_link*, %struct.tcon_link** %11, align 8
  %33 = call %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link* %32)
  store %struct.cifs_tcon* %33, %struct.cifs_tcon** %12, align 8
  %34 = call i32 (...) @get_xid()
  store i32 %34, i32* %9, align 4
  %35 = load %struct.dentry*, %struct.dentry** %6, align 8
  %36 = call i8* @build_path_from_dentry(%struct.dentry* %35)
  store i8* %36, i8** %14, align 8
  %37 = load i8*, i8** %14, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %8, align 4
  br label %144

42:                                               ; preds = %31
  %43 = load %struct.cifs_tcon*, %struct.cifs_tcon** %12, align 8
  %44 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %43, i32 0, i32 1
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %46, align 8
  store %struct.TCP_Server_Info* %47, %struct.TCP_Server_Info** %13, align 8
  %48 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %13, align 8
  %49 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32 (i32, %struct.inode*, i32, %struct.cifs_tcon*, i8*, %struct.cifs_sb_info*)*, i32 (i32, %struct.inode*, i32, %struct.cifs_tcon*, i8*, %struct.cifs_sb_info*)** %51, align 8
  %53 = icmp ne i32 (i32, %struct.inode*, i32, %struct.cifs_tcon*, i8*, %struct.cifs_sb_info*)* %52, null
  br i1 %53, label %54, label %74

54:                                               ; preds = %42
  %55 = load %struct.cifs_tcon*, %struct.cifs_tcon** %12, align 8
  %56 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %54
  %60 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %13, align 8
  %61 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32 (i32, %struct.inode*, i32, %struct.cifs_tcon*, i8*, %struct.cifs_sb_info*)*, i32 (i32, %struct.inode*, i32, %struct.cifs_tcon*, i8*, %struct.cifs_sb_info*)** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.inode*, %struct.inode** %5, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.cifs_tcon*, %struct.cifs_tcon** %12, align 8
  %69 = load i8*, i8** %14, align 8
  %70 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %10, align 8
  %71 = call i32 %64(i32 %65, %struct.inode* %66, i32 %67, %struct.cifs_tcon* %68, i8* %69, %struct.cifs_sb_info* %70)
  store i32 %71, i32* %8, align 4
  %72 = load %struct.dentry*, %struct.dentry** %6, align 8
  %73 = call i32 @d_drop(%struct.dentry* %72)
  br label %144

74:                                               ; preds = %54, %42
  %75 = load %struct.cifs_tcon*, %struct.cifs_tcon** %12, align 8
  %76 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %75, i32 0, i32 1
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = call i64 @cap_unix(%struct.TYPE_7__* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %104

80:                                               ; preds = %74
  %81 = load i32, i32* @CIFS_UNIX_POSIX_PATH_OPS_CAP, align 4
  %82 = load %struct.cifs_tcon*, %struct.cifs_tcon** %12, align 8
  %83 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @le64_to_cpu(i32 %85)
  %87 = and i32 %81, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %104

89:                                               ; preds = %80
  %90 = load %struct.inode*, %struct.inode** %5, align 8
  %91 = load %struct.dentry*, %struct.dentry** %6, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load i8*, i8** %14, align 8
  %94 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %10, align 8
  %95 = load %struct.cifs_tcon*, %struct.cifs_tcon** %12, align 8
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @cifs_posix_mkdir(%struct.inode* %90, %struct.dentry* %91, i32 %92, i8* %93, %struct.cifs_sb_info* %94, %struct.cifs_tcon* %95, i32 %96)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @EOPNOTSUPP, align 4
  %100 = sub nsw i32 0, %99
  %101 = icmp ne i32 %98, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %89
  br label %144

103:                                              ; preds = %89
  br label %104

104:                                              ; preds = %103, %80, %74
  %105 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %13, align 8
  %106 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %105, i32 0, i32 0
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = load i32 (i32, %struct.inode*, i32, %struct.cifs_tcon*, i8*, %struct.cifs_sb_info*)*, i32 (i32, %struct.inode*, i32, %struct.cifs_tcon*, i8*, %struct.cifs_sb_info*)** %108, align 8
  %110 = icmp ne i32 (i32, %struct.inode*, i32, %struct.cifs_tcon*, i8*, %struct.cifs_sb_info*)* %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %104
  %112 = load i32, i32* @ENOSYS, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %8, align 4
  br label %144

114:                                              ; preds = %104
  %115 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %13, align 8
  %116 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %115, i32 0, i32 0
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = load i32 (i32, %struct.inode*, i32, %struct.cifs_tcon*, i8*, %struct.cifs_sb_info*)*, i32 (i32, %struct.inode*, i32, %struct.cifs_tcon*, i8*, %struct.cifs_sb_info*)** %118, align 8
  %120 = load i32, i32* %9, align 4
  %121 = load %struct.inode*, %struct.inode** %5, align 8
  %122 = load i32, i32* %7, align 4
  %123 = load %struct.cifs_tcon*, %struct.cifs_tcon** %12, align 8
  %124 = load i8*, i8** %14, align 8
  %125 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %10, align 8
  %126 = call i32 %119(i32 %120, %struct.inode* %121, i32 %122, %struct.cifs_tcon* %123, i8* %124, %struct.cifs_sb_info* %125)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %114
  %130 = load i32, i32* @FYI, align 4
  %131 = load i32, i32* %8, align 4
  %132 = call i32 (i32, i8*, i32, ...) @cifs_dbg(i32 %130, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %131)
  %133 = load %struct.dentry*, %struct.dentry** %6, align 8
  %134 = call i32 @d_drop(%struct.dentry* %133)
  br label %144

135:                                              ; preds = %114
  %136 = load %struct.inode*, %struct.inode** %5, align 8
  %137 = load %struct.dentry*, %struct.dentry** %6, align 8
  %138 = load i32, i32* %7, align 4
  %139 = load i8*, i8** %14, align 8
  %140 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %10, align 8
  %141 = load %struct.cifs_tcon*, %struct.cifs_tcon** %12, align 8
  %142 = load i32, i32* %9, align 4
  %143 = call i32 @cifs_mkdir_qinfo(%struct.inode* %136, %struct.dentry* %137, i32 %138, i8* %139, %struct.cifs_sb_info* %140, %struct.cifs_tcon* %141, i32 %142)
  store i32 %143, i32* %8, align 4
  br label %144

144:                                              ; preds = %135, %129, %111, %102, %59, %39
  %145 = load %struct.inode*, %struct.inode** %5, align 8
  %146 = call %struct.TYPE_8__* @CIFS_I(%struct.inode* %145)
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  store i64 0, i64* %147, align 8
  %148 = load i8*, i8** %14, align 8
  %149 = call i32 @kfree(i8* %148)
  %150 = load i32, i32* %9, align 4
  %151 = call i32 @free_xid(i32 %150)
  %152 = load %struct.tcon_link*, %struct.tcon_link** %11, align 8
  %153 = call i32 @cifs_put_tlink(%struct.tcon_link* %152)
  %154 = load i32, i32* %8, align 4
  store i32 %154, i32* %4, align 4
  br label %155

155:                                              ; preds = %144, %28
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local i32 @cifs_dbg(i32, i8*, i32, ...) #1

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info*) #1

declare dso_local i64 @IS_ERR(%struct.tcon_link*) #1

declare dso_local i32 @PTR_ERR(%struct.tcon_link*) #1

declare dso_local %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link*) #1

declare dso_local i32 @get_xid(...) #1

declare dso_local i8* @build_path_from_dentry(%struct.dentry*) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

declare dso_local i64 @cap_unix(%struct.TYPE_7__*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @cifs_posix_mkdir(%struct.inode*, %struct.dentry*, i32, i8*, %struct.cifs_sb_info*, %struct.cifs_tcon*, i32) #1

declare dso_local i32 @cifs_mkdir_qinfo(%struct.inode*, %struct.dentry*, i32, i8*, %struct.cifs_sb_info*, %struct.cifs_tcon*, i32) #1

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
