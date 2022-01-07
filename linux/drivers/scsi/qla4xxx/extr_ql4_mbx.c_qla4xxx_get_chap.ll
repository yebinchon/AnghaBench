; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_mbx.c_qla4xxx_get_chap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_mbx.c_qla4xxx_get_chap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ql4_chap_table = type { i32, i32, i32 }

@QLA_ERROR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FLASH_CHAP_OFFSET = common dso_local global i32 0, align 4
@FLASH_RAW_ACCESS_ADDR = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Chap Cookie: x%x\0A\00", align 1
@CHAP_VALID_COOKIE = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"No valid chap entry found\0A\00", align 1
@QL4_CHAP_MAX_SECRET_LEN = common dso_local global i32 0, align 4
@QL4_CHAP_MAX_NAME_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla4xxx_get_chap(%struct.scsi_qla_host* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_qla_host*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ql4_chap_table*, align 8
  %15 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* @QLA_ERROR, align 4
  store i32 %16, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %17 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %18 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.ql4_chap_table* @dma_pool_zalloc(i32 %19, i32 %20, i32* %15)
  store %struct.ql4_chap_table* %21, %struct.ql4_chap_table** %14, align 8
  %22 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %14, align 8
  %23 = icmp eq %struct.ql4_chap_table* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %119

27:                                               ; preds = %4
  store i32 12, i32* %13, align 4
  %28 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %29 = call i64 @is_qla40XX(%struct.scsi_qla_host* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load i32, i32* @FLASH_CHAP_OFFSET, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %13, align 4
  %35 = mul nsw i32 %33, %34
  %36 = or i32 %32, %35
  store i32 %36, i32* %12, align 4
  br label %63

37:                                               ; preds = %27
  %38 = load i32, i32* @FLASH_RAW_ACCESS_ADDR, align 4
  %39 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %40 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %42, 2
  %44 = add nsw i32 %38, %43
  store i32 %44, i32* %12, align 4
  %45 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %46 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %57

49:                                               ; preds = %37
  %50 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %51 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sdiv i32 %53, 2
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %12, align 4
  br label %57

57:                                               ; preds = %49, %37
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %13, align 4
  %60 = mul nsw i32 %58, %59
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %12, align 4
  br label %63

63:                                               ; preds = %57, %31
  %64 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @qla4xxx_get_flash(%struct.scsi_qla_host* %64, i32 %65, i32 %66, i32 %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @QLA_SUCCESS, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %63
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %10, align 4
  br label %111

75:                                               ; preds = %63
  %76 = load i32, i32* @KERN_INFO, align 4
  %77 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %78 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %14, align 8
  %79 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @__le16_to_cpu(i32 %80)
  %82 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %76, %struct.scsi_qla_host* %77, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %81)
  %83 = call i32 @DEBUG2(i32 %82)
  %84 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %14, align 8
  %85 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @__le16_to_cpu(i32 %86)
  %88 = load i64, i64* @CHAP_VALID_COOKIE, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %75
  %91 = load i32, i32* @KERN_ERR, align 4
  %92 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %93 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %91, %struct.scsi_qla_host* %92, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %111

94:                                               ; preds = %75
  %95 = load i8*, i8** %8, align 8
  %96 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %14, align 8
  %97 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @QL4_CHAP_MAX_SECRET_LEN, align 4
  %100 = call i32 @strlcpy(i8* %95, i32 %98, i32 %99)
  %101 = load i8*, i8** %7, align 8
  %102 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %14, align 8
  %103 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @QL4_CHAP_MAX_NAME_LEN, align 4
  %106 = call i32 @strlcpy(i8* %101, i32 %104, i32 %105)
  %107 = load i64, i64* @CHAP_VALID_COOKIE, align 8
  %108 = call i32 @__constant_cpu_to_le16(i64 %107)
  %109 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %14, align 8
  %110 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  br label %111

111:                                              ; preds = %94, %90, %72
  %112 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %113 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %14, align 8
  %116 = load i32, i32* %15, align 4
  %117 = call i32 @dma_pool_free(i32 %114, %struct.ql4_chap_table* %115, i32 %116)
  %118 = load i32, i32* %10, align 4
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %111, %24
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local %struct.ql4_chap_table* @dma_pool_zalloc(i32, i32, i32*) #1

declare dso_local i64 @is_qla40XX(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4xxx_get_flash(%struct.scsi_qla_host*, i32, i32, i32) #1

declare dso_local i32 @DEBUG2(i32) #1

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*, ...) #1

declare dso_local i64 @__le16_to_cpu(i32) #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @__constant_cpu_to_le16(i64) #1

declare dso_local i32 @dma_pool_free(i32, %struct.ql4_chap_table*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
