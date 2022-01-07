; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb2_make_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb2_make_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.cifs_tcon = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32 (i32, %struct.cifs_open_parms*, i64*, i32*)*, i32 (i32, %struct.cifs_fid*, %struct.cifs_io_parms*, i32*, %struct.kvec*, i32)*, i32 (i32, %struct.cifs_tcon*, %struct.cifs_fid*)* }
%struct.cifs_open_parms = type { i32, i8*, i32, %struct.cifs_fid*, i32, i32, %struct.cifs_sb_info*, %struct.cifs_tcon* }
%struct.cifs_fid = type { i32 }
%struct.cifs_sb_info = type { i32 }
%struct.cifs_io_parms = type { i32, i64, %struct.cifs_tcon*, i32 }
%struct.kvec = type { i32, i32* }
%struct.win_dev = type { i8*, i8*, i32 }

@EPERM = common dso_local global i32 0, align 4
@CREATE_NOT_DIR = common dso_local global i32 0, align 4
@CREATE_OPTION_SPECIAL = common dso_local global i32 0, align 4
@CIFS_MOUNT_UNX_EMUL = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"sfu compat create special file\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CREATE_OPEN_BACKUP_INTENT = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@FILE_CREATE = common dso_local global i32 0, align 4
@REQ_OPLOCK = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_8__* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"IntxCHR\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"IntxBLK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.inode*, %struct.dentry*, %struct.cifs_tcon*, i8*, i32, i32)* @smb2_make_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb2_make_node(i32 %0, %struct.inode* %1, %struct.dentry* %2, %struct.cifs_tcon* %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.cifs_tcon*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.cifs_sb_info*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca %struct.cifs_io_parms, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.cifs_fid, align 4
  %22 = alloca %struct.cifs_open_parms, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.win_dev*, align 8
  %25 = alloca [2 x %struct.kvec], align 16
  store i32 %0, i32* %8, align 4
  store %struct.inode* %1, %struct.inode** %9, align 8
  store %struct.dentry* %2, %struct.dentry** %10, align 8
  store %struct.cifs_tcon* %3, %struct.cifs_tcon** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %26 = load %struct.inode*, %struct.inode** %9, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.cifs_sb_info* @CIFS_SB(i32 %28)
  store %struct.cifs_sb_info* %29, %struct.cifs_sb_info** %15, align 8
  %30 = load i32, i32* @EPERM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* @CREATE_NOT_DIR, align 4
  %33 = load i32, i32* @CREATE_OPTION_SPECIAL, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %17, align 4
  store i32* null, i32** %18, align 8
  store i64 0, i64* %20, align 8
  %35 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %15, align 8
  %36 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CIFS_MOUNT_UNX_EMUL, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %7
  br label %204

42:                                               ; preds = %7
  %43 = load i32, i32* %13, align 4
  %44 = call i64 @S_ISCHR(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %13, align 4
  %48 = call i64 @S_ISBLK(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  br label %204

51:                                               ; preds = %46, %42
  %52 = load i32, i32* @FYI, align 4
  %53 = call i32 @cifs_dbg(i32 %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i32* @kmalloc(i32 4, i32 %54)
  store i32* %55, i32** %18, align 8
  %56 = load i32*, i32** %18, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %16, align 4
  br label %204

61:                                               ; preds = %51
  %62 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %15, align 8
  %63 = call i64 @backup_cred(%struct.cifs_sb_info* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i32, i32* @CREATE_OPEN_BACKUP_INTENT, align 4
  %67 = load i32, i32* %17, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %17, align 4
  br label %69

69:                                               ; preds = %65, %61
  %70 = load %struct.cifs_tcon*, %struct.cifs_tcon** %11, align 8
  %71 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %22, i32 0, i32 7
  store %struct.cifs_tcon* %70, %struct.cifs_tcon** %71, align 8
  %72 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %15, align 8
  %73 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %22, i32 0, i32 6
  store %struct.cifs_sb_info* %72, %struct.cifs_sb_info** %73, align 8
  %74 = load i32, i32* @GENERIC_WRITE, align 4
  %75 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %22, i32 0, i32 5
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* %17, align 4
  %77 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %22, i32 0, i32 0
  store i32 %76, i32* %77, align 8
  %78 = load i32, i32* @FILE_CREATE, align 4
  %79 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %22, i32 0, i32 4
  store i32 %78, i32* %79, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %22, i32 0, i32 1
  store i8* %80, i8** %81, align 8
  %82 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %22, i32 0, i32 3
  store %struct.cifs_fid* %21, %struct.cifs_fid** %82, align 8
  %83 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %22, i32 0, i32 2
  store i32 0, i32* %83, align 8
  %84 = load %struct.cifs_tcon*, %struct.cifs_tcon** %11, align 8
  %85 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %84, i32 0, i32 0
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %69
  %93 = load i64, i64* @REQ_OPLOCK, align 8
  store i64 %93, i64* %20, align 8
  br label %95

94:                                               ; preds = %69
  store i64 0, i64* %20, align 8
  br label %95

95:                                               ; preds = %94, %92
  %96 = load %struct.cifs_tcon*, %struct.cifs_tcon** %11, align 8
  %97 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %96, i32 0, i32 0
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32 (i32, %struct.cifs_open_parms*, i64*, i32*)*, i32 (i32, %struct.cifs_open_parms*, i64*, i32*)** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = load i32*, i32** %18, align 8
  %107 = call i32 %104(i32 %105, %struct.cifs_open_parms* %22, i64* %20, i32* %106)
  store i32 %107, i32* %16, align 4
  %108 = load i32, i32* %16, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %95
  br label %204

111:                                              ; preds = %95
  %112 = load i32*, i32** %18, align 8
  %113 = bitcast i32* %112 to %struct.win_dev*
  store %struct.win_dev* %113, %struct.win_dev** %24, align 8
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %19, i32 0, i32 3
  store i32 %116, i32* %117, align 8
  %118 = load %struct.cifs_tcon*, %struct.cifs_tcon** %11, align 8
  %119 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %19, i32 0, i32 2
  store %struct.cifs_tcon* %118, %struct.cifs_tcon** %119, align 8
  %120 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %19, i32 0, i32 1
  store i64 0, i64* %120, align 8
  %121 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %19, i32 0, i32 0
  store i32 24, i32* %121, align 8
  %122 = load i32*, i32** %18, align 8
  %123 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %25, i64 0, i64 1
  %124 = getelementptr inbounds %struct.kvec, %struct.kvec* %123, i32 0, i32 1
  store i32* %122, i32** %124, align 8
  %125 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %25, i64 0, i64 1
  %126 = getelementptr inbounds %struct.kvec, %struct.kvec* %125, i32 0, i32 0
  store i32 24, i32* %126, align 16
  %127 = load i32, i32* %13, align 4
  %128 = call i64 @S_ISCHR(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %157

130:                                              ; preds = %111
  %131 = load %struct.win_dev*, %struct.win_dev** %24, align 8
  %132 = getelementptr inbounds %struct.win_dev, %struct.win_dev* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @memcpy(i32 %133, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %135 = load i32, i32* %14, align 4
  %136 = call i32 @MAJOR(i32 %135)
  %137 = call i8* @cpu_to_le64(i32 %136)
  %138 = load %struct.win_dev*, %struct.win_dev** %24, align 8
  %139 = getelementptr inbounds %struct.win_dev, %struct.win_dev* %138, i32 0, i32 1
  store i8* %137, i8** %139, align 8
  %140 = load i32, i32* %14, align 4
  %141 = call i32 @MINOR(i32 %140)
  %142 = call i8* @cpu_to_le64(i32 %141)
  %143 = load %struct.win_dev*, %struct.win_dev** %24, align 8
  %144 = getelementptr inbounds %struct.win_dev, %struct.win_dev* %143, i32 0, i32 0
  store i8* %142, i8** %144, align 8
  %145 = load %struct.cifs_tcon*, %struct.cifs_tcon** %11, align 8
  %146 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %145, i32 0, i32 0
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 1
  %153 = load i32 (i32, %struct.cifs_fid*, %struct.cifs_io_parms*, i32*, %struct.kvec*, i32)*, i32 (i32, %struct.cifs_fid*, %struct.cifs_io_parms*, i32*, %struct.kvec*, i32)** %152, align 8
  %154 = load i32, i32* %8, align 4
  %155 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %25, i64 0, i64 0
  %156 = call i32 %153(i32 %154, %struct.cifs_fid* %21, %struct.cifs_io_parms* %19, i32* %23, %struct.kvec* %155, i32 1)
  store i32 %156, i32* %16, align 4
  br label %189

157:                                              ; preds = %111
  %158 = load i32, i32* %13, align 4
  %159 = call i64 @S_ISBLK(i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %188

161:                                              ; preds = %157
  %162 = load %struct.win_dev*, %struct.win_dev** %24, align 8
  %163 = getelementptr inbounds %struct.win_dev, %struct.win_dev* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @memcpy(i32 %164, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %166 = load i32, i32* %14, align 4
  %167 = call i32 @MAJOR(i32 %166)
  %168 = call i8* @cpu_to_le64(i32 %167)
  %169 = load %struct.win_dev*, %struct.win_dev** %24, align 8
  %170 = getelementptr inbounds %struct.win_dev, %struct.win_dev* %169, i32 0, i32 1
  store i8* %168, i8** %170, align 8
  %171 = load i32, i32* %14, align 4
  %172 = call i32 @MINOR(i32 %171)
  %173 = call i8* @cpu_to_le64(i32 %172)
  %174 = load %struct.win_dev*, %struct.win_dev** %24, align 8
  %175 = getelementptr inbounds %struct.win_dev, %struct.win_dev* %174, i32 0, i32 0
  store i8* %173, i8** %175, align 8
  %176 = load %struct.cifs_tcon*, %struct.cifs_tcon** %11, align 8
  %177 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %176, i32 0, i32 0
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 1
  %184 = load i32 (i32, %struct.cifs_fid*, %struct.cifs_io_parms*, i32*, %struct.kvec*, i32)*, i32 (i32, %struct.cifs_fid*, %struct.cifs_io_parms*, i32*, %struct.kvec*, i32)** %183, align 8
  %185 = load i32, i32* %8, align 4
  %186 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %25, i64 0, i64 0
  %187 = call i32 %184(i32 %185, %struct.cifs_fid* %21, %struct.cifs_io_parms* %19, i32* %23, %struct.kvec* %186, i32 1)
  store i32 %187, i32* %16, align 4
  br label %188

188:                                              ; preds = %161, %157
  br label %189

189:                                              ; preds = %188, %130
  %190 = load %struct.cifs_tcon*, %struct.cifs_tcon** %11, align 8
  %191 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %190, i32 0, i32 0
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 2
  %198 = load i32 (i32, %struct.cifs_tcon*, %struct.cifs_fid*)*, i32 (i32, %struct.cifs_tcon*, %struct.cifs_fid*)** %197, align 8
  %199 = load i32, i32* %8, align 4
  %200 = load %struct.cifs_tcon*, %struct.cifs_tcon** %11, align 8
  %201 = call i32 %198(i32 %199, %struct.cifs_tcon* %200, %struct.cifs_fid* %21)
  %202 = load %struct.dentry*, %struct.dentry** %10, align 8
  %203 = call i32 @d_drop(%struct.dentry* %202)
  br label %204

204:                                              ; preds = %189, %110, %58, %50, %41
  %205 = load i32*, i32** %18, align 8
  %206 = call i32 @kfree(i32* %205)
  %207 = load i32, i32* %16, align 4
  ret i32 %207
}

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i32 @cifs_dbg(i32, i8*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i64 @backup_cred(%struct.cifs_sb_info*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
