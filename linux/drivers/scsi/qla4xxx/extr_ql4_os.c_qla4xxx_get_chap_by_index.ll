; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_get_chap_by_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_get_chap_by_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ql4_chap_table = type { i64 }

@QLA_ERROR = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"CHAP table cache is empty!\0A\00", align 1
@MAX_CHAP_ENTRIES_40XX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Invalid Chap index\0A\00", align 1
@CHAP_VALID_COOKIE = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, i32, %struct.ql4_chap_table**)* @qla4xxx_get_chap_by_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla4xxx_get_chap_by_index(%struct.scsi_qla_host* %0, i32 %1, %struct.ql4_chap_table** %2) #0 {
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ql4_chap_table**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ql4_chap_table** %2, %struct.ql4_chap_table*** %6, align 8
  %9 = load i32, i32* @QLA_ERROR, align 4
  store i32 %9, i32* %7, align 4
  %10 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %11 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @KERN_ERR, align 4
  %16 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %17 = call i32 @ql4_printk(i32 %15, %struct.scsi_qla_host* %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @QLA_ERROR, align 4
  store i32 %18, i32* %7, align 4
  br label %65

19:                                               ; preds = %3
  %20 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %21 = call i64 @is_qla80XX(%struct.scsi_qla_host* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %25 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sdiv i32 %27, 2
  %29 = sext i32 %28 to i64
  %30 = udiv i64 %29, 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %8, align 4
  br label %34

32:                                               ; preds = %19
  %33 = load i32, i32* @MAX_CHAP_ENTRIES_40XX, align 4
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %32, %23
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i32, i32* @KERN_ERR, align 4
  %40 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %41 = call i32 @ql4_printk(i32 %39, %struct.scsi_qla_host* %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @QLA_ERROR, align 4
  store i32 %42, i32* %7, align 4
  br label %65

43:                                               ; preds = %34
  %44 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %45 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to %struct.ql4_chap_table*
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %47, i64 %49
  %51 = load %struct.ql4_chap_table**, %struct.ql4_chap_table*** %6, align 8
  store %struct.ql4_chap_table* %50, %struct.ql4_chap_table** %51, align 8
  %52 = load %struct.ql4_chap_table**, %struct.ql4_chap_table*** %6, align 8
  %53 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %52, align 8
  %54 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* @CHAP_VALID_COOKIE, align 4
  %57 = call i64 @__constant_cpu_to_le16(i32 %56)
  %58 = icmp ne i64 %55, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %43
  %60 = load i32, i32* @QLA_ERROR, align 4
  store i32 %60, i32* %7, align 4
  %61 = load %struct.ql4_chap_table**, %struct.ql4_chap_table*** %6, align 8
  store %struct.ql4_chap_table* null, %struct.ql4_chap_table** %61, align 8
  br label %64

62:                                               ; preds = %43
  %63 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %62, %59
  br label %65

65:                                               ; preds = %64, %38, %14
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*) #1

declare dso_local i64 @is_qla80XX(%struct.scsi_qla_host*) #1

declare dso_local i64 @__constant_cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
