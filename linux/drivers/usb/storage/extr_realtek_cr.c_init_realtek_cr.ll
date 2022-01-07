; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_realtek_cr.c_init_realtek_cr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_realtek_cr.c_init_realtek_cr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32, %struct.rts51x_chip*, i32 }
%struct.rts51x_chip = type { i32, i32, %struct.rts51x_chip*, %struct.us_data* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@realtek_cr_destructor = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"chip->max_lun = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"chip->flag = 0x%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ss_en = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*)* @init_realtek_cr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_realtek_cr(%struct.us_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.us_data*, align 8
  %4 = alloca %struct.rts51x_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i8* @kzalloc(i32 24, i32 %8)
  %10 = bitcast i8* %9 to %struct.rts51x_chip*
  store %struct.rts51x_chip* %10, %struct.rts51x_chip** %4, align 8
  %11 = load %struct.rts51x_chip*, %struct.rts51x_chip** %4, align 8
  %12 = icmp ne %struct.rts51x_chip* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %140

16:                                               ; preds = %1
  %17 = load %struct.rts51x_chip*, %struct.rts51x_chip** %4, align 8
  %18 = load %struct.us_data*, %struct.us_data** %3, align 8
  %19 = getelementptr inbounds %struct.us_data, %struct.us_data* %18, i32 0, i32 1
  store %struct.rts51x_chip* %17, %struct.rts51x_chip** %19, align 8
  %20 = load i32, i32* @realtek_cr_destructor, align 4
  %21 = load %struct.us_data*, %struct.us_data** %3, align 8
  %22 = getelementptr inbounds %struct.us_data, %struct.us_data* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.us_data*, %struct.us_data** %3, align 8
  %24 = call i32 @rts51x_get_max_lun(%struct.us_data* %23)
  %25 = load %struct.rts51x_chip*, %struct.rts51x_chip** %4, align 8
  %26 = getelementptr inbounds %struct.rts51x_chip, %struct.rts51x_chip* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.us_data*, %struct.us_data** %3, align 8
  %28 = getelementptr inbounds %struct.us_data, %struct.us_data* %27, i32 0, i32 0
  store i32 %24, i32* %28, align 8
  %29 = load %struct.us_data*, %struct.us_data** %3, align 8
  %30 = load %struct.rts51x_chip*, %struct.rts51x_chip** %4, align 8
  %31 = getelementptr inbounds %struct.rts51x_chip, %struct.rts51x_chip* %30, i32 0, i32 3
  store %struct.us_data* %29, %struct.us_data** %31, align 8
  %32 = load %struct.us_data*, %struct.us_data** %3, align 8
  %33 = load %struct.rts51x_chip*, %struct.rts51x_chip** %4, align 8
  %34 = getelementptr inbounds %struct.rts51x_chip, %struct.rts51x_chip* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @usb_stor_dbg(%struct.us_data* %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.rts51x_chip*, %struct.rts51x_chip** %4, align 8
  %38 = getelementptr inbounds %struct.rts51x_chip, %struct.rts51x_chip* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 4
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i8* @kzalloc(i32 %44, i32 %45)
  %47 = bitcast i8* %46 to %struct.rts51x_chip*
  %48 = load %struct.rts51x_chip*, %struct.rts51x_chip** %4, align 8
  %49 = getelementptr inbounds %struct.rts51x_chip, %struct.rts51x_chip* %48, i32 0, i32 2
  store %struct.rts51x_chip* %47, %struct.rts51x_chip** %49, align 8
  %50 = load %struct.rts51x_chip*, %struct.rts51x_chip** %4, align 8
  %51 = getelementptr inbounds %struct.rts51x_chip, %struct.rts51x_chip* %50, i32 0, i32 2
  %52 = load %struct.rts51x_chip*, %struct.rts51x_chip** %51, align 8
  %53 = icmp ne %struct.rts51x_chip* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %16
  br label %121

55:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %70, %55
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.rts51x_chip*, %struct.rts51x_chip** %4, align 8
  %59 = getelementptr inbounds %struct.rts51x_chip, %struct.rts51x_chip* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp sle i32 %57, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %56
  %63 = load %struct.us_data*, %struct.us_data** %3, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @rts51x_check_status(%struct.us_data* %63, i32 %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %121

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %56

73:                                               ; preds = %56
  %74 = load %struct.rts51x_chip*, %struct.rts51x_chip** %4, align 8
  %75 = call i64 @CHECK_PID(%struct.rts51x_chip* %74, i32 312)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %73
  %78 = load %struct.rts51x_chip*, %struct.rts51x_chip** %4, align 8
  %79 = call i64 @CHECK_PID(%struct.rts51x_chip* %78, i32 344)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load %struct.rts51x_chip*, %struct.rts51x_chip** %4, align 8
  %83 = call i64 @CHECK_PID(%struct.rts51x_chip* %82, i32 345)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %113

85:                                               ; preds = %81, %77, %73
  %86 = load %struct.rts51x_chip*, %struct.rts51x_chip** %4, align 8
  %87 = call i64 @CHECK_FW_VER(%struct.rts51x_chip* %86, i32 22664)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %85
  %90 = load %struct.rts51x_chip*, %struct.rts51x_chip** %4, align 8
  %91 = call i64 @CHECK_FW_VER(%struct.rts51x_chip* %90, i32 22665)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = load %struct.rts51x_chip*, %struct.rts51x_chip** %4, align 8
  %95 = call i64 @CHECK_FW_VER(%struct.rts51x_chip* %94, i32 22785)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %93, %89, %85
  %98 = load %struct.rts51x_chip*, %struct.rts51x_chip** %4, align 8
  %99 = call i32 @SET_AUTO_DELINK(%struct.rts51x_chip* %98)
  br label %100

100:                                              ; preds = %97, %93
  %101 = load %struct.rts51x_chip*, %struct.rts51x_chip** %4, align 8
  %102 = call i32 @STATUS_LEN(%struct.rts51x_chip* %101)
  %103 = icmp eq i32 %102, 16
  br i1 %103, label %104, label %112

104:                                              ; preds = %100
  %105 = load %struct.rts51x_chip*, %struct.rts51x_chip** %4, align 8
  %106 = call i64 @SUPPORT_AUTO_DELINK(%struct.rts51x_chip* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load %struct.rts51x_chip*, %struct.rts51x_chip** %4, align 8
  %110 = call i32 @SET_AUTO_DELINK(%struct.rts51x_chip* %109)
  br label %111

111:                                              ; preds = %108, %104
  br label %112

112:                                              ; preds = %111, %100
  br label %113

113:                                              ; preds = %112, %81
  %114 = load %struct.us_data*, %struct.us_data** %3, align 8
  %115 = load %struct.rts51x_chip*, %struct.rts51x_chip** %4, align 8
  %116 = getelementptr inbounds %struct.rts51x_chip, %struct.rts51x_chip* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @usb_stor_dbg(%struct.us_data* %114, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %117)
  %119 = load %struct.us_data*, %struct.us_data** %3, align 8
  %120 = call i32 @config_autodelink_after_power_on(%struct.us_data* %119)
  store i32 0, i32* %2, align 4
  br label %140

121:                                              ; preds = %68, %54
  %122 = load %struct.us_data*, %struct.us_data** %3, align 8
  %123 = getelementptr inbounds %struct.us_data, %struct.us_data* %122, i32 0, i32 1
  %124 = load %struct.rts51x_chip*, %struct.rts51x_chip** %123, align 8
  %125 = icmp ne %struct.rts51x_chip* %124, null
  br i1 %125, label %126, label %137

126:                                              ; preds = %121
  %127 = load %struct.rts51x_chip*, %struct.rts51x_chip** %4, align 8
  %128 = getelementptr inbounds %struct.rts51x_chip, %struct.rts51x_chip* %127, i32 0, i32 2
  %129 = load %struct.rts51x_chip*, %struct.rts51x_chip** %128, align 8
  %130 = call i32 @kfree(%struct.rts51x_chip* %129)
  %131 = load %struct.us_data*, %struct.us_data** %3, align 8
  %132 = getelementptr inbounds %struct.us_data, %struct.us_data* %131, i32 0, i32 1
  %133 = load %struct.rts51x_chip*, %struct.rts51x_chip** %132, align 8
  %134 = call i32 @kfree(%struct.rts51x_chip* %133)
  %135 = load %struct.us_data*, %struct.us_data** %3, align 8
  %136 = getelementptr inbounds %struct.us_data, %struct.us_data* %135, i32 0, i32 1
  store %struct.rts51x_chip* null, %struct.rts51x_chip** %136, align 8
  br label %137

137:                                              ; preds = %126, %121
  %138 = load i32, i32* @EIO, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %2, align 4
  br label %140

140:                                              ; preds = %137, %113, %13
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @rts51x_get_max_lun(%struct.us_data*) #1

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, i32) #1

declare dso_local i32 @rts51x_check_status(%struct.us_data*, i32) #1

declare dso_local i64 @CHECK_PID(%struct.rts51x_chip*, i32) #1

declare dso_local i64 @CHECK_FW_VER(%struct.rts51x_chip*, i32) #1

declare dso_local i32 @SET_AUTO_DELINK(%struct.rts51x_chip*) #1

declare dso_local i32 @STATUS_LEN(%struct.rts51x_chip*) #1

declare dso_local i64 @SUPPORT_AUTO_DELINK(%struct.rts51x_chip*) #1

declare dso_local i32 @config_autodelink_after_power_on(%struct.us_data*) #1

declare dso_local i32 @kfree(%struct.rts51x_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
