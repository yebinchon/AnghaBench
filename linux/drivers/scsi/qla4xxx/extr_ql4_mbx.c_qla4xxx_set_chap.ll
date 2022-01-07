; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_mbx.c_qla4xxx_set_chap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_mbx.c_qla4xxx_set_chap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ql4_chap_table = type { i32, i32, i32, i32, i32 }

@QLA_ERROR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BIT_6 = common dso_local global i32 0, align 4
@BIT_7 = common dso_local global i32 0, align 4
@MAX_CHAP_SECRET_LEN = common dso_local global i64 0, align 8
@MAX_CHAP_NAME_LEN = common dso_local global i64 0, align 8
@CHAP_VALID_COOKIE = common dso_local global i32 0, align 4
@MAX_CHAP_ENTRIES_40XX = common dso_local global i32 0, align 4
@FLASH_CHAP_OFFSET = common dso_local global i32 0, align 4
@FLASH_RAW_ACCESS_ADDR = common dso_local global i32 0, align 4
@FLASH_OPT_RMW_COMMIT = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla4xxx_set_chap(%struct.scsi_qla_host* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
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
  %16 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* @QLA_ERROR, align 4
  store i32 %17, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %18 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %19 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.ql4_chap_table* @dma_pool_zalloc(i32 %20, i32 %21, i32* %16)
  store %struct.ql4_chap_table* %22, %struct.ql4_chap_table** %14, align 8
  %23 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %14, align 8
  %24 = icmp eq %struct.ql4_chap_table* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %11, align 4
  br label %142

28:                                               ; preds = %5
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i32, i32* @BIT_6, align 4
  %33 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %14, align 8
  %34 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %43

37:                                               ; preds = %28
  %38 = load i32, i32* @BIT_7, align 4
  %39 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %14, align 8
  %40 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %37, %31
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @strlen(i8* %44)
  %46 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %14, align 8
  %47 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %14, align 8
  %49 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %8, align 8
  %52 = load i64, i64* @MAX_CHAP_SECRET_LEN, align 8
  %53 = sub nsw i64 %52, 1
  %54 = call i32 @strncpy(i32 %50, i8* %51, i64 %53)
  %55 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %14, align 8
  %56 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %7, align 8
  %59 = load i64, i64* @MAX_CHAP_NAME_LEN, align 8
  %60 = sub nsw i64 %59, 1
  %61 = call i32 @strncpy(i32 %57, i8* %58, i64 %60)
  %62 = load i32, i32* @CHAP_VALID_COOKIE, align 4
  %63 = call i32 @__constant_cpu_to_le16(i32 %62)
  %64 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %14, align 8
  %65 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %67 = call i64 @is_qla40XX(%struct.scsi_qla_host* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %43
  %70 = load i32, i32* @MAX_CHAP_ENTRIES_40XX, align 4
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 20
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* @FLASH_CHAP_OFFSET, align 4
  store i32 %74, i32* %13, align 4
  br label %97

75:                                               ; preds = %43
  %76 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %77 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sdiv i32 %79, 2
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* @FLASH_RAW_ACCESS_ADDR, align 4
  %82 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %83 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 %85, 2
  %87 = add nsw i32 %81, %86
  store i32 %87, i32* %13, align 4
  %88 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %89 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %96

92:                                               ; preds = %75
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %13, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %13, align 4
  br label %96

96:                                               ; preds = %92, %75
  br label %97

97:                                               ; preds = %96, %69
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = mul i64 %99, 20
  %101 = load i32, i32* %13, align 4
  %102 = sext i32 %101 to i64
  %103 = add i64 %102, %100
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %13, align 4
  %105 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %106 = load i32, i32* %16, align 4
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* @FLASH_OPT_RMW_COMMIT, align 4
  %109 = call i32 @qla4xxx_set_flash(%struct.scsi_qla_host* %105, i32 %106, i32 %107, i32 20, i32 %108)
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* @QLA_SUCCESS, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %128

113:                                              ; preds = %97
  %114 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %115 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %113
  %119 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %120 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = inttoptr i64 %121 to %struct.ql4_chap_table*
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %122, i64 %124
  %126 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %14, align 8
  %127 = call i32 @memcpy(%struct.ql4_chap_table* %125, %struct.ql4_chap_table* %126, i32 20)
  br label %128

128:                                              ; preds = %118, %113, %97
  %129 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %130 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %14, align 8
  %133 = load i32, i32* %16, align 4
  %134 = call i32 @dma_pool_free(i32 %131, %struct.ql4_chap_table* %132, i32 %133)
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* @QLA_SUCCESS, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %128
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %11, align 4
  br label %141

141:                                              ; preds = %138, %128
  br label %142

142:                                              ; preds = %141, %25
  %143 = load i32, i32* %11, align 4
  ret i32 %143
}

declare dso_local %struct.ql4_chap_table* @dma_pool_zalloc(i32, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncpy(i32, i8*, i64) #1

declare dso_local i32 @__constant_cpu_to_le16(i32) #1

declare dso_local i64 @is_qla40XX(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4xxx_set_flash(%struct.scsi_qla_host*, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.ql4_chap_table*, %struct.ql4_chap_table*, i32) #1

declare dso_local i32 @dma_pool_free(i32, %struct.ql4_chap_table*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
