; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla2x00_configure_hba.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla2x00_configure_hba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_17__, i32, %struct.qla_hw_data* }
%struct.TYPE_17__ = type { i32 }
%struct.qla_hw_data = type { i32, i32, %struct.TYPE_16__, i8*, i8*, i32, i32, i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i8*, i8*, i8* }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@QLA_COMMAND_ERROR = common dso_local global i32 0, align 4
@ql_dbg_disc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Loop is in a transition state.\0A\00", align 1
@ql_log_warn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Unable to get host loop ID.\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Doing link init.\0A\00", align 1
@ISP_ABORT_NEEDED = common dso_local global i32 0, align 4
@ql_log_info = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Cannot get topology - retrying.\0A\00", align 1
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@SNS_FIRST_LOOP_ID = common dso_local global i32 0, align 4
@LOOP = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"HBA in NL topology.\0A\00", align 1
@ISP_CFG_NL = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"(Loop)\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"HBA in FL topology.\0A\00", align 1
@ISP_CFG_FL = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [10 x i8] c"(FL_Port)\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"HBA in N P2P topology.\0A\00", align 1
@P2P = common dso_local global i8* null, align 8
@ISP_CFG_N = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [19 x i8] c"(N_Port-to-N_Port)\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"HBA in F P2P topology.\0A\00", align 1
@ISP_CFG_F = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [9 x i8] c"(F_Port)\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"HBA in unknown topology %x, using NL.\0A\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"Topology - %s, Host Loop address 0x%x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*)* @qla2x00_configure_hba to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_configure_hba(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [22 x i8], align 16
  %12 = alloca %struct.qla_hw_data*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca %struct.TYPE_19__, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 3
  %18 = load %struct.qla_hw_data*, %struct.qla_hw_data** %17, align 8
  store %struct.qla_hw_data* %18, %struct.qla_hw_data** %12, align 8
  %19 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %20 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.TYPE_18__* @pci_get_drvdata(i32 %21)
  store %struct.TYPE_18__* %22, %struct.TYPE_18__** %13, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %24 = call i32 @qla2x00_get_adapter_id(%struct.TYPE_18__* %23, i32* %5, i8** %8, i8** %9, i8** %10, i32* %6, i32* %7)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @QLA_SUCCESS, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %88

28:                                               ; preds = %1
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %30 = call i64 @LOOP_TRANSITION(%struct.TYPE_18__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %48, label %32

32:                                               ; preds = %28
  %33 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %34 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %33, i32 0, i32 6
  %35 = call i64 @atomic_read(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %32
  %38 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %39 = call i64 @IS_CNA_CAPABLE(%struct.qla_hw_data* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @QLA_COMMAND_ERROR, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %46, 7
  br i1 %47, label %48, label %52

48:                                               ; preds = %45, %37, %32, %28
  %49 = load i32, i32* @ql_dbg_disc, align 4
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %51 = call i32 (i32, %struct.TYPE_18__*, i32, i8*, ...) @ql_dbg(i32 %49, %struct.TYPE_18__* %50, i32 8200, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %86

52:                                               ; preds = %45, %41
  %53 = load i32, i32* @ql_log_warn, align 4
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %55 = call i32 (i32, %struct.TYPE_18__*, i32, i8*, ...) @ql_log(i32 %53, %struct.TYPE_18__* %54, i32 8201, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %57 = call i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %81

59:                                               ; preds = %52
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %62 = icmp eq %struct.TYPE_18__* %60, %61
  br i1 %62, label %63, label %81

63:                                               ; preds = %59
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @QLA_COMMAND_ERROR, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %63
  %68 = load i32, i32* %5, align 4
  %69 = icmp eq i32 %68, 27
  br i1 %69, label %70, label %81

70:                                               ; preds = %67
  %71 = load i32, i32* @ql_log_warn, align 4
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %73 = call i32 (i32, %struct.TYPE_18__*, i32, i8*, ...) @ql_log(i32 %71, %struct.TYPE_18__* %72, i32 4433, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %75 = call i32 @qla24xx_link_initialize(%struct.TYPE_18__* %74)
  %76 = load i32, i32* @QLA_SUCCESS, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = load i32, i32* %4, align 4
  store i32 %79, i32* %2, align 4
  br label %214

80:                                               ; preds = %70
  br label %81

81:                                               ; preds = %80, %67, %63, %59, %52
  %82 = load i32, i32* @ISP_ABORT_NEEDED, align 4
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 2
  %85 = call i32 @set_bit(i32 %82, i32* %84)
  br label %86

86:                                               ; preds = %81, %48
  %87 = load i32, i32* %4, align 4
  store i32 %87, i32* %2, align 4
  br label %214

88:                                               ; preds = %1
  %89 = load i32, i32* %6, align 4
  %90 = icmp eq i32 %89, 4
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load i32, i32* @ql_log_info, align 4
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %94 = call i32 (i32, %struct.TYPE_18__*, i32, i8*, ...) @ql_log(i32 %92, %struct.TYPE_18__* %93, i32 8202, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %95 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %95, i32* %2, align 4
  br label %214

96:                                               ; preds = %88
  %97 = load i32, i32* %5, align 4
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load i32, i32* @SNS_FIRST_LOOP_ID, align 4
  %101 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %102 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %101, i32 0, i32 5
  store i32 %100, i32* %102, align 8
  %103 = load i8*, i8** @LOOP, align 8
  %104 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %105 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %104, i32 0, i32 4
  store i8* %103, i8** %105, align 8
  %106 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %107 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %106, i32 0, i32 0
  store i32 0, i32* %107, align 8
  %108 = load i32, i32* %6, align 4
  switch i32 %108, label %157 [
    i32 0, label %109
    i32 1, label %118
    i32 2, label %130
    i32 3, label %142
  ]

109:                                              ; preds = %96
  %110 = load i32, i32* @ql_dbg_disc, align 4
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %112 = call i32 (i32, %struct.TYPE_18__*, i32, i8*, ...) @ql_dbg(i32 %110, %struct.TYPE_18__* %111, i32 8203, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %113 = load i8*, i8** @ISP_CFG_NL, align 8
  %114 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %115 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %114, i32 0, i32 3
  store i8* %113, i8** %115, align 8
  %116 = getelementptr inbounds [22 x i8], [22 x i8]* %11, i64 0, i64 0
  %117 = call i32 @strcpy(i8* %116, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %167

118:                                              ; preds = %96
  %119 = load i32, i32* @ql_dbg_disc, align 4
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %121 = call i32 (i32, %struct.TYPE_18__*, i32, i8*, ...) @ql_dbg(i32 %119, %struct.TYPE_18__* %120, i32 8204, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %122 = load i32, i32* %7, align 4
  %123 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %124 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  %125 = load i8*, i8** @ISP_CFG_FL, align 8
  %126 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %127 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %126, i32 0, i32 3
  store i8* %125, i8** %127, align 8
  %128 = getelementptr inbounds [22 x i8], [22 x i8]* %11, i64 0, i64 0
  %129 = call i32 @strcpy(i8* %128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  br label %167

130:                                              ; preds = %96
  %131 = load i32, i32* @ql_dbg_disc, align 4
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %133 = call i32 (i32, %struct.TYPE_18__*, i32, i8*, ...) @ql_dbg(i32 %131, %struct.TYPE_18__* %132, i32 8205, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %134 = load i8*, i8** @P2P, align 8
  %135 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %136 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %135, i32 0, i32 4
  store i8* %134, i8** %136, align 8
  %137 = load i8*, i8** @ISP_CFG_N, align 8
  %138 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %139 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %138, i32 0, i32 3
  store i8* %137, i8** %139, align 8
  %140 = getelementptr inbounds [22 x i8], [22 x i8]* %11, i64 0, i64 0
  %141 = call i32 @strcpy(i8* %140, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  br label %167

142:                                              ; preds = %96
  %143 = load i32, i32* @ql_dbg_disc, align 4
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %145 = call i32 (i32, %struct.TYPE_18__*, i32, i8*, ...) @ql_dbg(i32 %143, %struct.TYPE_18__* %144, i32 8206, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  %146 = load i32, i32* %7, align 4
  %147 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %148 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  %149 = load i8*, i8** @P2P, align 8
  %150 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %151 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %150, i32 0, i32 4
  store i8* %149, i8** %151, align 8
  %152 = load i8*, i8** @ISP_CFG_F, align 8
  %153 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %154 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %153, i32 0, i32 3
  store i8* %152, i8** %154, align 8
  %155 = getelementptr inbounds [22 x i8], [22 x i8]* %11, i64 0, i64 0
  %156 = call i32 @strcpy(i8* %155, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  br label %167

157:                                              ; preds = %96
  %158 = load i32, i32* @ql_dbg_disc, align 4
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %160 = load i32, i32* %6, align 4
  %161 = call i32 (i32, %struct.TYPE_18__*, i32, i8*, ...) @ql_dbg(i32 %158, %struct.TYPE_18__* %159, i32 8207, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i32 %160)
  %162 = load i8*, i8** @ISP_CFG_NL, align 8
  %163 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %164 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %163, i32 0, i32 3
  store i8* %162, i8** %164, align 8
  %165 = getelementptr inbounds [22 x i8], [22 x i8]* %11, i64 0, i64 0
  %166 = call i32 @strcpy(i8* %165, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %167

167:                                              ; preds = %157, %142, %130, %118, %109
  %168 = load i8*, i8** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 3
  store i8* %168, i8** %170, align 8
  %171 = load i8*, i8** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 2
  store i8* %171, i8** %173, align 8
  %174 = load i8*, i8** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 1
  store i8* %174, i8** %176, align 8
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 0
  store i64 0, i64* %178, align 8
  %179 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %180 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %179, i32 0, i32 1
  %181 = load i64, i64* %15, align 8
  %182 = call i32 @spin_lock_irqsave(i32* %180, i64 %181)
  %183 = load i32, i32* %6, align 4
  %184 = icmp eq i32 %183, 2
  br i1 %184, label %185, label %191

185:                                              ; preds = %167
  %186 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %187 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %194, label %191

191:                                              ; preds = %185, %167
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %193 = call i32 @qlt_update_host_map(%struct.TYPE_18__* %192, %struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %14)
  br label %194

194:                                              ; preds = %191, %185
  %195 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %196 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %195, i32 0, i32 1
  %197 = load i64, i64* %15, align 8
  %198 = call i32 @spin_unlock_irqrestore(i32* %196, i64 %197)
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %212, label %204

204:                                              ; preds = %194
  %205 = load i32, i32* @ql_log_info, align 4
  %206 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %207 = getelementptr inbounds [22 x i8], [22 x i8]* %11, i64 0, i64 0
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = call i32 (i32, %struct.TYPE_18__*, i32, i8*, ...) @ql_log(i32 %205, %struct.TYPE_18__* %206, i32 8208, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0), i8* %207, i32 %210)
  br label %212

212:                                              ; preds = %204, %194
  %213 = load i32, i32* %4, align 4
  store i32 %213, i32* %2, align 4
  br label %214

214:                                              ; preds = %212, %91, %86, %78
  %215 = load i32, i32* %2, align 4
  ret i32 %215
}

declare dso_local %struct.TYPE_18__* @pci_get_drvdata(i32) #1

declare dso_local i32 @qla2x00_get_adapter_id(%struct.TYPE_18__*, i32*, i8**, i8**, i8**, i32*, i32*) #1

declare dso_local i64 @LOOP_TRANSITION(%struct.TYPE_18__*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @IS_CNA_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_18__*, i32, i8*, ...) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_18__*, i32, i8*, ...) #1

declare dso_local i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i32 @qla24xx_link_initialize(%struct.TYPE_18__*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @qlt_update_host_map(%struct.TYPE_18__*, %struct.TYPE_19__* byval(%struct.TYPE_19__) align 8) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
