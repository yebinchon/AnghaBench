; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_add_durable_v2_context.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_add_durable_v2_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvec = type { i32, %struct.smb2_create_req* }
%struct.smb2_create_req = type { i32, i64 }
%struct.cifs_open_parms = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvec*, i32*, %struct.cifs_open_parms*)* @add_durable_v2_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_durable_v2_context(%struct.kvec* %0, i32* %1, %struct.cifs_open_parms* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvec*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.cifs_open_parms*, align 8
  %8 = alloca %struct.smb2_create_req*, align 8
  %9 = alloca i32, align 4
  store %struct.kvec* %0, %struct.kvec** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.cifs_open_parms* %2, %struct.cifs_open_parms** %7, align 8
  %10 = load %struct.kvec*, %struct.kvec** %5, align 8
  %11 = getelementptr inbounds %struct.kvec, %struct.kvec* %10, i64 0
  %12 = getelementptr inbounds %struct.kvec, %struct.kvec* %11, i32 0, i32 1
  %13 = load %struct.smb2_create_req*, %struct.smb2_create_req** %12, align 8
  store %struct.smb2_create_req* %13, %struct.smb2_create_req** %8, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.cifs_open_parms*, %struct.cifs_open_parms** %7, align 8
  %17 = call %struct.smb2_create_req* @create_durable_v2_buf(%struct.cifs_open_parms* %16)
  %18 = load %struct.kvec*, %struct.kvec** %5, align 8
  %19 = load i32, i32* %9, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.kvec, %struct.kvec* %18, i64 %20
  %22 = getelementptr inbounds %struct.kvec, %struct.kvec* %21, i32 0, i32 1
  store %struct.smb2_create_req* %17, %struct.smb2_create_req** %22, align 8
  %23 = load %struct.kvec*, %struct.kvec** %5, align 8
  %24 = load i32, i32* %9, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.kvec, %struct.kvec* %23, i64 %25
  %27 = getelementptr inbounds %struct.kvec, %struct.kvec* %26, i32 0, i32 1
  %28 = load %struct.smb2_create_req*, %struct.smb2_create_req** %27, align 8
  %29 = icmp eq %struct.smb2_create_req* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %61

33:                                               ; preds = %3
  %34 = load %struct.kvec*, %struct.kvec** %5, align 8
  %35 = load i32, i32* %9, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.kvec, %struct.kvec* %34, i64 %36
  %38 = getelementptr inbounds %struct.kvec, %struct.kvec* %37, i32 0, i32 0
  store i32 4, i32* %38, align 8
  %39 = load %struct.smb2_create_req*, %struct.smb2_create_req** %8, align 8
  %40 = getelementptr inbounds %struct.smb2_create_req, %struct.smb2_create_req* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %33
  %44 = load %struct.kvec*, %struct.kvec** %5, align 8
  %45 = getelementptr inbounds %struct.kvec, %struct.kvec* %44, i64 1
  %46 = getelementptr inbounds %struct.kvec, %struct.kvec* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = add i64 16, %48
  %50 = trunc i64 %49 to i32
  %51 = call i64 @cpu_to_le32(i32 %50)
  %52 = load %struct.smb2_create_req*, %struct.smb2_create_req** %8, align 8
  %53 = getelementptr inbounds %struct.smb2_create_req, %struct.smb2_create_req* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %43, %33
  %55 = load %struct.smb2_create_req*, %struct.smb2_create_req** %8, align 8
  %56 = getelementptr inbounds %struct.smb2_create_req, %struct.smb2_create_req* %55, i32 0, i32 0
  %57 = call i32 @le32_add_cpu(i32* %56, i32 4)
  %58 = load i32, i32* %9, align 4
  %59 = add i32 %58, 1
  %60 = load i32*, i32** %6, align 8
  store i32 %59, i32* %60, align 4
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %54, %30
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.smb2_create_req* @create_durable_v2_buf(%struct.cifs_open_parms*) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
