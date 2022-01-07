; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_SMB2_lease_break.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_SMB2_lease_break.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { i32, %struct.cifs_ses* }
%struct.cifs_ses = type { i32 }
%struct.smb_rqst = type { i32, %struct.kvec* }
%struct.kvec = type { i8*, i32 }
%struct.smb2_lease_ack = type { i32, i32, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@CIFS_OBREAK_OP = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"SMB2_lease_break\0A\00", align 1
@SMB2_OPLOCK_BREAK = common dso_local global i32 0, align 4
@CIFS_TRANSFORM_REQ = common dso_local global i32 0, align 4
@CIFS_NO_RSP_BUF = common dso_local global i32 0, align 4
@SMB2_OPLOCK_BREAK_HE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Send error in Lease Break = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SMB2_lease_break(i32 %0, %struct.cifs_tcon* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cifs_tcon*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.smb_rqst, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.smb2_lease_ack*, align 8
  %13 = alloca %struct.cifs_ses*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [1 x %struct.kvec], align 16
  %17 = alloca %struct.kvec, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.smb2_lease_ack* null, %struct.smb2_lease_ack** %12, align 8
  %21 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %22 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %21, i32 0, i32 1
  %23 = load %struct.cifs_ses*, %struct.cifs_ses** %22, align 8
  store %struct.cifs_ses* %23, %struct.cifs_ses** %13, align 8
  %24 = load i32, i32* @CIFS_OBREAK_OP, align 4
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* @FYI, align 4
  %26 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @SMB2_OPLOCK_BREAK, align 4
  %28 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %29 = bitcast %struct.smb2_lease_ack** %12 to i8**
  %30 = call i32 @smb2_plain_req_init(i32 %27, %struct.cifs_tcon* %28, i8** %29, i32* %15)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %5, align 4
  br label %123

35:                                               ; preds = %4
  %36 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %37 = call i64 @smb3_encryption_required(%struct.cifs_tcon* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* @CIFS_TRANSFORM_REQ, align 4
  %41 = load i32, i32* %14, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %14, align 4
  br label %43

43:                                               ; preds = %39, %35
  %44 = call i8* @cpu_to_le16(i32 1)
  %45 = load %struct.smb2_lease_ack*, %struct.smb2_lease_ack** %12, align 8
  %46 = getelementptr inbounds %struct.smb2_lease_ack, %struct.smb2_lease_ack* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i8* %44, i8** %47, align 8
  %48 = call i8* @cpu_to_le16(i32 36)
  %49 = load %struct.smb2_lease_ack*, %struct.smb2_lease_ack** %12, align 8
  %50 = getelementptr inbounds %struct.smb2_lease_ack, %struct.smb2_lease_ack* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* %15, align 4
  %52 = add i32 %51, 12
  store i32 %52, i32* %15, align 4
  %53 = load %struct.smb2_lease_ack*, %struct.smb2_lease_ack** %12, align 8
  %54 = getelementptr inbounds %struct.smb2_lease_ack, %struct.smb2_lease_ack* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @memcpy(i32 %55, i32* %56, i32 16)
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.smb2_lease_ack*, %struct.smb2_lease_ack** %12, align 8
  %60 = getelementptr inbounds %struct.smb2_lease_ack, %struct.smb2_lease_ack* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @CIFS_NO_RSP_BUF, align 4
  %62 = load i32, i32* %14, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %14, align 4
  %64 = load %struct.smb2_lease_ack*, %struct.smb2_lease_ack** %12, align 8
  %65 = bitcast %struct.smb2_lease_ack* %64 to i8*
  %66 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %16, i64 0, i64 0
  %67 = getelementptr inbounds %struct.kvec, %struct.kvec* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 16
  %68 = load i32, i32* %15, align 4
  %69 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %16, i64 0, i64 0
  %70 = getelementptr inbounds %struct.kvec, %struct.kvec* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  %71 = call i32 @memset(%struct.smb_rqst* %10, i32 0, i32 16)
  %72 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %16, i64 0, i64 0
  %73 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %10, i32 0, i32 1
  store %struct.kvec* %72, %struct.kvec** %73, align 8
  %74 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %10, i32 0, i32 0
  store i32 1, i32* %74, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.cifs_ses*, %struct.cifs_ses** %13, align 8
  %77 = load i32, i32* %14, align 4
  %78 = call i32 @cifs_send_recv(i32 %75, %struct.cifs_ses* %76, %struct.smb_rqst* %10, i32* %18, i32 %77, %struct.kvec* %17)
  store i32 %78, i32* %11, align 4
  %79 = load %struct.smb2_lease_ack*, %struct.smb2_lease_ack** %12, align 8
  %80 = call i32 @cifs_small_buf_release(%struct.smb2_lease_ack* %79)
  %81 = load i32*, i32** %8, align 8
  store i32* %81, i32** %20, align 8
  %82 = load i32*, i32** %8, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 8
  store i32* %83, i32** %19, align 8
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %107

86:                                               ; preds = %43
  %87 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %88 = load i32, i32* @SMB2_OPLOCK_BREAK_HE, align 4
  %89 = call i32 @cifs_stats_fail_inc(%struct.cifs_tcon* %87, i32 %88)
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @le32_to_cpu(i32 %90)
  %92 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %93 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.cifs_ses*, %struct.cifs_ses** %13, align 8
  %96 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %20, align 8
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %19, align 8
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @trace_smb3_lease_err(i32 %91, i32 %94, i32 %97, i32 %99, i32 %101, i32 %102)
  %104 = load i32, i32* @FYI, align 4
  %105 = load i32, i32* %11, align 4
  %106 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %104, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  br label %121

107:                                              ; preds = %43
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @le32_to_cpu(i32 %108)
  %110 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %111 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.cifs_ses*, %struct.cifs_ses** %13, align 8
  %114 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** %20, align 8
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %19, align 8
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @trace_smb3_lease_done(i32 %109, i32 %112, i32 %115, i32 %117, i32 %119)
  br label %121

121:                                              ; preds = %107, %86
  %122 = load i32, i32* %11, align 4
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %121, %33
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

declare dso_local i32 @smb2_plain_req_init(i32, %struct.cifs_tcon*, i8**, i32*) #1

declare dso_local i64 @smb3_encryption_required(%struct.cifs_tcon*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @memset(%struct.smb_rqst*, i32, i32) #1

declare dso_local i32 @cifs_send_recv(i32, %struct.cifs_ses*, %struct.smb_rqst*, i32*, i32, %struct.kvec*) #1

declare dso_local i32 @cifs_small_buf_release(%struct.smb2_lease_ack*) #1

declare dso_local i32 @cifs_stats_fail_inc(%struct.cifs_tcon*, i32) #1

declare dso_local i32 @trace_smb3_lease_err(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @trace_smb3_lease_done(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
