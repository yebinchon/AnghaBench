; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb1ops.c_coalesce_t2.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb1ops.c_coalesce_t2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_hdr = type { i32 }
%struct.smb_t2_rsp = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"total data count of primary and secondary t2 differ source=%hu target=%hu\0A\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"Server sent too much data. tgt_total_cnt=%hu total_in_tgt=%u\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"no more data remains\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"transact2 2nd response contains too much data\0A\00", align 1
@USHRT_MAX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"coalesced DataCount too large (%u)\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"coalesced BCC too large (%u)\0A\00", align 1
@CIFSMaxBufSize = common dso_local global i32 0, align 4
@MAX_CIFS_HDR_SIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"coalesced BCC exceeds buffer size (%u)\0A\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"waiting for more secondary responses\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"found the last secondary response\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.smb_hdr*)* @coalesce_t2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coalesce_t2(i8* %0, %struct.smb_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.smb_hdr*, align 8
  %6 = alloca %struct.smb_t2_rsp*, align 8
  %7 = alloca %struct.smb_t2_rsp*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.smb_hdr* %1, %struct.smb_hdr** %5, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to %struct.smb_t2_rsp*
  store %struct.smb_t2_rsp* %17, %struct.smb_t2_rsp** %6, align 8
  %18 = load %struct.smb_hdr*, %struct.smb_hdr** %5, align 8
  %19 = bitcast %struct.smb_hdr* %18 to %struct.smb_t2_rsp*
  store %struct.smb_t2_rsp* %19, %struct.smb_t2_rsp** %7, align 8
  %20 = load %struct.smb_t2_rsp*, %struct.smb_t2_rsp** %6, align 8
  %21 = getelementptr inbounds %struct.smb_t2_rsp, %struct.smb_t2_rsp* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = call i32 @get_unaligned_le16(i32* %22)
  store i32 %23, i32* %14, align 4
  %24 = load %struct.smb_t2_rsp*, %struct.smb_t2_rsp** %7, align 8
  %25 = getelementptr inbounds %struct.smb_t2_rsp, %struct.smb_t2_rsp* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = call i32 @get_unaligned_le16(i32* %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %2
  %32 = load i32, i32* @FYI, align 4
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %13, align 4
  %35 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %32, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %31, %2
  %37 = load %struct.smb_t2_rsp*, %struct.smb_t2_rsp** %7, align 8
  %38 = getelementptr inbounds %struct.smb_t2_rsp, %struct.smb_t2_rsp* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = call i32 @get_unaligned_le16(i32* %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %12, align 4
  %43 = sub i32 %41, %42
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %36
  %47 = load i32, i32* @FYI, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %12, align 4
  %50 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %47, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %49)
  %51 = load i32, i32* @EPROTO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %168

53:                                               ; preds = %36
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* @FYI, align 4
  %58 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %57, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %168

59:                                               ; preds = %53
  %60 = load %struct.smb_t2_rsp*, %struct.smb_t2_rsp** %6, align 8
  %61 = getelementptr inbounds %struct.smb_t2_rsp, %struct.smb_t2_rsp* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = call i32 @get_unaligned_le16(i32* %62)
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %15, align 4
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load i32, i32* @FYI, align 4
  %69 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %68, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %59
  %71 = load %struct.smb_t2_rsp*, %struct.smb_t2_rsp** %7, align 8
  %72 = getelementptr inbounds %struct.smb_t2_rsp, %struct.smb_t2_rsp* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = bitcast i32* %73 to i8*
  %75 = load %struct.smb_t2_rsp*, %struct.smb_t2_rsp** %7, align 8
  %76 = getelementptr inbounds %struct.smb_t2_rsp, %struct.smb_t2_rsp* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = call i32 @get_unaligned_le16(i32* %77)
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %74, i64 %79
  store i8* %80, i8** %8, align 8
  %81 = load %struct.smb_t2_rsp*, %struct.smb_t2_rsp** %6, align 8
  %82 = getelementptr inbounds %struct.smb_t2_rsp, %struct.smb_t2_rsp* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = bitcast i32* %83 to i8*
  %85 = load %struct.smb_t2_rsp*, %struct.smb_t2_rsp** %6, align 8
  %86 = getelementptr inbounds %struct.smb_t2_rsp, %struct.smb_t2_rsp* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = call i32 @get_unaligned_le16(i32* %87)
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %84, i64 %89
  store i8* %90, i8** %9, align 8
  %91 = load i32, i32* %12, align 4
  %92 = load i8*, i8** %8, align 8
  %93 = zext i32 %91 to i64
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  store i8* %94, i8** %8, align 8
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* %12, align 4
  %97 = add i32 %96, %95
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* @USHRT_MAX, align 4
  %100 = icmp ugt i32 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %70
  %102 = load i32, i32* @FYI, align 4
  %103 = load i32, i32* %12, align 4
  %104 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %102, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @EPROTO, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  br label %168

107:                                              ; preds = %70
  %108 = load i32, i32* %12, align 4
  %109 = load %struct.smb_t2_rsp*, %struct.smb_t2_rsp** %7, align 8
  %110 = getelementptr inbounds %struct.smb_t2_rsp, %struct.smb_t2_rsp* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = call i32 @put_unaligned_le16(i32 %108, i32* %111)
  %113 = load %struct.smb_hdr*, %struct.smb_hdr** %5, align 8
  %114 = call i32 @get_bcc(%struct.smb_hdr* %113)
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* %11, align 4
  %117 = add i32 %116, %115
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* @USHRT_MAX, align 4
  %120 = icmp ugt i32 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %107
  %122 = load i32, i32* @FYI, align 4
  %123 = load i32, i32* %11, align 4
  %124 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %122, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* @EPROTO, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %3, align 4
  br label %168

127:                                              ; preds = %107
  %128 = load i32, i32* %11, align 4
  %129 = load %struct.smb_hdr*, %struct.smb_hdr** %5, align 8
  %130 = call i32 @put_bcc(i32 %128, %struct.smb_hdr* %129)
  %131 = load %struct.smb_hdr*, %struct.smb_hdr** %5, align 8
  %132 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @be32_to_cpu(i32 %133)
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* %15, align 4
  %136 = load i32, i32* %11, align 4
  %137 = add i32 %136, %135
  store i32 %137, i32* %11, align 4
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* @CIFSMaxBufSize, align 4
  %140 = load i32, i32* @MAX_CIFS_HDR_SIZE, align 4
  %141 = add nsw i32 %139, %140
  %142 = sub nsw i32 %141, 4
  %143 = icmp ugt i32 %138, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %127
  %145 = load i32, i32* @FYI, align 4
  %146 = load i32, i32* %11, align 4
  %147 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %145, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %146)
  %148 = load i32, i32* @ENOBUFS, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %3, align 4
  br label %168

150:                                              ; preds = %127
  %151 = load i32, i32* %11, align 4
  %152 = call i32 @cpu_to_be32(i32 %151)
  %153 = load %struct.smb_hdr*, %struct.smb_hdr** %5, align 8
  %154 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 4
  %155 = load i8*, i8** %8, align 8
  %156 = load i8*, i8** %9, align 8
  %157 = load i32, i32* %15, align 4
  %158 = call i32 @memcpy(i8* %155, i8* %156, i32 %157)
  %159 = load i32, i32* %10, align 4
  %160 = load i32, i32* %15, align 4
  %161 = icmp ne i32 %159, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %150
  %163 = load i32, i32* @FYI, align 4
  %164 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %163, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %168

165:                                              ; preds = %150
  %166 = load i32, i32* @FYI, align 4
  %167 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %166, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %168

168:                                              ; preds = %165, %162, %144, %121, %101, %56, %46
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

declare dso_local i32 @put_unaligned_le16(i32, i32*) #1

declare dso_local i32 @get_bcc(%struct.smb_hdr*) #1

declare dso_local i32 @put_bcc(i32, %struct.smb_hdr*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
