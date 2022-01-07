; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dac_cal_step1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dac_cal_step1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_dm_info }
%struct.rtw_dm_info = type { i32* }

@RF_PATH_A = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"failed to wait for dack ready\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i64)* @rtw8822c_dac_cal_step1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822c_dac_cal_step1(%struct.rtw_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rtw_dm_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %9 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %8, i32 0, i32 0
  store %struct.rtw_dm_info* %9, %struct.rtw_dm_info** %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @rtw8822c_get_path_write_addr(i64 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @rtw8822c_get_path_read_addr(i64 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, 104
  %17 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %5, align 8
  %18 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* %4, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @rtw_write32(%struct.rtw_dev* %14, i32 %16, i32 %22)
  %24 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 12
  %27 = call i32 @rtw_write32(%struct.rtw_dev* %24, i32 %26, i32 -537918944)
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @RF_PATH_A, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %2
  %32 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 96
  %35 = call i32 @rtw_write32(%struct.rtw_dev* %32, i32 %34, i32 -268169232)
  %36 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %37 = call i32 @rtw_write32(%struct.rtw_dev* %36, i32 7224, i32 -1)
  br label %38

38:                                               ; preds = %31, %2
  %39 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 16
  %42 = call i32 @rtw_write32(%struct.rtw_dev* %39, i32 %41, i32 47515845)
  %43 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %44 = call i32 @rtw_write32(%struct.rtw_dev* %43, i32 2484, i32 -614016256)
  %45 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 176
  %48 = call i32 @rtw_write32(%struct.rtw_dev* %45, i32 %47, i32 168950664)
  %49 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 188
  %52 = call i32 @rtw_write32(%struct.rtw_dev* %49, i32 %51, i32 589697)
  %53 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 192
  %56 = call i32 @rtw_write32(%struct.rtw_dev* %53, i32 %55, i32 250376)
  %57 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 204
  %60 = call i32 @rtw_write32(%struct.rtw_dev* %57, i32 %59, i32 168950664)
  %61 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 216
  %64 = call i32 @rtw_write32(%struct.rtw_dev* %61, i32 %63, i32 589697)
  %65 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 220
  %68 = call i32 @rtw_write32(%struct.rtw_dev* %65, i32 %67, i32 250376)
  %69 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 184
  %72 = call i32 @rtw_write32(%struct.rtw_dev* %69, i32 %71, i32 1610612736)
  %73 = call i32 @mdelay(i32 2)
  %74 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 188
  %77 = call i32 @rtw_write32(%struct.rtw_dev* %74, i32 %76, i32 720781)
  %78 = call i32 @mdelay(i32 2)
  %79 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 176
  %82 = call i32 @rtw_write32(%struct.rtw_dev* %79, i32 %81, i32 168950665)
  %83 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 204
  %86 = call i32 @rtw_write32(%struct.rtw_dev* %83, i32 %85, i32 168950665)
  %87 = call i32 @mdelay(i32 1)
  %88 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 184
  %91 = call i32 @rtw_write32(%struct.rtw_dev* %88, i32 %90, i32 1644167168)
  %92 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 212
  %95 = call i32 @rtw_write32(%struct.rtw_dev* %92, i32 %94, i32 1644167168)
  %96 = call i32 @mdelay(i32 20)
  %97 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 8
  %100 = call i32 @check_hw_ready(%struct.rtw_dev* %97, i32 %99, i32 8388480, i32 65535)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %38
  %103 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 52
  %106 = call i32 @check_hw_ready(%struct.rtw_dev* %103, i32 %105, i32 8388480, i32 65535)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %102, %38
  %109 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %110 = call i32 @rtw_err(%struct.rtw_dev* %109, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %111

111:                                              ; preds = %108, %102
  %112 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %113 = load i32, i32* %6, align 4
  %114 = add nsw i32 %113, 184
  %115 = call i32 @rtw_write32(%struct.rtw_dev* %112, i32 %114, i32 33554432)
  %116 = call i32 @mdelay(i32 1)
  %117 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, 188
  %120 = call i32 @rtw_write32(%struct.rtw_dev* %117, i32 %119, i32 589703)
  %121 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %122 = call i32 @rtw_write32(%struct.rtw_dev* %121, i32 2484, i32 -613566976)
  %123 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %124 = load i32, i32* %6, align 4
  %125 = add nsw i32 %124, 16
  %126 = call i32 @rtw_write32(%struct.rtw_dev* %123, i32 %125, i32 47515845)
  %127 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %128 = load i32, i32* %6, align 4
  %129 = add nsw i32 %128, 188
  %130 = call i32 @rtw_write32(%struct.rtw_dev* %127, i32 %129, i32 589703)
  %131 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %132 = load i32, i32* %6, align 4
  %133 = add nsw i32 %132, 96
  %134 = call i32 @rtw_write32(%struct.rtw_dev* %131, i32 %133, i32 -268435456)
  ret void
}

declare dso_local i32 @rtw8822c_get_path_write_addr(i64) #1

declare dso_local i32 @rtw8822c_get_path_read_addr(i64) #1

declare dso_local i32 @rtw_write32(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @check_hw_ready(%struct.rtw_dev*, i32, i32, i32) #1

declare dso_local i32 @rtw_err(%struct.rtw_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
