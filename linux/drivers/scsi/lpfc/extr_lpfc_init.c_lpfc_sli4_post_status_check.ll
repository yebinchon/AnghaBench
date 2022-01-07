; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_post_status_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_post_status_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__, %struct.lpfc_register, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.lpfc_register = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@lpfc_port_smphr_perr = common dso_local global i32 0, align 4
@LPFC_POST_STAGE_PORT_READY = common dso_local global i64 0, align 8
@lpfc_port_smphr_port_status = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [124 x i8] c"1408 Port Failed POST - portsmphr=0x%x, perr=x%x, sfi=x%x, nip=x%x, ipc=x%x, scr1=x%x, scr2=x%x, hscratch=x%x, pstatus=x%x\0A\00", align 1
@lpfc_port_smphr_sfi = common dso_local global i32 0, align 4
@lpfc_port_smphr_nip = common dso_local global i32 0, align 4
@lpfc_port_smphr_ipc = common dso_local global i32 0, align 4
@lpfc_port_smphr_scr1 = common dso_local global i32 0, align 4
@lpfc_port_smphr_scr2 = common dso_local global i32 0, align 4
@lpfc_port_smphr_host_scratch = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [101 x i8] c"2534 Device Info: SLIFamily=0x%x, SLIRev=0x%x, IFType=0x%x, SLIHint_1=0x%x, SLIHint_2=0x%x, FT=0x%x\0A\00", align 1
@lpfc_sli_intf_sli_family = common dso_local global i32 0, align 4
@lpfc_sli_intf_slirev = common dso_local global i32 0, align 4
@lpfc_sli_intf_if_type = common dso_local global i32 0, align 4
@lpfc_sli_intf_sli_hint1 = common dso_local global i32 0, align 4
@lpfc_sli_intf_sli_hint2 = common dso_local global i32 0, align 4
@lpfc_sli_intf_func_type = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [124 x i8] c"1422 Unrecoverable Error Detected during POST uerr_lo_reg=0x%x, uerr_hi_reg=0x%x, ue_mask_lo_reg=0x%x, ue_mask_hi_reg=0x%x\0A\00", align 1
@lpfc_sliport_status_err = common dso_local global i32 0, align 4
@lpfc_sliport_status_rn = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [117 x i8] c"2888 Unrecoverable port error following POST: port status reg 0x%x, port_smphr reg 0x%x, error 1=0x%x, error 2=0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_sli4_post_status_check(%struct.lpfc_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_register, align 4
  %5 = alloca %struct.lpfc_register, align 4
  %6 = alloca %struct.lpfc_register, align 4
  %7 = alloca %struct.lpfc_register, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store i32 0, i32* %9, align 4
  %11 = call i32 @memset(%struct.lpfc_register* %4, i32 0, i32 4)
  %12 = call i32 @memset(%struct.lpfc_register* %7, i32 0, i32 4)
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %14 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %275

21:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %48, %21
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 3000
  br i1 %24, label %25, label %51

25:                                               ; preds = %22
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %27 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.lpfc_register, %struct.lpfc_register* %4, i32 0, i32 0
  %31 = call i64 @lpfc_readl(i32 %29, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* @lpfc_port_smphr_perr, align 4
  %35 = call i64 @bf_get(i32 %34, %struct.lpfc_register* %4)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33, %25
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %9, align 4
  br label %51

40:                                               ; preds = %33
  %41 = load i64, i64* @LPFC_POST_STAGE_PORT_READY, align 8
  %42 = load i32, i32* @lpfc_port_smphr_port_status, align 4
  %43 = call i64 @bf_get(i32 %42, %struct.lpfc_register* %4)
  %44 = icmp eq i64 %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %51

46:                                               ; preds = %40
  %47 = call i32 @msleep(i32 10)
  br label %48

48:                                               ; preds = %46
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %22

51:                                               ; preds = %45, %37, %22
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %80

54:                                               ; preds = %51
  %55 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %56 = load i32, i32* @KERN_ERR, align 4
  %57 = load i32, i32* @LOG_INIT, align 4
  %58 = getelementptr inbounds %struct.lpfc_register, %struct.lpfc_register* %4, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @lpfc_port_smphr_perr, align 4
  %61 = call i64 @bf_get(i32 %60, %struct.lpfc_register* %4)
  %62 = trunc i64 %61 to i32
  %63 = load i32, i32* @lpfc_port_smphr_sfi, align 4
  %64 = call i64 @bf_get(i32 %63, %struct.lpfc_register* %4)
  %65 = trunc i64 %64 to i32
  %66 = load i32, i32* @lpfc_port_smphr_nip, align 4
  %67 = call i64 @bf_get(i32 %66, %struct.lpfc_register* %4)
  %68 = trunc i64 %67 to i32
  %69 = load i32, i32* @lpfc_port_smphr_ipc, align 4
  %70 = call i64 @bf_get(i32 %69, %struct.lpfc_register* %4)
  %71 = load i32, i32* @lpfc_port_smphr_scr1, align 4
  %72 = call i64 @bf_get(i32 %71, %struct.lpfc_register* %4)
  %73 = load i32, i32* @lpfc_port_smphr_scr2, align 4
  %74 = call i64 @bf_get(i32 %73, %struct.lpfc_register* %4)
  %75 = load i32, i32* @lpfc_port_smphr_host_scratch, align 4
  %76 = call i64 @bf_get(i32 %75, %struct.lpfc_register* %4)
  %77 = load i32, i32* @lpfc_port_smphr_port_status, align 4
  %78 = call i64 @bf_get(i32 %77, %struct.lpfc_register* %4)
  %79 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, i32, i32, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %55, i32 %56, i32 %57, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %62, i32 %65, i32 %68, i64 %70, i64 %72, i64 %74, i64 %76, i64 %78)
  br label %273

80:                                               ; preds = %51
  %81 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %82 = load i32, i32* @KERN_INFO, align 4
  %83 = load i32, i32* @LOG_INIT, align 4
  %84 = load i32, i32* @lpfc_sli_intf_sli_family, align 4
  %85 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %86 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 3
  %88 = call i64 @bf_get(i32 %84, %struct.lpfc_register* %87)
  %89 = trunc i64 %88 to i32
  %90 = load i32, i32* @lpfc_sli_intf_slirev, align 4
  %91 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %92 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 3
  %94 = call i64 @bf_get(i32 %90, %struct.lpfc_register* %93)
  %95 = trunc i64 %94 to i32
  %96 = load i32, i32* @lpfc_sli_intf_if_type, align 4
  %97 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %98 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 3
  %100 = call i64 @bf_get(i32 %96, %struct.lpfc_register* %99)
  %101 = trunc i64 %100 to i32
  %102 = load i32, i32* @lpfc_sli_intf_sli_hint1, align 4
  %103 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %104 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 3
  %106 = call i64 @bf_get(i32 %102, %struct.lpfc_register* %105)
  %107 = trunc i64 %106 to i32
  %108 = load i32, i32* @lpfc_sli_intf_sli_hint2, align 4
  %109 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %110 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 3
  %112 = call i64 @bf_get(i32 %108, %struct.lpfc_register* %111)
  %113 = load i32, i32* @lpfc_sli_intf_func_type, align 4
  %114 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %115 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 3
  %117 = call i64 @bf_get(i32 %113, %struct.lpfc_register* %116)
  %118 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, i32, i32, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %81, i32 %82, i32 %83, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.1, i64 0, i64 0), i32 %89, i32 %95, i32 %101, i32 %107, i64 %112, i64 %117)
  %119 = load i32, i32* @lpfc_sli_intf_if_type, align 4
  %120 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %121 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 3
  %123 = call i64 @bf_get(i32 %119, %struct.lpfc_register* %122)
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %10, align 4
  switch i32 %125, label %271 [
    i32 131, label %126
    i32 129, label %206
    i32 128, label %206
    i32 130, label %270
  ]

126:                                              ; preds = %80
  %127 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %128 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = call i8* @readl(i32 %132)
  %134 = ptrtoint i8* %133 to i32
  %135 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %136 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  store i32 %134, i32* %137, align 8
  %138 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %139 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = call i8* @readl(i32 %143)
  %145 = ptrtoint i8* %144 to i32
  %146 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %147 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  store i32 %145, i32* %148, align 4
  %149 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %150 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i8* @readl(i32 %154)
  %156 = ptrtoint i8* %155 to i32
  %157 = getelementptr inbounds %struct.lpfc_register, %struct.lpfc_register* %5, i32 0, i32 0
  store i32 %156, i32* %157, align 4
  %158 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %159 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i8* @readl(i32 %163)
  %165 = ptrtoint i8* %164 to i32
  %166 = getelementptr inbounds %struct.lpfc_register, %struct.lpfc_register* %6, i32 0, i32 0
  store i32 %165, i32* %166, align 4
  %167 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %168 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = xor i32 %170, -1
  %172 = getelementptr inbounds %struct.lpfc_register, %struct.lpfc_register* %5, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = and i32 %171, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %186, label %176

176:                                              ; preds = %126
  %177 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %178 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = xor i32 %180, -1
  %182 = getelementptr inbounds %struct.lpfc_register, %struct.lpfc_register* %6, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = and i32 %181, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %205

186:                                              ; preds = %176, %126
  %187 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %188 = load i32, i32* @KERN_ERR, align 4
  %189 = load i32, i32* @LOG_INIT, align 4
  %190 = getelementptr inbounds %struct.lpfc_register, %struct.lpfc_register* %5, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = getelementptr inbounds %struct.lpfc_register, %struct.lpfc_register* %6, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %195 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %199 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, i32, i32, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %187, i32 %188, i32 %189, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.2, i64 0, i64 0), i32 %191, i32 %193, i32 %197, i32 %201)
  %203 = load i32, i32* @ENODEV, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %9, align 4
  br label %205

205:                                              ; preds = %186, %176
  br label %272

206:                                              ; preds = %80, %80
  %207 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %208 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = getelementptr inbounds %struct.lpfc_register, %struct.lpfc_register* %7, i32 0, i32 0
  %214 = call i64 @lpfc_readl(i32 %212, i32* %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %224, label %216

216:                                              ; preds = %206
  %217 = load i32, i32* @lpfc_sliport_status_err, align 4
  %218 = call i64 @bf_get(i32 %217, %struct.lpfc_register* %7)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %269

220:                                              ; preds = %216
  %221 = load i32, i32* @lpfc_sliport_status_rn, align 4
  %222 = call i64 @bf_get(i32 %221, %struct.lpfc_register* %7)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %269, label %224

224:                                              ; preds = %220, %206
  %225 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %226 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = call i8* @readl(i32 %230)
  %232 = ptrtoint i8* %231 to i32
  %233 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %234 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %233, i32 0, i32 0
  %235 = load i32*, i32** %234, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 0
  store i32 %232, i32* %236, align 4
  %237 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %238 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 2
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = call i8* @readl(i32 %242)
  %244 = ptrtoint i8* %243 to i32
  %245 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %246 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %245, i32 0, i32 0
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 1
  store i32 %244, i32* %248, align 4
  %249 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %250 = load i32, i32* @KERN_ERR, align 4
  %251 = load i32, i32* @LOG_INIT, align 4
  %252 = getelementptr inbounds %struct.lpfc_register, %struct.lpfc_register* %7, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = getelementptr inbounds %struct.lpfc_register, %struct.lpfc_register* %4, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %257 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %256, i32 0, i32 0
  %258 = load i32*, i32** %257, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 0
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %262 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %261, i32 0, i32 0
  %263 = load i32*, i32** %262, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 1
  %265 = load i32, i32* %264, align 4
  %266 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, i32, i32, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %249, i32 %250, i32 %251, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.3, i64 0, i64 0), i32 %253, i32 %255, i32 %260, i32 %265)
  %267 = load i32, i32* @ENODEV, align 4
  %268 = sub nsw i32 0, %267
  store i32 %268, i32* %9, align 4
  br label %269

269:                                              ; preds = %224, %220, %216
  br label %272

270:                                              ; preds = %80
  br label %271

271:                                              ; preds = %80, %270
  br label %272

272:                                              ; preds = %271, %269, %205
  br label %273

273:                                              ; preds = %272, %54
  %274 = load i32, i32* %9, align 4
  store i32 %274, i32* %2, align 4
  br label %275

275:                                              ; preds = %273, %18
  %276 = load i32, i32* %2, align 4
  ret i32 %276
}

declare dso_local i32 @memset(%struct.lpfc_register*, i32, i32) #1

declare dso_local i64 @lpfc_readl(i32, i32*) #1

declare dso_local i64 @bf_get(i32, %struct.lpfc_register*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i32, i32, i32, ...) #1

declare dso_local i8* @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
