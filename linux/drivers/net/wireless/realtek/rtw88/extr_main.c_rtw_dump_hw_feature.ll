; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_main.c_rtw_dump_hw_feature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_main.c_rtw_dump_hw_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.TYPE_3__, %struct.rtw_efuse }
%struct.TYPE_3__ = type { i64 }
%struct.rtw_efuse = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32 }

@HW_FEATURE_LEN = common dso_local global i32 0, align 4
@REG_C2HEVT = common dso_local global i64 0, align 8
@C2H_HW_FEATURE_REPORT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"failed to read hw feature report\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@EFUSE_HW_CAP_IGNORE = common dso_local global i64 0, align 8
@RTW_DBG_EFUSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"hw cap: hci=0x%02x, bw=0x%02x, ptcl=0x%02x, ant_num=%d, nss=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*)* @rtw_dump_hw_feature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_dump_hw_feature(%struct.rtw_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca %struct.rtw_efuse*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  %11 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %12 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %11, i32 0, i32 1
  store %struct.rtw_efuse* %12, %struct.rtw_efuse** %4, align 8
  %13 = load i32, i32* @HW_FEATURE_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %5, align 8
  %16 = alloca i64, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  %17 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %18 = load i64, i64* @REG_C2HEVT, align 8
  %19 = call i64 @rtw_read8(%struct.rtw_dev* %17, i64 %18)
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @C2H_HW_FEATURE_REPORT, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %25 = call i32 @rtw_err(%struct.rtw_dev* %24, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %117

28:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %44, %28
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @HW_FEATURE_LEN, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %35 = load i64, i64* @REG_C2HEVT, align 8
  %36 = add nsw i64 %35, 2
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  %40 = call i64 @rtw_read8(%struct.rtw_dev* %34, i64 %39)
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %16, i64 %42
  store i64 %40, i64* %43, align 8
  br label %44

44:                                               ; preds = %33
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %29

47:                                               ; preds = %29
  %48 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %49 = load i64, i64* @REG_C2HEVT, align 8
  %50 = call i32 @rtw_write8(%struct.rtw_dev* %48, i64 %49, i32 0)
  %51 = call i64 @GET_EFUSE_HW_CAP_BW(i64* %16)
  store i64 %51, i64* %8, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @hw_bw_cap_to_bitamp(i64 %52)
  %54 = load %struct.rtw_efuse*, %struct.rtw_efuse** %4, align 8
  %55 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 3
  store i32 %53, i32* %56, align 8
  %57 = call i32 @GET_EFUSE_HW_CAP_HCI(i64* %16)
  %58 = load %struct.rtw_efuse*, %struct.rtw_efuse** %4, align 8
  %59 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 4
  store i32 %57, i32* %60, align 4
  %61 = call i64 @GET_EFUSE_HW_CAP_NSS(i64* %16)
  %62 = load %struct.rtw_efuse*, %struct.rtw_efuse** %4, align 8
  %63 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i64 %61, i64* %64, align 8
  %65 = call i32 @GET_EFUSE_HW_CAP_PTCL(i64* %16)
  %66 = load %struct.rtw_efuse*, %struct.rtw_efuse** %4, align 8
  %67 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  store i32 %65, i32* %68, align 4
  %69 = call i32 @GET_EFUSE_HW_CAP_ANT_NUM(i64* %16)
  %70 = load %struct.rtw_efuse*, %struct.rtw_efuse** %4, align 8
  %71 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  store i32 %69, i32* %72, align 8
  %73 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %74 = load %struct.rtw_efuse*, %struct.rtw_efuse** %4, align 8
  %75 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @rtw_hw_config_rf_ant_num(%struct.rtw_dev* %73, i32 %77)
  %79 = load %struct.rtw_efuse*, %struct.rtw_efuse** %4, align 8
  %80 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @EFUSE_HW_CAP_IGNORE, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %47
  %86 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %87 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.rtw_efuse*, %struct.rtw_efuse** %4, align 8
  %91 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  store i64 %89, i64* %92, align 8
  br label %93

93:                                               ; preds = %85, %47
  %94 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %95 = load i32, i32* @RTW_DBG_EFUSE, align 4
  %96 = load %struct.rtw_efuse*, %struct.rtw_efuse** %4, align 8
  %97 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.rtw_efuse*, %struct.rtw_efuse** %4, align 8
  %101 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.rtw_efuse*, %struct.rtw_efuse** %4, align 8
  %105 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.rtw_efuse*, %struct.rtw_efuse** %4, align 8
  %109 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.rtw_efuse*, %struct.rtw_efuse** %4, align 8
  %113 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @rtw_dbg(%struct.rtw_dev* %94, i32 %95, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %99, i32 %103, i32 %107, i32 %111, i64 %115)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %117

117:                                              ; preds = %93, %23
  %118 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %118)
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @rtw_read8(%struct.rtw_dev*, i64) #2

declare dso_local i32 @rtw_err(%struct.rtw_dev*, i8*) #2

declare dso_local i32 @rtw_write8(%struct.rtw_dev*, i64, i32) #2

declare dso_local i64 @GET_EFUSE_HW_CAP_BW(i64*) #2

declare dso_local i32 @hw_bw_cap_to_bitamp(i64) #2

declare dso_local i32 @GET_EFUSE_HW_CAP_HCI(i64*) #2

declare dso_local i64 @GET_EFUSE_HW_CAP_NSS(i64*) #2

declare dso_local i32 @GET_EFUSE_HW_CAP_PTCL(i64*) #2

declare dso_local i32 @GET_EFUSE_HW_CAP_ANT_NUM(i64*) #2

declare dso_local i32 @rtw_hw_config_rf_ant_num(%struct.rtw_dev*, i32) #2

declare dso_local i32 @rtw_dbg(%struct.rtw_dev*, i32, i8*, i32, i32, i32, i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
