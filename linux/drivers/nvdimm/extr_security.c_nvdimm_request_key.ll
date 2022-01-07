; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_security.c_nvdimm_request_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_security.c_nvdimm_request_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32 }
%struct.nvdimm = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.encrypted_key_payload = type { i64 }

@nvdimm_request_key.NVDIMM_PREFIX = internal constant [8 x i8] c"nvdimm:\00", align 1
@NVDIMM_KEY_DESC_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@key_type_encrypted = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENOKEY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"request_key() found no key\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"request_key() upcall failed\0A\00", align 1
@NVDIMM_PASSPHRASE_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.key* (%struct.nvdimm*)* @nvdimm_request_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.key* @nvdimm_request_key(%struct.nvdimm* %0) #0 {
  %2 = alloca %struct.nvdimm*, align 8
  %3 = alloca %struct.key*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.encrypted_key_payload*, align 8
  store %struct.nvdimm* %0, %struct.nvdimm** %2, align 8
  store %struct.key* null, %struct.key** %3, align 8
  %8 = load i32, i32* @NVDIMM_KEY_DESC_LEN, align 4
  %9 = sext i32 %8 to i64
  %10 = add i64 %9, 8
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load %struct.nvdimm*, %struct.nvdimm** %2, align 8
  %14 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %13, i32 0, i32 1
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = load %struct.nvdimm*, %struct.nvdimm** %2, align 8
  %16 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @sprintf(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @nvdimm_request_key.NVDIMM_PREFIX, i64 0, i64 0), i32 %17)
  %19 = call %struct.key* @request_key(i32* @key_type_encrypted, i8* %12, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store %struct.key* %19, %struct.key** %3, align 8
  %20 = load %struct.key*, %struct.key** %3, align 8
  %21 = call i64 @IS_ERR(%struct.key* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %1
  %24 = load %struct.key*, %struct.key** %3, align 8
  %25 = call i32 @PTR_ERR(%struct.key* %24)
  %26 = load i32, i32* @ENOKEY, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.device*, %struct.device** %6, align 8
  %31 = call i32 @dev_dbg(%struct.device* %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %35

32:                                               ; preds = %23
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = call i32 @dev_dbg(%struct.device* %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %29
  store %struct.key* null, %struct.key** %3, align 8
  br label %54

36:                                               ; preds = %1
  %37 = load %struct.key*, %struct.key** %3, align 8
  %38 = getelementptr inbounds %struct.key, %struct.key* %37, i32 0, i32 0
  %39 = call i32 @down_read(i32* %38)
  %40 = load %struct.key*, %struct.key** %3, align 8
  %41 = call %struct.encrypted_key_payload* @dereference_key_locked(%struct.key* %40)
  store %struct.encrypted_key_payload* %41, %struct.encrypted_key_payload** %7, align 8
  %42 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %7, align 8
  %43 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @NVDIMM_PASSPHRASE_LEN, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %36
  %48 = load %struct.key*, %struct.key** %3, align 8
  %49 = getelementptr inbounds %struct.key, %struct.key* %48, i32 0, i32 0
  %50 = call i32 @up_read(i32* %49)
  %51 = load %struct.key*, %struct.key** %3, align 8
  %52 = call i32 @key_put(%struct.key* %51)
  store %struct.key* null, %struct.key** %3, align 8
  br label %53

53:                                               ; preds = %47, %36
  br label %54

54:                                               ; preds = %53, %35
  %55 = load %struct.key*, %struct.key** %3, align 8
  %56 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %56)
  ret %struct.key* %55
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #2

declare dso_local %struct.key* @request_key(i32*, i8*, i8*) #2

declare dso_local i64 @IS_ERR(%struct.key*) #2

declare dso_local i32 @PTR_ERR(%struct.key*) #2

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #2

declare dso_local i32 @down_read(i32*) #2

declare dso_local %struct.encrypted_key_payload* @dereference_key_locked(%struct.key*) #2

declare dso_local i32 @up_read(i32*) #2

declare dso_local i32 @key_put(%struct.key*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
