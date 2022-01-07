; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_delete_chap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_delete_chap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.scsi_qla_host = type { i32, i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ql4_chap_table = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_CHAP_ENTRIES_40XX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"CHAP entry %d is in use, cannot delete from flash\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@FLASH_CHAP_OFFSET = common dso_local global i32 0, align 4
@FLASH_RAW_ACCESS_ADDR = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Chap Cookie: x%x\0A\00", align 1
@CHAP_VALID_COOKIE = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"No valid chap entry found\0A\00", align 1
@FLASH_OPT_RMW_COMMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, i32)* @qla4xxx_delete_chap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla4xxx_delete_chap(%struct.Scsi_Host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_qla_host*, align 8
  %7 = alloca %struct.ql4_chap_table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %14 = call %struct.scsi_qla_host* @to_qla_host(%struct.Scsi_Host* %13)
  store %struct.scsi_qla_host* %14, %struct.scsi_qla_host** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %16 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.ql4_chap_table* @dma_pool_zalloc(i32 %17, i32 %18, i32* %8)
  store %struct.ql4_chap_table* %19, %struct.ql4_chap_table** %7, align 8
  %20 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %7, align 8
  %21 = icmp eq %struct.ql4_chap_table* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %184

25:                                               ; preds = %2
  %26 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %27 = call i64 @is_qla80XX(%struct.scsi_qla_host* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %31 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sdiv i32 %33, 2
  %35 = sext i32 %34 to i64
  %36 = udiv i64 %35, 4
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %9, align 4
  br label %40

38:                                               ; preds = %25
  %39 = load i32, i32* @MAX_CHAP_ENTRIES_40XX, align 4
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %38, %29
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %12, align 4
  br label %176

47:                                               ; preds = %40
  %48 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @qla4xxx_is_chap_active(%struct.Scsi_Host* %48, i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load i32, i32* @KERN_INFO, align 4
  %55 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %54, %struct.scsi_qla_host* %55, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @EBUSY, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %12, align 4
  br label %176

60:                                               ; preds = %47
  store i32 4, i32* %11, align 4
  %61 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %62 = call i64 @is_qla40XX(%struct.scsi_qla_host* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load i32, i32* @FLASH_CHAP_OFFSET, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %11, align 4
  %68 = mul nsw i32 %66, %67
  %69 = or i32 %65, %68
  store i32 %69, i32* %10, align 4
  br label %96

70:                                               ; preds = %60
  %71 = load i32, i32* @FLASH_RAW_ACCESS_ADDR, align 4
  %72 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %73 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %75, 2
  %77 = add nsw i32 %71, %76
  store i32 %77, i32* %10, align 4
  %78 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %79 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %90

82:                                               ; preds = %70
  %83 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %84 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sdiv i32 %86, 2
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %82, %70
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* %11, align 4
  %93 = mul nsw i32 %91, %92
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %10, align 4
  br label %96

96:                                               ; preds = %90, %64
  %97 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @qla4xxx_get_flash(%struct.scsi_qla_host* %97, i32 %98, i32 %99, i32 %100)
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* @QLA_SUCCESS, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %96
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %12, align 4
  br label %176

108:                                              ; preds = %96
  %109 = load i32, i32* @KERN_INFO, align 4
  %110 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %111 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %7, align 8
  %112 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @__le16_to_cpu(i32 %113)
  %115 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %109, %struct.scsi_qla_host* %110, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %114)
  %116 = call i32 @DEBUG2(i32 %115)
  %117 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %7, align 8
  %118 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @__le16_to_cpu(i32 %119)
  %121 = load i32, i32* @CHAP_VALID_COOKIE, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %108
  %124 = load i32, i32* @KERN_ERR, align 4
  %125 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %126 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %124, %struct.scsi_qla_host* %125, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %176

127:                                              ; preds = %108
  %128 = call i32 @__constant_cpu_to_le16(i32 65535)
  %129 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %7, align 8
  %130 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* @FLASH_CHAP_OFFSET, align 4
  %132 = sext i32 %131 to i64
  %133 = load i32, i32* %5, align 4
  %134 = sext i32 %133 to i64
  %135 = mul i64 %134, 4
  %136 = or i64 %132, %135
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %10, align 4
  %138 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* @FLASH_OPT_RMW_COMMIT, align 4
  %143 = call i32 @qla4xxx_set_flash(%struct.scsi_qla_host* %138, i32 %139, i32 %140, i32 %141, i32 %142)
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* @QLA_SUCCESS, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %168

147:                                              ; preds = %127
  %148 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %149 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %168

152:                                              ; preds = %147
  %153 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %154 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %153, i32 0, i32 2
  %155 = call i32 @mutex_lock(i32* %154)
  %156 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %157 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = inttoptr i64 %158 to %struct.ql4_chap_table*
  %160 = load i32, i32* %5, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %159, i64 %161
  %163 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %7, align 8
  %164 = call i32 @memcpy(%struct.ql4_chap_table* %162, %struct.ql4_chap_table* %163, i32 4)
  %165 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %166 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %165, i32 0, i32 2
  %167 = call i32 @mutex_unlock(i32* %166)
  br label %168

168:                                              ; preds = %152, %147, %127
  %169 = load i32, i32* %12, align 4
  %170 = load i32, i32* @QLA_SUCCESS, align 4
  %171 = icmp ne i32 %169, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %168
  %173 = load i32, i32* @EINVAL, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %12, align 4
  br label %175

175:                                              ; preds = %172, %168
  br label %176

176:                                              ; preds = %175, %123, %105, %53, %44
  %177 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %178 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %7, align 8
  %181 = load i32, i32* %8, align 4
  %182 = call i32 @dma_pool_free(i32 %179, %struct.ql4_chap_table* %180, i32 %181)
  %183 = load i32, i32* %12, align 4
  store i32 %183, i32* %3, align 4
  br label %184

184:                                              ; preds = %176, %22
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local %struct.scsi_qla_host* @to_qla_host(%struct.Scsi_Host*) #1

declare dso_local %struct.ql4_chap_table* @dma_pool_zalloc(i32, i32, i32*) #1

declare dso_local i64 @is_qla80XX(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4xxx_is_chap_active(%struct.Scsi_Host*, i32) #1

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*, ...) #1

declare dso_local i64 @is_qla40XX(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4xxx_get_flash(%struct.scsi_qla_host*, i32, i32, i32) #1

declare dso_local i32 @DEBUG2(i32) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @__constant_cpu_to_le16(i32) #1

declare dso_local i32 @qla4xxx_set_flash(%struct.scsi_qla_host*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(%struct.ql4_chap_table*, %struct.ql4_chap_table*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dma_pool_free(i32, %struct.ql4_chap_table*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
