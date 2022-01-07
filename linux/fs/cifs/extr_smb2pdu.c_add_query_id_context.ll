; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_add_query_id_context.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_add_query_id_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvec = type { i32, %struct.smb2_create_req* }
%struct.smb2_create_req = type { i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvec*, i32*)* @add_query_id_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_query_id_context(%struct.kvec* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvec*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.smb2_create_req*, align 8
  %7 = alloca i32, align 4
  store %struct.kvec* %0, %struct.kvec** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.kvec*, %struct.kvec** %4, align 8
  %9 = getelementptr inbounds %struct.kvec, %struct.kvec* %8, i64 0
  %10 = getelementptr inbounds %struct.kvec, %struct.kvec* %9, i32 0, i32 1
  %11 = load %struct.smb2_create_req*, %struct.smb2_create_req** %10, align 8
  store %struct.smb2_create_req* %11, %struct.smb2_create_req** %6, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = call %struct.smb2_create_req* (...) @create_query_id_buf()
  %15 = load %struct.kvec*, %struct.kvec** %4, align 8
  %16 = load i32, i32* %7, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.kvec, %struct.kvec* %15, i64 %17
  %19 = getelementptr inbounds %struct.kvec, %struct.kvec* %18, i32 0, i32 1
  store %struct.smb2_create_req* %14, %struct.smb2_create_req** %19, align 8
  %20 = load %struct.kvec*, %struct.kvec** %4, align 8
  %21 = load i32, i32* %7, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.kvec, %struct.kvec* %20, i64 %22
  %24 = getelementptr inbounds %struct.kvec, %struct.kvec* %23, i32 0, i32 1
  %25 = load %struct.smb2_create_req*, %struct.smb2_create_req** %24, align 8
  %26 = icmp eq %struct.smb2_create_req* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %61

30:                                               ; preds = %2
  %31 = load %struct.kvec*, %struct.kvec** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.kvec, %struct.kvec* %31, i64 %33
  %35 = getelementptr inbounds %struct.kvec, %struct.kvec* %34, i32 0, i32 0
  store i32 4, i32* %35, align 8
  %36 = load %struct.smb2_create_req*, %struct.smb2_create_req** %6, align 8
  %37 = getelementptr inbounds %struct.smb2_create_req, %struct.smb2_create_req* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %54, label %40

40:                                               ; preds = %30
  %41 = load %struct.kvec*, %struct.kvec** %4, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sub i32 %42, 1
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.kvec, %struct.kvec* %41, i64 %44
  %46 = getelementptr inbounds %struct.kvec, %struct.kvec* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = add i64 16, %48
  %50 = trunc i64 %49 to i32
  %51 = call i64 @cpu_to_le32(i32 %50)
  %52 = load %struct.smb2_create_req*, %struct.smb2_create_req** %6, align 8
  %53 = getelementptr inbounds %struct.smb2_create_req, %struct.smb2_create_req* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %40, %30
  %55 = load %struct.smb2_create_req*, %struct.smb2_create_req** %6, align 8
  %56 = getelementptr inbounds %struct.smb2_create_req, %struct.smb2_create_req* %55, i32 0, i32 0
  %57 = call i32 @le32_add_cpu(i32* %56, i32 4)
  %58 = load i32, i32* %7, align 4
  %59 = add i32 %58, 1
  %60 = load i32*, i32** %5, align 8
  store i32 %59, i32* %60, align 4
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %54, %27
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.smb2_create_req* @create_query_id_buf(...) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
