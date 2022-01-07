; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_cmp_fw_stentry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_cmp_fw_stentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_db_entry = type { i32, i32*, i32*, i32 }

@IP_ADDR_LEN = common dso_local global i64 0, align 8
@DDB_OPT_IPV6_DEVICE = common dso_local global i32 0, align 4
@IPv6_ADDR_LEN = common dso_local global i64 0, align 8
@QLA_ERROR = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dev_db_entry*, %struct.dev_db_entry*)* @qla4xxx_cmp_fw_stentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla4xxx_cmp_fw_stentry(%struct.dev_db_entry* %0, %struct.dev_db_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dev_db_entry*, align 8
  %5 = alloca %struct.dev_db_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.dev_db_entry* %0, %struct.dev_db_entry** %4, align 8
  store %struct.dev_db_entry* %1, %struct.dev_db_entry** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load i64, i64* @IP_ADDR_LEN, align 8
  store i64 %8, i64* %7, align 8
  %9 = load %struct.dev_db_entry*, %struct.dev_db_entry** %4, align 8
  %10 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @le16_to_cpu(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @DDB_OPT_IPV6_DEVICE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i64, i64* @IPv6_ADDR_LEN, align 8
  store i64 %18, i64* %7, align 8
  br label %19

19:                                               ; preds = %17, %2
  %20 = load %struct.dev_db_entry*, %struct.dev_db_entry** %4, align 8
  %21 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.dev_db_entry*, %struct.dev_db_entry** %5, align 8
  %24 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i64 @memcmp(i32* %22, i32* %25, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = load i32, i32* @QLA_ERROR, align 4
  store i32 %31, i32* %3, align 4
  br label %56

32:                                               ; preds = %19
  %33 = load %struct.dev_db_entry*, %struct.dev_db_entry** %4, align 8
  %34 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load %struct.dev_db_entry*, %struct.dev_db_entry** %5, align 8
  %38 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = call i64 @memcmp(i32* %36, i32* %40, i32 8)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = load i32, i32* @QLA_ERROR, align 4
  store i32 %44, i32* %3, align 4
  br label %56

45:                                               ; preds = %32
  %46 = load %struct.dev_db_entry*, %struct.dev_db_entry** %4, align 8
  %47 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %46, i32 0, i32 0
  %48 = load %struct.dev_db_entry*, %struct.dev_db_entry** %5, align 8
  %49 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %48, i32 0, i32 0
  %50 = call i64 @memcmp(i32* %47, i32* %49, i32 4)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @QLA_ERROR, align 4
  store i32 %53, i32* %3, align 4
  br label %56

54:                                               ; preds = %45
  %55 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %52, %43, %30
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
