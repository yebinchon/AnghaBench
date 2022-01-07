; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_ccsr.c_log_additional_error_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_ccsr.c_log_additional_error_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i32 }
%struct.device = type { i32 }
%struct.qm_ecir = type { i8* }
%struct.qm_eadr = type { i8* }
%struct.qm_ecir2 = type { i8* }

@REG_ECIR = common dso_local global i32 0, align 4
@qman_ip_rev = common dso_local global i32 0, align 4
@QMAN_REV30 = common dso_local global i32 0, align 4
@REG_ECIR2 = common dso_local global i32 0, align 4
@PORTAL_ECSR_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"ErrInt: %s id %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"DCP\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"SWP\00", align 1
@FQID_ECSR_ERR = common dso_local global i32 0, align 4
@QM_EIRQ_IECE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"ErrInt: ecir.fqid 0x%x\0A\00", align 1
@QM_EIRQ_SBEI = common dso_local global i32 0, align 4
@QM_EIRQ_MBEI = common dso_local global i32 0, align 4
@REG_EADR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"ErrInt: EADR Memory: %s, 0x%x\0A\00", align 1
@error_mdata = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i32, i32)* @log_additional_error_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_additional_error_info(%struct.device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.qm_ecir, align 8
  %8 = alloca %struct.qm_eadr, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.qm_ecir2, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @REG_ECIR, align 4
  %12 = call i8* @qm_ccsr_in(i32 %11)
  %13 = getelementptr inbounds %struct.qm_ecir, %struct.qm_ecir* %7, i32 0, i32 0
  store i8* %12, i8** %13, align 8
  %14 = load i32, i32* @qman_ip_rev, align 4
  %15 = and i32 %14, 65280
  %16 = load i32, i32* @QMAN_REV30, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %84

18:                                               ; preds = %3
  %19 = load i32, i32* @REG_ECIR2, align 4
  %20 = call i8* @qm_ccsr_in(i32 %19)
  %21 = getelementptr inbounds %struct.qm_ecir2, %struct.qm_ecir2* %10, i32 0, i32 0
  store i8* %20, i8** %21, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @PORTAL_ECSR_ERR, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %18
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = call i64 @qm_ecir2_is_dcp(%struct.qm_ecir2* %10)
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %32 = call i32 @qm_ecir2_get_pnum(%struct.qm_ecir2* %10)
  %33 = call i32 (%struct.device*, i8*, i8*, ...) @dev_warn(%struct.device* %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %31, i32 %32)
  br label %34

34:                                               ; preds = %26, %18
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @FQID_ECSR_ERR, align 4
  %37 = load i32, i32* @QM_EIRQ_IECE, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = call i32 @qm_ecir_get_fqid(%struct.qm_ecir* %7)
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  %46 = call i32 (%struct.device*, i8*, i8*, ...) @dev_warn(%struct.device* %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %45)
  br label %47

47:                                               ; preds = %41, %34
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @QM_EIRQ_SBEI, align 4
  %50 = load i32, i32* @QM_EIRQ_MBEI, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %48, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %83

54:                                               ; preds = %47
  %55 = load i32, i32* @REG_EADR, align 4
  %56 = call i8* @qm_ccsr_in(i32 %55)
  %57 = getelementptr inbounds %struct.qm_eadr, %struct.qm_eadr* %8, i32 0, i32 0
  store i8* %56, i8** %57, align 8
  %58 = call i32 @qm_eadr_v3_get_memid(%struct.qm_eadr* %8)
  store i32 %58, i32* %9, align 4
  %59 = load %struct.device*, %struct.device** %4, align 8
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @error_mdata, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @error_mdata, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @qm_eadr_v3_get_eadr(%struct.qm_eadr* %8)
  %73 = and i32 %71, %72
  %74 = call i32 (%struct.device*, i8*, i8*, ...) @dev_warn(%struct.device* %59, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %65, i32 %73)
  %75 = load %struct.device*, %struct.device** %4, align 8
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @error_mdata, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @log_edata_bits(%struct.device* %75, i32 %81)
  br label %83

83:                                               ; preds = %54, %47
  br label %145

84:                                               ; preds = %3
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @PORTAL_ECSR_ERR, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %84
  %90 = load %struct.device*, %struct.device** %4, align 8
  %91 = call i64 @qm_ecir_is_dcp(%struct.qm_ecir* %7)
  %92 = icmp ne i64 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %95 = call i32 @qm_ecir_get_pnum(%struct.qm_ecir* %7)
  %96 = call i32 (%struct.device*, i8*, i8*, ...) @dev_warn(%struct.device* %90, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %94, i32 %95)
  br label %97

97:                                               ; preds = %89, %84
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @FQID_ECSR_ERR, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load %struct.device*, %struct.device** %4, align 8
  %104 = call i32 @qm_ecir_get_fqid(%struct.qm_ecir* %7)
  %105 = sext i32 %104 to i64
  %106 = inttoptr i64 %105 to i8*
  %107 = call i32 (%struct.device*, i8*, i8*, ...) @dev_warn(%struct.device* %103, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %106)
  br label %108

108:                                              ; preds = %102, %97
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @QM_EIRQ_SBEI, align 4
  %111 = load i32, i32* @QM_EIRQ_MBEI, align 4
  %112 = or i32 %110, %111
  %113 = and i32 %109, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %144

115:                                              ; preds = %108
  %116 = load i32, i32* @REG_EADR, align 4
  %117 = call i8* @qm_ccsr_in(i32 %116)
  %118 = getelementptr inbounds %struct.qm_eadr, %struct.qm_eadr* %8, i32 0, i32 0
  store i8* %117, i8** %118, align 8
  %119 = call i32 @qm_eadr_get_memid(%struct.qm_eadr* %8)
  store i32 %119, i32* %9, align 4
  %120 = load %struct.device*, %struct.device** %4, align 8
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** @error_mdata, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** @error_mdata, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @qm_eadr_get_eadr(%struct.qm_eadr* %8)
  %134 = and i32 %132, %133
  %135 = call i32 (%struct.device*, i8*, i8*, ...) @dev_warn(%struct.device* %120, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %126, i32 %134)
  %136 = load %struct.device*, %struct.device** %4, align 8
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** @error_mdata, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @log_edata_bits(%struct.device* %136, i32 %142)
  br label %144

144:                                              ; preds = %115, %108
  br label %145

145:                                              ; preds = %144, %83
  ret void
}

declare dso_local i8* @qm_ccsr_in(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i8*, ...) #1

declare dso_local i64 @qm_ecir2_is_dcp(%struct.qm_ecir2*) #1

declare dso_local i32 @qm_ecir2_get_pnum(%struct.qm_ecir2*) #1

declare dso_local i32 @qm_ecir_get_fqid(%struct.qm_ecir*) #1

declare dso_local i32 @qm_eadr_v3_get_memid(%struct.qm_eadr*) #1

declare dso_local i32 @qm_eadr_v3_get_eadr(%struct.qm_eadr*) #1

declare dso_local i32 @log_edata_bits(%struct.device*, i32) #1

declare dso_local i64 @qm_ecir_is_dcp(%struct.qm_ecir*) #1

declare dso_local i32 @qm_ecir_get_pnum(%struct.qm_ecir*) #1

declare dso_local i32 @qm_eadr_get_memid(%struct.qm_eadr*) #1

declare dso_local i32 @qm_eadr_get_eadr(%struct.qm_eadr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
