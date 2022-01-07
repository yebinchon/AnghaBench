; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dac_cal_restore_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dac_cal_restore_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_dm_info }
%struct.rtw_dm_info = type { i64*** }

@DACK_MSBK_BACKUP_NUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*, i64)* @rtw8822c_dac_cal_restore_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw8822c_dac_cal_restore_path(%struct.rtw_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rtw_dm_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %15 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %16 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %15, i32 0, i32 0
  store %struct.rtw_dm_info* %16, %struct.rtw_dm_info** %6, align 8
  store i64 28, i64* %7, align 8
  store i64 44, i64* %8, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i64 @rtw8822c_get_path_write_addr(i64 %17)
  %19 = add i64 %18, 176
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i64 @rtw8822c_get_path_read_addr(i64 %20)
  %22 = add i64 %21, 8
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @rtw8822c_get_path_write_addr(i64 %23)
  %25 = add i64 %24, 176
  %26 = load i64, i64* %7, align 8
  %27 = add i64 %25, %26
  store i64 %27, i64* %11, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i64 @rtw8822c_get_path_read_addr(i64 %28)
  %30 = add i64 %29, 8
  %31 = load i64, i64* %8, align 8
  %32 = add i64 %30, %31
  store i64 %32, i64* %12, align 8
  %33 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* %9, align 8
  %36 = add i64 %35, 8
  %37 = call i32 @rtw8822c_dac_cal_restore_wait(%struct.rtw_dev* %33, i64 %34, i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %165

40:                                               ; preds = %2
  store i64 0, i64* %14, align 8
  br label %41

41:                                               ; preds = %78, %40
  %42 = load i64, i64* %14, align 8
  %43 = load i64, i64* @DACK_MSBK_BACKUP_NUM, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %81

45:                                               ; preds = %41
  %46 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %47 = load i64, i64* %9, align 8
  %48 = add i64 %47, 4
  %49 = call i32 @BIT(i32 2)
  %50 = call i32 @rtw_write32_mask(%struct.rtw_dev* %46, i64 %48, i32 %49, i32 0)
  %51 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %6, align 8
  %52 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %51, i32 0, i32 0
  %53 = load i64***, i64**** %52, align 8
  %54 = load i64, i64* %5, align 8
  %55 = getelementptr inbounds i64**, i64*** %53, i64 %54
  %56 = load i64**, i64*** %55, align 8
  %57 = getelementptr inbounds i64*, i64** %56, i64 0
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* %14, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %13, align 8
  %62 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %63 = load i64, i64* %9, align 8
  %64 = add i64 %63, 4
  %65 = load i64, i64* %13, align 8
  %66 = trunc i64 %65 to i32
  %67 = call i32 @rtw_write32_mask(%struct.rtw_dev* %62, i64 %64, i32 4088, i32 %66)
  %68 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* %14, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 @rtw_write32_mask(%struct.rtw_dev* %68, i64 %69, i32 -268435456, i32 %71)
  %73 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %74 = load i64, i64* %9, align 8
  %75 = add i64 %74, 4
  %76 = call i32 @BIT(i32 2)
  %77 = call i32 @rtw_write32_mask(%struct.rtw_dev* %73, i64 %75, i32 %76, i32 1)
  br label %78

78:                                               ; preds = %45
  %79 = load i64, i64* %14, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %14, align 8
  br label %41

81:                                               ; preds = %41
  %82 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %83 = load i64, i64* %9, align 8
  %84 = add i64 %83, 4
  %85 = call i32 @BIT(i32 2)
  %86 = call i32 @rtw_write32_mask(%struct.rtw_dev* %82, i64 %84, i32 %85, i32 0)
  %87 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %88 = load i64, i64* %12, align 8
  %89 = load i64, i64* %11, align 8
  %90 = add i64 %89, 8
  %91 = call i32 @rtw8822c_dac_cal_restore_wait(%struct.rtw_dev* %87, i64 %88, i64 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %81
  store i32 0, i32* %3, align 4
  br label %165

94:                                               ; preds = %81
  store i64 0, i64* %14, align 8
  br label %95

95:                                               ; preds = %132, %94
  %96 = load i64, i64* %14, align 8
  %97 = load i64, i64* @DACK_MSBK_BACKUP_NUM, align 8
  %98 = icmp ult i64 %96, %97
  br i1 %98, label %99, label %135

99:                                               ; preds = %95
  %100 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %101 = load i64, i64* %11, align 8
  %102 = add i64 %101, 4
  %103 = call i32 @BIT(i32 2)
  %104 = call i32 @rtw_write32_mask(%struct.rtw_dev* %100, i64 %102, i32 %103, i32 0)
  %105 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %6, align 8
  %106 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %105, i32 0, i32 0
  %107 = load i64***, i64**** %106, align 8
  %108 = load i64, i64* %5, align 8
  %109 = getelementptr inbounds i64**, i64*** %107, i64 %108
  %110 = load i64**, i64*** %109, align 8
  %111 = getelementptr inbounds i64*, i64** %110, i64 1
  %112 = load i64*, i64** %111, align 8
  %113 = load i64, i64* %14, align 8
  %114 = getelementptr inbounds i64, i64* %112, i64 %113
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %13, align 8
  %116 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %117 = load i64, i64* %11, align 8
  %118 = add i64 %117, 4
  %119 = load i64, i64* %13, align 8
  %120 = trunc i64 %119 to i32
  %121 = call i32 @rtw_write32_mask(%struct.rtw_dev* %116, i64 %118, i32 4088, i32 %120)
  %122 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %123 = load i64, i64* %11, align 8
  %124 = load i64, i64* %14, align 8
  %125 = trunc i64 %124 to i32
  %126 = call i32 @rtw_write32_mask(%struct.rtw_dev* %122, i64 %123, i32 -268435456, i32 %125)
  %127 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %128 = load i64, i64* %11, align 8
  %129 = add i64 %128, 4
  %130 = call i32 @BIT(i32 2)
  %131 = call i32 @rtw_write32_mask(%struct.rtw_dev* %127, i64 %129, i32 %130, i32 1)
  br label %132

132:                                              ; preds = %99
  %133 = load i64, i64* %14, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %14, align 8
  br label %95

135:                                              ; preds = %95
  %136 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %137 = load i64, i64* %11, align 8
  %138 = add i64 %137, 4
  %139 = call i32 @BIT(i32 2)
  %140 = call i32 @rtw_write32_mask(%struct.rtw_dev* %136, i64 %138, i32 %139, i32 0)
  %141 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %142 = load i64, i64* %9, align 8
  %143 = add i64 %142, 8
  %144 = call i32 @BIT(i32 26)
  %145 = call i32 @BIT(i32 25)
  %146 = or i32 %144, %145
  %147 = call i32 @rtw_write32_mask(%struct.rtw_dev* %141, i64 %143, i32 %146, i32 0)
  %148 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %149 = load i64, i64* %11, align 8
  %150 = add i64 %149, 8
  %151 = call i32 @BIT(i32 26)
  %152 = call i32 @BIT(i32 25)
  %153 = or i32 %151, %152
  %154 = call i32 @rtw_write32_mask(%struct.rtw_dev* %148, i64 %150, i32 %153, i32 0)
  %155 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %156 = load i64, i64* %9, align 8
  %157 = add i64 %156, 4
  %158 = call i32 @BIT(i32 0)
  %159 = call i32 @rtw_write32_mask(%struct.rtw_dev* %155, i64 %157, i32 %158, i32 0)
  %160 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %161 = load i64, i64* %11, align 8
  %162 = add i64 %161, 4
  %163 = call i32 @BIT(i32 0)
  %164 = call i32 @rtw_write32_mask(%struct.rtw_dev* %160, i64 %162, i32 %163, i32 0)
  store i32 1, i32* %3, align 4
  br label %165

165:                                              ; preds = %135, %93, %39
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local i64 @rtw8822c_get_path_write_addr(i64) #1

declare dso_local i64 @rtw8822c_get_path_read_addr(i64) #1

declare dso_local i32 @rtw8822c_dac_cal_restore_wait(%struct.rtw_dev*, i64, i64) #1

declare dso_local i32 @rtw_write32_mask(%struct.rtw_dev*, i64, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
