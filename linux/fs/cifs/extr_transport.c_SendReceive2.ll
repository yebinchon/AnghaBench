; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_transport.c_SendReceive2.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_transport.c_SendReceive2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ses = type { i32 }
%struct.kvec = type { i32, i32 }
%struct.smb_rqst = type { i32, %struct.kvec* }

@CIFS_MAX_IOV_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@CIFS_NO_BUFFER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SendReceive2(i32 %0, %struct.cifs_ses* %1, %struct.kvec* %2, i32 %3, i32* %4, i32 %5, %struct.kvec* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cifs_ses*, align 8
  %11 = alloca %struct.kvec*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.kvec*, align 8
  %16 = alloca %struct.smb_rqst, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.kvec*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store %struct.cifs_ses* %1, %struct.cifs_ses** %10, align 8
  store %struct.kvec* %2, %struct.kvec** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.kvec* %6, %struct.kvec** %15, align 8
  %22 = load i32, i32* @CIFS_MAX_IOV_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %17, align 8
  %25 = alloca %struct.kvec, i64 %23, align 16
  store i64 %23, i64* %18, align 8
  %26 = load i32, i32* %12, align 4
  %27 = add nsw i32 %26, 1
  %28 = load i32, i32* @CIFS_MAX_IOV_SIZE, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %7
  %31 = load i32, i32* %12, align 4
  %32 = add nsw i32 %31, 1
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.kvec* @kmalloc_array(i32 %32, i32 8, i32 %33)
  store %struct.kvec* %34, %struct.kvec** %19, align 8
  %35 = load %struct.kvec*, %struct.kvec** %19, align 8
  %36 = icmp ne %struct.kvec* %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* @CIFS_NO_BUFFER, align 4
  %39 = load i32*, i32** %13, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %8, align 4
  store i32 1, i32* %21, align 4
  br label %94

42:                                               ; preds = %30
  br label %44

43:                                               ; preds = %7
  store %struct.kvec* %25, %struct.kvec** %19, align 8
  br label %44

44:                                               ; preds = %43, %42
  %45 = load %struct.kvec*, %struct.kvec** %19, align 8
  %46 = getelementptr inbounds %struct.kvec, %struct.kvec* %45, i64 1
  %47 = load %struct.kvec*, %struct.kvec** %11, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 8, %49
  %51 = trunc i64 %50 to i32
  %52 = call i32 @memcpy(%struct.kvec* %46, %struct.kvec* %47, i32 %51)
  %53 = load %struct.kvec*, %struct.kvec** %19, align 8
  %54 = getelementptr inbounds %struct.kvec, %struct.kvec* %53, i64 1
  %55 = getelementptr inbounds %struct.kvec, %struct.kvec* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.kvec*, %struct.kvec** %19, align 8
  %58 = getelementptr inbounds %struct.kvec, %struct.kvec* %57, i64 0
  %59 = getelementptr inbounds %struct.kvec, %struct.kvec* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 4
  %60 = load %struct.kvec*, %struct.kvec** %19, align 8
  %61 = getelementptr inbounds %struct.kvec, %struct.kvec* %60, i64 0
  %62 = getelementptr inbounds %struct.kvec, %struct.kvec* %61, i32 0, i32 1
  store i32 4, i32* %62, align 4
  %63 = load %struct.kvec*, %struct.kvec** %19, align 8
  %64 = getelementptr inbounds %struct.kvec, %struct.kvec* %63, i64 1
  %65 = getelementptr inbounds %struct.kvec, %struct.kvec* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 4
  store i32 %67, i32* %65, align 4
  %68 = load %struct.kvec*, %struct.kvec** %19, align 8
  %69 = getelementptr inbounds %struct.kvec, %struct.kvec* %68, i64 1
  %70 = getelementptr inbounds %struct.kvec, %struct.kvec* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %71, 4
  store i32 %72, i32* %70, align 4
  %73 = call i32 @memset(%struct.smb_rqst* %16, i32 0, i32 16)
  %74 = load %struct.kvec*, %struct.kvec** %19, align 8
  %75 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %16, i32 0, i32 1
  store %struct.kvec* %74, %struct.kvec** %75, align 8
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, 1
  %78 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %16, i32 0, i32 0
  store i32 %77, i32* %78, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.cifs_ses*, %struct.cifs_ses** %10, align 8
  %81 = load i32*, i32** %13, align 8
  %82 = load i32, i32* %14, align 4
  %83 = load %struct.kvec*, %struct.kvec** %15, align 8
  %84 = call i32 @cifs_send_recv(i32 %79, %struct.cifs_ses* %80, %struct.smb_rqst* %16, i32* %81, i32 %82, %struct.kvec* %83)
  store i32 %84, i32* %20, align 4
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 1
  %87 = load i32, i32* @CIFS_MAX_IOV_SIZE, align 4
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %44
  %90 = load %struct.kvec*, %struct.kvec** %19, align 8
  %91 = call i32 @kfree(%struct.kvec* %90)
  br label %92

92:                                               ; preds = %89, %44
  %93 = load i32, i32* %20, align 4
  store i32 %93, i32* %8, align 4
  store i32 1, i32* %21, align 4
  br label %94

94:                                               ; preds = %92, %37
  %95 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %95)
  %96 = load i32, i32* %8, align 4
  ret i32 %96
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.kvec* @kmalloc_array(i32, i32, i32) #2

declare dso_local i32 @memcpy(%struct.kvec*, %struct.kvec*, i32) #2

declare dso_local i32 @memset(%struct.smb_rqst*, i32, i32) #2

declare dso_local i32 @cifs_send_recv(i32, %struct.cifs_ses*, %struct.smb_rqst*, i32*, i32, %struct.kvec*) #2

declare dso_local i32 @kfree(%struct.kvec*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
