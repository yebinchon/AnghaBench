; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_nt_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_nt_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.cifs_sb_info = type { i32 }
%struct.cifs_tcon = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TCP_Server_Info* }
%struct.TCP_Server_Info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32, %struct.cifs_open_parms*, i32*, i32*)*, i32 (i32, %struct.cifs_tcon*, %struct.cifs_fid*)* }
%struct.cifs_open_parms = type { i32, i32, i32, i8*, i32, %struct.cifs_fid*, %struct.cifs_sb_info*, %struct.cifs_tcon* }
%struct.cifs_fid = type { i32 }

@CREATE_NOT_DIR = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CREATE_OPEN_BACKUP_INTENT = common dso_local global i32 0, align 4
@O_SYNC = common dso_local global i32 0, align 4
@CREATE_WRITE_THROUGH = common dso_local global i32 0, align 4
@O_DIRECT = common dso_local global i32 0, align 4
@CREATE_NO_BUFFER = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@EOPENSTALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.inode*, %struct.cifs_sb_info*, %struct.cifs_tcon*, i32, i32*, %struct.cifs_fid*, i32)* @cifs_nt_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_nt_open(i8* %0, %struct.inode* %1, %struct.cifs_sb_info* %2, %struct.cifs_tcon* %3, i32 %4, i32* %5, %struct.cifs_fid* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.cifs_sb_info*, align 8
  %13 = alloca %struct.cifs_tcon*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.cifs_fid*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TCP_Server_Info*, align 8
  %24 = alloca %struct.cifs_open_parms, align 8
  store i8* %0, i8** %10, align 8
  store %struct.inode* %1, %struct.inode** %11, align 8
  store %struct.cifs_sb_info* %2, %struct.cifs_sb_info** %12, align 8
  store %struct.cifs_tcon* %3, %struct.cifs_tcon** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store %struct.cifs_fid* %6, %struct.cifs_fid** %16, align 8
  store i32 %7, i32* %17, align 4
  %25 = load i32, i32* @CREATE_NOT_DIR, align 4
  store i32 %25, i32* %21, align 4
  %26 = load %struct.cifs_tcon*, %struct.cifs_tcon** %13, align 8
  %27 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %29, align 8
  store %struct.TCP_Server_Info* %30, %struct.TCP_Server_Info** %23, align 8
  %31 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %23, align 8
  %32 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32 (i32, %struct.cifs_open_parms*, i32*, i32*)*, i32 (i32, %struct.cifs_open_parms*, i32*, i32*)** %34, align 8
  %36 = icmp ne i32 (i32, %struct.cifs_open_parms*, i32*, i32*)* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %8
  %38 = load i32, i32* @ENOSYS, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %9, align 4
  br label %153

40:                                               ; preds = %8
  %41 = load i32, i32* %14, align 4
  %42 = call i32 @cifs_convert_flags(i32 %41)
  store i32 %42, i32* %19, align 4
  %43 = load i32, i32* %14, align 4
  %44 = call i32 @cifs_get_disposition(i32 %43)
  store i32 %44, i32* %20, align 4
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i32* @kmalloc(i32 4, i32 %45)
  store i32* %46, i32** %22, align 8
  %47 = load i32*, i32** %22, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %40
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %9, align 4
  br label %153

52:                                               ; preds = %40
  %53 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %12, align 8
  %54 = call i64 @backup_cred(%struct.cifs_sb_info* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i32, i32* @CREATE_OPEN_BACKUP_INTENT, align 4
  %58 = load i32, i32* %21, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %21, align 4
  br label %60

60:                                               ; preds = %56, %52
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* @O_SYNC, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* @CREATE_WRITE_THROUGH, align 4
  %67 = load i32, i32* %21, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %21, align 4
  br label %69

69:                                               ; preds = %65, %60
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* @O_DIRECT, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load i32, i32* @CREATE_NO_BUFFER, align 4
  %76 = load i32, i32* %21, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %21, align 4
  br label %78

78:                                               ; preds = %74, %69
  %79 = load %struct.cifs_tcon*, %struct.cifs_tcon** %13, align 8
  %80 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %24, i32 0, i32 7
  store %struct.cifs_tcon* %79, %struct.cifs_tcon** %80, align 8
  %81 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %12, align 8
  %82 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %24, i32 0, i32 6
  store %struct.cifs_sb_info* %81, %struct.cifs_sb_info** %82, align 8
  %83 = load i32, i32* %19, align 4
  %84 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %24, i32 0, i32 0
  store i32 %83, i32* %84, align 8
  %85 = load i32, i32* %21, align 4
  %86 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %24, i32 0, i32 1
  store i32 %85, i32* %86, align 4
  %87 = load i32, i32* %20, align 4
  %88 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %24, i32 0, i32 2
  store i32 %87, i32* %88, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %24, i32 0, i32 3
  store i8* %89, i8** %90, align 8
  %91 = load %struct.cifs_fid*, %struct.cifs_fid** %16, align 8
  %92 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %24, i32 0, i32 5
  store %struct.cifs_fid* %91, %struct.cifs_fid** %92, align 8
  %93 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %24, i32 0, i32 4
  store i32 0, i32* %93, align 8
  %94 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %23, align 8
  %95 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32 (i32, %struct.cifs_open_parms*, i32*, i32*)*, i32 (i32, %struct.cifs_open_parms*, i32*, i32*)** %97, align 8
  %99 = load i32, i32* %17, align 4
  %100 = load i32*, i32** %15, align 8
  %101 = load i32*, i32** %22, align 8
  %102 = call i32 %98(i32 %99, %struct.cifs_open_parms* %24, i32* %100, i32* %101)
  store i32 %102, i32* %18, align 4
  %103 = load i32, i32* %18, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %78
  br label %149

106:                                              ; preds = %78
  %107 = load %struct.cifs_tcon*, %struct.cifs_tcon** %13, align 8
  %108 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %106
  %112 = load i8*, i8** %10, align 8
  %113 = load %struct.inode*, %struct.inode** %11, align 8
  %114 = getelementptr inbounds %struct.inode, %struct.inode* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %17, align 4
  %117 = call i32 @cifs_get_inode_info_unix(%struct.inode** %11, i8* %112, i32 %115, i32 %116)
  store i32 %117, i32* %18, align 4
  br label %127

118:                                              ; preds = %106
  %119 = load i8*, i8** %10, align 8
  %120 = load i32*, i32** %22, align 8
  %121 = load %struct.inode*, %struct.inode** %11, align 8
  %122 = getelementptr inbounds %struct.inode, %struct.inode* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %17, align 4
  %125 = load %struct.cifs_fid*, %struct.cifs_fid** %16, align 8
  %126 = call i32 @cifs_get_inode_info(%struct.inode** %11, i8* %119, i32* %120, i32 %123, i32 %124, %struct.cifs_fid* %125)
  store i32 %126, i32* %18, align 4
  br label %127

127:                                              ; preds = %118, %111
  %128 = load i32, i32* %18, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %148

130:                                              ; preds = %127
  %131 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %23, align 8
  %132 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %131, i32 0, i32 0
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  %135 = load i32 (i32, %struct.cifs_tcon*, %struct.cifs_fid*)*, i32 (i32, %struct.cifs_tcon*, %struct.cifs_fid*)** %134, align 8
  %136 = load i32, i32* %17, align 4
  %137 = load %struct.cifs_tcon*, %struct.cifs_tcon** %13, align 8
  %138 = load %struct.cifs_fid*, %struct.cifs_fid** %16, align 8
  %139 = call i32 %135(i32 %136, %struct.cifs_tcon* %137, %struct.cifs_fid* %138)
  %140 = load i32, i32* %18, align 4
  %141 = load i32, i32* @ESTALE, align 4
  %142 = sub nsw i32 0, %141
  %143 = icmp eq i32 %140, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %130
  %145 = load i32, i32* @EOPENSTALE, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %18, align 4
  br label %147

147:                                              ; preds = %144, %130
  br label %148

148:                                              ; preds = %147, %127
  br label %149

149:                                              ; preds = %148, %105
  %150 = load i32*, i32** %22, align 8
  %151 = call i32 @kfree(i32* %150)
  %152 = load i32, i32* %18, align 4
  store i32 %152, i32* %9, align 4
  br label %153

153:                                              ; preds = %149, %49, %37
  %154 = load i32, i32* %9, align 4
  ret i32 %154
}

declare dso_local i32 @cifs_convert_flags(i32) #1

declare dso_local i32 @cifs_get_disposition(i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i64 @backup_cred(%struct.cifs_sb_info*) #1

declare dso_local i32 @cifs_get_inode_info_unix(%struct.inode**, i8*, i32, i32) #1

declare dso_local i32 @cifs_get_inode_info(%struct.inode**, i8*, i32*, i32, i32, %struct.cifs_fid*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
