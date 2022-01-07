; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_adp8860_bl.c_adp8860_bl_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_adp8860_bl.c_adp8860_bl_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { i32 }
%struct.adp8860_bl = type { i32, i64, i64, %struct.adp8860_backlight_platform_data*, %struct.i2c_client* }
%struct.adp8860_backlight_platform_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_client = type { i32 }

@ADP8860_BLSEN = common dso_local global i32 0, align 4
@ADP8860_BLMX1 = common dso_local global i32 0, align 4
@ADP8860_BLDM1 = common dso_local global i32 0, align 4
@ADP8860_BLMX2 = common dso_local global i32 0, align 4
@ADP8860_BLDM2 = common dso_local global i32 0, align 4
@ADP8860_BLMX3 = common dso_local global i32 0, align 4
@ADP8860_BLDM3 = common dso_local global i32 0, align 4
@ADP8860_L2_TRP = common dso_local global i32 0, align 4
@ADP8860_L2_HYS = common dso_local global i32 0, align 4
@ADP8860_L3_TRP = common dso_local global i32 0, align 4
@ADP8860_L3_HYS = common dso_local global i32 0, align 4
@ADP8860_CCFG = common dso_local global i32 0, align 4
@L2_EN = common dso_local global i32 0, align 4
@L3_EN = common dso_local global i32 0, align 4
@ADP8860_CFGR = common dso_local global i32 0, align 4
@ADP8860_BLFR = common dso_local global i32 0, align 4
@ADP8860_MDCR = common dso_local global i32 0, align 4
@BLEN = common dso_local global i32 0, align 4
@DIM_EN = common dso_local global i32 0, align 4
@NSTBY = common dso_local global i32 0, align 4
@GDWN_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @adp8860_bl_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adp8860_bl_setup(%struct.backlight_device* %0) #0 {
  %2 = alloca %struct.backlight_device*, align 8
  %3 = alloca %struct.adp8860_bl*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.adp8860_backlight_platform_data*, align 8
  %6 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %2, align 8
  %7 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %8 = call %struct.adp8860_bl* @bl_get_data(%struct.backlight_device* %7)
  store %struct.adp8860_bl* %8, %struct.adp8860_bl** %3, align 8
  %9 = load %struct.adp8860_bl*, %struct.adp8860_bl** %3, align 8
  %10 = getelementptr inbounds %struct.adp8860_bl, %struct.adp8860_bl* %9, i32 0, i32 4
  %11 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  store %struct.i2c_client* %11, %struct.i2c_client** %4, align 8
  %12 = load %struct.adp8860_bl*, %struct.adp8860_bl** %3, align 8
  %13 = getelementptr inbounds %struct.adp8860_bl, %struct.adp8860_bl* %12, i32 0, i32 3
  %14 = load %struct.adp8860_backlight_platform_data*, %struct.adp8860_backlight_platform_data** %13, align 8
  store %struct.adp8860_backlight_platform_data* %14, %struct.adp8860_backlight_platform_data** %5, align 8
  store i32 0, i32* %6, align 4
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = load i32, i32* @ADP8860_BLSEN, align 4
  %17 = load %struct.adp8860_backlight_platform_data*, %struct.adp8860_backlight_platform_data** %5, align 8
  %18 = getelementptr inbounds %struct.adp8860_backlight_platform_data, %struct.adp8860_backlight_platform_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = xor i32 %19, -1
  %21 = call i32 @adp8860_write(%struct.i2c_client* %15, i32 %16, i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = load i32, i32* @ADP8860_BLMX1, align 4
  %26 = load %struct.adp8860_backlight_platform_data*, %struct.adp8860_backlight_platform_data** %5, align 8
  %27 = getelementptr inbounds %struct.adp8860_backlight_platform_data, %struct.adp8860_backlight_platform_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @adp8860_write(%struct.i2c_client* %24, i32 %25, i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = load i32, i32* @ADP8860_BLDM1, align 4
  %34 = load %struct.adp8860_backlight_platform_data*, %struct.adp8860_backlight_platform_data** %5, align 8
  %35 = getelementptr inbounds %struct.adp8860_backlight_platform_data, %struct.adp8860_backlight_platform_data* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @adp8860_write(%struct.i2c_client* %32, i32 %33, i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %6, align 4
  %40 = load %struct.adp8860_bl*, %struct.adp8860_bl** %3, align 8
  %41 = getelementptr inbounds %struct.adp8860_bl, %struct.adp8860_bl* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %127

44:                                               ; preds = %1
  %45 = load %struct.adp8860_backlight_platform_data*, %struct.adp8860_backlight_platform_data** %5, align 8
  %46 = getelementptr inbounds %struct.adp8860_backlight_platform_data, %struct.adp8860_backlight_platform_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.adp8860_bl*, %struct.adp8860_bl** %3, align 8
  %49 = getelementptr inbounds %struct.adp8860_bl, %struct.adp8860_bl* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = load i32, i32* @ADP8860_BLMX2, align 4
  %52 = load %struct.adp8860_backlight_platform_data*, %struct.adp8860_backlight_platform_data** %5, align 8
  %53 = getelementptr inbounds %struct.adp8860_backlight_platform_data, %struct.adp8860_backlight_platform_data* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @adp8860_write(%struct.i2c_client* %50, i32 %51, i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %6, align 4
  %58 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %59 = load i32, i32* @ADP8860_BLDM2, align 4
  %60 = load %struct.adp8860_backlight_platform_data*, %struct.adp8860_backlight_platform_data** %5, align 8
  %61 = getelementptr inbounds %struct.adp8860_backlight_platform_data, %struct.adp8860_backlight_platform_data* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @adp8860_write(%struct.i2c_client* %58, i32 %59, i32 %62)
  %64 = load i32, i32* %6, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %6, align 4
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = load i32, i32* @ADP8860_BLMX3, align 4
  %68 = load %struct.adp8860_backlight_platform_data*, %struct.adp8860_backlight_platform_data** %5, align 8
  %69 = getelementptr inbounds %struct.adp8860_backlight_platform_data, %struct.adp8860_backlight_platform_data* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @adp8860_write(%struct.i2c_client* %66, i32 %67, i32 %70)
  %72 = load i32, i32* %6, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %6, align 4
  %74 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %75 = load i32, i32* @ADP8860_BLDM3, align 4
  %76 = load %struct.adp8860_backlight_platform_data*, %struct.adp8860_backlight_platform_data** %5, align 8
  %77 = getelementptr inbounds %struct.adp8860_backlight_platform_data, %struct.adp8860_backlight_platform_data* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @adp8860_write(%struct.i2c_client* %74, i32 %75, i32 %78)
  %80 = load i32, i32* %6, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %6, align 4
  %82 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %83 = load i32, i32* @ADP8860_L2_TRP, align 4
  %84 = load %struct.adp8860_backlight_platform_data*, %struct.adp8860_backlight_platform_data** %5, align 8
  %85 = getelementptr inbounds %struct.adp8860_backlight_platform_data, %struct.adp8860_backlight_platform_data* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @adp8860_write(%struct.i2c_client* %82, i32 %83, i32 %86)
  %88 = load i32, i32* %6, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %6, align 4
  %90 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %91 = load i32, i32* @ADP8860_L2_HYS, align 4
  %92 = load %struct.adp8860_backlight_platform_data*, %struct.adp8860_backlight_platform_data** %5, align 8
  %93 = getelementptr inbounds %struct.adp8860_backlight_platform_data, %struct.adp8860_backlight_platform_data* %92, i32 0, i32 8
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @adp8860_write(%struct.i2c_client* %90, i32 %91, i32 %94)
  %96 = load i32, i32* %6, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %6, align 4
  %98 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %99 = load i32, i32* @ADP8860_L3_TRP, align 4
  %100 = load %struct.adp8860_backlight_platform_data*, %struct.adp8860_backlight_platform_data** %5, align 8
  %101 = getelementptr inbounds %struct.adp8860_backlight_platform_data, %struct.adp8860_backlight_platform_data* %100, i32 0, i32 9
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @adp8860_write(%struct.i2c_client* %98, i32 %99, i32 %102)
  %104 = load i32, i32* %6, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %6, align 4
  %106 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %107 = load i32, i32* @ADP8860_L3_HYS, align 4
  %108 = load %struct.adp8860_backlight_platform_data*, %struct.adp8860_backlight_platform_data** %5, align 8
  %109 = getelementptr inbounds %struct.adp8860_backlight_platform_data, %struct.adp8860_backlight_platform_data* %108, i32 0, i32 10
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @adp8860_write(%struct.i2c_client* %106, i32 %107, i32 %110)
  %112 = load i32, i32* %6, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %6, align 4
  %114 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %115 = load i32, i32* @ADP8860_CCFG, align 4
  %116 = load i32, i32* @L2_EN, align 4
  %117 = load i32, i32* @L3_EN, align 4
  %118 = or i32 %116, %117
  %119 = load %struct.adp8860_backlight_platform_data*, %struct.adp8860_backlight_platform_data** %5, align 8
  %120 = getelementptr inbounds %struct.adp8860_backlight_platform_data, %struct.adp8860_backlight_platform_data* %119, i32 0, i32 14
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @ALS_CCFG_VAL(i32 %121)
  %123 = or i32 %118, %122
  %124 = call i32 @adp8860_write(%struct.i2c_client* %114, i32 %115, i32 %123)
  %125 = load i32, i32* %6, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %6, align 4
  br label %127

127:                                              ; preds = %44, %1
  %128 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %129 = load i32, i32* @ADP8860_CFGR, align 4
  %130 = load %struct.adp8860_backlight_platform_data*, %struct.adp8860_backlight_platform_data** %5, align 8
  %131 = getelementptr inbounds %struct.adp8860_backlight_platform_data, %struct.adp8860_backlight_platform_data* %130, i32 0, i32 13
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @BL_CFGR_VAL(i32 %132, i32 0)
  %134 = call i32 @adp8860_write(%struct.i2c_client* %128, i32 %129, i32 %133)
  %135 = load i32, i32* %6, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %6, align 4
  %137 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %138 = load i32, i32* @ADP8860_BLFR, align 4
  %139 = load %struct.adp8860_backlight_platform_data*, %struct.adp8860_backlight_platform_data** %5, align 8
  %140 = getelementptr inbounds %struct.adp8860_backlight_platform_data, %struct.adp8860_backlight_platform_data* %139, i32 0, i32 12
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.adp8860_backlight_platform_data*, %struct.adp8860_backlight_platform_data** %5, align 8
  %143 = getelementptr inbounds %struct.adp8860_backlight_platform_data, %struct.adp8860_backlight_platform_data* %142, i32 0, i32 11
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @FADE_VAL(i32 %141, i32 %144)
  %146 = call i32 @adp8860_write(%struct.i2c_client* %137, i32 %138, i32 %145)
  %147 = load i32, i32* %6, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %6, align 4
  %149 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %150 = load i32, i32* @ADP8860_MDCR, align 4
  %151 = load i32, i32* @BLEN, align 4
  %152 = load i32, i32* @DIM_EN, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @NSTBY, align 4
  %155 = or i32 %153, %154
  %156 = load %struct.adp8860_bl*, %struct.adp8860_bl** %3, align 8
  %157 = getelementptr inbounds %struct.adp8860_bl, %struct.adp8860_bl* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %127
  %161 = load i32, i32* @GDWN_DIS, align 4
  br label %163

162:                                              ; preds = %127
  br label %163

163:                                              ; preds = %162, %160
  %164 = phi i32 [ %161, %160 ], [ 0, %162 ]
  %165 = or i32 %155, %164
  %166 = call i32 @adp8860_set_bits(%struct.i2c_client* %149, i32 %150, i32 %165)
  %167 = load i32, i32* %6, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %6, align 4
  %169 = load i32, i32* %6, align 4
  ret i32 %169
}

declare dso_local %struct.adp8860_bl* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @adp8860_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @ALS_CCFG_VAL(i32) #1

declare dso_local i32 @BL_CFGR_VAL(i32, i32) #1

declare dso_local i32 @FADE_VAL(i32, i32) #1

declare dso_local i32 @adp8860_set_bits(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
