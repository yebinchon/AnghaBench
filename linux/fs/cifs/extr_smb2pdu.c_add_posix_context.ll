; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_add_posix_context.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_add_posix_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvec = type { i32, %struct.smb2_create_req* }
%struct.smb2_create_req = type { i32, i64 }

@ACL_NO_MODE = common dso_local global i64 0, align 8
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"illegal mode\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvec*, i32*, i64)* @add_posix_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_posix_context(%struct.kvec* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvec*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.smb2_create_req*, align 8
  %9 = alloca i32, align 4
  store %struct.kvec* %0, %struct.kvec** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.kvec*, %struct.kvec** %5, align 8
  %11 = getelementptr inbounds %struct.kvec, %struct.kvec* %10, i64 0
  %12 = getelementptr inbounds %struct.kvec, %struct.kvec* %11, i32 0, i32 1
  %13 = load %struct.smb2_create_req*, %struct.smb2_create_req** %12, align 8
  store %struct.smb2_create_req* %13, %struct.smb2_create_req** %8, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i64, i64* %7, align 8
  %17 = call %struct.smb2_create_req* @create_posix_buf(i64 %16)
  %18 = load %struct.kvec*, %struct.kvec** %5, align 8
  %19 = load i32, i32* %9, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.kvec, %struct.kvec* %18, i64 %20
  %22 = getelementptr inbounds %struct.kvec, %struct.kvec* %21, i32 0, i32 1
  store %struct.smb2_create_req* %17, %struct.smb2_create_req** %22, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @ACL_NO_MODE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @FYI, align 4
  %28 = call i32 @cifs_dbg(i32 %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %3
  %30 = load %struct.kvec*, %struct.kvec** %5, align 8
  %31 = load i32, i32* %9, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.kvec, %struct.kvec* %30, i64 %32
  %34 = getelementptr inbounds %struct.kvec, %struct.kvec* %33, i32 0, i32 1
  %35 = load %struct.smb2_create_req*, %struct.smb2_create_req** %34, align 8
  %36 = icmp eq %struct.smb2_create_req* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %71

40:                                               ; preds = %29
  %41 = load %struct.kvec*, %struct.kvec** %5, align 8
  %42 = load i32, i32* %9, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.kvec, %struct.kvec* %41, i64 %43
  %45 = getelementptr inbounds %struct.kvec, %struct.kvec* %44, i32 0, i32 0
  store i32 4, i32* %45, align 8
  %46 = load %struct.smb2_create_req*, %struct.smb2_create_req** %8, align 8
  %47 = getelementptr inbounds %struct.smb2_create_req, %struct.smb2_create_req* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %64, label %50

50:                                               ; preds = %40
  %51 = load %struct.kvec*, %struct.kvec** %5, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sub i32 %52, 1
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.kvec, %struct.kvec* %51, i64 %54
  %56 = getelementptr inbounds %struct.kvec, %struct.kvec* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = add i64 16, %58
  %60 = trunc i64 %59 to i32
  %61 = call i64 @cpu_to_le32(i32 %60)
  %62 = load %struct.smb2_create_req*, %struct.smb2_create_req** %8, align 8
  %63 = getelementptr inbounds %struct.smb2_create_req, %struct.smb2_create_req* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %50, %40
  %65 = load %struct.smb2_create_req*, %struct.smb2_create_req** %8, align 8
  %66 = getelementptr inbounds %struct.smb2_create_req, %struct.smb2_create_req* %65, i32 0, i32 0
  %67 = call i32 @le32_add_cpu(i32* %66, i32 4)
  %68 = load i32, i32* %9, align 4
  %69 = add i32 %68, 1
  %70 = load i32*, i32** %6, align 8
  store i32 %69, i32* %70, align 4
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %64, %37
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.smb2_create_req* @create_posix_buf(i64) #1

declare dso_local i32 @cifs_dbg(i32, i8*) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
