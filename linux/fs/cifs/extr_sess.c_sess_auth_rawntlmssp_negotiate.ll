; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_sess.c_sess_auth_rawntlmssp_negotiate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_sess.c_sess_auth_rawntlmssp_negotiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sess_data = type { i64, i32, i32*, %struct.TYPE_10__*, %struct.cifs_ses* }
%struct.TYPE_10__ = type { i32, i64 }
%struct.cifs_ses = type { i32, %struct.TYPE_15__*, %struct.TYPE_13__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_15__* }
%struct.smb_hdr = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { i32, i64 }

@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"rawntlmssp session setup negotiate phase\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CIFS_NO_BUFFER = common dso_local global i64 0, align 8
@NT_STATUS_MORE_PROCESSING_REQUIRED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"rawntlmssp session setup challenge phase\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"bad word count %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"UID = %llu\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"bad security blob length %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@sess_auth_rawntlmssp_authenticate = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sess_data*)* @sess_auth_rawntlmssp_negotiate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sess_auth_rawntlmssp_negotiate(%struct.sess_data* %0) #0 {
  %2 = alloca %struct.sess_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.smb_hdr*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.cifs_ses*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.sess_data* %0, %struct.sess_data** %2, align 8
  %10 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %11 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %10, i32 0, i32 4
  %12 = load %struct.cifs_ses*, %struct.cifs_ses** %11, align 8
  store %struct.cifs_ses* %12, %struct.cifs_ses** %6, align 8
  %13 = load i32, i32* @FYI, align 4
  %14 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %13, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.TYPE_15__* @kmalloc(i32 4, i32 %15)
  %17 = load %struct.cifs_ses*, %struct.cifs_ses** %6, align 8
  %18 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %17, i32 0, i32 1
  store %struct.TYPE_15__* %16, %struct.TYPE_15__** %18, align 8
  %19 = load %struct.cifs_ses*, %struct.cifs_ses** %6, align 8
  %20 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %19, i32 0, i32 1
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %22 = icmp ne %struct.TYPE_15__* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %157

26:                                               ; preds = %1
  %27 = load %struct.cifs_ses*, %struct.cifs_ses** %6, align 8
  %28 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %27, i32 0, i32 1
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  %31 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %32 = call i32 @sess_alloc_buffer(%struct.sess_data* %31, i32 12)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %157

36:                                               ; preds = %26
  %37 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %38 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %37, i32 0, i32 3
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %43, %struct.TYPE_14__** %5, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.cifs_ses*, %struct.cifs_ses** %6, align 8
  %49 = call i32 @build_ntlmssp_negotiate_blob(i64 %47, %struct.cifs_ses* %48)
  %50 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %51 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %50, i32 0, i32 3
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i64 1
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  store i32 4, i32* %54, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %60 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %59, i32 0, i32 3
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i64 1
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  store i64 %58, i64* %63, align 8
  %64 = call i32 @cpu_to_le16(i32 4)
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  %68 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %69 = call i32 @_sess_auth_rawntlmssp_assemble_req(%struct.sess_data* %68)
  store i32 %69, i32* %3, align 4
  %70 = load i32, i32* %3, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %36
  br label %157

73:                                               ; preds = %36
  %74 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %75 = call i32 @sess_sendreceive(%struct.sess_data* %74)
  store i32 %75, i32* %3, align 4
  %76 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %77 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %76, i32 0, i32 3
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i64 0
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %82, %struct.TYPE_14__** %5, align 8
  %83 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %84 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %83, i32 0, i32 3
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i64 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to %struct.smb_hdr*
  store %struct.smb_hdr* %89, %struct.smb_hdr** %4, align 8
  %90 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %91 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @CIFS_NO_BUFFER, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %104

95:                                               ; preds = %73
  %96 = load %struct.smb_hdr*, %struct.smb_hdr** %4, align 8
  %97 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* @NT_STATUS_MORE_PROCESSING_REQUIRED, align 4
  %101 = call i64 @cpu_to_le32(i32 %100)
  %102 = icmp eq i64 %99, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %95, %73
  %105 = load i32, i32* %3, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  br label %157

108:                                              ; preds = %104
  %109 = load i32, i32* @FYI, align 4
  %110 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %109, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %111 = load %struct.smb_hdr*, %struct.smb_hdr** %4, align 8
  %112 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 4
  br i1 %114, label %115, label %123

115:                                              ; preds = %108
  %116 = load i32, i32* @EIO, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %3, align 4
  %118 = load i32, i32* @VFS, align 4
  %119 = load %struct.smb_hdr*, %struct.smb_hdr** %4, align 8
  %120 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %118, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %121)
  br label %157

123:                                              ; preds = %108
  %124 = load %struct.smb_hdr*, %struct.smb_hdr** %4, align 8
  %125 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.cifs_ses*, %struct.cifs_ses** %6, align 8
  %128 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  %129 = load i32, i32* @FYI, align 4
  %130 = load %struct.cifs_ses*, %struct.cifs_ses** %6, align 8
  %131 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %129, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %132)
  %134 = load %struct.smb_hdr*, %struct.smb_hdr** %4, align 8
  %135 = call i32 @get_bcc(%struct.smb_hdr* %134)
  store i32 %135, i32* %7, align 4
  %136 = load %struct.smb_hdr*, %struct.smb_hdr** %4, align 8
  %137 = call i8* @pByteArea(%struct.smb_hdr* %136)
  store i8* %137, i8** %8, align 8
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @le16_to_cpu(i32 %141)
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* %7, align 4
  %145 = icmp sgt i32 %143, %144
  br i1 %145, label %146, label %152

146:                                              ; preds = %123
  %147 = load i32, i32* @VFS, align 4
  %148 = load i32, i32* %9, align 4
  %149 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %147, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %148)
  %150 = load i32, i32* @EINVAL, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %3, align 4
  br label %157

152:                                              ; preds = %123
  %153 = load i8*, i8** %8, align 8
  %154 = load i32, i32* %9, align 4
  %155 = load %struct.cifs_ses*, %struct.cifs_ses** %6, align 8
  %156 = call i32 @decode_ntlmssp_challenge(i8* %153, i32 %154, %struct.cifs_ses* %155)
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %152, %146, %115, %107, %72, %35, %23
  %158 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %159 = call i32 @sess_free_buffer(%struct.sess_data* %158)
  %160 = load i32, i32* %3, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %157
  %163 = load i32*, i32** @sess_auth_rawntlmssp_authenticate, align 8
  %164 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %165 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %164, i32 0, i32 2
  store i32* %163, i32** %165, align 8
  br label %186

166:                                              ; preds = %157
  %167 = load %struct.cifs_ses*, %struct.cifs_ses** %6, align 8
  %168 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %169, align 8
  %171 = call i32 @kfree(%struct.TYPE_15__* %170)
  %172 = load %struct.cifs_ses*, %struct.cifs_ses** %6, align 8
  %173 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 0
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %174, align 8
  %175 = load %struct.cifs_ses*, %struct.cifs_ses** %6, align 8
  %176 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %175, i32 0, i32 1
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %176, align 8
  %178 = call i32 @kfree(%struct.TYPE_15__* %177)
  %179 = load %struct.cifs_ses*, %struct.cifs_ses** %6, align 8
  %180 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %179, i32 0, i32 1
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %180, align 8
  %181 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %182 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %181, i32 0, i32 2
  store i32* null, i32** %182, align 8
  %183 = load i32, i32* %3, align 4
  %184 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %185 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %184, i32 0, i32 1
  store i32 %183, i32* %185, align 8
  br label %186

186:                                              ; preds = %166, %162
  ret void
}

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

declare dso_local %struct.TYPE_15__* @kmalloc(i32, i32) #1

declare dso_local i32 @sess_alloc_buffer(%struct.sess_data*, i32) #1

declare dso_local i32 @build_ntlmssp_negotiate_blob(i64, %struct.cifs_ses*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @_sess_auth_rawntlmssp_assemble_req(%struct.sess_data*) #1

declare dso_local i32 @sess_sendreceive(%struct.sess_data*) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @get_bcc(%struct.smb_hdr*) #1

declare dso_local i8* @pByteArea(%struct.smb_hdr*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @decode_ntlmssp_challenge(i8*, i32, %struct.cifs_ses*) #1

declare dso_local i32 @sess_free_buffer(%struct.sess_data*) #1

declare dso_local i32 @kfree(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
