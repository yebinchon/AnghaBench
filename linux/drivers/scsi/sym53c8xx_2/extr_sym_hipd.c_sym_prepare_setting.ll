; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_prepare_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_prepare_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.sym_hcb = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i64, i64, %struct.sym_tcb*, i32 }
%struct.sym_tcb = type { i32, i32, i32, i32 }
%struct.sym_nvram = type { i64 }
%struct.sym_data = type { %struct.pci_dev* }
%struct.pci_dev = type { i64, i32 }

@FE_WIDE = common dso_local global i32 0, align 4
@FE_ULTRA3 = common dso_local global i32 0, align 4
@FE_ULTRA2 = common dso_local global i32 0, align 4
@FE_ULTRA = common dso_local global i32 0, align 4
@FE_QUAD = common dso_local global i32 0, align 4
@FE_DBLR = common dso_local global i32 0, align 4
@FE_VARCLK = common dso_local global i32 0, align 4
@SYM_CONF_MIN_ASYNC = common dso_local global i64 0, align 8
@div_10M = common dso_local global i64* null, align 8
@FE_C10 = common dso_local global i32 0, align 4
@FE_DAC = common dso_local global i32 0, align 4
@DDAC = common dso_local global i32 0, align 4
@SYM_CONF_DMA_ADDRESSING_MODE = common dso_local global i32 0, align 4
@XTIMOD = common dso_local global i32 0, align 4
@EXTIBMV = common dso_local global i32 0, align 4
@FE_NOPM = common dso_local global i32 0, align 4
@ENPMJ = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_LSI_53C1010_33 = common dso_local global i64 0, align 8
@DILS = common dso_local global i32 0, align 4
@SYM_SETUP_BURST_ORDER = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_NCR_53C810 = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_NCR_53C860 = common dso_local global i64 0, align 8
@FE_WRIE = common dso_local global i32 0, align 4
@FE_ERL = common dso_local global i32 0, align 4
@FE_ERMP = common dso_local global i32 0, align 4
@ERL = common dso_local global i32 0, align 4
@FE_BOF = common dso_local global i32 0, align 4
@BOF = common dso_local global i32 0, align 4
@ERMP = common dso_local global i32 0, align 4
@FE_PFEN = common dso_local global i32 0, align 4
@PFEN = common dso_local global i32 0, align 4
@FE_CLSE = common dso_local global i32 0, align 4
@CLSE = common dso_local global i32 0, align 4
@WRIE = common dso_local global i32 0, align 4
@FE_DFS = common dso_local global i32 0, align 4
@DFS = common dso_local global i32 0, align 4
@MPEE = common dso_local global i32 0, align 4
@nc_scid = common dso_local global i32 0, align 4
@SYM_SETUP_HOST_ID = common dso_local global i32 0, align 4
@SYM_SETUP_SCSI_LED = common dso_local global i64 0, align 8
@SYM_SYMBIOS_NVRAM = common dso_local global i64 0, align 8
@SYM_TEKRAM_NVRAM = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_NCR_53C895 = common dso_local global i64 0, align 8
@FE_LEDC = common dso_local global i32 0, align 4
@FE_LED0 = common dso_local global i32 0, align 4
@SYM_SETUP_IRQ_MODE = common dso_local global i32 0, align 4
@IRQM = common dso_local global i32 0, align 4
@SYM_CONF_MAX_TARGET = common dso_local global i32 0, align 4
@SYM_DISC_ENABLED = common dso_local global i32 0, align 4
@SYM_TAGS_ENABLED = common dso_local global i32 0, align 4
@SYM_SETUP_MAX_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%s: %s, ID %d, Fast-%d, %s, %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"parity checking\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"NO parity\00", align 1
@sym_verbose = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"%s: %s IRQ line driver%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"totem pole\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"open drain\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c", using on-chip SRAM\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"%s: using %s firmware.\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"%s: handling phase mismatch from SCRIPTS.\0A\00", align 1
@.str.10 = private unnamed_addr constant [81 x i8] c"%s: initial SCNTL3/DMODE/DCNTL/CTEST3/4/5 = (hex) %02x/%02x/%02x/%02x/%02x/%02x\0A\00", align 1
@.str.11 = private unnamed_addr constant [81 x i8] c"%s: final   SCNTL3/DMODE/DCNTL/CTEST3/4/5 = (hex) %02x/%02x/%02x/%02x/%02x/%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, %struct.sym_hcb*, %struct.sym_nvram*)* @sym_prepare_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sym_prepare_setting(%struct.Scsi_Host* %0, %struct.sym_hcb* %1, %struct.sym_nvram* %2) #0 {
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.sym_hcb*, align 8
  %6 = alloca %struct.sym_nvram*, align 8
  %7 = alloca %struct.sym_data*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sym_tcb*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store %struct.sym_hcb* %1, %struct.sym_hcb** %5, align 8
  store %struct.sym_nvram* %2, %struct.sym_nvram** %6, align 8
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %14 = call %struct.sym_data* @shost_priv(%struct.Scsi_Host* %13)
  store %struct.sym_data* %14, %struct.sym_data** %7, align 8
  %15 = load %struct.sym_data*, %struct.sym_data** %7, align 8
  %16 = getelementptr inbounds %struct.sym_data, %struct.sym_data* %15, i32 0, i32 0
  %17 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  store %struct.pci_dev* %17, %struct.pci_dev** %8, align 8
  %18 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %19 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @FE_WIDE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 1, i32 0
  %26 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %27 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %29 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @FE_ULTRA3, align 4
  %32 = load i32, i32* @FE_ULTRA2, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %3
  %37 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %38 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %37, i32 0, i32 2
  store i32 160000, i32* %38, align 8
  br label %53

39:                                               ; preds = %3
  %40 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %41 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @FE_ULTRA, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %48 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %47, i32 0, i32 2
  store i32 80000, i32* %48, align 8
  br label %52

49:                                               ; preds = %39
  %50 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %51 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %50, i32 0, i32 2
  store i32 40000, i32* %51, align 8
  br label %52

52:                                               ; preds = %49, %46
  br label %53

53:                                               ; preds = %52, %36
  %54 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %55 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @FE_QUAD, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %62 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %61, i32 0, i32 3
  store i32 4, i32* %62, align 4
  br label %77

63:                                               ; preds = %53
  %64 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %65 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @FE_DBLR, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %72 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %71, i32 0, i32 3
  store i32 2, i32* %72, align 4
  br label %76

73:                                               ; preds = %63
  %74 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %75 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %74, i32 0, i32 3
  store i32 1, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %70
  br label %77

77:                                               ; preds = %76, %60
  %78 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %79 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @FE_VARCLK, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %77
  %85 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %86 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %87 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @sym_getclock(%struct.sym_hcb* %85, i32 %88)
  br label %90

90:                                               ; preds = %84, %77
  %91 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %92 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = sub nsw i32 %93, 1
  store i32 %94, i32* %11, align 4
  br label %95

95:                                               ; preds = %116, %90
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %11, align 4
  %98 = icmp sge i32 %97, 0
  br i1 %98, label %99, label %117

99:                                               ; preds = %95
  %100 = load i64, i64* @SYM_CONF_MIN_ASYNC, align 8
  %101 = mul i64 10, %100
  %102 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %103 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = mul i64 %101, %105
  %107 = load i64*, i64** @div_10M, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %107, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = icmp ugt i64 %106, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %99
  %114 = load i32, i32* %11, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %11, align 4
  br label %117

116:                                              ; preds = %99
  br label %95

117:                                              ; preds = %113, %95
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %118, 1
  %120 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %121 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %120, i32 0, i32 5
  store i32 %119, i32* %121, align 4
  %122 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %123 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @FE_C10, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %117
  %129 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %130 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %129, i32 0, i32 5
  store i32 0, i32* %130, align 4
  br label %131

131:                                              ; preds = %128, %117
  %132 = load i64*, i64** @div_10M, align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 0
  %134 = load i64, i64* %133, align 8
  %135 = mul i64 4, %134
  %136 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %137 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = sext i32 %138 to i64
  %140 = add i64 %135, %139
  %141 = sub i64 %140, 1
  %142 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %143 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = sext i32 %144 to i64
  %146 = udiv i64 %141, %145
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %10, align 4
  %148 = load i32, i32* %10, align 4
  %149 = icmp sle i32 %148, 250
  br i1 %149, label %150, label %153

150:                                              ; preds = %131
  %151 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %152 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %151, i32 0, i32 6
  store i32 10, i32* %152, align 8
  br label %174

153:                                              ; preds = %131
  %154 = load i32, i32* %10, align 4
  %155 = icmp sle i32 %154, 303
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %158 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %157, i32 0, i32 6
  store i32 11, i32* %158, align 8
  br label %173

159:                                              ; preds = %153
  %160 = load i32, i32* %10, align 4
  %161 = icmp sle i32 %160, 500
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %164 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %163, i32 0, i32 6
  store i32 12, i32* %164, align 8
  br label %172

165:                                              ; preds = %159
  %166 = load i32, i32* %10, align 4
  %167 = add nsw i32 %166, 40
  %168 = sub nsw i32 %167, 1
  %169 = sdiv i32 %168, 40
  %170 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %171 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %170, i32 0, i32 6
  store i32 %169, i32* %171, align 8
  br label %172

172:                                              ; preds = %165, %162
  br label %173

173:                                              ; preds = %172, %156
  br label %174

174:                                              ; preds = %173, %150
  %175 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %176 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %175, i32 0, i32 6
  %177 = load i32, i32* %176, align 8
  %178 = icmp slt i32 %177, 25
  br i1 %178, label %179, label %193

179:                                              ; preds = %174
  %180 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %181 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @FE_ULTRA, align 4
  %184 = load i32, i32* @FE_ULTRA2, align 4
  %185 = or i32 %183, %184
  %186 = load i32, i32* @FE_ULTRA3, align 4
  %187 = or i32 %185, %186
  %188 = and i32 %182, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %193, label %190

190:                                              ; preds = %179
  %191 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %192 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %191, i32 0, i32 6
  store i32 25, i32* %192, align 8
  br label %211

193:                                              ; preds = %179, %174
  %194 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %195 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %194, i32 0, i32 6
  %196 = load i32, i32* %195, align 8
  %197 = icmp slt i32 %196, 12
  br i1 %197, label %198, label %210

198:                                              ; preds = %193
  %199 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %200 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @FE_ULTRA2, align 4
  %203 = load i32, i32* @FE_ULTRA3, align 4
  %204 = or i32 %202, %203
  %205 = and i32 %201, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %198
  %208 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %209 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %208, i32 0, i32 6
  store i32 12, i32* %209, align 8
  br label %210

210:                                              ; preds = %207, %198, %193
  br label %211

211:                                              ; preds = %210, %190
  %212 = load i64*, i64** @div_10M, align 8
  %213 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %214 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 8
  %216 = sub nsw i32 %215, 1
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i64, i64* %212, i64 %217
  %219 = load i64, i64* %218, align 8
  %220 = mul i64 11, %219
  %221 = trunc i64 %220 to i32
  %222 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %223 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = mul nsw i32 4, %224
  %226 = call i32 @div64_ul(i32 %221, i32 %225)
  store i32 %226, i32* %10, align 4
  %227 = load i32, i32* %10, align 4
  %228 = icmp sgt i32 %227, 2540
  br i1 %228, label %229, label %230

229:                                              ; preds = %211
  br label %233

230:                                              ; preds = %211
  %231 = load i32, i32* %10, align 4
  %232 = sdiv i32 %231, 10
  br label %233

233:                                              ; preds = %230, %229
  %234 = phi i32 [ 254, %229 ], [ %232, %230 ]
  %235 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %236 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %235, i32 0, i32 7
  store i32 %234, i32* %236, align 4
  %237 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %238 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @FE_C10, align 4
  %241 = load i32, i32* @FE_ULTRA3, align 4
  %242 = or i32 %240, %241
  %243 = and i32 %239, %242
  %244 = load i32, i32* @FE_C10, align 4
  %245 = load i32, i32* @FE_ULTRA3, align 4
  %246 = or i32 %244, %245
  %247 = icmp eq i32 %243, %246
  br i1 %247, label %248, label %267

248:                                              ; preds = %233
  %249 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %250 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = icmp eq i32 %251, 160000
  br i1 %252, label %253, label %266

253:                                              ; preds = %248
  %254 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %255 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %254, i32 0, i32 8
  store i32 9, i32* %255, align 8
  %256 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %257 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %256, i32 0, i32 9
  store i32 50, i32* %257, align 4
  %258 = load %struct.sym_nvram*, %struct.sym_nvram** %6, align 8
  %259 = getelementptr inbounds %struct.sym_nvram, %struct.sym_nvram* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  %262 = zext i1 %261 to i64
  %263 = select i1 %261, i32 62, i32 31
  %264 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %265 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %264, i32 0, i32 10
  store i32 %263, i32* %265, align 8
  br label %266

266:                                              ; preds = %253, %248
  br label %267

267:                                              ; preds = %266, %233
  %268 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %269 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* @FE_DAC, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %308

274:                                              ; preds = %267
  %275 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %276 = call i32 @use_dac(%struct.sym_hcb* %275)
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %284, label %278

278:                                              ; preds = %274
  %279 = load i32, i32* @DDAC, align 4
  %280 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %281 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %280, i32 0, i32 11
  %282 = load i32, i32* %281, align 4
  %283 = or i32 %282, %279
  store i32 %283, i32* %281, align 4
  br label %307

284:                                              ; preds = %274
  %285 = load i32, i32* @SYM_CONF_DMA_ADDRESSING_MODE, align 4
  %286 = icmp eq i32 %285, 1
  br i1 %286, label %287, label %295

287:                                              ; preds = %284
  %288 = load i32, i32* @XTIMOD, align 4
  %289 = load i32, i32* @EXTIBMV, align 4
  %290 = or i32 %288, %289
  %291 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %292 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %291, i32 0, i32 11
  %293 = load i32, i32* %292, align 4
  %294 = or i32 %293, %290
  store i32 %294, i32* %292, align 4
  br label %306

295:                                              ; preds = %284
  %296 = load i32, i32* @SYM_CONF_DMA_ADDRESSING_MODE, align 4
  %297 = icmp eq i32 %296, 2
  br i1 %297, label %298, label %305

298:                                              ; preds = %295
  %299 = load i32, i32* @EXTIBMV, align 4
  %300 = or i32 0, %299
  %301 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %302 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %301, i32 0, i32 11
  %303 = load i32, i32* %302, align 4
  %304 = or i32 %303, %300
  store i32 %304, i32* %302, align 4
  br label %305

305:                                              ; preds = %298, %295
  br label %306

306:                                              ; preds = %305, %287
  br label %307

307:                                              ; preds = %306, %278
  br label %308

308:                                              ; preds = %307, %267
  %309 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %310 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* @FE_NOPM, align 4
  %313 = and i32 %311, %312
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %321

315:                                              ; preds = %308
  %316 = load i32, i32* @ENPMJ, align 4
  %317 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %318 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %317, i32 0, i32 31
  %319 = load i32, i32* %318, align 8
  %320 = or i32 %319, %316
  store i32 %320, i32* %318, align 8
  br label %321

321:                                              ; preds = %315, %308
  %322 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %323 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %322, i32 0, i32 0
  %324 = load i64, i64* %323, align 8
  %325 = load i64, i64* @PCI_DEVICE_ID_LSI_53C1010_33, align 8
  %326 = icmp eq i64 %324, %325
  br i1 %326, label %327, label %338

327:                                              ; preds = %321
  %328 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %329 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 8
  %331 = icmp slt i32 %330, 1
  br i1 %331, label %332, label %338

332:                                              ; preds = %327
  %333 = load i32, i32* @DILS, align 4
  %334 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %335 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %334, i32 0, i32 31
  %336 = load i32, i32* %335, align 8
  %337 = or i32 %336, %333
  store i32 %337, i32* %335, align 8
  br label %338

338:                                              ; preds = %332, %327, %321
  %339 = load i32, i32* @SYM_SETUP_BURST_ORDER, align 4
  store i32 %339, i32* %9, align 4
  %340 = load i32, i32* %9, align 4
  %341 = icmp eq i32 %340, 255
  br i1 %341, label %342, label %353

342:                                              ; preds = %338
  %343 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %344 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %343, i32 0, i32 12
  %345 = load i32, i32* %344, align 8
  %346 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %347 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %346, i32 0, i32 13
  %348 = load i32, i32* %347, align 4
  %349 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %350 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %349, i32 0, i32 14
  %351 = load i32, i32* %350, align 8
  %352 = call i32 @burst_code(i32 %345, i32 %348, i32 %351)
  store i32 %352, i32* %9, align 4
  br label %353

353:                                              ; preds = %342, %338
  %354 = load i32, i32* %9, align 4
  %355 = icmp sgt i32 %354, 7
  br i1 %355, label %356, label %357

356:                                              ; preds = %353
  store i32 7, i32* %9, align 4
  br label %357

357:                                              ; preds = %356, %353
  %358 = load i32, i32* %9, align 4
  %359 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %360 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %359, i32 0, i32 15
  %361 = load i32, i32* %360, align 4
  %362 = icmp sgt i32 %358, %361
  br i1 %362, label %363, label %367

363:                                              ; preds = %357
  %364 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %365 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %364, i32 0, i32 15
  %366 = load i32, i32* %365, align 4
  store i32 %366, i32* %9, align 4
  br label %367

367:                                              ; preds = %363, %357
  %368 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %369 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %368, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = load i64, i64* @PCI_DEVICE_ID_NCR_53C810, align 8
  %372 = icmp eq i64 %370, %371
  br i1 %372, label %373, label %383

373:                                              ; preds = %367
  %374 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %375 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %374, i32 0, i32 1
  %376 = load i32, i32* %375, align 8
  %377 = icmp sge i32 %376, 16
  br i1 %377, label %378, label %383

378:                                              ; preds = %373
  %379 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %380 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %379, i32 0, i32 1
  %381 = load i32, i32* %380, align 8
  %382 = icmp sle i32 %381, 17
  br i1 %382, label %394, label %383

383:                                              ; preds = %378, %373, %367
  %384 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %385 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %384, i32 0, i32 0
  %386 = load i64, i64* %385, align 8
  %387 = load i64, i64* @PCI_DEVICE_ID_NCR_53C860, align 8
  %388 = icmp eq i64 %386, %387
  br i1 %388, label %389, label %405

389:                                              ; preds = %383
  %390 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %391 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 8
  %393 = icmp sle i32 %392, 1
  br i1 %393, label %394, label %405

394:                                              ; preds = %389, %378
  %395 = load i32, i32* @FE_WRIE, align 4
  %396 = load i32, i32* @FE_ERL, align 4
  %397 = or i32 %395, %396
  %398 = load i32, i32* @FE_ERMP, align 4
  %399 = or i32 %397, %398
  %400 = xor i32 %399, -1
  %401 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %402 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %401, i32 0, i32 1
  %403 = load i32, i32* %402, align 4
  %404 = and i32 %403, %400
  store i32 %404, i32* %402, align 4
  br label %405

405:                                              ; preds = %394, %389, %383
  %406 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %407 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %406, i32 0, i32 1
  %408 = load i32, i32* %407, align 4
  %409 = load i32, i32* @FE_ERL, align 4
  %410 = and i32 %408, %409
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %418

412:                                              ; preds = %405
  %413 = load i32, i32* @ERL, align 4
  %414 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %415 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %414, i32 0, i32 16
  %416 = load i32, i32* %415, align 8
  %417 = or i32 %416, %413
  store i32 %417, i32* %415, align 8
  br label %418

418:                                              ; preds = %412, %405
  %419 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %420 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %419, i32 0, i32 1
  %421 = load i32, i32* %420, align 4
  %422 = load i32, i32* @FE_BOF, align 4
  %423 = and i32 %421, %422
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %431

425:                                              ; preds = %418
  %426 = load i32, i32* @BOF, align 4
  %427 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %428 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %427, i32 0, i32 16
  %429 = load i32, i32* %428, align 8
  %430 = or i32 %429, %426
  store i32 %430, i32* %428, align 8
  br label %431

431:                                              ; preds = %425, %418
  %432 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %433 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %432, i32 0, i32 1
  %434 = load i32, i32* %433, align 4
  %435 = load i32, i32* @FE_ERMP, align 4
  %436 = and i32 %434, %435
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %444

438:                                              ; preds = %431
  %439 = load i32, i32* @ERMP, align 4
  %440 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %441 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %440, i32 0, i32 16
  %442 = load i32, i32* %441, align 8
  %443 = or i32 %442, %439
  store i32 %443, i32* %441, align 8
  br label %444

444:                                              ; preds = %438, %431
  %445 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %446 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %445, i32 0, i32 1
  %447 = load i32, i32* %446, align 4
  %448 = load i32, i32* @FE_PFEN, align 4
  %449 = and i32 %447, %448
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %462

451:                                              ; preds = %444
  %452 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %453 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %452, i32 0, i32 28
  %454 = load i64, i64* %453, align 8
  %455 = icmp ne i64 %454, 0
  br i1 %455, label %462, label %456

456:                                              ; preds = %451
  %457 = load i32, i32* @PFEN, align 4
  %458 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %459 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %458, i32 0, i32 17
  %460 = load i32, i32* %459, align 4
  %461 = or i32 %460, %457
  store i32 %461, i32* %459, align 4
  br label %462

462:                                              ; preds = %456, %451, %444
  %463 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %464 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %463, i32 0, i32 1
  %465 = load i32, i32* %464, align 4
  %466 = load i32, i32* @FE_CLSE, align 4
  %467 = and i32 %465, %466
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %469, label %475

469:                                              ; preds = %462
  %470 = load i32, i32* @CLSE, align 4
  %471 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %472 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %471, i32 0, i32 17
  %473 = load i32, i32* %472, align 4
  %474 = or i32 %473, %470
  store i32 %474, i32* %472, align 4
  br label %475

475:                                              ; preds = %469, %462
  %476 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %477 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %476, i32 0, i32 1
  %478 = load i32, i32* %477, align 4
  %479 = load i32, i32* @FE_WRIE, align 4
  %480 = and i32 %478, %479
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %482, label %488

482:                                              ; preds = %475
  %483 = load i32, i32* @WRIE, align 4
  %484 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %485 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %484, i32 0, i32 18
  %486 = load i32, i32* %485, align 8
  %487 = or i32 %486, %483
  store i32 %487, i32* %485, align 8
  br label %488

488:                                              ; preds = %482, %475
  %489 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %490 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %489, i32 0, i32 1
  %491 = load i32, i32* %490, align 4
  %492 = load i32, i32* @FE_DFS, align 4
  %493 = and i32 %491, %492
  %494 = icmp ne i32 %493, 0
  br i1 %494, label %495, label %501

495:                                              ; preds = %488
  %496 = load i32, i32* @DFS, align 4
  %497 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %498 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %497, i32 0, i32 19
  %499 = load i32, i32* %498, align 4
  %500 = or i32 %499, %496
  store i32 %500, i32* %498, align 4
  br label %501

501:                                              ; preds = %495, %488
  %502 = load i32, i32* @MPEE, align 4
  %503 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %504 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %503, i32 0, i32 20
  %505 = load i32, i32* %504, align 8
  %506 = or i32 %505, %502
  store i32 %506, i32* %504, align 8
  %507 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %508 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %507, i32 0, i32 21
  %509 = load i32, i32* %508, align 4
  %510 = or i32 %509, 10
  store i32 %510, i32* %508, align 4
  %511 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %512 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %511, i32 0, i32 22
  store i32 255, i32* %512, align 8
  %513 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %514 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %513, i32 0, i32 29
  store i64 0, i64* %514, align 8
  %515 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %516 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %517 = load %struct.sym_nvram*, %struct.sym_nvram** %6, align 8
  %518 = call i32 @sym_nvram_setup_host(%struct.Scsi_Host* %515, %struct.sym_hcb* %516, %struct.sym_nvram* %517)
  %519 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %520 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %519, i32 0, i32 22
  %521 = load i32, i32* %520, align 8
  %522 = icmp eq i32 %521, 255
  br i1 %522, label %523, label %539

523:                                              ; preds = %501
  %524 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %525 = load i32, i32* @nc_scid, align 4
  %526 = call i32 @INB(%struct.sym_hcb* %524, i32 %525)
  %527 = and i32 %526, 7
  %528 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %529 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %528, i32 0, i32 22
  store i32 %527, i32* %529, align 8
  %530 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %531 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %530, i32 0, i32 22
  %532 = load i32, i32* %531, align 8
  %533 = icmp ne i32 %532, 0
  br i1 %533, label %538, label %534

534:                                              ; preds = %523
  %535 = load i32, i32* @SYM_SETUP_HOST_ID, align 4
  %536 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %537 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %536, i32 0, i32 22
  store i32 %535, i32* %537, align 8
  br label %538

538:                                              ; preds = %534, %523
  br label %539

539:                                              ; preds = %538, %501
  %540 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %541 = load i32, i32* %9, align 4
  %542 = call i32 @sym_init_burst(%struct.sym_hcb* %540, i32 %541)
  %543 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %544 = load %struct.sym_nvram*, %struct.sym_nvram** %6, align 8
  %545 = call i32 @sym_set_bus_mode(%struct.sym_hcb* %543, %struct.sym_nvram* %544)
  %546 = load i64, i64* @SYM_SETUP_SCSI_LED, align 8
  %547 = icmp ne i64 %546, 0
  br i1 %547, label %566, label %548

548:                                              ; preds = %539
  %549 = load %struct.sym_nvram*, %struct.sym_nvram** %6, align 8
  %550 = getelementptr inbounds %struct.sym_nvram, %struct.sym_nvram* %549, i32 0, i32 0
  %551 = load i64, i64* %550, align 8
  %552 = load i64, i64* @SYM_SYMBIOS_NVRAM, align 8
  %553 = icmp eq i64 %551, %552
  br i1 %553, label %566, label %554

554:                                              ; preds = %548
  %555 = load %struct.sym_nvram*, %struct.sym_nvram** %6, align 8
  %556 = getelementptr inbounds %struct.sym_nvram, %struct.sym_nvram* %555, i32 0, i32 0
  %557 = load i64, i64* %556, align 8
  %558 = load i64, i64* @SYM_TEKRAM_NVRAM, align 8
  %559 = icmp eq i64 %557, %558
  br i1 %559, label %560, label %585

560:                                              ; preds = %554
  %561 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %562 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %561, i32 0, i32 0
  %563 = load i64, i64* %562, align 8
  %564 = load i64, i64* @PCI_DEVICE_ID_NCR_53C895, align 8
  %565 = icmp eq i64 %563, %564
  br i1 %565, label %566, label %585

566:                                              ; preds = %560, %548, %539
  %567 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %568 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %567, i32 0, i32 1
  %569 = load i32, i32* %568, align 4
  %570 = load i32, i32* @FE_LEDC, align 4
  %571 = and i32 %569, %570
  %572 = icmp ne i32 %571, 0
  br i1 %572, label %585, label %573

573:                                              ; preds = %566
  %574 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %575 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %574, i32 0, i32 23
  %576 = load i32, i32* %575, align 4
  %577 = and i32 %576, 1
  %578 = icmp ne i32 %577, 0
  br i1 %578, label %585, label %579

579:                                              ; preds = %573
  %580 = load i32, i32* @FE_LED0, align 4
  %581 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %582 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %581, i32 0, i32 1
  %583 = load i32, i32* %582, align 4
  %584 = or i32 %583, %580
  store i32 %584, i32* %582, align 4
  br label %585

585:                                              ; preds = %579, %573, %566, %560, %554
  %586 = load i32, i32* @SYM_SETUP_IRQ_MODE, align 4
  %587 = and i32 %586, 3
  switch i32 %587, label %604 [
    i32 2, label %588
    i32 1, label %594
  ]

588:                                              ; preds = %585
  %589 = load i32, i32* @IRQM, align 4
  %590 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %591 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %590, i32 0, i32 17
  %592 = load i32, i32* %591, align 4
  %593 = or i32 %592, %589
  store i32 %593, i32* %591, align 4
  br label %605

594:                                              ; preds = %585
  %595 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %596 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %595, i32 0, i32 24
  %597 = load i32, i32* %596, align 8
  %598 = load i32, i32* @IRQM, align 4
  %599 = and i32 %597, %598
  %600 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %601 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %600, i32 0, i32 17
  %602 = load i32, i32* %601, align 4
  %603 = or i32 %602, %599
  store i32 %603, i32* %601, align 4
  br label %605

604:                                              ; preds = %585
  br label %605

605:                                              ; preds = %604, %594, %588
  store i32 0, i32* %11, align 4
  br label %606

606:                                              ; preds = %650, %605
  %607 = load i32, i32* %11, align 4
  %608 = load i32, i32* @SYM_CONF_MAX_TARGET, align 4
  %609 = icmp slt i32 %607, %608
  br i1 %609, label %610, label %653

610:                                              ; preds = %606
  %611 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %612 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %611, i32 0, i32 30
  %613 = load %struct.sym_tcb*, %struct.sym_tcb** %612, align 8
  %614 = load i32, i32* %11, align 4
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %613, i64 %615
  store %struct.sym_tcb* %616, %struct.sym_tcb** %12, align 8
  %617 = load i32, i32* @SYM_DISC_ENABLED, align 4
  %618 = load i32, i32* @SYM_TAGS_ENABLED, align 4
  %619 = or i32 %617, %618
  %620 = load %struct.sym_tcb*, %struct.sym_tcb** %12, align 8
  %621 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %620, i32 0, i32 0
  %622 = load i32, i32* %621, align 4
  %623 = or i32 %622, %619
  store i32 %623, i32* %621, align 4
  %624 = load i32, i32* @SYM_SETUP_MAX_TAG, align 4
  %625 = load %struct.sym_tcb*, %struct.sym_tcb** %12, align 8
  %626 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %625, i32 0, i32 3
  store i32 %624, i32* %626, align 4
  %627 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %628 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %627, i32 0, i32 0
  %629 = load i32, i32* %628, align 8
  %630 = load %struct.sym_tcb*, %struct.sym_tcb** %12, align 8
  %631 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %630, i32 0, i32 1
  store i32 %629, i32* %631, align 4
  %632 = load %struct.sym_tcb*, %struct.sym_tcb** %12, align 8
  %633 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %632, i32 0, i32 2
  store i32 9, i32* %633, align 4
  %634 = load %struct.sym_tcb*, %struct.sym_tcb** %12, align 8
  %635 = load i32, i32* %11, align 4
  %636 = load %struct.sym_nvram*, %struct.sym_nvram** %6, align 8
  %637 = call i32 @sym_nvram_setup_target(%struct.sym_tcb* %634, i32 %635, %struct.sym_nvram* %636)
  %638 = load %struct.sym_tcb*, %struct.sym_tcb** %12, align 8
  %639 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %638, i32 0, i32 3
  %640 = load i32, i32* %639, align 4
  %641 = icmp ne i32 %640, 0
  br i1 %641, label %649, label %642

642:                                              ; preds = %610
  %643 = load i32, i32* @SYM_TAGS_ENABLED, align 4
  %644 = xor i32 %643, -1
  %645 = load %struct.sym_tcb*, %struct.sym_tcb** %12, align 8
  %646 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %645, i32 0, i32 0
  %647 = load i32, i32* %646, align 4
  %648 = and i32 %647, %644
  store i32 %648, i32* %646, align 4
  br label %649

649:                                              ; preds = %642, %610
  br label %650

650:                                              ; preds = %649
  %651 = load i32, i32* %11, align 4
  %652 = add nsw i32 %651, 1
  store i32 %652, i32* %11, align 4
  br label %606

653:                                              ; preds = %606
  %654 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %655 = call i8* @sym_name(%struct.sym_hcb* %654)
  %656 = load %struct.sym_nvram*, %struct.sym_nvram** %6, align 8
  %657 = call i8* @sym_nvram_type(%struct.sym_nvram* %656)
  %658 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %659 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %658, i32 0, i32 22
  %660 = load i32, i32* %659, align 8
  %661 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %662 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %661, i32 0, i32 1
  %663 = load i32, i32* %662, align 4
  %664 = load i32, i32* @FE_ULTRA3, align 4
  %665 = and i32 %663, %664
  %666 = icmp ne i32 %665, 0
  br i1 %666, label %667, label %668

667:                                              ; preds = %653
  br label %687

668:                                              ; preds = %653
  %669 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %670 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %669, i32 0, i32 1
  %671 = load i32, i32* %670, align 4
  %672 = load i32, i32* @FE_ULTRA2, align 4
  %673 = and i32 %671, %672
  %674 = icmp ne i32 %673, 0
  br i1 %674, label %675, label %676

675:                                              ; preds = %668
  br label %685

676:                                              ; preds = %668
  %677 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %678 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %677, i32 0, i32 1
  %679 = load i32, i32* %678, align 4
  %680 = load i32, i32* @FE_ULTRA, align 4
  %681 = and i32 %679, %680
  %682 = icmp ne i32 %681, 0
  %683 = zext i1 %682 to i64
  %684 = select i1 %682, i32 20, i32 10
  br label %685

685:                                              ; preds = %676, %675
  %686 = phi i32 [ 40, %675 ], [ %684, %676 ]
  br label %687

687:                                              ; preds = %685, %667
  %688 = phi i32 [ 80, %667 ], [ %686, %685 ]
  %689 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %690 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %689, i32 0, i32 29
  %691 = load i64, i64* %690, align 8
  %692 = call i8* @sym_scsi_bus_mode(i64 %691)
  %693 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %694 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %693, i32 0, i32 21
  %695 = load i32, i32* %694, align 4
  %696 = and i32 %695, 10
  %697 = icmp ne i32 %696, 0
  %698 = zext i1 %697 to i64
  %699 = select i1 %697, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %700 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %655, i8* %657, i32 %660, i32 %688, i8* %692, i8* %699)
  %701 = load i32, i32* @sym_verbose, align 4
  %702 = icmp ne i32 %701, 0
  br i1 %702, label %703, label %738

703:                                              ; preds = %687
  %704 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %705 = call i8* @sym_name(%struct.sym_hcb* %704)
  %706 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %707 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %706, i32 0, i32 17
  %708 = load i32, i32* %707, align 4
  %709 = load i32, i32* @IRQM, align 4
  %710 = and i32 %708, %709
  %711 = icmp ne i32 %710, 0
  %712 = zext i1 %711 to i64
  %713 = select i1 %711, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0)
  %714 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %715 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %714, i32 0, i32 28
  %716 = load i64, i64* %715, align 8
  %717 = icmp ne i64 %716, 0
  %718 = zext i1 %717 to i64
  %719 = select i1 %717, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %720 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %705, i8* %713, i8* %719)
  %721 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %722 = call i8* @sym_name(%struct.sym_hcb* %721)
  %723 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %724 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %723, i32 0, i32 25
  %725 = load i8*, i8** %724, align 8
  %726 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* %722, i8* %725)
  %727 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %728 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %727, i32 0, i32 1
  %729 = load i32, i32* %728, align 4
  %730 = load i32, i32* @FE_NOPM, align 4
  %731 = and i32 %729, %730
  %732 = icmp ne i32 %731, 0
  br i1 %732, label %733, label %737

733:                                              ; preds = %703
  %734 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %735 = call i8* @sym_name(%struct.sym_hcb* %734)
  %736 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i8* %735)
  br label %737

737:                                              ; preds = %733, %703
  br label %738

738:                                              ; preds = %737, %687
  %739 = load i32, i32* @sym_verbose, align 4
  %740 = icmp sge i32 %739, 2
  br i1 %740, label %741, label %784

741:                                              ; preds = %738
  %742 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %743 = call i8* @sym_name(%struct.sym_hcb* %742)
  %744 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %745 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %744, i32 0, i32 26
  %746 = load i32, i32* %745, align 8
  %747 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %748 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %747, i32 0, i32 12
  %749 = load i32, i32* %748, align 8
  %750 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %751 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %750, i32 0, i32 24
  %752 = load i32, i32* %751, align 8
  %753 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %754 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %753, i32 0, i32 27
  %755 = load i32, i32* %754, align 4
  %756 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %757 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %756, i32 0, i32 13
  %758 = load i32, i32* %757, align 4
  %759 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %760 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %759, i32 0, i32 14
  %761 = load i32, i32* %760, align 8
  %762 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.10, i64 0, i64 0), i8* %743, i32 %746, i32 %749, i32 %752, i32 %755, i32 %758, i32 %761)
  %763 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %764 = call i8* @sym_name(%struct.sym_hcb* %763)
  %765 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %766 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %765, i32 0, i32 5
  %767 = load i32, i32* %766, align 4
  %768 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %769 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %768, i32 0, i32 16
  %770 = load i32, i32* %769, align 8
  %771 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %772 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %771, i32 0, i32 17
  %773 = load i32, i32* %772, align 4
  %774 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %775 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %774, i32 0, i32 18
  %776 = load i32, i32* %775, align 8
  %777 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %778 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %777, i32 0, i32 20
  %779 = load i32, i32* %778, align 8
  %780 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %781 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %780, i32 0, i32 19
  %782 = load i32, i32* %781, align 4
  %783 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.11, i64 0, i64 0), i8* %764, i32 %767, i32 %770, i32 %773, i32 %776, i32 %779, i32 %782)
  br label %784

784:                                              ; preds = %741, %738
  ret i32 0
}

declare dso_local %struct.sym_data* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @sym_getclock(%struct.sym_hcb*, i32) #1

declare dso_local i32 @div64_ul(i32, i32) #1

declare dso_local i32 @use_dac(%struct.sym_hcb*) #1

declare dso_local i32 @burst_code(i32, i32, i32) #1

declare dso_local i32 @sym_nvram_setup_host(%struct.Scsi_Host*, %struct.sym_hcb*, %struct.sym_nvram*) #1

declare dso_local i32 @INB(%struct.sym_hcb*, i32) #1

declare dso_local i32 @sym_init_burst(%struct.sym_hcb*, i32) #1

declare dso_local i32 @sym_set_bus_mode(%struct.sym_hcb*, %struct.sym_nvram*) #1

declare dso_local i32 @sym_nvram_setup_target(%struct.sym_tcb*, i32, %struct.sym_nvram*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @sym_name(%struct.sym_hcb*) #1

declare dso_local i8* @sym_nvram_type(%struct.sym_nvram*) #1

declare dso_local i8* @sym_scsi_bus_mode(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
