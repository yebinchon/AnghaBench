; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_match_ipaddress.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_match_ipaddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }
%struct.ddb_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IPv6_ADDR_LEN = common dso_local global i32 0, align 4
@DDB_IPADDR_LEN = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@DDB_OPT_IPV6_DEVICE = common dso_local global i32 0, align 4
@QLA_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%pI6\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%pI4\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, %struct.ddb_entry*, i8*, i8*)* @qla4xxx_match_ipaddress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla4xxx_match_ipaddress(%struct.scsi_qla_host* %0, %struct.ddb_entry* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.scsi_qla_host*, align 8
  %6 = alloca %struct.ddb_entry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %5, align 8
  store %struct.ddb_entry* %1, %struct.ddb_entry** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = load i32, i32* @IPv6_ADDR_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load i32, i32* @DDB_IPADDR_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %21 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %21, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %22 = load %struct.ddb_entry*, %struct.ddb_entry** %6, align 8
  %23 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @DDB_OPT_IPV6_DEVICE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %4
  %30 = load i8*, i8** %8, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @strlen(i8* %31)
  %33 = call i32 @in6_pton(i8* %30, i32 %32, i32* %17, i8 signext 0, i32* null)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @QLA_ERROR, align 4
  store i32 %37, i32* %12, align 4
  br label %58

38:                                               ; preds = %29
  %39 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %17)
  store i32 %39, i32* %13, align 4
  br label %51

40:                                               ; preds = %4
  %41 = load i8*, i8** %8, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @strlen(i8* %42)
  %44 = call i32 @in4_pton(i8* %41, i32 %43, i32* %17, i8 signext 0, i32* null)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @QLA_ERROR, align 4
  store i32 %48, i32* %12, align 4
  br label %58

49:                                               ; preds = %40
  %50 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %17)
  store i32 %50, i32* %13, align 4
  br label %51

51:                                               ; preds = %49, %38
  %52 = load i8*, i8** %7, align 8
  %53 = call i64 @strcmp(i8* %52, i8* %20)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @QLA_ERROR, align 4
  store i32 %56, i32* %12, align 4
  br label %57

57:                                               ; preds = %55, %51
  br label %58

58:                                               ; preds = %57, %47, %36
  %59 = load i32, i32* %12, align 4
  %60 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %60)
  ret i32 %59
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @in6_pton(i8*, i32, i32*, i8 signext, i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i32*) #2

declare dso_local i32 @in4_pton(i8*, i32, i32*, i8 signext, i32*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
