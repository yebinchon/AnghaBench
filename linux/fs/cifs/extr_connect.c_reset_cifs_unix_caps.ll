; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_reset_cifs_unix_caps.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_reset_cifs_unix_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.cifs_sb_info = type { i32 }
%struct.smb_vol = type { i64, i64, i64 }

@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Linux protocol extensions disabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Unix extensions disabled so not set on reconnect\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"unix caps which server supports %lld\0A\00", align 1
@CIFS_UNIX_POSIX_ACL_CAP = common dso_local global i32 0, align 4
@CIFS_UNIX_POSIX_PATHNAMES_CAP = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"POSIXPATH support change\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"possible reconnect error\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"server disabled POSIX path support\0A\00", align 1
@CIFS_UNIX_TRANSPORT_ENCRYPTION_MANDATORY_CAP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"per-share encryption not supported yet\0A\00", align 1
@CIFS_UNIX_CAP_MASK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"negotiated posix acl support\0A\00", align 1
@CIFS_MOUNT_POSIXACL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"negotiate posix pathnames\0A\00", align 1
@CIFS_MOUNT_POSIX_PATHS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"Negotiate caps 0x%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"resetting capabilities failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [168 x i8] c"Negotiating Unix capabilities with the server failed. Consider mounting with the Unix Extensions disabled if problems are found by specifying the nounix mount option.\0A\00", align 1
@CIFS_UNIX_EXTATTR_CAP = common dso_local global i32 0, align 4
@CIFS_UNIX_FCNTL_CAP = common dso_local global i32 0, align 4
@CIFS_UNIX_LARGE_READ_CAP = common dso_local global i32 0, align 4
@CIFS_UNIX_LARGE_WRITE_CAP = common dso_local global i32 0, align 4
@CIFS_UNIX_TRANSPORT_ENCRYPTION_CAP = common dso_local global i32 0, align 4
@CIFS_UNIX_XATTR_CAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reset_cifs_unix_caps(i32 %0, %struct.cifs_tcon* %1, %struct.cifs_sb_info* %2, %struct.smb_vol* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cifs_tcon*, align 8
  %7 = alloca %struct.cifs_sb_info*, align 8
  %8 = alloca %struct.smb_vol*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %6, align 8
  store %struct.cifs_sb_info* %2, %struct.cifs_sb_info** %7, align 8
  store %struct.smb_vol* %3, %struct.smb_vol** %8, align 8
  %11 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %12 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @le64_to_cpu(i64 %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.smb_vol*, %struct.smb_vol** %8, align 8
  %17 = icmp ne %struct.smb_vol* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %4
  %19 = load %struct.smb_vol*, %struct.smb_vol** %8, align 8
  %20 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %25 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %28 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = load i32, i32* @FYI, align 4
  %30 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %195

31:                                               ; preds = %18, %4
  %32 = load %struct.smb_vol*, %struct.smb_vol** %8, align 8
  %33 = icmp ne %struct.smb_vol* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %36 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  br label %37

37:                                               ; preds = %34, %31
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %40 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @FYI, align 4
  %45 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %44, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %195

46:                                               ; preds = %38
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %49 = call i32 @CIFSSMBQFSUnixInfo(i32 %47, %struct.cifs_tcon* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %195, label %51

51:                                               ; preds = %46
  %52 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %53 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @le64_to_cpu(i64 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* @FYI, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %57, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load %struct.smb_vol*, %struct.smb_vol** %8, align 8
  %61 = icmp eq %struct.smb_vol* %60, null
  br i1 %61, label %62, label %102

62:                                               ; preds = %51
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @CIFS_UNIX_POSIX_ACL_CAP, align 4
  %65 = and i32 %63, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load i32, i32* @CIFS_UNIX_POSIX_ACL_CAP, align 4
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %10, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %67, %62
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @CIFS_UNIX_POSIX_PATHNAMES_CAP, align 4
  %75 = and i32 %73, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %72
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @CIFS_UNIX_POSIX_PATHNAMES_CAP, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i32, i32* @VFS, align 4
  %84 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %83, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %85

85:                                               ; preds = %82, %77
  %86 = load i32, i32* @CIFS_UNIX_POSIX_PATHNAMES_CAP, align 4
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %10, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %10, align 4
  br label %101

90:                                               ; preds = %72
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @CIFS_UNIX_POSIX_PATHNAMES_CAP, align 4
  %93 = and i32 %91, %92
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load i32, i32* @VFS, align 4
  %97 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %96, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %98 = load i32, i32* @VFS, align 4
  %99 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %98, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %100

100:                                              ; preds = %95, %90
  br label %101

101:                                              ; preds = %100, %85
  br label %102

102:                                              ; preds = %101, %51
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* @CIFS_UNIX_TRANSPORT_ENCRYPTION_MANDATORY_CAP, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load i32, i32* @VFS, align 4
  %109 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %108, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  br label %110

110:                                              ; preds = %107, %102
  %111 = load i32, i32* @CIFS_UNIX_CAP_MASK, align 4
  %112 = load i32, i32* %10, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %10, align 4
  %114 = load %struct.smb_vol*, %struct.smb_vol** %8, align 8
  %115 = icmp ne %struct.smb_vol* %114, null
  br i1 %115, label %116, label %126

116:                                              ; preds = %110
  %117 = load %struct.smb_vol*, %struct.smb_vol** %8, align 8
  %118 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %116
  %122 = load i32, i32* @CIFS_UNIX_POSIX_ACL_CAP, align 4
  %123 = xor i32 %122, -1
  %124 = load i32, i32* %10, align 4
  %125 = and i32 %124, %123
  store i32 %125, i32* %10, align 4
  br label %144

126:                                              ; preds = %116, %110
  %127 = load i32, i32* @CIFS_UNIX_POSIX_ACL_CAP, align 4
  %128 = load i32, i32* %10, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %143

131:                                              ; preds = %126
  %132 = load i32, i32* @FYI, align 4
  %133 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %132, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %134 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %7, align 8
  %135 = icmp ne %struct.cifs_sb_info* %134, null
  br i1 %135, label %136, label %142

136:                                              ; preds = %131
  %137 = load i32, i32* @CIFS_MOUNT_POSIXACL, align 4
  %138 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %7, align 8
  %139 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %136, %131
  br label %143

143:                                              ; preds = %142, %126
  br label %144

144:                                              ; preds = %143, %121
  %145 = load %struct.smb_vol*, %struct.smb_vol** %8, align 8
  %146 = icmp ne %struct.smb_vol* %145, null
  br i1 %146, label %147, label %157

147:                                              ; preds = %144
  %148 = load %struct.smb_vol*, %struct.smb_vol** %8, align 8
  %149 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %147
  %153 = load i32, i32* @CIFS_UNIX_POSIX_PATHNAMES_CAP, align 4
  %154 = xor i32 %153, -1
  %155 = load i32, i32* %10, align 4
  %156 = and i32 %155, %154
  store i32 %156, i32* %10, align 4
  br label %175

157:                                              ; preds = %147, %144
  %158 = load i32, i32* %10, align 4
  %159 = load i32, i32* @CIFS_UNIX_POSIX_PATHNAMES_CAP, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %174

162:                                              ; preds = %157
  %163 = load i32, i32* @FYI, align 4
  %164 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %163, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  %165 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %7, align 8
  %166 = icmp ne %struct.cifs_sb_info* %165, null
  br i1 %166, label %167, label %173

167:                                              ; preds = %162
  %168 = load i32, i32* @CIFS_MOUNT_POSIX_PATHS, align 4
  %169 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %7, align 8
  %170 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = or i32 %171, %168
  store i32 %172, i32* %170, align 4
  br label %173

173:                                              ; preds = %167, %162
  br label %174

174:                                              ; preds = %173, %157
  br label %175

175:                                              ; preds = %174, %152
  %176 = load i32, i32* @FYI, align 4
  %177 = load i32, i32* %10, align 4
  %178 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %176, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %177)
  %179 = load i32, i32* %5, align 4
  %180 = load %struct.cifs_tcon*, %struct.cifs_tcon** %6, align 8
  %181 = load i32, i32* %10, align 4
  %182 = call i64 @CIFSSMBSetFSUnixInfo(i32 %179, %struct.cifs_tcon* %180, i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %194

184:                                              ; preds = %175
  %185 = load %struct.smb_vol*, %struct.smb_vol** %8, align 8
  %186 = icmp eq %struct.smb_vol* %185, null
  br i1 %186, label %187, label %190

187:                                              ; preds = %184
  %188 = load i32, i32* @FYI, align 4
  %189 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %188, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  br label %193

190:                                              ; preds = %184
  %191 = load i32, i32* @VFS, align 4
  %192 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %191, i8* getelementptr inbounds ([168 x i8], [168 x i8]* @.str.11, i64 0, i64 0))
  br label %193

193:                                              ; preds = %190, %187
  br label %194

194:                                              ; preds = %193, %175
  br label %195

195:                                              ; preds = %23, %43, %194, %46
  ret void
}

declare dso_local i32 @le64_to_cpu(i64) #1

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

declare dso_local i32 @CIFSSMBQFSUnixInfo(i32, %struct.cifs_tcon*) #1

declare dso_local i64 @CIFSSMBSetFSUnixInfo(i32, %struct.cifs_tcon*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
