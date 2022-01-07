; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_mbx.c_qla4xxx_get_uni_chap_at_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_mbx.c_qla4xxx_get_uni_chap_at_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ql4_chap_table = type { i64, i32, i32, i32 }

@QLA_ERROR = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Do not have CHAP table cache\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"No memory for username & secret\0A\00", align 1
@MAX_CHAP_ENTRIES_40XX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Invalid Chap index\0A\00", align 1
@CHAP_VALID_COOKIE = common dso_local global i32 0, align 4
@BIT_7 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Unidirectional entry not set\0A\00", align 1
@MAX_CHAP_SECRET_LEN = common dso_local global i32 0, align 4
@MAX_CHAP_NAME_LEN = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla4xxx_get_uni_chap_at_index(%struct.scsi_qla_host* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.scsi_qla_host*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ql4_chap_table*, align 8
  %11 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @QLA_ERROR, align 4
  store i32 %12, i32* %9, align 4
  store %struct.ql4_chap_table* null, %struct.ql4_chap_table** %10, align 8
  %13 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %14 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @KERN_ERR, align 4
  %19 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %20 = call i32 @ql4_printk(i32 %18, %struct.scsi_qla_host* %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @QLA_ERROR, align 4
  store i32 %21, i32* %9, align 4
  br label %106

22:                                               ; preds = %4
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i8*, i8** %7, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %25, %22
  %29 = load i32, i32* @KERN_ERR, align 4
  %30 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %31 = call i32 @ql4_printk(i32 %29, %struct.scsi_qla_host* %30, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @QLA_ERROR, align 4
  store i32 %32, i32* %9, align 4
  br label %106

33:                                               ; preds = %25
  %34 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %35 = call i64 @is_qla80XX(%struct.scsi_qla_host* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %39 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sdiv i32 %41, 2
  %43 = sext i32 %42 to i64
  %44 = udiv i64 %43, 24
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %11, align 4
  br label %48

46:                                               ; preds = %33
  %47 = load i32, i32* @MAX_CHAP_ENTRIES_40XX, align 4
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %46, %37
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load i32, i32* @KERN_ERR, align 4
  %54 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %55 = call i32 @ql4_printk(i32 %53, %struct.scsi_qla_host* %54, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* @QLA_ERROR, align 4
  store i32 %56, i32* %9, align 4
  br label %106

57:                                               ; preds = %48
  %58 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %59 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %58, i32 0, i32 0
  %60 = call i32 @mutex_lock(i32* %59)
  %61 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %62 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to %struct.ql4_chap_table*
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %64, i64 %66
  store %struct.ql4_chap_table* %67, %struct.ql4_chap_table** %10, align 8
  %68 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %10, align 8
  %69 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* @CHAP_VALID_COOKIE, align 4
  %72 = call i64 @__constant_cpu_to_le16(i32 %71)
  %73 = icmp ne i64 %70, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %57
  %75 = load i32, i32* @QLA_ERROR, align 4
  store i32 %75, i32* %9, align 4
  br label %102

76:                                               ; preds = %57
  %77 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %10, align 8
  %78 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @BIT_7, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %76
  %84 = load i32, i32* @KERN_ERR, align 4
  %85 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %86 = call i32 @ql4_printk(i32 %84, %struct.scsi_qla_host* %85, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %87 = load i32, i32* @QLA_ERROR, align 4
  store i32 %87, i32* %9, align 4
  br label %102

88:                                               ; preds = %76
  %89 = load i8*, i8** %7, align 8
  %90 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %10, align 8
  %91 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @MAX_CHAP_SECRET_LEN, align 4
  %94 = call i32 @strlcpy(i8* %89, i32 %92, i32 %93)
  %95 = load i8*, i8** %6, align 8
  %96 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %10, align 8
  %97 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @MAX_CHAP_NAME_LEN, align 4
  %100 = call i32 @strlcpy(i8* %95, i32 %98, i32 %99)
  %101 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %101, i32* %9, align 4
  br label %102

102:                                              ; preds = %88, %83, %74
  %103 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %104 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %103, i32 0, i32 0
  %105 = call i32 @mutex_unlock(i32* %104)
  br label %106

106:                                              ; preds = %102, %52, %28, %17
  %107 = load i32, i32* %9, align 4
  ret i32 %107
}

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*) #1

declare dso_local i64 @is_qla80XX(%struct.scsi_qla_host*) #1

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
