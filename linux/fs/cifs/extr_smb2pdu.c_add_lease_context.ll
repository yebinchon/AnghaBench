; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_add_lease_context.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_add_lease_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.smb2_create_req* (i32*, i32)* }
%struct.smb2_create_req = type { i32, i64, i32 }
%struct.kvec = type { i64, %struct.smb2_create_req* }

@ENOMEM = common dso_local global i32 0, align 4
@SMB2_OPLOCK_LEVEL_LEASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TCP_Server_Info*, %struct.kvec*, i32*, i32*, i32*)* @add_lease_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_lease_context(%struct.TCP_Server_Info* %0, %struct.kvec* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TCP_Server_Info*, align 8
  %8 = alloca %struct.kvec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.smb2_create_req*, align 8
  %13 = alloca i32, align 4
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %7, align 8
  store %struct.kvec* %1, %struct.kvec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load %struct.kvec*, %struct.kvec** %8, align 8
  %15 = getelementptr inbounds %struct.kvec, %struct.kvec* %14, i64 0
  %16 = getelementptr inbounds %struct.kvec, %struct.kvec* %15, i32 0, i32 1
  %17 = load %struct.smb2_create_req*, %struct.smb2_create_req** %16, align 8
  store %struct.smb2_create_req* %17, %struct.smb2_create_req** %12, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %13, align 4
  %20 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %21 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load %struct.smb2_create_req* (i32*, i32)*, %struct.smb2_create_req* (i32*, i32)** %23, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.smb2_create_req* %24(i32* %25, i32 %27)
  %29 = load %struct.kvec*, %struct.kvec** %8, align 8
  %30 = load i32, i32* %13, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.kvec, %struct.kvec* %29, i64 %31
  %33 = getelementptr inbounds %struct.kvec, %struct.kvec* %32, i32 0, i32 1
  store %struct.smb2_create_req* %28, %struct.smb2_create_req** %33, align 8
  %34 = load %struct.kvec*, %struct.kvec** %8, align 8
  %35 = load i32, i32* %13, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.kvec, %struct.kvec* %34, i64 %36
  %38 = getelementptr inbounds %struct.kvec, %struct.kvec* %37, i32 0, i32 1
  %39 = load %struct.smb2_create_req*, %struct.smb2_create_req** %38, align 8
  %40 = icmp eq %struct.smb2_create_req* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %5
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %86

44:                                               ; preds = %5
  %45 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %46 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.kvec*, %struct.kvec** %8, align 8
  %51 = load i32, i32* %13, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.kvec, %struct.kvec* %50, i64 %52
  %54 = getelementptr inbounds %struct.kvec, %struct.kvec* %53, i32 0, i32 0
  store i64 %49, i64* %54, align 8
  %55 = load i32, i32* @SMB2_OPLOCK_LEVEL_LEASE, align 4
  %56 = load %struct.smb2_create_req*, %struct.smb2_create_req** %12, align 8
  %57 = getelementptr inbounds %struct.smb2_create_req, %struct.smb2_create_req* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.smb2_create_req*, %struct.smb2_create_req** %12, align 8
  %59 = getelementptr inbounds %struct.smb2_create_req, %struct.smb2_create_req* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %74, label %62

62:                                               ; preds = %44
  %63 = load %struct.kvec*, %struct.kvec** %8, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sub i32 %64, 1
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.kvec, %struct.kvec* %63, i64 %66
  %68 = getelementptr inbounds %struct.kvec, %struct.kvec* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add i64 24, %69
  %71 = call i64 @cpu_to_le32(i64 %70)
  %72 = load %struct.smb2_create_req*, %struct.smb2_create_req** %12, align 8
  %73 = getelementptr inbounds %struct.smb2_create_req, %struct.smb2_create_req* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %62, %44
  %75 = load %struct.smb2_create_req*, %struct.smb2_create_req** %12, align 8
  %76 = getelementptr inbounds %struct.smb2_create_req, %struct.smb2_create_req* %75, i32 0, i32 0
  %77 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %78 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @le32_add_cpu(i32* %76, i64 %81)
  %83 = load i32, i32* %13, align 4
  %84 = add i32 %83, 1
  %85 = load i32*, i32** %9, align 8
  store i32 %84, i32* %85, align 4
  store i32 0, i32* %6, align 4
  br label %86

86:                                               ; preds = %74, %41
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i64 @cpu_to_le32(i64) #1

declare dso_local i32 @le32_add_cpu(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
