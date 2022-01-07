; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_pci_function_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_pci_function_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, %struct.TYPE_20__, i8**, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.lpfc_register }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.lpfc_register = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%union.lpfc_sli4_cfg_shdr = type { %struct.lpfc_register }

@lpfc_sli_intf_if_type = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"0494 Unable to allocate memory for issuing SLI_FUNCTION_RESET mailbox command\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@LPFC_MBOX_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@LPFC_MBOX_OPCODE_FUNCTION_RESET = common dso_local global i32 0, align 4
@LPFC_SLI4_MBX_EMBED = common dso_local global i32 0, align 4
@MBX_POLL = common dso_local global i32 0, align 4
@lpfc_mbox_hdr_status = common dso_local global i32 0, align 4
@lpfc_mbox_hdr_add_status = common dso_local global i32 0, align 4
@MBX_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [87 x i8] c"0495 SLI_FUNCTION_RESET mailbox failed with status x%x add_status x%x, mbx status x%x\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@lpfc_sliport_status_rdy = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [70 x i8] c"2890 Port not ready, port status reg 0x%x error 1=0x%x, error 2=0x%x\0A\00", align 1
@lpfc_sliport_ctrl_end = common dso_local global i32 0, align 4
@LPFC_SLIPORT_LITTLE_ENDIAN = common dso_local global i32 0, align 4
@lpfc_sliport_ctrl_ip = common dso_local global i32 0, align 4
@LPFC_SLIPORT_INIT_PORT = common dso_local global i32 0, align 4
@PCI_DEVICE_ID = common dso_local global i32 0, align 4
@lpfc_sliport_status_rn = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [74 x i8] c"3317 HBA not functional: IP Reset Failed try: echo fw_reset > board_mode\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_pci_function_reset(%struct.lpfc_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.lpfc_sli4_cfg_shdr*, align 8
  %12 = alloca %struct.lpfc_register, align 4
  %13 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* @lpfc_sli_intf_if_type, align 4
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %16 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 1
  %18 = call i32 @bf_get(i32 %14, %struct.lpfc_register* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %201 [
    i32 131, label %20
    i32 129, label %92
    i32 128, label %92
    i32 130, label %200
  ]

20:                                               ; preds = %1
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %22 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i64 @mempool_alloc(i32 %23, i32 %24)
  %26 = inttoptr i64 %25 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %26, %struct.TYPE_21__** %4, align 8
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %28 = icmp ne %struct.TYPE_21__* %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %20
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %31 = load i32, i32* @KERN_ERR, align 4
  %32 = load i32, i32* @LOG_INIT, align 4
  %33 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %30, i32 %31, i32 %32, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %215

36:                                               ; preds = %20
  %37 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %39 = load i32, i32* @LPFC_MBOX_SUBSYSTEM_COMMON, align 4
  %40 = load i32, i32* @LPFC_MBOX_OPCODE_FUNCTION_RESET, align 4
  %41 = load i32, i32* @LPFC_SLI4_MBX_EMBED, align 4
  %42 = call i32 @lpfc_sli4_config(%struct.lpfc_hba* %37, %struct.TYPE_21__* %38, i32 %39, i32 %40, i32 0, i32 %41)
  %43 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %45 = load i32, i32* @MBX_POLL, align 4
  %46 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %43, %struct.TYPE_21__* %44, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = bitcast i32* %53 to %union.lpfc_sli4_cfg_shdr*
  store %union.lpfc_sli4_cfg_shdr* %54, %union.lpfc_sli4_cfg_shdr** %11, align 8
  %55 = load i32, i32* @lpfc_mbox_hdr_status, align 4
  %56 = load %union.lpfc_sli4_cfg_shdr*, %union.lpfc_sli4_cfg_shdr** %11, align 8
  %57 = bitcast %union.lpfc_sli4_cfg_shdr* %56 to %struct.lpfc_register*
  %58 = call i32 @bf_get(i32 %55, %struct.lpfc_register* %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* @lpfc_mbox_hdr_add_status, align 4
  %60 = load %union.lpfc_sli4_cfg_shdr*, %union.lpfc_sli4_cfg_shdr** %11, align 8
  %61 = bitcast %union.lpfc_sli4_cfg_shdr* %60 to %struct.lpfc_register*
  %62 = call i32 @bf_get(i32 %59, %struct.lpfc_register* %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @MBX_TIMEOUT, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %36
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %68 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %69 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @mempool_free(%struct.TYPE_21__* %67, i32 %70)
  br label %72

72:                                               ; preds = %66, %36
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %78, %75, %72
  %82 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %83 = load i32, i32* @KERN_ERR, align 4
  %84 = load i32, i32* @LOG_INIT, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %5, align 4
  %88 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %82, i32 %83, i32 %84, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i32 %85, i32 %86, i32 %87)
  %89 = load i32, i32* @ENXIO, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %81, %78
  br label %202

92:                                               ; preds = %1, %1
  br label %93

93:                                               ; preds = %168, %92
  store i32 0, i32* %9, align 4
  br label %94

94:                                               ; preds = %117, %93
  %95 = load i32, i32* %9, align 4
  %96 = icmp slt i32 %95, 1500
  br i1 %96, label %97, label %120

97:                                               ; preds = %94
  %98 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %99 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.lpfc_register, %struct.lpfc_register* %12, i32 0, i32 0
  %105 = call i32 @lpfc_readl(i32 %103, i32* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %97
  %108 = load i32, i32* @ENODEV, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %5, align 4
  br label %203

110:                                              ; preds = %97
  %111 = load i32, i32* @lpfc_sliport_status_rdy, align 4
  %112 = call i32 @bf_get(i32 %111, %struct.lpfc_register* %12)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  br label %120

115:                                              ; preds = %110
  %116 = call i32 @msleep(i32 20)
  br label %117

117:                                              ; preds = %115
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %9, align 4
  br label %94

120:                                              ; preds = %114, %94
  %121 = load i32, i32* @lpfc_sliport_status_rdy, align 4
  %122 = call i32 @bf_get(i32 %121, %struct.lpfc_register* %12)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %165, label %124

124:                                              ; preds = %120
  %125 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %126 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call i8* @readl(i32 %130)
  %132 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %133 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %132, i32 0, i32 2
  %134 = load i8**, i8*** %133, align 8
  %135 = getelementptr inbounds i8*, i8** %134, i64 0
  store i8* %131, i8** %135, align 8
  %136 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %137 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i8* @readl(i32 %141)
  %143 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %144 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %143, i32 0, i32 2
  %145 = load i8**, i8*** %144, align 8
  %146 = getelementptr inbounds i8*, i8** %145, i64 1
  store i8* %142, i8** %146, align 8
  %147 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %148 = load i32, i32* @KERN_ERR, align 4
  %149 = load i32, i32* @LOG_INIT, align 4
  %150 = getelementptr inbounds %struct.lpfc_register, %struct.lpfc_register* %12, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %153 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %152, i32 0, i32 2
  %154 = load i8**, i8*** %153, align 8
  %155 = getelementptr inbounds i8*, i8** %154, i64 0
  %156 = load i8*, i8** %155, align 8
  %157 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %158 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %157, i32 0, i32 2
  %159 = load i8**, i8*** %158, align 8
  %160 = getelementptr inbounds i8*, i8** %159, i64 1
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %147, i32 %148, i32 %149, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i32 %151, i8* %156, i8* %161)
  %163 = load i32, i32* @ENODEV, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %5, align 4
  br label %203

165:                                              ; preds = %120
  %166 = load i32, i32* %10, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %191, label %168

168:                                              ; preds = %165
  %169 = getelementptr inbounds %struct.lpfc_register, %struct.lpfc_register* %12, i32 0, i32 0
  store i32 0, i32* %169, align 4
  %170 = load i32, i32* @lpfc_sliport_ctrl_end, align 4
  %171 = load i32, i32* @LPFC_SLIPORT_LITTLE_ENDIAN, align 4
  %172 = call i32 @bf_set(i32 %170, %struct.lpfc_register* %12, i32 %171)
  %173 = load i32, i32* @lpfc_sliport_ctrl_ip, align 4
  %174 = load i32, i32* @LPFC_SLIPORT_INIT_PORT, align 4
  %175 = call i32 @bf_set(i32 %173, %struct.lpfc_register* %12, i32 %174)
  %176 = getelementptr inbounds %struct.lpfc_register, %struct.lpfc_register* %12, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %179 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @writel(i32 %177, i32 %183)
  %185 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %186 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @PCI_DEVICE_ID, align 4
  %189 = call i32 @pci_read_config_word(i32 %187, i32 %188, i32* %13)
  store i32 1, i32* %10, align 4
  %190 = call i32 @msleep(i32 20)
  br label %93

191:                                              ; preds = %165
  %192 = load i32, i32* @lpfc_sliport_status_rn, align 4
  %193 = call i32 @bf_get(i32 %192, %struct.lpfc_register* %12)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %191
  %196 = load i32, i32* @ENODEV, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %5, align 4
  br label %203

198:                                              ; preds = %191
  br label %199

199:                                              ; preds = %198
  br label %202

200:                                              ; preds = %1
  br label %201

201:                                              ; preds = %1, %200
  br label %202

202:                                              ; preds = %201, %199, %91
  br label %203

203:                                              ; preds = %202, %195, %124, %107
  %204 = load i32, i32* %5, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %213

206:                                              ; preds = %203
  %207 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %208 = load i32, i32* @KERN_ERR, align 4
  %209 = load i32, i32* @LOG_INIT, align 4
  %210 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %207, i32 %208, i32 %209, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0))
  %211 = load i32, i32* @ENODEV, align 4
  %212 = sub nsw i32 0, %211
  store i32 %212, i32* %5, align 4
  br label %213

213:                                              ; preds = %206, %203
  %214 = load i32, i32* %5, align 4
  store i32 %214, i32* %2, align 4
  br label %215

215:                                              ; preds = %213, %29
  %216 = load i32, i32* %2, align 4
  ret i32 %216
}

declare dso_local i32 @bf_get(i32, %struct.lpfc_register*) #1

declare dso_local i64 @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @lpfc_sli4_config(%struct.lpfc_hba*, %struct.TYPE_21__*, i32, i32, i32, i32) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @mempool_free(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @lpfc_readl(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i8* @readl(i32) #1

declare dso_local i32 @bf_set(i32, %struct.lpfc_register*, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
