; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/extr_trf7970a.c_trf7970a_in_config_rf_tech.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/extr_trf7970a.c_trf7970a_in_config_rf_tech.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trf7970a = type { i32, i32, i32, i32, i8*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"rf technology: %d\0A\00", align 1
@TRF7970A_ISO_CTRL_14443A_106 = common dso_local global i32 0, align 4
@TRF7970A_MODULATOR_DEPTH_OOK = common dso_local global i32 0, align 4
@TRF7970A_GUARD_TIME_NFCA = common dso_local global i8* null, align 8
@TRF7970A_ISO_CTRL_14443B_106 = common dso_local global i32 0, align 4
@TRF7970A_MODULATOR_DEPTH_ASK10 = common dso_local global i32 0, align 4
@TRF7970A_GUARD_TIME_NFCB = common dso_local global i8* null, align 8
@TRF7970A_ISO_CTRL_FELICA_212 = common dso_local global i32 0, align 4
@TRF7970A_GUARD_TIME_NFCF = common dso_local global i8* null, align 8
@TRF7970A_ISO_CTRL_FELICA_424 = common dso_local global i32 0, align 4
@TRF7970A_ISO_CTRL_15693_SGL_1OF4_2648 = common dso_local global i32 0, align 4
@TRF7970A_GUARD_TIME_15693 = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Unsupported rf technology: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TRF7970A_NFC_TARGET_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trf7970a*, i32)* @trf7970a_in_config_rf_tech to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trf7970a_in_config_rf_tech(%struct.trf7970a* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trf7970a*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.trf7970a* %0, %struct.trf7970a** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %8 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @dev_dbg(i32 %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %88 [
    i32 132, label %13
    i32 131, label %28
    i32 130, label %43
    i32 129, label %58
    i32 128, label %73
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @TRF7970A_ISO_CTRL_14443A_106, align 4
  %15 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %16 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %15, i32 0, i32 5
  store i32 %14, i32* %16, align 8
  %17 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %18 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, 248
  %21 = load i32, i32* @TRF7970A_MODULATOR_DEPTH_OOK, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %24 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i8*, i8** @TRF7970A_GUARD_TIME_NFCA, align 8
  %26 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %27 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %26, i32 0, i32 4
  store i8* %25, i8** %27, align 8
  br label %96

28:                                               ; preds = %2
  %29 = load i32, i32* @TRF7970A_ISO_CTRL_14443B_106, align 4
  %30 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %31 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 8
  %32 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %33 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, 248
  %36 = load i32, i32* @TRF7970A_MODULATOR_DEPTH_ASK10, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %39 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i8*, i8** @TRF7970A_GUARD_TIME_NFCB, align 8
  %41 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %42 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %41, i32 0, i32 4
  store i8* %40, i8** %42, align 8
  br label %96

43:                                               ; preds = %2
  %44 = load i32, i32* @TRF7970A_ISO_CTRL_FELICA_212, align 4
  %45 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %46 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 8
  %47 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %48 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, 248
  %51 = load i32, i32* @TRF7970A_MODULATOR_DEPTH_ASK10, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %54 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i8*, i8** @TRF7970A_GUARD_TIME_NFCF, align 8
  %56 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %57 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %56, i32 0, i32 4
  store i8* %55, i8** %57, align 8
  br label %96

58:                                               ; preds = %2
  %59 = load i32, i32* @TRF7970A_ISO_CTRL_FELICA_424, align 4
  %60 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %61 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 8
  %62 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %63 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, 248
  %66 = load i32, i32* @TRF7970A_MODULATOR_DEPTH_ASK10, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %69 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load i8*, i8** @TRF7970A_GUARD_TIME_NFCF, align 8
  %71 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %72 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %71, i32 0, i32 4
  store i8* %70, i8** %72, align 8
  br label %96

73:                                               ; preds = %2
  %74 = load i32, i32* @TRF7970A_ISO_CTRL_15693_SGL_1OF4_2648, align 4
  %75 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %76 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %75, i32 0, i32 5
  store i32 %74, i32* %76, align 8
  %77 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %78 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = and i32 %79, 248
  %81 = load i32, i32* @TRF7970A_MODULATOR_DEPTH_OOK, align 4
  %82 = or i32 %80, %81
  %83 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %84 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load i8*, i8** @TRF7970A_GUARD_TIME_15693, align 8
  %86 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %87 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %86, i32 0, i32 4
  store i8* %85, i8** %87, align 8
  br label %96

88:                                               ; preds = %2
  %89 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %90 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @dev_dbg(i32 %91, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %110

96:                                               ; preds = %73, %58, %43, %28, %13
  %97 = load i32, i32* %5, align 4
  %98 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %99 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %101 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %102, 255
  br i1 %103, label %104, label %108

104:                                              ; preds = %96
  %105 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %106 = load i32, i32* @TRF7970A_NFC_TARGET_LEVEL, align 4
  %107 = call i32 @trf7970a_write(%struct.trf7970a* %105, i32 %106, i32 0)
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %104, %96
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %108, %88
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @trf7970a_write(%struct.trf7970a*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
