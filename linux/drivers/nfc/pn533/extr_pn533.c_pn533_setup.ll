; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_pn533.c_pn533_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_pn533.c_pn533_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pn533 = type { i32, i32 }
%struct.pn533_config_max_retries = type { i32, i32, i32 }
%struct.pn533_config_timing = type { i32, i8*, i8* }

@__const.pn533_setup.pasori_cfg = private unnamed_addr constant [3 x i32] [i32 8, i32 1, i32 8], align 4
@PN533_CONFIG_MAX_RETRIES_NO_RETRY = common dso_local global i32 0, align 4
@PN533_CONFIG_TIMING_102 = common dso_local global i8* null, align 8
@PN533_CONFIG_TIMING_204 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unknown device type %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PN533_CFGITEM_MAX_RETRIES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Error on setting MAX_RETRIES config\0A\00", align 1
@PN533_CFGITEM_TIMING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Error on setting RF timings\0A\00", align 1
@PN533_CFGITEM_PASORI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Error while settings PASORI config\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pn533*)* @pn533_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn533_setup(%struct.pn533* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pn533*, align 8
  %4 = alloca %struct.pn533_config_max_retries, align 4
  %5 = alloca %struct.pn533_config_timing, align 8
  %6 = alloca [3 x i32], align 4
  %7 = alloca i32, align 4
  store %struct.pn533* %0, %struct.pn533** %3, align 8
  %8 = bitcast [3 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast ([3 x i32]* @__const.pn533_setup.pasori_cfg to i8*), i64 12, i1 false)
  %9 = load %struct.pn533*, %struct.pn533** %3, align 8
  %10 = getelementptr inbounds %struct.pn533, %struct.pn533* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %23 [
    i32 128, label %12
    i32 130, label %12
    i32 131, label %12
    i32 129, label %12
  ]

12:                                               ; preds = %1, %1, %1, %1
  %13 = getelementptr inbounds %struct.pn533_config_max_retries, %struct.pn533_config_max_retries* %4, i32 0, i32 0
  store i32 2, i32* %13, align 4
  %14 = getelementptr inbounds %struct.pn533_config_max_retries, %struct.pn533_config_max_retries* %4, i32 0, i32 1
  store i32 1, i32* %14, align 4
  %15 = load i32, i32* @PN533_CONFIG_MAX_RETRIES_NO_RETRY, align 4
  %16 = getelementptr inbounds %struct.pn533_config_max_retries, %struct.pn533_config_max_retries* %4, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  %17 = load i8*, i8** @PN533_CONFIG_TIMING_102, align 8
  %18 = getelementptr inbounds %struct.pn533_config_timing, %struct.pn533_config_timing* %5, i32 0, i32 2
  store i8* %17, i8** %18, align 8
  %19 = load i8*, i8** @PN533_CONFIG_TIMING_102, align 8
  %20 = getelementptr inbounds %struct.pn533_config_timing, %struct.pn533_config_timing* %5, i32 0, i32 1
  store i8* %19, i8** %20, align 8
  %21 = load i32, i32* @PN533_CONFIG_TIMING_204, align 4
  %22 = getelementptr inbounds %struct.pn533_config_timing, %struct.pn533_config_timing* %5, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  br label %33

23:                                               ; preds = %1
  %24 = load %struct.pn533*, %struct.pn533** %3, align 8
  %25 = getelementptr inbounds %struct.pn533, %struct.pn533* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.pn533*, %struct.pn533** %3, align 8
  %28 = getelementptr inbounds %struct.pn533, %struct.pn533* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i32, i8*, ...) @nfc_err(i32 %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %83

33:                                               ; preds = %12
  %34 = load %struct.pn533*, %struct.pn533** %3, align 8
  %35 = load i32, i32* @PN533_CFGITEM_MAX_RETRIES, align 4
  %36 = bitcast %struct.pn533_config_max_retries* %4 to i32*
  %37 = call i32 @pn533_set_configuration(%struct.pn533* %34, i32 %35, i32* %36, i32 12)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load %struct.pn533*, %struct.pn533** %3, align 8
  %42 = getelementptr inbounds %struct.pn533, %struct.pn533* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i32, i8*, ...) @nfc_err(i32 %43, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %2, align 4
  br label %83

46:                                               ; preds = %33
  %47 = load %struct.pn533*, %struct.pn533** %3, align 8
  %48 = load i32, i32* @PN533_CFGITEM_TIMING, align 4
  %49 = bitcast %struct.pn533_config_timing* %5 to i32*
  %50 = call i32 @pn533_set_configuration(%struct.pn533* %47, i32 %48, i32* %49, i32 24)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load %struct.pn533*, %struct.pn533** %3, align 8
  %55 = getelementptr inbounds %struct.pn533, %struct.pn533* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i32, i8*, ...) @nfc_err(i32 %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %2, align 4
  br label %83

59:                                               ; preds = %46
  %60 = load %struct.pn533*, %struct.pn533** %3, align 8
  %61 = getelementptr inbounds %struct.pn533, %struct.pn533* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %82 [
    i32 128, label %63
    i32 129, label %63
    i32 130, label %64
  ]

63:                                               ; preds = %59, %59
  br label %82

64:                                               ; preds = %59
  %65 = load %struct.pn533*, %struct.pn533** %3, align 8
  %66 = call i32 @pn533_pasori_fw_reset(%struct.pn533* %65)
  %67 = load %struct.pn533*, %struct.pn533** %3, align 8
  %68 = load i32, i32* @PN533_CFGITEM_PASORI, align 4
  %69 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %70 = call i32 @pn533_set_configuration(%struct.pn533* %67, i32 %68, i32* %69, i32 3)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %64
  %74 = load %struct.pn533*, %struct.pn533** %3, align 8
  %75 = getelementptr inbounds %struct.pn533, %struct.pn533* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i32, i8*, ...) @nfc_err(i32 %76, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %2, align 4
  br label %83

79:                                               ; preds = %64
  %80 = load %struct.pn533*, %struct.pn533** %3, align 8
  %81 = call i32 @pn533_pasori_fw_reset(%struct.pn533* %80)
  br label %82

82:                                               ; preds = %59, %79, %63
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %82, %73, %53, %40, %23
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @nfc_err(i32, i8*, ...) #2

declare dso_local i32 @pn533_set_configuration(%struct.pn533*, i32, i32*, i32) #2

declare dso_local i32 @pn533_pasori_fw_reset(%struct.pn533*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
