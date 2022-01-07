; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_SMB2_request_res_key.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_SMB2_request_res_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { i32 }
%struct.copychunk_ioctl = type { i32 }
%struct.resume_key_req = type { i32 }

@FSCTL_SRV_REQUEST_RESUME_KEY = common dso_local global i32 0, align 4
@CIFSMaxBufSize = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"refcpy ioctl error %d getting resume key\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Invalid refcopy resume key length\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@COPY_CHUNK_RES_KEY_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cifs_tcon*, i32, i32, %struct.copychunk_ioctl*)* @SMB2_request_res_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SMB2_request_res_key(i32 %0, %struct.cifs_tcon* %1, i32 %2, i32 %3, %struct.copychunk_ioctl* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cifs_tcon*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.copychunk_ioctl*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.resume_key_req*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.copychunk_ioctl* %4, %struct.copychunk_ioctl** %10, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @FSCTL_SRV_REQUEST_RESUME_KEY, align 4
  %19 = load i32, i32* @CIFSMaxBufSize, align 4
  %20 = bitcast %struct.resume_key_req** %13 to i8**
  %21 = call i32 @SMB2_ioctl(i32 %14, %struct.cifs_tcon* %15, i32 %16, i32 %17, i32 %18, i32 1, i32* null, i32 0, i32 %19, i8** %20, i32* %12)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %5
  %25 = load i32, i32* @VFS, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i32 (i32, i8*, ...) @cifs_tcon_dbg(i32 %25, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %46

28:                                               ; preds = %5
  %29 = load i32, i32* %12, align 4
  %30 = zext i32 %29 to i64
  %31 = icmp ult i64 %30, 4
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i32, i32* @VFS, align 4
  %34 = call i32 (i32, i8*, ...) @cifs_tcon_dbg(i32 %33, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %11, align 4
  br label %46

37:                                               ; preds = %28
  %38 = load %struct.copychunk_ioctl*, %struct.copychunk_ioctl** %10, align 8
  %39 = getelementptr inbounds %struct.copychunk_ioctl, %struct.copychunk_ioctl* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.resume_key_req*, %struct.resume_key_req** %13, align 8
  %42 = getelementptr inbounds %struct.resume_key_req, %struct.resume_key_req* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @COPY_CHUNK_RES_KEY_SIZE, align 4
  %45 = call i32 @memcpy(i32 %40, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %37, %32, %24
  %47 = load %struct.resume_key_req*, %struct.resume_key_req** %13, align 8
  %48 = call i32 @kfree(%struct.resume_key_req* %47)
  %49 = load i32, i32* %11, align 4
  ret i32 %49
}

declare dso_local i32 @SMB2_ioctl(i32, %struct.cifs_tcon*, i32, i32, i32, i32, i32*, i32, i32, i8**, i32*) #1

declare dso_local i32 @cifs_tcon_dbg(i32, i8*, ...) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.resume_key_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
