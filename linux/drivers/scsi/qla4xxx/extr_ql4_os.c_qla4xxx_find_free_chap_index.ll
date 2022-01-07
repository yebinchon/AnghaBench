; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_find_free_chap_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_find_free_chap_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ql4_chap_table = type { i64 }

@MAX_CHAP_ENTRIES_40XX = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"CHAP table cache is empty!\0A\00", align 1
@QLA_ERROR = common dso_local global i32 0, align 4
@CHAP_VALID_COOKIE = common dso_local global i32 0, align 4
@MAX_RESRV_CHAP_IDX = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, i32*)* @qla4xxx_find_free_chap_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla4xxx_find_free_chap_index(%struct.scsi_qla_host* %0, i32* %1) #0 {
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ql4_chap_table*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %11 = call i64 @is_qla80XX(%struct.scsi_qla_host* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %15 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sdiv i32 %17, 2
  %19 = sext i32 %18 to i64
  %20 = udiv i64 %19, 8
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %8, align 4
  br label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @MAX_CHAP_ENTRIES_40XX, align 4
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %22, %13
  %25 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %26 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @KERN_ERR, align 4
  %31 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %32 = call i32 @ql4_printk(i32 %30, %struct.scsi_qla_host* %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @QLA_ERROR, align 4
  store i32 %33, i32* %6, align 4
  br label %73

34:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %60, %34
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %63

39:                                               ; preds = %35
  %40 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %41 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.ql4_chap_table*
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %43, i64 %45
  store %struct.ql4_chap_table* %46, %struct.ql4_chap_table** %9, align 8
  %47 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %9, align 8
  %48 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* @CHAP_VALID_COOKIE, align 4
  %51 = call i64 @__constant_cpu_to_le16(i32 %50)
  %52 = icmp ne i64 %49, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %39
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @MAX_RESRV_CHAP_IDX, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %7, align 4
  br label %63

59:                                               ; preds = %53, %39
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %35

63:                                               ; preds = %57, %35
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, -1
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i32, i32* %7, align 4
  %68 = load i32*, i32** %4, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %69, i32* %6, align 4
  br label %72

70:                                               ; preds = %63
  %71 = load i32, i32* @QLA_ERROR, align 4
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %70, %66
  br label %73

73:                                               ; preds = %72, %29
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i64 @is_qla80XX(%struct.scsi_qla_host*) #1

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*) #1

declare dso_local i64 @__constant_cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
