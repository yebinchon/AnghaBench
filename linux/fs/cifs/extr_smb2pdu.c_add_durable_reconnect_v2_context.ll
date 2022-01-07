; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_add_durable_reconnect_v2_context.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_add_durable_reconnect_v2_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvec = type { i32, %struct.smb2_create_req* }
%struct.smb2_create_req = type { i32, i64 }
%struct.cifs_open_parms = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvec*, i32*, %struct.cifs_open_parms*)* @add_durable_reconnect_v2_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_durable_reconnect_v2_context(%struct.kvec* %0, i32* %1, %struct.cifs_open_parms* %2) #0 {
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
  %17 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = load %struct.cifs_open_parms*, %struct.cifs_open_parms** %7, align 8
  %19 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.smb2_create_req* @create_reconnect_durable_v2_buf(i32 %20)
  %22 = load %struct.kvec*, %struct.kvec** %5, align 8
  %23 = load i32, i32* %9, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.kvec, %struct.kvec* %22, i64 %24
  %26 = getelementptr inbounds %struct.kvec, %struct.kvec* %25, i32 0, i32 1
  store %struct.smb2_create_req* %21, %struct.smb2_create_req** %26, align 8
  %27 = load %struct.kvec*, %struct.kvec** %5, align 8
  %28 = load i32, i32* %9, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.kvec, %struct.kvec* %27, i64 %29
  %31 = getelementptr inbounds %struct.kvec, %struct.kvec* %30, i32 0, i32 1
  %32 = load %struct.smb2_create_req*, %struct.smb2_create_req** %31, align 8
  %33 = icmp eq %struct.smb2_create_req* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %3
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %65

37:                                               ; preds = %3
  %38 = load %struct.kvec*, %struct.kvec** %5, align 8
  %39 = load i32, i32* %9, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.kvec, %struct.kvec* %38, i64 %40
  %42 = getelementptr inbounds %struct.kvec, %struct.kvec* %41, i32 0, i32 0
  store i32 4, i32* %42, align 8
  %43 = load %struct.smb2_create_req*, %struct.smb2_create_req** %8, align 8
  %44 = getelementptr inbounds %struct.smb2_create_req, %struct.smb2_create_req* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %37
  %48 = load %struct.kvec*, %struct.kvec** %5, align 8
  %49 = getelementptr inbounds %struct.kvec, %struct.kvec* %48, i64 1
  %50 = getelementptr inbounds %struct.kvec, %struct.kvec* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = add i64 16, %52
  %54 = trunc i64 %53 to i32
  %55 = call i64 @cpu_to_le32(i32 %54)
  %56 = load %struct.smb2_create_req*, %struct.smb2_create_req** %8, align 8
  %57 = getelementptr inbounds %struct.smb2_create_req, %struct.smb2_create_req* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %47, %37
  %59 = load %struct.smb2_create_req*, %struct.smb2_create_req** %8, align 8
  %60 = getelementptr inbounds %struct.smb2_create_req, %struct.smb2_create_req* %59, i32 0, i32 0
  %61 = call i32 @le32_add_cpu(i32* %60, i32 4)
  %62 = load i32, i32* %9, align 4
  %63 = add i32 %62, 1
  %64 = load i32*, i32** %6, align 8
  store i32 %63, i32* %64, align 4
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %58, %34
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.smb2_create_req* @create_reconnect_durable_v2_buf(i32) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
