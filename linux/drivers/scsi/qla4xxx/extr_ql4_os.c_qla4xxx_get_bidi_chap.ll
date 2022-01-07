; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_get_bidi_chap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_get_bidi_chap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ql4_chap_table = type { i64, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MAX_CHAP_ENTRIES_40XX = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Do not have CHAP table cache\0A\00", align 1
@CHAP_VALID_COOKIE = common dso_local global i32 0, align 4
@BIT_7 = common dso_local global i32 0, align 4
@BIT_6 = common dso_local global i32 0, align 4
@QL4_CHAP_MAX_SECRET_LEN = common dso_local global i32 0, align 4
@QL4_CHAP_MAX_NAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, i8*, i8*)* @qla4xxx_get_bidi_chap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla4xxx_get_bidi_chap(%struct.scsi_qla_host* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_qla_host*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ql4_chap_table*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %15 = call i64 @is_qla80XX(%struct.scsi_qla_host* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %19 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sdiv i32 %21, 2
  %23 = sext i32 %22 to i64
  %24 = udiv i64 %23, 24
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %10, align 4
  br label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @MAX_CHAP_ENTRIES_40XX, align 4
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %26, %17
  %29 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %30 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @KERN_ERR, align 4
  %35 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %36 = call i32 @ql4_printk(i32 %34, %struct.scsi_qla_host* %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %4, align 4
  br label %98

38:                                               ; preds = %28
  %39 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %40 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %39, i32 0, i32 0
  %41 = call i32 @mutex_lock(i32* %40)
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %90, %38
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %93

46:                                               ; preds = %42
  %47 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %48 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.ql4_chap_table*
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %50, i64 %52
  store %struct.ql4_chap_table* %53, %struct.ql4_chap_table** %11, align 8
  %54 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %11, align 8
  %55 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* @CHAP_VALID_COOKIE, align 4
  %58 = call i64 @__constant_cpu_to_le16(i32 %57)
  %59 = icmp ne i64 %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %46
  br label %90

61:                                               ; preds = %46
  %62 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %11, align 8
  %63 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @BIT_7, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %90

69:                                               ; preds = %61
  %70 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %11, align 8
  %71 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @BIT_6, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %69
  br label %90

77:                                               ; preds = %69
  %78 = load i8*, i8** %7, align 8
  %79 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %11, align 8
  %80 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @QL4_CHAP_MAX_SECRET_LEN, align 4
  %83 = call i32 @strlcpy(i8* %78, i32 %81, i32 %82)
  %84 = load i8*, i8** %6, align 8
  %85 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %11, align 8
  %86 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @QL4_CHAP_MAX_NAME_LEN, align 4
  %89 = call i32 @strlcpy(i8* %84, i32 %87, i32 %88)
  store i32 0, i32* %9, align 4
  br label %93

90:                                               ; preds = %76, %68, %60
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %42

93:                                               ; preds = %77, %42
  %94 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %95 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %94, i32 0, i32 0
  %96 = call i32 @mutex_unlock(i32* %95)
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %93, %33
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i64 @is_qla80XX(%struct.scsi_qla_host*) #1

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @__constant_cpu_to_le16(i32) #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
