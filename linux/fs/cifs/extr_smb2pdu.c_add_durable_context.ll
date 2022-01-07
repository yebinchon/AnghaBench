; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_add_durable_context.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_add_durable_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvec = type { i32, %struct.smb2_create_req* }
%struct.smb2_create_req = type { i32, i64 }
%struct.cifs_open_parms = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvec*, i32*, %struct.cifs_open_parms*, i32)* @add_durable_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_durable_context(%struct.kvec* %0, i32* %1, %struct.cifs_open_parms* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvec*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.cifs_open_parms*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.smb2_create_req*, align 8
  %11 = alloca i32, align 4
  store %struct.kvec* %0, %struct.kvec** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.cifs_open_parms* %2, %struct.cifs_open_parms** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.kvec*, %struct.kvec** %6, align 8
  %13 = getelementptr inbounds %struct.kvec, %struct.kvec* %12, i64 0
  %14 = getelementptr inbounds %struct.kvec, %struct.kvec* %13, i32 0, i32 1
  %15 = load %struct.smb2_create_req*, %struct.smb2_create_req** %14, align 8
  store %struct.smb2_create_req* %15, %struct.smb2_create_req** %10, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %4
  %21 = load %struct.cifs_open_parms*, %struct.cifs_open_parms** %8, align 8
  %22 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.kvec*, %struct.kvec** %6, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load %struct.cifs_open_parms*, %struct.cifs_open_parms** %8, align 8
  %29 = call i32 @add_durable_reconnect_v2_context(%struct.kvec* %26, i32* %27, %struct.cifs_open_parms* %28)
  store i32 %29, i32* %5, align 4
  br label %98

30:                                               ; preds = %20
  %31 = load %struct.kvec*, %struct.kvec** %6, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = load %struct.cifs_open_parms*, %struct.cifs_open_parms** %8, align 8
  %34 = call i32 @add_durable_v2_context(%struct.kvec* %31, i32* %32, %struct.cifs_open_parms* %33)
  store i32 %34, i32* %5, align 4
  br label %98

35:                                               ; preds = %4
  %36 = load %struct.cifs_open_parms*, %struct.cifs_open_parms** %8, align 8
  %37 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = load %struct.cifs_open_parms*, %struct.cifs_open_parms** %8, align 8
  %42 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.smb2_create_req* @create_reconnect_durable_buf(i32 %43)
  %45 = load %struct.kvec*, %struct.kvec** %6, align 8
  %46 = load i32, i32* %11, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.kvec, %struct.kvec* %45, i64 %47
  %49 = getelementptr inbounds %struct.kvec, %struct.kvec* %48, i32 0, i32 1
  store %struct.smb2_create_req* %44, %struct.smb2_create_req** %49, align 8
  %50 = load %struct.cifs_open_parms*, %struct.cifs_open_parms** %8, align 8
  %51 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %50, i32 0, i32 0
  store i32 0, i32* %51, align 4
  br label %59

52:                                               ; preds = %35
  %53 = call %struct.smb2_create_req* (...) @create_durable_buf()
  %54 = load %struct.kvec*, %struct.kvec** %6, align 8
  %55 = load i32, i32* %11, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.kvec, %struct.kvec* %54, i64 %56
  %58 = getelementptr inbounds %struct.kvec, %struct.kvec* %57, i32 0, i32 1
  store %struct.smb2_create_req* %53, %struct.smb2_create_req** %58, align 8
  br label %59

59:                                               ; preds = %52, %40
  %60 = load %struct.kvec*, %struct.kvec** %6, align 8
  %61 = load i32, i32* %11, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.kvec, %struct.kvec* %60, i64 %62
  %64 = getelementptr inbounds %struct.kvec, %struct.kvec* %63, i32 0, i32 1
  %65 = load %struct.smb2_create_req*, %struct.smb2_create_req** %64, align 8
  %66 = icmp eq %struct.smb2_create_req* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %98

70:                                               ; preds = %59
  %71 = load %struct.kvec*, %struct.kvec** %6, align 8
  %72 = load i32, i32* %11, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.kvec, %struct.kvec* %71, i64 %73
  %75 = getelementptr inbounds %struct.kvec, %struct.kvec* %74, i32 0, i32 0
  store i32 4, i32* %75, align 8
  %76 = load %struct.smb2_create_req*, %struct.smb2_create_req** %10, align 8
  %77 = getelementptr inbounds %struct.smb2_create_req, %struct.smb2_create_req* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %91, label %80

80:                                               ; preds = %70
  %81 = load %struct.kvec*, %struct.kvec** %6, align 8
  %82 = getelementptr inbounds %struct.kvec, %struct.kvec* %81, i64 1
  %83 = getelementptr inbounds %struct.kvec, %struct.kvec* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = add i64 16, %85
  %87 = trunc i64 %86 to i32
  %88 = call i64 @cpu_to_le32(i32 %87)
  %89 = load %struct.smb2_create_req*, %struct.smb2_create_req** %10, align 8
  %90 = getelementptr inbounds %struct.smb2_create_req, %struct.smb2_create_req* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  br label %91

91:                                               ; preds = %80, %70
  %92 = load %struct.smb2_create_req*, %struct.smb2_create_req** %10, align 8
  %93 = getelementptr inbounds %struct.smb2_create_req, %struct.smb2_create_req* %92, i32 0, i32 0
  %94 = call i32 @le32_add_cpu(i32* %93, i32 4)
  %95 = load i32, i32* %11, align 4
  %96 = add i32 %95, 1
  %97 = load i32*, i32** %7, align 8
  store i32 %96, i32* %97, align 4
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %91, %67, %30, %25
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @add_durable_reconnect_v2_context(%struct.kvec*, i32*, %struct.cifs_open_parms*) #1

declare dso_local i32 @add_durable_v2_context(%struct.kvec*, i32*, %struct.cifs_open_parms*) #1

declare dso_local %struct.smb2_create_req* @create_reconnect_durable_buf(i32) #1

declare dso_local %struct.smb2_create_req* @create_durable_buf(...) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
