; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifsFileInfo = type { i32, i64, i32, %struct.dentry* }
%struct.dentry = type { i32 }
%struct.cifs_tcon = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TCP_Server_Info* }
%struct.TCP_Server_Info = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (i32, i32*, %struct.cifs_io_parms*, i32*, %struct.kvec*, i32)*, i32 (%struct.TYPE_10__*)* }
%struct.cifs_io_parms = type { i32, i64, %struct.cifs_tcon*, i32 }
%struct.kvec = type { i8*, i32 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.cifsInodeInfo = type { i32 }

@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"write %zd bytes to offset %lld of %pd\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cifsFileInfo*, i32, i8*, i64, i64*)* @cifs_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_write(%struct.cifsFileInfo* %0, i32 %1, i8* %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cifsFileInfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.cifs_tcon*, align 8
  %16 = alloca %struct.TCP_Server_Info*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.dentry*, align 8
  %19 = alloca %struct.cifsInodeInfo*, align 8
  %20 = alloca %struct.cifs_io_parms, align 8
  %21 = alloca [2 x %struct.kvec], align 16
  %22 = alloca i32, align 4
  store %struct.cifsFileInfo* %0, %struct.cifsFileInfo** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %23 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %7, align 8
  %24 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %23, i32 0, i32 3
  %25 = load %struct.dentry*, %struct.dentry** %24, align 8
  store %struct.dentry* %25, %struct.dentry** %18, align 8
  %26 = load %struct.dentry*, %struct.dentry** %18, align 8
  %27 = call %struct.TYPE_10__* @d_inode(%struct.dentry* %26)
  %28 = call %struct.cifsInodeInfo* @CIFS_I(%struct.TYPE_10__* %27)
  store %struct.cifsInodeInfo* %28, %struct.cifsInodeInfo** %19, align 8
  %29 = load i32, i32* @FYI, align 4
  %30 = load i64, i64* %10, align 8
  %31 = load i64*, i64** %11, align 8
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.dentry*, %struct.dentry** %18, align 8
  %34 = call i32 @cifs_dbg(i32 %29, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %30, i64 %32, %struct.dentry* %33)
  %35 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %7, align 8
  %36 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call %struct.cifs_tcon* @tlink_tcon(i32 %37)
  store %struct.cifs_tcon* %38, %struct.cifs_tcon** %15, align 8
  %39 = load %struct.cifs_tcon*, %struct.cifs_tcon** %15, align 8
  %40 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %42, align 8
  store %struct.TCP_Server_Info* %43, %struct.TCP_Server_Info** %16, align 8
  %44 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %16, align 8
  %45 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %44, i32 0, i32 0
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32 (i32, i32*, %struct.cifs_io_parms*, i32*, %struct.kvec*, i32)*, i32 (i32, i32*, %struct.cifs_io_parms*, i32*, %struct.kvec*, i32)** %47, align 8
  %49 = icmp ne i32 (i32, i32*, %struct.cifs_io_parms*, i32*, %struct.kvec*, i32)* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %5
  %51 = load i32, i32* @ENOSYS, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %196

53:                                               ; preds = %5
  %54 = call i32 (...) @get_xid()
  store i32 %54, i32* %17, align 4
  store i32 0, i32* %14, align 4
  br label %55

55:                                               ; preds = %156, %53
  %56 = load i64, i64* %10, align 8
  %57 = load i32, i32* %14, align 4
  %58 = zext i32 %57 to i64
  %59 = icmp ugt i64 %56, %58
  br i1 %59, label %60, label %160

60:                                               ; preds = %55
  %61 = load i32, i32* @EAGAIN, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %12, align 4
  br label %63

63:                                               ; preds = %80, %60
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @EAGAIN, align 4
  %66 = sub nsw i32 0, %65
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %122

68:                                               ; preds = %63
  %69 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %7, align 8
  %70 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %7, align 8
  %75 = call i32 @cifs_reopen_file(%struct.cifsFileInfo* %74, i32 0)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %122

79:                                               ; preds = %73
  br label %80

80:                                               ; preds = %79, %68
  %81 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %16, align 8
  %82 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %81, i32 0, i32 0
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %84, align 8
  %86 = load %struct.dentry*, %struct.dentry** %18, align 8
  %87 = call %struct.TYPE_10__* @d_inode(%struct.dentry* %86)
  %88 = call i32 %85(%struct.TYPE_10__* %87)
  %89 = load i64, i64* %10, align 8
  %90 = trunc i64 %89 to i32
  %91 = load i32, i32* %14, align 4
  %92 = sub i32 %90, %91
  %93 = call i32 @min(i32 %88, i32 %92)
  store i32 %93, i32* %22, align 4
  %94 = load i8*, i8** %9, align 8
  %95 = load i32, i32* %14, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %21, i64 0, i64 1
  %99 = getelementptr inbounds %struct.kvec, %struct.kvec* %98, i32 0, i32 0
  store i8* %97, i8** %99, align 16
  %100 = load i32, i32* %22, align 4
  %101 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %21, i64 0, i64 1
  %102 = getelementptr inbounds %struct.kvec, %struct.kvec* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 8
  %103 = load i32, i32* %8, align 4
  %104 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %20, i32 0, i32 3
  store i32 %103, i32* %104, align 8
  %105 = load %struct.cifs_tcon*, %struct.cifs_tcon** %15, align 8
  %106 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %20, i32 0, i32 2
  store %struct.cifs_tcon* %105, %struct.cifs_tcon** %106, align 8
  %107 = load i64*, i64** %11, align 8
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %20, i32 0, i32 1
  store i64 %108, i64* %109, align 8
  %110 = load i32, i32* %22, align 4
  %111 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %20, i32 0, i32 0
  store i32 %110, i32* %111, align 8
  %112 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %16, align 8
  %113 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %112, i32 0, i32 0
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i32 (i32, i32*, %struct.cifs_io_parms*, i32*, %struct.kvec*, i32)*, i32 (i32, i32*, %struct.cifs_io_parms*, i32*, %struct.kvec*, i32)** %115, align 8
  %117 = load i32, i32* %17, align 4
  %118 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %7, align 8
  %119 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %118, i32 0, i32 0
  %120 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %21, i64 0, i64 0
  %121 = call i32 %116(i32 %117, i32* %119, %struct.cifs_io_parms* %20, i32* %13, %struct.kvec* %120, i32 1)
  store i32 %121, i32* %12, align 4
  br label %63

122:                                              ; preds = %78, %63
  %123 = load i32, i32* %12, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %122
  %126 = load i32, i32* %13, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %125, %122
  %129 = load i32, i32* %14, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  br label %160

132:                                              ; preds = %128
  %133 = load i32, i32* %17, align 4
  %134 = call i32 @free_xid(i32 %133)
  %135 = load i32, i32* %12, align 4
  store i32 %135, i32* %6, align 4
  br label %196

136:                                              ; preds = %125
  %137 = load %struct.dentry*, %struct.dentry** %18, align 8
  %138 = call %struct.TYPE_10__* @d_inode(%struct.dentry* %137)
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  %140 = call i32 @spin_lock(i32* %139)
  %141 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %19, align 8
  %142 = load i64*, i64** %11, align 8
  %143 = load i64, i64* %142, align 8
  %144 = load i32, i32* %13, align 4
  %145 = call i32 @cifs_update_eof(%struct.cifsInodeInfo* %141, i64 %143, i32 %144)
  %146 = load %struct.dentry*, %struct.dentry** %18, align 8
  %147 = call %struct.TYPE_10__* @d_inode(%struct.dentry* %146)
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 1
  %149 = call i32 @spin_unlock(i32* %148)
  %150 = load i32, i32* %13, align 4
  %151 = zext i32 %150 to i64
  %152 = load i64*, i64** %11, align 8
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %153, %151
  store i64 %154, i64* %152, align 8
  br label %155

155:                                              ; preds = %136
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %13, align 4
  %158 = load i32, i32* %14, align 4
  %159 = add i32 %158, %157
  store i32 %159, i32* %14, align 4
  br label %55

160:                                              ; preds = %131, %55
  %161 = load %struct.cifs_tcon*, %struct.cifs_tcon** %15, align 8
  %162 = load i32, i32* %14, align 4
  %163 = call i32 @cifs_stats_bytes_written(%struct.cifs_tcon* %161, i32 %162)
  %164 = load i32, i32* %14, align 4
  %165 = icmp ugt i32 %164, 0
  br i1 %165, label %166, label %189

166:                                              ; preds = %160
  %167 = load %struct.dentry*, %struct.dentry** %18, align 8
  %168 = call %struct.TYPE_10__* @d_inode(%struct.dentry* %167)
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 1
  %170 = call i32 @spin_lock(i32* %169)
  %171 = load i64*, i64** %11, align 8
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.dentry*, %struct.dentry** %18, align 8
  %174 = call %struct.TYPE_10__* @d_inode(%struct.dentry* %173)
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = icmp sgt i64 %172, %176
  br i1 %177, label %178, label %184

178:                                              ; preds = %166
  %179 = load %struct.dentry*, %struct.dentry** %18, align 8
  %180 = call %struct.TYPE_10__* @d_inode(%struct.dentry* %179)
  %181 = load i64*, i64** %11, align 8
  %182 = load i64, i64* %181, align 8
  %183 = call i32 @i_size_write(%struct.TYPE_10__* %180, i64 %182)
  br label %184

184:                                              ; preds = %178, %166
  %185 = load %struct.dentry*, %struct.dentry** %18, align 8
  %186 = call %struct.TYPE_10__* @d_inode(%struct.dentry* %185)
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 1
  %188 = call i32 @spin_unlock(i32* %187)
  br label %189

189:                                              ; preds = %184, %160
  %190 = load %struct.dentry*, %struct.dentry** %18, align 8
  %191 = call %struct.TYPE_10__* @d_inode(%struct.dentry* %190)
  %192 = call i32 @mark_inode_dirty_sync(%struct.TYPE_10__* %191)
  %193 = load i32, i32* %17, align 4
  %194 = call i32 @free_xid(i32 %193)
  %195 = load i32, i32* %14, align 4
  store i32 %195, i32* %6, align 4
  br label %196

196:                                              ; preds = %189, %132, %50
  %197 = load i32, i32* %6, align 4
  ret i32 %197
}

declare dso_local %struct.cifsInodeInfo* @CIFS_I(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @d_inode(%struct.dentry*) #1

declare dso_local i32 @cifs_dbg(i32, i8*, i64, i64, %struct.dentry*) #1

declare dso_local %struct.cifs_tcon* @tlink_tcon(i32) #1

declare dso_local i32 @get_xid(...) #1

declare dso_local i32 @cifs_reopen_file(%struct.cifsFileInfo*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @free_xid(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @cifs_update_eof(%struct.cifsInodeInfo*, i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cifs_stats_bytes_written(%struct.cifs_tcon*, i32) #1

declare dso_local i32 @i_size_write(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @mark_inode_dirty_sync(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
