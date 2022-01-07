; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla2xxx_print_sfp_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla2xxx_print_sfp_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.sff_8247_a0 = type { i8*, i8*, i32, i32, i32, i32, i32, i32 }

@SFF_VEN_NAME_LEN = common dso_local global i64 0, align 8
@ql_dbg_init = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"SFP MFG Name: %s\0A\00", align 1
@SFF_PART_NAME_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"SFP Part Name: %s\0A\00", align 1
@fc_med_cc9 = common dso_local global i32 0, align 4
@FC_MED_TW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"Twin AX\00", align 1
@FC_MED_TP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"Twisted Pair\00", align 1
@FC_MED_MI = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"Min Coax\00", align 1
@FC_MED_TV = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"Video Coax\00", align 1
@FC_MED_M6 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"MultiMode 62.5um\00", align 1
@FC_MED_M5 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"MultiMode 50um\00", align 1
@FC_MED_SM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"SingleMode\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"SFP Media: %s\0A\00", align 1
@fc_ll_cc7 = common dso_local global i32 0, align 4
@FC_LL_VL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"Very Long\00", align 1
@FC_LL_S = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"Short\00", align 1
@FC_LL_I = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [13 x i8] c"Intermediate\00", align 1
@FC_LL_L = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"Long\00", align 1
@FC_LL_M = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [7 x i8] c"Medium\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"SFP Link Length: %s\0A\00", align 1
@FC_LL_SA = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [16 x i8] c"Short Wave (SA)\00", align 1
@FC_LL_LC = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [14 x i8] c"Long Wave(LC)\00", align 1
@fc_tec_cc8 = common dso_local global i32 0, align 4
@FC_TEC_SN = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [16 x i8] c"Short Wave (SN)\00", align 1
@FC_TEC_SL = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [16 x i8] c"Short Wave (SL)\00", align 1
@FC_TEC_LL = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [15 x i8] c"Long Wave (LL)\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"SFP FC Link Tech: %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"SFP Distant: %d km\0A\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"SFP Distant: %d m\0A\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"SFP Distant (WL=50um): %d m\0A\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"SFP Distant (WL=62.5um): %d m\0A\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"SFP Distant (OM4): %d m\0A\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"SFP Distant (OM3): %d m\0A\00", align 1
@STR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*)* @qla2xxx_print_sfp_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla2xxx_print_sfp_info(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca %struct.scsi_qla_host*, align 8
  %3 = alloca %struct.sff_8247_a0*, align 8
  %4 = alloca [64 x i32], align 16
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %2, align 8
  %9 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %10 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.sff_8247_a0*
  store %struct.sff_8247_a0* %14, %struct.sff_8247_a0** %3, align 8
  %15 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %16 = call i32 @memset(i32* %15, i32 0, i32 64)
  %17 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %18 = load i64, i64* @SFF_VEN_NAME_LEN, align 8
  %19 = add nsw i64 %18, 1
  %20 = load %struct.sff_8247_a0*, %struct.sff_8247_a0** %3, align 8
  %21 = getelementptr inbounds %struct.sff_8247_a0, %struct.sff_8247_a0* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @snprintf(i32* %17, i64 %19, i8* %22)
  %24 = load i32, i32* @ql_dbg_init, align 4
  %25 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %26 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %27 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_dbg(i32 %24, %struct.scsi_qla_host* %25, i32 346, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %26)
  %28 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %29 = call i32 @memset(i32* %28, i32 0, i32 64)
  %30 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %31 = load i64, i64* @SFF_PART_NAME_LEN, align 8
  %32 = add nsw i64 %31, 1
  %33 = load %struct.sff_8247_a0*, %struct.sff_8247_a0** %3, align 8
  %34 = getelementptr inbounds %struct.sff_8247_a0, %struct.sff_8247_a0* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @snprintf(i32* %30, i64 %32, i8* %35)
  %37 = load i32, i32* @ql_dbg_init, align 4
  %38 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %39 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %40 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_dbg(i32 %37, %struct.scsi_qla_host* %38, i32 348, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32* %39)
  %41 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %42 = call i32 @memset(i32* %41, i32 0, i32 64)
  %43 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  store i32* %43, i32** %5, align 8
  store i32 64, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  %44 = load i32, i32* @fc_med_cc9, align 4
  %45 = load i32, i32* @FC_MED_TW, align 4
  %46 = call i32 @PRINT_FIELD(i32 %44, i32 %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* @fc_med_cc9, align 4
  %48 = load i32, i32* @FC_MED_TP, align 4
  %49 = call i32 @PRINT_FIELD(i32 %47, i32 %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %50 = load i32, i32* @fc_med_cc9, align 4
  %51 = load i32, i32* @FC_MED_MI, align 4
  %52 = call i32 @PRINT_FIELD(i32 %50, i32 %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %53 = load i32, i32* @fc_med_cc9, align 4
  %54 = load i32, i32* @FC_MED_TV, align 4
  %55 = call i32 @PRINT_FIELD(i32 %53, i32 %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %56 = load i32, i32* @fc_med_cc9, align 4
  %57 = load i32, i32* @FC_MED_M6, align 4
  %58 = call i32 @PRINT_FIELD(i32 %56, i32 %57, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %59 = load i32, i32* @fc_med_cc9, align 4
  %60 = load i32, i32* @FC_MED_M5, align 4
  %61 = call i32 @PRINT_FIELD(i32 %59, i32 %60, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %62 = load i32, i32* @fc_med_cc9, align 4
  %63 = load i32, i32* @FC_MED_SM, align 4
  %64 = call i32 @PRINT_FIELD(i32 %62, i32 %63, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %65 = load i32, i32* @ql_dbg_init, align 4
  %66 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %67 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %68 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_dbg(i32 %65, %struct.scsi_qla_host* %66, i32 352, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32* %67)
  %69 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %70 = call i32 @memset(i32* %69, i32 0, i32 64)
  %71 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  store i32* %71, i32** %5, align 8
  store i32 64, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  %72 = load i32, i32* @fc_ll_cc7, align 4
  %73 = load i32, i32* @FC_LL_VL, align 4
  %74 = call i32 @PRINT_FIELD(i32 %72, i32 %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %75 = load i32, i32* @fc_ll_cc7, align 4
  %76 = load i32, i32* @FC_LL_S, align 4
  %77 = call i32 @PRINT_FIELD(i32 %75, i32 %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %78 = load i32, i32* @fc_ll_cc7, align 4
  %79 = load i32, i32* @FC_LL_I, align 4
  %80 = call i32 @PRINT_FIELD(i32 %78, i32 %79, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %81 = load i32, i32* @fc_ll_cc7, align 4
  %82 = load i32, i32* @FC_LL_L, align 4
  %83 = call i32 @PRINT_FIELD(i32 %81, i32 %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %84 = load i32, i32* @fc_ll_cc7, align 4
  %85 = load i32, i32* @FC_LL_M, align 4
  %86 = call i32 @PRINT_FIELD(i32 %84, i32 %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %87 = load i32, i32* @ql_dbg_init, align 4
  %88 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %89 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %90 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_dbg(i32 %87, %struct.scsi_qla_host* %88, i32 406, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i32* %89)
  %91 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %92 = call i32 @memset(i32* %91, i32 0, i32 64)
  %93 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  store i32* %93, i32** %5, align 8
  store i32 64, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  %94 = load i32, i32* @fc_ll_cc7, align 4
  %95 = load i32, i32* @FC_LL_SA, align 4
  %96 = call i32 @PRINT_FIELD(i32 %94, i32 %95, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0))
  %97 = load i32, i32* @fc_ll_cc7, align 4
  %98 = load i32, i32* @FC_LL_LC, align 4
  %99 = call i32 @PRINT_FIELD(i32 %97, i32 %98, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0))
  %100 = load i32, i32* @fc_tec_cc8, align 4
  %101 = load i32, i32* @FC_TEC_SN, align 4
  %102 = call i32 @PRINT_FIELD(i32 %100, i32 %101, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0))
  %103 = load i32, i32* @fc_tec_cc8, align 4
  %104 = load i32, i32* @FC_TEC_SL, align 4
  %105 = call i32 @PRINT_FIELD(i32 %103, i32 %104, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0))
  %106 = load i32, i32* @fc_tec_cc8, align 4
  %107 = load i32, i32* @FC_TEC_LL, align 4
  %108 = call i32 @PRINT_FIELD(i32 %106, i32 %107, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0))
  %109 = load i32, i32* @ql_dbg_init, align 4
  %110 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %111 = getelementptr inbounds [64 x i32], [64 x i32]* %4, i64 0, i64 0
  %112 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_dbg(i32 %109, %struct.scsi_qla_host* %110, i32 366, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0), i32* %111)
  %113 = load %struct.sff_8247_a0*, %struct.sff_8247_a0** %3, align 8
  %114 = getelementptr inbounds %struct.sff_8247_a0, %struct.sff_8247_a0* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %1
  %118 = load i32, i32* @ql_dbg_init, align 4
  %119 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %120 = load %struct.sff_8247_a0*, %struct.sff_8247_a0** %3, align 8
  %121 = getelementptr inbounds %struct.sff_8247_a0, %struct.sff_8247_a0* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_dbg(i32 %118, %struct.scsi_qla_host* %119, i32 367, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %117, %1
  %125 = load %struct.sff_8247_a0*, %struct.sff_8247_a0** %3, align 8
  %126 = getelementptr inbounds %struct.sff_8247_a0, %struct.sff_8247_a0* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %124
  %130 = load i32, i32* @ql_dbg_init, align 4
  %131 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %132 = load %struct.sff_8247_a0*, %struct.sff_8247_a0** %3, align 8
  %133 = getelementptr inbounds %struct.sff_8247_a0, %struct.sff_8247_a0* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = mul nsw i32 %134, 100
  %136 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_dbg(i32 %130, %struct.scsi_qla_host* %131, i32 368, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0), i32 %135)
  br label %137

137:                                              ; preds = %129, %124
  %138 = load %struct.sff_8247_a0*, %struct.sff_8247_a0** %3, align 8
  %139 = getelementptr inbounds %struct.sff_8247_a0, %struct.sff_8247_a0* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %137
  %143 = load i32, i32* @ql_dbg_init, align 4
  %144 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %145 = load %struct.sff_8247_a0*, %struct.sff_8247_a0** %3, align 8
  %146 = getelementptr inbounds %struct.sff_8247_a0, %struct.sff_8247_a0* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = mul nsw i32 %147, 10
  %149 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_dbg(i32 %143, %struct.scsi_qla_host* %144, i32 393, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.24, i64 0, i64 0), i32 %148)
  br label %150

150:                                              ; preds = %142, %137
  %151 = load %struct.sff_8247_a0*, %struct.sff_8247_a0** %3, align 8
  %152 = getelementptr inbounds %struct.sff_8247_a0, %struct.sff_8247_a0* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %150
  %156 = load i32, i32* @ql_dbg_init, align 4
  %157 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %158 = load %struct.sff_8247_a0*, %struct.sff_8247_a0** %3, align 8
  %159 = getelementptr inbounds %struct.sff_8247_a0, %struct.sff_8247_a0* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 4
  %161 = mul nsw i32 %160, 10
  %162 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_dbg(i32 %156, %struct.scsi_qla_host* %157, i32 394, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.25, i64 0, i64 0), i32 %161)
  br label %163

163:                                              ; preds = %155, %150
  %164 = load %struct.sff_8247_a0*, %struct.sff_8247_a0** %3, align 8
  %165 = getelementptr inbounds %struct.sff_8247_a0, %struct.sff_8247_a0* %164, i32 0, i32 6
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %163
  %169 = load i32, i32* @ql_dbg_init, align 4
  %170 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %171 = load %struct.sff_8247_a0*, %struct.sff_8247_a0** %3, align 8
  %172 = getelementptr inbounds %struct.sff_8247_a0, %struct.sff_8247_a0* %171, i32 0, i32 6
  %173 = load i32, i32* %172, align 8
  %174 = mul nsw i32 %173, 10
  %175 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_dbg(i32 %169, %struct.scsi_qla_host* %170, i32 404, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i64 0, i64 0), i32 %174)
  br label %176

176:                                              ; preds = %168, %163
  %177 = load %struct.sff_8247_a0*, %struct.sff_8247_a0** %3, align 8
  %178 = getelementptr inbounds %struct.sff_8247_a0, %struct.sff_8247_a0* %177, i32 0, i32 7
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %189

181:                                              ; preds = %176
  %182 = load i32, i32* @ql_dbg_init, align 4
  %183 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %184 = load %struct.sff_8247_a0*, %struct.sff_8247_a0** %3, align 8
  %185 = getelementptr inbounds %struct.sff_8247_a0, %struct.sff_8247_a0* %184, i32 0, i32 7
  %186 = load i32, i32* %185, align 4
  %187 = mul nsw i32 %186, 10
  %188 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_dbg(i32 %182, %struct.scsi_qla_host* %183, i32 405, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i64 0, i64 0), i32 %187)
  br label %189

189:                                              ; preds = %181, %176
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @snprintf(i32*, i64, i8*) #1

declare dso_local i32 @ql_dbg(i32, %struct.scsi_qla_host*, i32, i8*, ...) #1

declare dso_local i32 @PRINT_FIELD(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
