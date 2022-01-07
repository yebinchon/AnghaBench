; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_SMB2_oplock_break.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_SMB2_oplock_break.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { %struct.cifs_ses* }
%struct.cifs_ses = type { i32 }
%struct.smb_rqst = type { i32, %struct.kvec* }
%struct.kvec = type { i8*, i32 }
%struct.smb2_oplock_break = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@CIFS_OBREAK_OP = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"SMB2_oplock_break\0A\00", align 1
@SMB2_OPLOCK_BREAK = common dso_local global i32 0, align 4
@CIFS_TRANSFORM_REQ = common dso_local global i32 0, align 4
@CIFS_NO_RSP_BUF = common dso_local global i32 0, align 4
@SMB2_OPLOCK_BREAK_HE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Send error in Oplock Break = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SMB2_oplock_break(i32 %0, %struct.cifs_tcon* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cifs_tcon*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.smb_rqst, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.smb2_oplock_break*, align 8
  %15 = alloca %struct.cifs_ses*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [1 x %struct.kvec], align 16
  %19 = alloca %struct.kvec, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.smb2_oplock_break* null, %struct.smb2_oplock_break** %14, align 8
  %21 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %22 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %21, i32 0, i32 0
  %23 = load %struct.cifs_ses*, %struct.cifs_ses** %22, align 8
  store %struct.cifs_ses* %23, %struct.cifs_ses** %15, align 8
  %24 = load i32, i32* @CIFS_OBREAK_OP, align 4
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* @FYI, align 4
  %26 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @SMB2_OPLOCK_BREAK, align 4
  %28 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %29 = bitcast %struct.smb2_oplock_break** %14 to i8**
  %30 = call i32 @smb2_plain_req_init(i32 %27, %struct.cifs_tcon* %28, i8** %29, i32* %17)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %5
  %34 = load i32, i32* %13, align 4
  store i32 %34, i32* %6, align 4
  br label %88

35:                                               ; preds = %5
  %36 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %37 = call i64 @smb3_encryption_required(%struct.cifs_tcon* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* @CIFS_TRANSFORM_REQ, align 4
  %41 = load i32, i32* %16, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %16, align 4
  br label %43

43:                                               ; preds = %39, %35
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.smb2_oplock_break*, %struct.smb2_oplock_break** %14, align 8
  %46 = getelementptr inbounds %struct.smb2_oplock_break, %struct.smb2_oplock_break* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.smb2_oplock_break*, %struct.smb2_oplock_break** %14, align 8
  %49 = getelementptr inbounds %struct.smb2_oplock_break, %struct.smb2_oplock_break* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.smb2_oplock_break*, %struct.smb2_oplock_break** %14, align 8
  %52 = getelementptr inbounds %struct.smb2_oplock_break, %struct.smb2_oplock_break* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = call i32 @cpu_to_le16(i32 1)
  %54 = load %struct.smb2_oplock_break*, %struct.smb2_oplock_break** %14, align 8
  %55 = getelementptr inbounds %struct.smb2_oplock_break, %struct.smb2_oplock_break* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* @CIFS_NO_RSP_BUF, align 4
  %58 = load i32, i32* %16, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %16, align 4
  %60 = load %struct.smb2_oplock_break*, %struct.smb2_oplock_break** %14, align 8
  %61 = bitcast %struct.smb2_oplock_break* %60 to i8*
  %62 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %18, i64 0, i64 0
  %63 = getelementptr inbounds %struct.kvec, %struct.kvec* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 16
  %64 = load i32, i32* %17, align 4
  %65 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %18, i64 0, i64 0
  %66 = getelementptr inbounds %struct.kvec, %struct.kvec* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = call i32 @memset(%struct.smb_rqst* %12, i32 0, i32 16)
  %68 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %18, i64 0, i64 0
  %69 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %12, i32 0, i32 1
  store %struct.kvec* %68, %struct.kvec** %69, align 8
  %70 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %12, i32 0, i32 0
  store i32 1, i32* %70, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.cifs_ses*, %struct.cifs_ses** %15, align 8
  %73 = load i32, i32* %16, align 4
  %74 = call i32 @cifs_send_recv(i32 %71, %struct.cifs_ses* %72, %struct.smb_rqst* %12, i32* %20, i32 %73, %struct.kvec* %19)
  store i32 %74, i32* %13, align 4
  %75 = load %struct.smb2_oplock_break*, %struct.smb2_oplock_break** %14, align 8
  %76 = call i32 @cifs_small_buf_release(%struct.smb2_oplock_break* %75)
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %43
  %80 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %81 = load i32, i32* @SMB2_OPLOCK_BREAK_HE, align 4
  %82 = call i32 @cifs_stats_fail_inc(%struct.cifs_tcon* %80, i32 %81)
  %83 = load i32, i32* @FYI, align 4
  %84 = load i32, i32* %13, align 4
  %85 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %83, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %79, %43
  %87 = load i32, i32* %13, align 4
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %86, %33
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

declare dso_local i32 @smb2_plain_req_init(i32, %struct.cifs_tcon*, i8**, i32*) #1

declare dso_local i64 @smb3_encryption_required(%struct.cifs_tcon*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memset(%struct.smb_rqst*, i32, i32) #1

declare dso_local i32 @cifs_send_recv(i32, %struct.cifs_ses*, %struct.smb_rqst*, i32*, i32, %struct.kvec*) #1

declare dso_local i32 @cifs_small_buf_release(%struct.smb2_oplock_break*) #1

declare dso_local i32 @cifs_stats_fail_inc(%struct.cifs_tcon*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
