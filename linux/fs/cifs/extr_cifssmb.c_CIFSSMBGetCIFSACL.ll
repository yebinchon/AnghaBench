; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifssmb.c_CIFSSMBGetCIFSACL.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifssmb.c_CIFSSMBGetCIFSACL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.cifs_ntsd = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__, i32, i8*, i32, i64, i8* }
%struct.TYPE_7__ = type { i32 }
%struct.kvec = type { i8*, i64 }
%struct.smb_com_ntransact_rsp = type { i32 }

@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"GetCifsACL\0A\00", align 1
@NT_TRANSACT_QUERY_SECURITY_DESC = common dso_local global i32 0, align 4
@CIFS_ACL_OWNER = common dso_local global i32 0, align 4
@CIFS_ACL_GROUP = common dso_local global i32 0, align 4
@CIFS_ACL_DACL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Send error in QuerySecDesc = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"smb %p parm %p data %p\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"acl length %d does not match %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"bad acl length %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CIFSSMBGetCIFSACL(i32 %0, %struct.cifs_tcon* %1, i32 %2, %struct.cifs_ntsd** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cifs_tcon*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cifs_ntsd**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca [1 x %struct.kvec], align 16
  %16 = alloca %struct.kvec, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.smb_com_ntransact_rsp*, align 8
  %21 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.cifs_ntsd** %3, %struct.cifs_ntsd*** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %22 = load i32, i32* @FYI, align 4
  %23 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %24 = load i32*, i32** %11, align 8
  store i32 0, i32* %24, align 4
  %25 = load %struct.cifs_ntsd**, %struct.cifs_ntsd*** %10, align 8
  store %struct.cifs_ntsd* null, %struct.cifs_ntsd** %25, align 8
  %26 = load i32, i32* @NT_TRANSACT_QUERY_SECURITY_DESC, align 4
  %27 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %28 = bitcast %struct.TYPE_10__** %14 to i8**
  %29 = call i32 @smb_init_nttransact(i32 %26, i32 0, i32 8, %struct.cifs_tcon* %27, i8** %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %5
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %6, align 4
  br label %177

34:                                               ; preds = %5
  %35 = call i8* @cpu_to_le32(i32 4)
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 5
  store i8* %35, i8** %37, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 4
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @CIFS_ACL_OWNER, align 4
  %44 = load i32, i32* @CIFS_ACL_GROUP, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @CIFS_ACL_DACL, align 4
  %47 = or i32 %45, %46
  %48 = call i8* @cpu_to_le32(i32 %47)
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = call i32 @cpu_to_le16(i32 11)
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %55 = call i32 @inc_rfc1001_len(%struct.TYPE_10__* %54, i32 11)
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %57 = bitcast %struct.TYPE_10__* %56 to i8*
  %58 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %15, i64 0, i64 0
  %59 = getelementptr inbounds %struct.kvec, %struct.kvec* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 16
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @be32_to_cpu(i32 %63)
  %65 = add nsw i64 %64, 4
  %66 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %15, i64 0, i64 0
  %67 = getelementptr inbounds %struct.kvec, %struct.kvec* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %70 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %15, i64 0, i64 0
  %73 = call i32 @SendReceive2(i32 %68, i32 %71, %struct.kvec* %72, i32 1, i32* %13, i32 0, %struct.kvec* %16)
  store i32 %73, i32* %12, align 4
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %75 = call i32 @cifs_small_buf_release(%struct.TYPE_10__* %74)
  %76 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %77 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = call i32 @cifs_stats_inc(i32* %79)
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %34
  %84 = load i32, i32* @FYI, align 4
  %85 = load i32, i32* %12, align 4
  %86 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %84, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  br label %170

87:                                               ; preds = %34
  %88 = getelementptr inbounds %struct.kvec, %struct.kvec* %16, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = bitcast i32** %17 to i8**
  %91 = load i32*, i32** %11, align 8
  %92 = call i32 @validate_ntransact(i8* %89, i8** %90, i8** %21, i32* %18, i32* %91)
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %12, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  br label %171

96:                                               ; preds = %87
  %97 = getelementptr inbounds %struct.kvec, %struct.kvec* %16, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = bitcast i8* %98 to %struct.smb_com_ntransact_rsp*
  store %struct.smb_com_ntransact_rsp* %99, %struct.smb_com_ntransact_rsp** %20, align 8
  %100 = load i32, i32* @FYI, align 4
  %101 = load %struct.smb_com_ntransact_rsp*, %struct.smb_com_ntransact_rsp** %20, align 8
  %102 = load i32*, i32** %17, align 8
  %103 = load %struct.cifs_ntsd**, %struct.cifs_ntsd*** %10, align 8
  %104 = load %struct.cifs_ntsd*, %struct.cifs_ntsd** %103, align 8
  %105 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %100, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), %struct.smb_com_ntransact_rsp* %101, i32* %102, %struct.cifs_ntsd* %104)
  %106 = load %struct.smb_com_ntransact_rsp*, %struct.smb_com_ntransact_rsp** %20, align 8
  %107 = getelementptr inbounds %struct.smb_com_ntransact_rsp, %struct.smb_com_ntransact_rsp* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @le32_to_cpu(i32 %108)
  %110 = icmp ne i32 %109, 4
  br i1 %110, label %111, label %115

111:                                              ; preds = %96
  %112 = load i32, i32* @EIO, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %12, align 4
  %114 = load i32*, i32** %11, align 8
  store i32 0, i32* %114, align 4
  br label %171

115:                                              ; preds = %96
  %116 = load i32*, i32** %17, align 8
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @le32_to_cpu(i32 %117)
  store i32 %118, i32* %19, align 4
  %119 = load i32, i32* %19, align 4
  %120 = load i32*, i32** %11, align 8
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %119, %121
  br i1 %122, label %123, label %137

123:                                              ; preds = %115
  %124 = load i32, i32* @VFS, align 4
  %125 = load i32, i32* %19, align 4
  %126 = load i32*, i32** %11, align 8
  %127 = load i32, i32* %126, align 4
  %128 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %124, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %125, i32 %127)
  %129 = load i32*, i32** %11, align 8
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %19, align 4
  %132 = icmp sgt i32 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %123
  %134 = load i32, i32* %19, align 4
  %135 = load i32*, i32** %11, align 8
  store i32 %134, i32* %135, align 4
  br label %136

136:                                              ; preds = %133, %123
  br label %137

137:                                              ; preds = %136, %115
  %138 = load i32*, i32** %11, align 8
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = icmp ult i64 %140, 12
  br i1 %141, label %146, label %142

142:                                              ; preds = %137
  %143 = load i32*, i32** %11, align 8
  %144 = load i32, i32* %143, align 4
  %145 = icmp sge i32 %144, 65536
  br i1 %145, label %146, label %154

146:                                              ; preds = %142, %137
  %147 = load i32, i32* @VFS, align 4
  %148 = load i32*, i32** %11, align 8
  %149 = load i32, i32* %148, align 4
  %150 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %147, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %149)
  %151 = load i32, i32* @EINVAL, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %12, align 4
  %153 = load i32*, i32** %11, align 8
  store i32 0, i32* %153, align 4
  br label %169

154:                                              ; preds = %142
  %155 = load i8*, i8** %21, align 8
  %156 = load i32*, i32** %11, align 8
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @GFP_KERNEL, align 4
  %159 = call %struct.cifs_ntsd* @kmemdup(i8* %155, i32 %157, i32 %158)
  %160 = load %struct.cifs_ntsd**, %struct.cifs_ntsd*** %10, align 8
  store %struct.cifs_ntsd* %159, %struct.cifs_ntsd** %160, align 8
  %161 = load %struct.cifs_ntsd**, %struct.cifs_ntsd*** %10, align 8
  %162 = load %struct.cifs_ntsd*, %struct.cifs_ntsd** %161, align 8
  %163 = icmp eq %struct.cifs_ntsd* %162, null
  br i1 %163, label %164, label %168

164:                                              ; preds = %154
  %165 = load i32*, i32** %11, align 8
  store i32 0, i32* %165, align 4
  %166 = load i32, i32* @ENOMEM, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %12, align 4
  br label %168

168:                                              ; preds = %164, %154
  br label %169

169:                                              ; preds = %168, %146
  br label %170

170:                                              ; preds = %169, %83
  br label %171

171:                                              ; preds = %170, %111, %95
  %172 = load i32, i32* %13, align 4
  %173 = getelementptr inbounds %struct.kvec, %struct.kvec* %16, i32 0, i32 0
  %174 = load i8*, i8** %173, align 8
  %175 = call i32 @free_rsp_buf(i32 %172, i8* %174)
  %176 = load i32, i32* %12, align 4
  store i32 %176, i32* %6, align 4
  br label %177

177:                                              ; preds = %171, %32
  %178 = load i32, i32* %6, align 4
  ret i32 %178
}

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

declare dso_local i32 @smb_init_nttransact(i32, i32, i32, %struct.cifs_tcon*, i8**) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @inc_rfc1001_len(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @SendReceive2(i32, i32, %struct.kvec*, i32, i32*, i32, %struct.kvec*) #1

declare dso_local i32 @cifs_small_buf_release(%struct.TYPE_10__*) #1

declare dso_local i32 @cifs_stats_inc(i32*) #1

declare dso_local i32 @validate_ntransact(i8*, i8**, i8**, i32*, i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.cifs_ntsd* @kmemdup(i8*, i32, i32) #1

declare dso_local i32 @free_rsp_buf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
