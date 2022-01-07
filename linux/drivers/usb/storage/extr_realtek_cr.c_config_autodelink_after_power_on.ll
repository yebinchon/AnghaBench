; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_realtek_cr.c_config_autodelink_after_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_realtek_cr.c_config_autodelink_after_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i64 }
%struct.rts51x_chip = type { i32 }

@EIO = common dso_local global i32 0, align 4
@auto_delink_en = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*)* @config_autodelink_after_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_autodelink_after_power_on(%struct.us_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.us_data*, align 8
  %4 = alloca %struct.rts51x_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %3, align 8
  %7 = load %struct.us_data*, %struct.us_data** %3, align 8
  %8 = getelementptr inbounds %struct.us_data, %struct.us_data* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.rts51x_chip*
  store %struct.rts51x_chip* %10, %struct.rts51x_chip** %4, align 8
  %11 = load %struct.rts51x_chip*, %struct.rts51x_chip** %4, align 8
  %12 = call i32 @CHK_AUTO_DELINK(%struct.rts51x_chip* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %111

15:                                               ; preds = %1
  %16 = load %struct.us_data*, %struct.us_data** %3, align 8
  %17 = call i32 @rts51x_read_mem(%struct.us_data* %16, i32 65095, i32* %6, i32 1)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %111

23:                                               ; preds = %15
  %24 = load i64, i64* @auto_delink_en, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %58

26:                                               ; preds = %23
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @CLR_BIT(i32 %27, i32 0)
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @CLR_BIT(i32 %29, i32 1)
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @SET_BIT(i32 %31, i32 2)
  %33 = load %struct.rts51x_chip*, %struct.rts51x_chip** %4, align 8
  %34 = call i64 @CHECK_ID(%struct.rts51x_chip* %33, i32 312, i32 14466)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @CLR_BIT(i32 %37, i32 2)
  br label %39

39:                                               ; preds = %36, %26
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @SET_BIT(i32 %40, i32 7)
  %42 = load %struct.us_data*, %struct.us_data** %3, align 8
  %43 = call i32 @__do_config_autodelink(%struct.us_data* %42, i32* %6, i32 1)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %111

49:                                               ; preds = %39
  %50 = load %struct.us_data*, %struct.us_data** %3, align 8
  %51 = call i32 @enable_oscillator(%struct.us_data* %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.us_data*, %struct.us_data** %3, align 8
  %56 = call i32 @do_config_autodelink(%struct.us_data* %55, i32 1, i32 0)
  br label %57

57:                                               ; preds = %54, %49
  br label %110

58:                                               ; preds = %23
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @SET_BIT(i32 %59, i32 2)
  %61 = load %struct.rts51x_chip*, %struct.rts51x_chip** %4, align 8
  %62 = call i64 @CHECK_ID(%struct.rts51x_chip* %61, i32 312, i32 14466)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @CLR_BIT(i32 %65, i32 2)
  br label %67

67:                                               ; preds = %64, %58
  %68 = load %struct.rts51x_chip*, %struct.rts51x_chip** %4, align 8
  %69 = call i64 @CHECK_ID(%struct.rts51x_chip* %68, i32 345, i32 22665)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load %struct.rts51x_chip*, %struct.rts51x_chip** %4, align 8
  %73 = call i64 @CHECK_ID(%struct.rts51x_chip* %72, i32 312, i32 14464)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %71, %67
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @CLR_BIT(i32 %76, i32 0)
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @CLR_BIT(i32 %78, i32 7)
  br label %80

80:                                               ; preds = %75, %71
  %81 = load %struct.us_data*, %struct.us_data** %3, align 8
  %82 = call i32 @__do_config_autodelink(%struct.us_data* %81, i32* %6, i32 1)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i32, i32* @EIO, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %2, align 4
  br label %111

88:                                               ; preds = %80
  %89 = load %struct.rts51x_chip*, %struct.rts51x_chip** %4, align 8
  %90 = call i64 @CHECK_ID(%struct.rts51x_chip* %89, i32 345, i32 22664)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %109

92:                                               ; preds = %88
  store i32 255, i32* %6, align 4
  %93 = load %struct.us_data*, %struct.us_data** %3, align 8
  %94 = call i32 @rts51x_write_mem(%struct.us_data* %93, i32 65145, i32* %6, i32 1)
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* %5, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load i32, i32* @EIO, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  br label %111

100:                                              ; preds = %92
  store i32 1, i32* %6, align 4
  %101 = load %struct.us_data*, %struct.us_data** %3, align 8
  %102 = call i32 @rts51x_write_mem(%struct.us_data* %101, i32 72, i32* %6, i32 1)
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* %5, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i32, i32* @EIO, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %2, align 4
  br label %111

108:                                              ; preds = %100
  br label %109

109:                                              ; preds = %108, %88
  br label %110

110:                                              ; preds = %109, %57
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %110, %105, %97, %85, %46, %20, %14
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @CHK_AUTO_DELINK(%struct.rts51x_chip*) #1

declare dso_local i32 @rts51x_read_mem(%struct.us_data*, i32, i32*, i32) #1

declare dso_local i32 @CLR_BIT(i32, i32) #1

declare dso_local i32 @SET_BIT(i32, i32) #1

declare dso_local i64 @CHECK_ID(%struct.rts51x_chip*, i32, i32) #1

declare dso_local i32 @__do_config_autodelink(%struct.us_data*, i32*, i32) #1

declare dso_local i32 @enable_oscillator(%struct.us_data*) #1

declare dso_local i32 @do_config_autodelink(%struct.us_data*, i32, i32) #1

declare dso_local i32 @rts51x_write_mem(%struct.us_data*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
