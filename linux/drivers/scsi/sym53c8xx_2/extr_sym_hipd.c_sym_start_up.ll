; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_start_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_start_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.sym_data = type { %struct.sym_hcb*, %struct.pci_dev* }
%struct.sym_hcb = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, %struct.TYPE_8__, i32, i32, i64, i32, %struct.sym_tcb*, i64*, i32 (%struct.Scsi_Host.0*)*, i64, i8**, i64, i64, i8**, i64, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.sym_tcb = type { %struct.TYPE_7__**, %struct.TYPE_6__*, %struct.TYPE_5__, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64, i32, i64 }
%struct.Scsi_Host.0 = type opaque
%struct.pci_dev = type { i64, i32 }

@nc_stest3 = common dso_local global i32 0, align 4
@TE = common dso_local global i32 0, align 4
@CSF = common dso_local global i32 0, align 4
@nc_ctest3 = common dso_local global i32 0, align 4
@CLF = common dso_local global i32 0, align 4
@MAX_QUEUE = common dso_local global i32 0, align 4
@DID_RESET = common dso_local global i32 0, align 4
@nc_istat = common dso_local global i32 0, align 4
@nc_mbox1 = common dso_local global i32 0, align 4
@nc_scntl0 = common dso_local global i32 0, align 4
@nc_scntl1 = common dso_local global i32 0, align 4
@nc_scid = common dso_local global i32 0, align 4
@RRE = common dso_local global i32 0, align 4
@nc_respid = common dso_local global i32 0, align 4
@SIGP = common dso_local global i32 0, align 4
@nc_dmode = common dso_local global i32 0, align 4
@nc_ctest5 = common dso_local global i32 0, align 4
@nc_dcntl = common dso_local global i32 0, align 4
@NOCOM = common dso_local global i32 0, align 4
@nc_ctest4 = common dso_local global i32 0, align 4
@FE_C10 = common dso_local global i32 0, align 4
@nc_stest2 = common dso_local global i32 0, align 4
@EXT = common dso_local global i32 0, align 4
@nc_stime0 = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_LSI_53C1010_66 = common dso_local global i64 0, align 8
@nc_aipcntl1 = common dso_local global i32 0, align 4
@DISAIP = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_LSI_53C1010_33 = common dso_local global i64 0, align 8
@nc_stest1 = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_NCR_53C875 = common dso_local global i64 0, align 8
@nc_ctest0 = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_NCR_53C896 = common dso_local global i64 0, align 8
@DPR = common dso_local global i32 0, align 4
@FE_DAC = common dso_local global i32 0, align 4
@FE_NOPM = common dso_local global i32 0, align 4
@nc_ccntl0 = common dso_local global i32 0, align 4
@nc_ccntl1 = common dso_local global i32 0, align 4
@nc_pmjad1 = common dso_local global i32 0, align 4
@pm_handle = common dso_local global i32 0, align 4
@nc_pmjad2 = common dso_local global i32 0, align 4
@FE_LED0 = common dso_local global i32 0, align 4
@nc_gpcntl = common dso_local global i32 0, align 4
@FE_LEDC = common dso_local global i32 0, align 4
@nc_sien = common dso_local global i32 0, align 4
@STO = common dso_local global i64 0, align 8
@HTH = common dso_local global i64 0, align 8
@MA = common dso_local global i64 0, align 8
@SGE = common dso_local global i64 0, align 8
@UDC = common dso_local global i64 0, align 8
@RST = common dso_local global i64 0, align 8
@PAR = common dso_local global i64 0, align 8
@nc_dien = common dso_local global i32 0, align 4
@MDPE = common dso_local global i32 0, align 4
@BF = common dso_local global i32 0, align 4
@SSI = common dso_local global i32 0, align 4
@SIR = common dso_local global i32 0, align 4
@IID = common dso_local global i32 0, align 4
@FE_ULTRA2 = common dso_local global i32 0, align 4
@FE_ULTRA3 = common dso_local global i32 0, align 4
@SBMC = common dso_local global i32 0, align 4
@nc_sist = common dso_local global i32 0, align 4
@nc_stest4 = common dso_local global i32 0, align 4
@SMODE = common dso_local global i32 0, align 4
@SYM_CONF_MAX_TARGET = common dso_local global i32 0, align 4
@SYM_CONF_MAX_LUN = common dso_local global i32 0, align 4
@init = common dso_local global i32 0, align 4
@sym_verbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s: Downloading SCSI SCRIPTS.\0A\00", align 1
@FE_RAM8K = common dso_local global i32 0, align 4
@nc_mmws = common dso_local global i32 0, align 4
@nc_mmrs = common dso_local global i32 0, align 4
@nc_sfs = common dso_local global i32 0, align 4
@start64 = common dso_local global i32 0, align 4
@nc_dsa = common dso_local global i32 0, align 4
@nc_drs = common dso_local global i32 0, align 4
@nc_scrx = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sym_start_up(%struct.Scsi_Host* %0, i32 %1) #0 {
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sym_data*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.sym_hcb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.sym_tcb*, align 8
  %11 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %13 = call %struct.sym_data* @shost_priv(%struct.Scsi_Host* %12)
  store %struct.sym_data* %13, %struct.sym_data** %5, align 8
  %14 = load %struct.sym_data*, %struct.sym_data** %5, align 8
  %15 = getelementptr inbounds %struct.sym_data, %struct.sym_data* %14, i32 0, i32 1
  %16 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  store %struct.pci_dev* %16, %struct.pci_dev** %6, align 8
  %17 = load %struct.sym_data*, %struct.sym_data** %5, align 8
  %18 = getelementptr inbounds %struct.sym_data, %struct.sym_data* %17, i32 0, i32 0
  %19 = load %struct.sym_hcb*, %struct.sym_hcb** %18, align 8
  store %struct.sym_hcb* %19, %struct.sym_hcb** %7, align 8
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %24 = call i32 @sym_soft_reset(%struct.sym_hcb* %23)
  br label %36

25:                                               ; preds = %2
  %26 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %27 = load i32, i32* @nc_stest3, align 4
  %28 = load i32, i32* @TE, align 4
  %29 = load i32, i32* @CSF, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @OUTB(%struct.sym_hcb* %26, i32 %27, i32 %30)
  %32 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %33 = load i32, i32* @nc_ctest3, align 4
  %34 = load i32, i32* @CLF, align 4
  %35 = call i32 @OUTONB(%struct.sym_hcb* %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %25, %22
  %37 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %38 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %37, i32 0, i32 31
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %9, align 8
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %70, %36
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @MAX_QUEUE, align 4
  %43 = mul nsw i32 %42, 2
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %73

45:                                               ; preds = %40
  %46 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %47 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %46, i32 0, i32 30
  %48 = load i64, i64* %47, align 8
  %49 = call i8* @cpu_to_scr(i64 %48)
  %50 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %51 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %50, i32 0, i32 29
  %52 = load i8**, i8*** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  store i8* %49, i8** %55, align 8
  %56 = load i64, i64* %9, align 8
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 2
  %59 = mul nsw i32 %58, 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %56, %60
  %62 = call i8* @cpu_to_scr(i64 %61)
  %63 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %64 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %63, i32 0, i32 29
  %65 = load i8**, i8*** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %65, i64 %68
  store i8* %62, i8** %69, align 8
  br label %70

70:                                               ; preds = %45
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 2
  store i32 %72, i32* %8, align 4
  br label %40

73:                                               ; preds = %40
  %74 = load i64, i64* %9, align 8
  %75 = call i8* @cpu_to_scr(i64 %74)
  %76 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %77 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %76, i32 0, i32 29
  %78 = load i8**, i8*** %77, align 8
  %79 = load i32, i32* @MAX_QUEUE, align 4
  %80 = mul nsw i32 %79, 2
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %78, i64 %82
  store i8* %75, i8** %83, align 8
  %84 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %85 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %84, i32 0, i32 28
  store i64 0, i64* %85, align 8
  %86 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %87 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %86, i32 0, i32 27
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %9, align 8
  store i32 0, i32* %8, align 4
  br label %89

89:                                               ; preds = %115, %73
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @MAX_QUEUE, align 4
  %92 = mul nsw i32 %91, 2
  %93 = icmp slt i32 %90, %92
  br i1 %93, label %94, label %118

94:                                               ; preds = %89
  %95 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %96 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %95, i32 0, i32 26
  %97 = load i8**, i8*** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %97, i64 %99
  store i8* null, i8** %100, align 8
  %101 = load i64, i64* %9, align 8
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 2
  %104 = mul nsw i32 %103, 4
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %101, %105
  %107 = call i8* @cpu_to_scr(i64 %106)
  %108 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %109 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %108, i32 0, i32 26
  %110 = load i8**, i8*** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %110, i64 %113
  store i8* %107, i8** %114, align 8
  br label %115

115:                                              ; preds = %94
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 2
  store i32 %117, i32* %8, align 4
  br label %89

118:                                              ; preds = %89
  %119 = load i64, i64* %9, align 8
  %120 = call i8* @cpu_to_scr(i64 %119)
  %121 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %122 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %121, i32 0, i32 26
  %123 = load i8**, i8*** %122, align 8
  %124 = load i32, i32* @MAX_QUEUE, align 4
  %125 = mul nsw i32 %124, 2
  %126 = sub nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8*, i8** %123, i64 %127
  store i8* %120, i8** %128, align 8
  %129 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %130 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %129, i32 0, i32 25
  store i64 0, i64* %130, align 8
  %131 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %132 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %131, i32 0, i32 24
  %133 = load i32 (%struct.Scsi_Host.0*)*, i32 (%struct.Scsi_Host.0*)** %132, align 8
  %134 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %135 = bitcast %struct.Scsi_Host* %134 to %struct.Scsi_Host.0*
  %136 = call i32 %133(%struct.Scsi_Host.0* %135)
  %137 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %138 = load i32, i32* @DID_RESET, align 4
  %139 = call i32 @sym_flush_busy_queue(%struct.sym_hcb* %137, i32 %138)
  %140 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %141 = load i32, i32* @nc_istat, align 4
  %142 = call i32 @OUTB(%struct.sym_hcb* %140, i32 %141, i32 0)
  %143 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %144 = load i32, i32* @nc_mbox1, align 4
  %145 = call i32 @INB(%struct.sym_hcb* %143, i32 %144)
  %146 = call i32 @udelay(i32 2000)
  %147 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %148 = load i32, i32* @nc_scntl0, align 4
  %149 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %150 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = or i32 %151, 192
  %153 = call i32 @OUTB(%struct.sym_hcb* %147, i32 %148, i32 %152)
  %154 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %155 = load i32, i32* @nc_scntl1, align 4
  %156 = call i32 @OUTB(%struct.sym_hcb* %154, i32 %155, i32 0)
  %157 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %158 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %159 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %158, i32 0, i32 21
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @sym_selectclock(%struct.sym_hcb* %157, i32 %160)
  %162 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %163 = load i32, i32* @nc_scid, align 4
  %164 = load i32, i32* @RRE, align 4
  %165 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %166 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = or i32 %164, %167
  %169 = call i32 @OUTB(%struct.sym_hcb* %162, i32 %163, i32 %168)
  %170 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %171 = load i32, i32* @nc_respid, align 4
  %172 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %173 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = zext i32 %174 to i64
  %176 = shl i64 1, %175
  %177 = call i32 @OUTW(%struct.sym_hcb* %170, i32 %171, i64 %176)
  %178 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %179 = load i32, i32* @nc_istat, align 4
  %180 = load i32, i32* @SIGP, align 4
  %181 = call i32 @OUTB(%struct.sym_hcb* %178, i32 %179, i32 %180)
  %182 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %183 = load i32, i32* @nc_dmode, align 4
  %184 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %185 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @OUTB(%struct.sym_hcb* %182, i32 %183, i32 %186)
  %188 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %189 = load i32, i32* @nc_ctest5, align 4
  %190 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %191 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @OUTB(%struct.sym_hcb* %188, i32 %189, i32 %192)
  %194 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %195 = load i32, i32* @nc_dcntl, align 4
  %196 = load i32, i32* @NOCOM, align 4
  %197 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %198 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 8
  %200 = or i32 %196, %199
  %201 = call i32 @OUTB(%struct.sym_hcb* %194, i32 %195, i32 %200)
  %202 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %203 = load i32, i32* @nc_ctest3, align 4
  %204 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %205 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %204, i32 0, i32 5
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @OUTB(%struct.sym_hcb* %202, i32 %203, i32 %206)
  %208 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %209 = load i32, i32* @nc_ctest4, align 4
  %210 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %211 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %210, i32 0, i32 6
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @OUTB(%struct.sym_hcb* %208, i32 %209, i32 %212)
  %214 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %215 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %214, i32 0, i32 7
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @FE_C10, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %227

220:                                              ; preds = %118
  %221 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %222 = load i32, i32* @nc_stest2, align 4
  %223 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %224 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %223, i32 0, i32 8
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @OUTB(%struct.sym_hcb* %221, i32 %222, i32 %225)
  br label %236

227:                                              ; preds = %118
  %228 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %229 = load i32, i32* @nc_stest2, align 4
  %230 = load i32, i32* @EXT, align 4
  %231 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %232 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %231, i32 0, i32 8
  %233 = load i32, i32* %232, align 8
  %234 = or i32 %230, %233
  %235 = call i32 @OUTB(%struct.sym_hcb* %228, i32 %229, i32 %234)
  br label %236

236:                                              ; preds = %227, %220
  %237 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %238 = load i32, i32* @nc_stest3, align 4
  %239 = load i32, i32* @TE, align 4
  %240 = call i32 @OUTB(%struct.sym_hcb* %237, i32 %238, i32 %239)
  %241 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %242 = load i32, i32* @nc_stime0, align 4
  %243 = call i32 @OUTB(%struct.sym_hcb* %241, i32 %242, i32 12)
  %244 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %245 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @PCI_DEVICE_ID_LSI_53C1010_66, align 8
  %248 = icmp eq i64 %246, %247
  br i1 %248, label %249, label %254

249:                                              ; preds = %236
  %250 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %251 = load i32, i32* @nc_aipcntl1, align 4
  %252 = load i32, i32* @DISAIP, align 4
  %253 = call i32 @OUTB(%struct.sym_hcb* %250, i32 %251, i32 %252)
  br label %254

254:                                              ; preds = %249, %236
  %255 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %256 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @PCI_DEVICE_ID_LSI_53C1010_33, align 8
  %259 = icmp eq i64 %257, %258
  br i1 %259, label %260, label %273

260:                                              ; preds = %254
  %261 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %262 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = icmp slt i32 %263, 1
  br i1 %264, label %265, label %273

265:                                              ; preds = %260
  %266 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %267 = load i32, i32* @nc_stest1, align 4
  %268 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %269 = load i32, i32* @nc_stest1, align 4
  %270 = call i32 @INB(%struct.sym_hcb* %268, i32 %269)
  %271 = or i32 %270, 48
  %272 = call i32 @OUTB(%struct.sym_hcb* %266, i32 %267, i32 %271)
  br label %273

273:                                              ; preds = %265, %260, %254
  %274 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %275 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = load i64, i64* @PCI_DEVICE_ID_NCR_53C875, align 8
  %278 = icmp eq i64 %276, %277
  br i1 %278, label %279, label %283

279:                                              ; preds = %273
  %280 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %281 = load i32, i32* @nc_ctest0, align 4
  %282 = call i32 @OUTB(%struct.sym_hcb* %280, i32 %281, i32 32)
  br label %296

283:                                              ; preds = %273
  %284 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %285 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* @PCI_DEVICE_ID_NCR_53C896, align 8
  %288 = icmp eq i64 %286, %287
  br i1 %288, label %289, label %295

289:                                              ; preds = %283
  %290 = load i32, i32* @DPR, align 4
  %291 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %292 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %291, i32 0, i32 9
  %293 = load i32, i32* %292, align 4
  %294 = or i32 %293, %290
  store i32 %294, i32* %292, align 4
  br label %295

295:                                              ; preds = %289, %283
  br label %296

296:                                              ; preds = %295, %279
  %297 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %298 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %297, i32 0, i32 7
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* @FE_DAC, align 4
  %301 = load i32, i32* @FE_NOPM, align 4
  %302 = or i32 %300, %301
  %303 = and i32 %299, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %318

305:                                              ; preds = %296
  %306 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %307 = load i32, i32* @nc_ccntl0, align 4
  %308 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %309 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %308, i32 0, i32 9
  %310 = load i32, i32* %309, align 4
  %311 = call i32 @OUTB(%struct.sym_hcb* %306, i32 %307, i32 %310)
  %312 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %313 = load i32, i32* @nc_ccntl1, align 4
  %314 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %315 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %314, i32 0, i32 10
  %316 = load i32, i32* %315, align 8
  %317 = call i32 @OUTB(%struct.sym_hcb* %312, i32 %313, i32 %316)
  br label %318

318:                                              ; preds = %305, %296
  %319 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %320 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %319, i32 0, i32 7
  %321 = load i32, i32* %320, align 4
  %322 = load i32, i32* @FE_NOPM, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %338

325:                                              ; preds = %318
  %326 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %327 = load i32, i32* @nc_pmjad1, align 4
  %328 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %329 = load i32, i32* @pm_handle, align 4
  %330 = call i64 @SCRIPTB_BA(%struct.sym_hcb* %328, i32 %329)
  %331 = call i32 @OUTL(%struct.sym_hcb* %326, i32 %327, i64 %330)
  %332 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %333 = load i32, i32* @nc_pmjad2, align 4
  %334 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %335 = load i32, i32* @pm_handle, align 4
  %336 = call i64 @SCRIPTB_BA(%struct.sym_hcb* %334, i32 %335)
  %337 = call i32 @OUTL(%struct.sym_hcb* %332, i32 %333, i64 %336)
  br label %338

338:                                              ; preds = %325, %318
  %339 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %340 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %339, i32 0, i32 7
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* @FE_LED0, align 4
  %343 = and i32 %341, %342
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %353

345:                                              ; preds = %338
  %346 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %347 = load i32, i32* @nc_gpcntl, align 4
  %348 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %349 = load i32, i32* @nc_gpcntl, align 4
  %350 = call i32 @INB(%struct.sym_hcb* %348, i32 %349)
  %351 = and i32 %350, -2
  %352 = call i32 @OUTB(%struct.sym_hcb* %346, i32 %347, i32 %351)
  br label %370

353:                                              ; preds = %338
  %354 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %355 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %354, i32 0, i32 7
  %356 = load i32, i32* %355, align 4
  %357 = load i32, i32* @FE_LEDC, align 4
  %358 = and i32 %356, %357
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %369

360:                                              ; preds = %353
  %361 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %362 = load i32, i32* @nc_gpcntl, align 4
  %363 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %364 = load i32, i32* @nc_gpcntl, align 4
  %365 = call i32 @INB(%struct.sym_hcb* %363, i32 %364)
  %366 = and i32 %365, -66
  %367 = or i32 %366, 32
  %368 = call i32 @OUTB(%struct.sym_hcb* %361, i32 %362, i32 %367)
  br label %369

369:                                              ; preds = %360, %353
  br label %370

370:                                              ; preds = %369, %345
  %371 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %372 = load i32, i32* @nc_sien, align 4
  %373 = load i64, i64* @STO, align 8
  %374 = load i64, i64* @HTH, align 8
  %375 = or i64 %373, %374
  %376 = load i64, i64* @MA, align 8
  %377 = or i64 %375, %376
  %378 = load i64, i64* @SGE, align 8
  %379 = or i64 %377, %378
  %380 = load i64, i64* @UDC, align 8
  %381 = or i64 %379, %380
  %382 = load i64, i64* @RST, align 8
  %383 = or i64 %381, %382
  %384 = load i64, i64* @PAR, align 8
  %385 = or i64 %383, %384
  %386 = call i32 @OUTW(%struct.sym_hcb* %371, i32 %372, i64 %385)
  %387 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %388 = load i32, i32* @nc_dien, align 4
  %389 = load i32, i32* @MDPE, align 4
  %390 = load i32, i32* @BF, align 4
  %391 = or i32 %389, %390
  %392 = load i32, i32* @SSI, align 4
  %393 = or i32 %391, %392
  %394 = load i32, i32* @SIR, align 4
  %395 = or i32 %393, %394
  %396 = load i32, i32* @IID, align 4
  %397 = or i32 %395, %396
  %398 = call i32 @OUTB(%struct.sym_hcb* %387, i32 %388, i32 %397)
  %399 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %400 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %399, i32 0, i32 7
  %401 = load i32, i32* %400, align 4
  %402 = load i32, i32* @FE_ULTRA2, align 4
  %403 = load i32, i32* @FE_ULTRA3, align 4
  %404 = or i32 %402, %403
  %405 = and i32 %401, %404
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %430

407:                                              ; preds = %370
  %408 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %409 = load i32, i32* @nc_sien, align 4
  %410 = load i32, i32* @SBMC, align 4
  %411 = call i32 @OUTONW(%struct.sym_hcb* %408, i32 %409, i32 %410)
  %412 = load i32, i32* %4, align 4
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %414, label %422

414:                                              ; preds = %407
  %415 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %416 = load i32, i32* @nc_mbox1, align 4
  %417 = call i32 @INB(%struct.sym_hcb* %415, i32 %416)
  %418 = call i32 @mdelay(i32 100)
  %419 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %420 = load i32, i32* @nc_sist, align 4
  %421 = call i32 @INW(%struct.sym_hcb* %419, i32 %420)
  br label %422

422:                                              ; preds = %414, %407
  %423 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %424 = load i32, i32* @nc_stest4, align 4
  %425 = call i32 @INB(%struct.sym_hcb* %423, i32 %424)
  %426 = load i32, i32* @SMODE, align 4
  %427 = and i32 %425, %426
  %428 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %429 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %428, i32 0, i32 11
  store i32 %427, i32* %429, align 4
  br label %430

430:                                              ; preds = %422, %370
  store i32 0, i32* %8, align 4
  br label %431

431:                                              ; preds = %499, %430
  %432 = load i32, i32* %8, align 4
  %433 = load i32, i32* @SYM_CONF_MAX_TARGET, align 4
  %434 = icmp slt i32 %432, %433
  br i1 %434, label %435, label %502

435:                                              ; preds = %431
  %436 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %437 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %436, i32 0, i32 22
  %438 = load %struct.sym_tcb*, %struct.sym_tcb** %437, align 8
  %439 = load i32, i32* %8, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %438, i64 %440
  store %struct.sym_tcb* %441, %struct.sym_tcb** %10, align 8
  %442 = load %struct.sym_tcb*, %struct.sym_tcb** %10, align 8
  %443 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %442, i32 0, i32 3
  store i64 0, i64* %443, align 8
  %444 = load %struct.sym_tcb*, %struct.sym_tcb** %10, align 8
  %445 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %444, i32 0, i32 2
  %446 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %445, i32 0, i32 2
  store i64 0, i64* %446, align 8
  %447 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %448 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %447, i32 0, i32 21
  %449 = load i32, i32* %448, align 8
  %450 = load %struct.sym_tcb*, %struct.sym_tcb** %10, align 8
  %451 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %450, i32 0, i32 2
  %452 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %451, i32 0, i32 1
  store i32 %449, i32* %452, align 8
  %453 = load %struct.sym_tcb*, %struct.sym_tcb** %10, align 8
  %454 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %453, i32 0, i32 2
  %455 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %454, i32 0, i32 0
  store i64 0, i64* %455, align 8
  %456 = load %struct.sym_tcb*, %struct.sym_tcb** %10, align 8
  %457 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %456, i32 0, i32 1
  %458 = load %struct.TYPE_6__*, %struct.TYPE_6__** %457, align 8
  %459 = icmp ne %struct.TYPE_6__* %458, null
  br i1 %459, label %460, label %465

460:                                              ; preds = %435
  %461 = load %struct.sym_tcb*, %struct.sym_tcb** %10, align 8
  %462 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %461, i32 0, i32 1
  %463 = load %struct.TYPE_6__*, %struct.TYPE_6__** %462, align 8
  %464 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %463, i32 0, i32 0
  store i64 0, i64* %464, align 8
  br label %465

465:                                              ; preds = %460, %435
  %466 = load %struct.sym_tcb*, %struct.sym_tcb** %10, align 8
  %467 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %466, i32 0, i32 0
  %468 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %467, align 8
  %469 = icmp ne %struct.TYPE_7__** %468, null
  br i1 %469, label %470, label %498

470:                                              ; preds = %465
  store i32 1, i32* %11, align 4
  br label %471

471:                                              ; preds = %494, %470
  %472 = load i32, i32* %11, align 4
  %473 = load i32, i32* @SYM_CONF_MAX_LUN, align 4
  %474 = icmp slt i32 %472, %473
  br i1 %474, label %475, label %497

475:                                              ; preds = %471
  %476 = load %struct.sym_tcb*, %struct.sym_tcb** %10, align 8
  %477 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %476, i32 0, i32 0
  %478 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %477, align 8
  %479 = load i32, i32* %11, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %478, i64 %480
  %482 = load %struct.TYPE_7__*, %struct.TYPE_7__** %481, align 8
  %483 = icmp ne %struct.TYPE_7__* %482, null
  br i1 %483, label %484, label %493

484:                                              ; preds = %475
  %485 = load %struct.sym_tcb*, %struct.sym_tcb** %10, align 8
  %486 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %485, i32 0, i32 0
  %487 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %486, align 8
  %488 = load i32, i32* %11, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %487, i64 %489
  %491 = load %struct.TYPE_7__*, %struct.TYPE_7__** %490, align 8
  %492 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %491, i32 0, i32 0
  store i64 0, i64* %492, align 8
  br label %493

493:                                              ; preds = %484, %475
  br label %494

494:                                              ; preds = %493
  %495 = load i32, i32* %11, align 4
  %496 = add nsw i32 %495, 1
  store i32 %496, i32* %11, align 4
  br label %471

497:                                              ; preds = %471
  br label %498

498:                                              ; preds = %497, %465
  br label %499

499:                                              ; preds = %498
  %500 = load i32, i32* %8, align 4
  %501 = add nsw i32 %500, 1
  store i32 %501, i32* %8, align 4
  br label %431

502:                                              ; preds = %431
  %503 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %504 = load i32, i32* @init, align 4
  %505 = call i64 @SCRIPTA_BA(%struct.sym_hcb* %503, i32 %504)
  store i64 %505, i64* %9, align 8
  %506 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %507 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %506, i32 0, i32 20
  %508 = load i64, i64* %507, align 8
  %509 = icmp ne i64 %508, 0
  br i1 %509, label %510, label %568

510:                                              ; preds = %502
  %511 = load i32, i32* @sym_verbose, align 4
  %512 = icmp sge i32 %511, 2
  br i1 %512, label %513, label %517

513:                                              ; preds = %510
  %514 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %515 = call i8* @sym_name(%struct.sym_hcb* %514)
  %516 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %515)
  br label %517

517:                                              ; preds = %513, %510
  %518 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %519 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %518, i32 0, i32 17
  %520 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %519, i32 0, i32 0
  %521 = load i64, i64* %520, align 8
  %522 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %523 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %522, i32 0, i32 19
  %524 = load i32, i32* %523, align 4
  %525 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %526 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %525, i32 0, i32 18
  %527 = load i32, i32* %526, align 8
  %528 = call i32 @memcpy_toio(i64 %521, i32 %524, i32 %527)
  %529 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %530 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %529, i32 0, i32 7
  %531 = load i32, i32* %530, align 4
  %532 = load i32, i32* @FE_RAM8K, align 4
  %533 = and i32 %531, %532
  %534 = icmp ne i32 %533, 0
  br i1 %534, label %535, label %567

535:                                              ; preds = %517
  %536 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %537 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %536, i32 0, i32 17
  %538 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %537, i32 0, i32 0
  %539 = load i64, i64* %538, align 8
  %540 = add nsw i64 %539, 4096
  %541 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %542 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %541, i32 0, i32 16
  %543 = load i32, i32* %542, align 8
  %544 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %545 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %544, i32 0, i32 15
  %546 = load i32, i32* %545, align 4
  %547 = call i32 @memcpy_toio(i64 %540, i32 %543, i32 %546)
  %548 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %549 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %548, i32 0, i32 14
  %550 = load i32, i32* %549, align 8
  %551 = call i64 @scr_to_cpu(i32 %550)
  store i64 %551, i64* %9, align 8
  %552 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %553 = load i32, i32* @nc_mmws, align 4
  %554 = load i64, i64* %9, align 8
  %555 = call i32 @OUTL(%struct.sym_hcb* %552, i32 %553, i64 %554)
  %556 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %557 = load i32, i32* @nc_mmrs, align 4
  %558 = load i64, i64* %9, align 8
  %559 = call i32 @OUTL(%struct.sym_hcb* %556, i32 %557, i64 %558)
  %560 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %561 = load i32, i32* @nc_sfs, align 4
  %562 = load i64, i64* %9, align 8
  %563 = call i32 @OUTL(%struct.sym_hcb* %560, i32 %561, i64 %562)
  %564 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %565 = load i32, i32* @start64, align 4
  %566 = call i64 @SCRIPTB_BA(%struct.sym_hcb* %564, i32 %565)
  store i64 %566, i64* %9, align 8
  br label %567

567:                                              ; preds = %535, %517
  br label %568

568:                                              ; preds = %567, %502
  %569 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %570 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %569, i32 0, i32 13
  store i64 0, i64* %570, align 8
  %571 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %572 = load i32, i32* @nc_dsa, align 4
  %573 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %574 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %573, i32 0, i32 12
  %575 = load i64, i64* %574, align 8
  %576 = call i32 @OUTL(%struct.sym_hcb* %571, i32 %572, i64 %575)
  %577 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %578 = load i64, i64* %9, align 8
  %579 = call i32 @OUTL_DSP(%struct.sym_hcb* %577, i64 %578)
  %580 = load i32, i32* %4, align 4
  %581 = icmp ne i32 %580, 0
  br i1 %581, label %582, label %585

582:                                              ; preds = %568
  %583 = load %struct.sym_hcb*, %struct.sym_hcb** %7, align 8
  %584 = call i32 @sym_xpt_async_bus_reset(%struct.sym_hcb* %583)
  br label %585

585:                                              ; preds = %582, %568
  ret void
}

declare dso_local %struct.sym_data* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @sym_soft_reset(%struct.sym_hcb*) #1

declare dso_local i32 @OUTB(%struct.sym_hcb*, i32, i32) #1

declare dso_local i32 @OUTONB(%struct.sym_hcb*, i32, i32) #1

declare dso_local i8* @cpu_to_scr(i64) #1

declare dso_local i32 @sym_flush_busy_queue(%struct.sym_hcb*, i32) #1

declare dso_local i32 @INB(%struct.sym_hcb*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @sym_selectclock(%struct.sym_hcb*, i32) #1

declare dso_local i32 @OUTW(%struct.sym_hcb*, i32, i64) #1

declare dso_local i32 @OUTL(%struct.sym_hcb*, i32, i64) #1

declare dso_local i64 @SCRIPTB_BA(%struct.sym_hcb*, i32) #1

declare dso_local i32 @OUTONW(%struct.sym_hcb*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @INW(%struct.sym_hcb*, i32) #1

declare dso_local i64 @SCRIPTA_BA(%struct.sym_hcb*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @sym_name(%struct.sym_hcb*) #1

declare dso_local i32 @memcpy_toio(i64, i32, i32) #1

declare dso_local i64 @scr_to_cpu(i32) #1

declare dso_local i32 @OUTL_DSP(%struct.sym_hcb*, i64) #1

declare dso_local i32 @sym_xpt_async_bus_reset(%struct.sym_hcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
