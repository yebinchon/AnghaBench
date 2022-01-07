; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_init.c_qla4xxx_alloc_fw_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_init.c_qla4xxx_alloc_fw_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32, i32, i32, i32, %struct.TYPE_2__*, i64, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.qla4_8xxx_minidump_template_hdr = type { i32, i32, i32, i64* }

@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Firmware dump previously allocated.\0A\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"scsi%ld: Failed to get template size\0A\00", align 1
@AF_82XX_FW_DUMPED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"scsi%ld: Failed to allocate DMA memory\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"scsi%ld: Failed to get minidump template\0A\00", align 1
@ql4xmdcapmask = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [67 x i8] c"Falling back to default capture mask, as PEX DMA is not supported\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Minimum num of entries = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Dump template size  = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Selected Capture mask =0x%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Minidump Template Size = 0x%x KB\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Total Minidump size = 0x%x KB\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla4xxx_alloc_fw_dump(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca %struct.scsi_qla_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.qla4_8xxx_minidump_template_hdr*, align 8
  %10 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %2, align 8
  %11 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %12 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %11, i32 0, i32 5
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @KERN_WARNING, align 4
  %17 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %18 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %16, %struct.scsi_qla_host* %17, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %220

19:                                               ; preds = %1
  %20 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %21 = call i32 @qla4xxx_req_template_size(%struct.scsi_qla_host* %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @QLA_SUCCESS, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load i32, i32* @KERN_INFO, align 4
  %27 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %28 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %29 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %26, %struct.scsi_qla_host* %27, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %220

32:                                               ; preds = %19
  %33 = load i32, i32* @AF_82XX_FW_DUMPED, align 4
  %34 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %35 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %34, i32 0, i32 7
  %36 = call i32 @clear_bit(i32 %33, i32* %35)
  %37 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %38 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %37, i32 0, i32 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %42 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i8* @dma_alloc_coherent(i32* %40, i32 %43, i32* %8, i32 %44)
  store i8* %45, i8** %7, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %55, label %48

48:                                               ; preds = %32
  %49 = load i32, i32* @KERN_INFO, align 4
  %50 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %51 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %52 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %49, %struct.scsi_qla_host* %50, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  br label %220

55:                                               ; preds = %32
  %56 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @qla4xxx_get_minidump_template(%struct.scsi_qla_host* %56, i32 %57)
  store i32 %58, i32* %3, align 4
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @QLA_SUCCESS, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %55
  %63 = load i32, i32* @KERN_INFO, align 4
  %64 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %65 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %66 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %63, %struct.scsi_qla_host* %64, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  br label %209

69:                                               ; preds = %55
  %70 = load i8*, i8** %7, align 8
  %71 = bitcast i8* %70 to %struct.qla4_8xxx_minidump_template_hdr*
  store %struct.qla4_8xxx_minidump_template_hdr* %71, %struct.qla4_8xxx_minidump_template_hdr** %9, align 8
  %72 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %73 = load %struct.qla4_8xxx_minidump_template_hdr*, %struct.qla4_8xxx_minidump_template_hdr** %9, align 8
  %74 = call i32 @qla4_80xx_is_minidump_dma_capable(%struct.scsi_qla_host* %72, %struct.qla4_8xxx_minidump_template_hdr* %73)
  store i32 %74, i32* %10, align 4
  %75 = load %struct.qla4_8xxx_minidump_template_hdr*, %struct.qla4_8xxx_minidump_template_hdr** %9, align 8
  %76 = getelementptr inbounds %struct.qla4_8xxx_minidump_template_hdr, %struct.qla4_8xxx_minidump_template_hdr* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* @ql4xmdcapmask, align 4
  %79 = icmp sge i32 %78, 3
  br i1 %79, label %80, label %83

80:                                               ; preds = %69
  %81 = load i32, i32* @ql4xmdcapmask, align 4
  %82 = icmp sle i32 %81, 127
  br i1 %82, label %89, label %83

83:                                               ; preds = %80, %69
  %84 = load i32, i32* @ql4xmdcapmask, align 4
  %85 = icmp eq i32 %84, 255
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86, %80
  %90 = load i32, i32* @ql4xmdcapmask, align 4
  %91 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %92 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  br label %104

93:                                               ; preds = %86, %83
  %94 = load i32, i32* @ql4xmdcapmask, align 4
  %95 = icmp eq i32 %94, 255
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load i32, i32* @KERN_INFO, align 4
  %98 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %99 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %97, %struct.scsi_qla_host* %98, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0))
  br label %100

100:                                              ; preds = %96, %93
  %101 = load i32, i32* %4, align 4
  %102 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %103 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  br label %104

104:                                              ; preds = %100, %89
  %105 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %106 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.qla4_8xxx_minidump_template_hdr*, %struct.qla4_8xxx_minidump_template_hdr** %9, align 8
  %109 = getelementptr inbounds %struct.qla4_8xxx_minidump_template_hdr, %struct.qla4_8xxx_minidump_template_hdr* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* @KERN_INFO, align 4
  %111 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %112 = load %struct.qla4_8xxx_minidump_template_hdr*, %struct.qla4_8xxx_minidump_template_hdr** %9, align 8
  %113 = getelementptr inbounds %struct.qla4_8xxx_minidump_template_hdr, %struct.qla4_8xxx_minidump_template_hdr* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %110, %struct.scsi_qla_host* %111, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %114)
  %116 = call i32 @DEBUG2(i32 %115)
  %117 = load i32, i32* @KERN_INFO, align 4
  %118 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %119 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %120 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %117, %struct.scsi_qla_host* %118, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %121)
  %123 = call i32 @DEBUG2(i32 %122)
  %124 = load i32, i32* @KERN_INFO, align 4
  %125 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %126 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %127 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %124, %struct.scsi_qla_host* %125, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %128)
  %130 = call i32 @DEBUG2(i32 %129)
  store i32 2, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %131

131:                                              ; preds = %157, %104
  %132 = load i32, i32* %5, align 4
  %133 = and i32 %132, 255
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %162

135:                                              ; preds = %131
  %136 = load i32, i32* %5, align 4
  %137 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %138 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = and i32 %136, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %156

142:                                              ; preds = %135
  %143 = load %struct.qla4_8xxx_minidump_template_hdr*, %struct.qla4_8xxx_minidump_template_hdr** %9, align 8
  %144 = getelementptr inbounds %struct.qla4_8xxx_minidump_template_hdr, %struct.qla4_8xxx_minidump_template_hdr* %143, i32 0, i32 3
  %145 = load i64*, i64** %144, align 8
  %146 = load i32, i32* %6, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i64, i64* %145, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %151 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  %154 = add nsw i64 %153, %149
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %151, align 4
  br label %156

156:                                              ; preds = %142, %135
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %5, align 4
  %159 = shl i32 %158, 1
  store i32 %159, i32* %5, align 4
  %160 = load i32, i32* %6, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %6, align 4
  br label %131

162:                                              ; preds = %131
  %163 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %164 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %167 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, %165
  store i32 %169, i32* %167, align 4
  %170 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %171 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = call i64 @vmalloc(i32 %172)
  %174 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %175 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %174, i32 0, i32 5
  store i64 %173, i64* %175, align 8
  %176 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %177 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %176, i32 0, i32 5
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %162
  br label %209

181:                                              ; preds = %162
  %182 = load i32, i32* @KERN_INFO, align 4
  %183 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %184 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %185 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %182, %struct.scsi_qla_host* %183, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %186)
  %188 = call i32 @DEBUG2(i32 %187)
  %189 = load i32, i32* @KERN_INFO, align 4
  %190 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %191 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %192 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %189, %struct.scsi_qla_host* %190, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %193)
  %195 = call i32 @DEBUG2(i32 %194)
  %196 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %197 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %196, i32 0, i32 5
  %198 = load i64, i64* %197, align 8
  %199 = load i8*, i8** %7, align 8
  %200 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %201 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @memcpy(i64 %198, i8* %199, i32 %202)
  %204 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %205 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %204, i32 0, i32 5
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %208 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %207, i32 0, i32 6
  store i64 %206, i64* %208, align 8
  br label %209

209:                                              ; preds = %181, %180, %62
  %210 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %211 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %210, i32 0, i32 4
  %212 = load %struct.TYPE_2__*, %struct.TYPE_2__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 0
  %214 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %215 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load i8*, i8** %7, align 8
  %218 = load i32, i32* %8, align 4
  %219 = call i32 @dma_free_coherent(i32* %213, i32 %216, i8* %217, i32 %218)
  br label %220

220:                                              ; preds = %209, %48, %25, %15
  ret void
}

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*, ...) #1

declare dso_local i32 @qla4xxx_req_template_size(%struct.scsi_qla_host*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @qla4xxx_get_minidump_template(%struct.scsi_qla_host*, i32) #1

declare dso_local i32 @qla4_80xx_is_minidump_dma_capable(%struct.scsi_qla_host*, %struct.qla4_8xxx_minidump_template_hdr*) #1

declare dso_local i32 @DEBUG2(i32) #1

declare dso_local i64 @vmalloc(i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
