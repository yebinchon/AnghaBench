; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/atm/extr_ueagle-atm.c_cmvs_file_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/atm/extr_ueagle-atm.c_cmvs_file_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uea_softc = type { i64 }

@__const.cmvs_file_name.file_arr = private unnamed_addr constant [10 x i8] c"CMVxy.bin\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@cmv_file = common dso_local global i8** null, align 8
@ADI930 = common dso_local global i64 0, align 8
@EAGLE_IV = common dso_local global i64 0, align 8
@FW_DIR = common dso_local global i32 0, align 4
@UEA_FW_NAME_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c".v2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uea_softc*, i8*, i32)* @cmvs_file_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmvs_file_name(%struct.uea_softc* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.uea_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [10 x i8], align 1
  %8 = alloca i8*, align 8
  store %struct.uea_softc* %0, %struct.uea_softc** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = bitcast [10 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.cmvs_file_name.file_arr, i32 0, i32 0), i64 10, i1 false)
  %10 = load i32, i32* @THIS_MODULE, align 4
  %11 = call i32 @kernel_param_lock(i32 %10)
  %12 = load i8**, i8*** @cmv_file, align 8
  %13 = load %struct.uea_softc*, %struct.uea_softc** %4, align 8
  %14 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i8*, i8** %12, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %45

19:                                               ; preds = %3
  %20 = load %struct.uea_softc*, %struct.uea_softc** %4, align 8
  %21 = call i64 @UEA_CHIP_VERSION(%struct.uea_softc* %20)
  %22 = load i64, i64* @ADI930, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 3
  store i8 57, i8* %25, align 1
  br label %36

26:                                               ; preds = %19
  %27 = load %struct.uea_softc*, %struct.uea_softc** %4, align 8
  %28 = call i64 @UEA_CHIP_VERSION(%struct.uea_softc* %27)
  %29 = load i64, i64* @EAGLE_IV, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 3
  store i8 52, i8* %32, align 1
  br label %35

33:                                               ; preds = %26
  %34 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 3
  store i8 101, i8* %34, align 1
  br label %35

35:                                               ; preds = %33, %31
  br label %36

36:                                               ; preds = %35, %24
  %37 = load %struct.uea_softc*, %struct.uea_softc** %4, align 8
  %38 = call i64 @IS_ISDN(%struct.uea_softc* %37)
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 105, i32 112
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 4
  store i8 %42, i8* %43, align 1
  %44 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  store i8* %44, i8** %8, align 8
  br label %52

45:                                               ; preds = %3
  %46 = load i8**, i8*** @cmv_file, align 8
  %47 = load %struct.uea_softc*, %struct.uea_softc** %4, align 8
  %48 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i8*, i8** %46, i64 %49
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %8, align 8
  br label %52

52:                                               ; preds = %45, %36
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* @FW_DIR, align 4
  %55 = call i32 @strcpy(i8* %53, i32 %54)
  %56 = load i8*, i8** %5, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = load i32, i32* @UEA_FW_NAME_MAX, align 4
  %59 = call i32 @strlcat(i8* %56, i8* %57, i32 %58)
  %60 = load i32, i32* %6, align 4
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %62, label %66

62:                                               ; preds = %52
  %63 = load i8*, i8** %5, align 8
  %64 = load i32, i32* @UEA_FW_NAME_MAX, align 4
  %65 = call i32 @strlcat(i8* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %62, %52
  %67 = load i32, i32* @THIS_MODULE, align 4
  %68 = call i32 @kernel_param_unlock(i32 %67)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @kernel_param_lock(i32) #2

declare dso_local i64 @UEA_CHIP_VERSION(%struct.uea_softc*) #2

declare dso_local i64 @IS_ISDN(%struct.uea_softc*) #2

declare dso_local i32 @strcpy(i8*, i32) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

declare dso_local i32 @kernel_param_unlock(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
