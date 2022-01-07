; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac.c_rtw_sub_pwr_seq_parser.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac.c_rtw_sub_pwr_seq_parser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }
%struct.rtw_pwr_seq_cmd = type { i32, i32, i32, i32, i32, i32, i32 }

@RTW_PWR_CMD_END = common dso_local global i32 0, align 4
@RTW_PWR_ADDR_SDIO = common dso_local global i32 0, align 4
@SDIO_LOCAL_OFFSET = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@RTW_PWR_DELAY_US = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*, i32, i32, %struct.rtw_pwr_seq_cmd*)* @rtw_sub_pwr_seq_parser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_sub_pwr_seq_parser(%struct.rtw_dev* %0, i32 %1, i32 %2, %struct.rtw_pwr_seq_cmd* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtw_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtw_pwr_seq_cmd*, align 8
  %10 = alloca %struct.rtw_pwr_seq_cmd*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.rtw_pwr_seq_cmd* %3, %struct.rtw_pwr_seq_cmd** %9, align 8
  %13 = load %struct.rtw_pwr_seq_cmd*, %struct.rtw_pwr_seq_cmd** %9, align 8
  store %struct.rtw_pwr_seq_cmd* %13, %struct.rtw_pwr_seq_cmd** %10, align 8
  br label %14

14:                                               ; preds = %106, %4
  %15 = load %struct.rtw_pwr_seq_cmd*, %struct.rtw_pwr_seq_cmd** %10, align 8
  %16 = getelementptr inbounds %struct.rtw_pwr_seq_cmd, %struct.rtw_pwr_seq_cmd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @RTW_PWR_CMD_END, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %109

20:                                               ; preds = %14
  %21 = load %struct.rtw_pwr_seq_cmd*, %struct.rtw_pwr_seq_cmd** %10, align 8
  %22 = getelementptr inbounds %struct.rtw_pwr_seq_cmd, %struct.rtw_pwr_seq_cmd* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load %struct.rtw_pwr_seq_cmd*, %struct.rtw_pwr_seq_cmd** %10, align 8
  %29 = getelementptr inbounds %struct.rtw_pwr_seq_cmd, %struct.rtw_pwr_seq_cmd* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27, %20
  br label %106

35:                                               ; preds = %27
  %36 = load %struct.rtw_pwr_seq_cmd*, %struct.rtw_pwr_seq_cmd** %10, align 8
  %37 = getelementptr inbounds %struct.rtw_pwr_seq_cmd, %struct.rtw_pwr_seq_cmd* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %102 [
    i32 128, label %39
    i32 130, label %75
    i32 131, label %84
    i32 129, label %101
  ]

39:                                               ; preds = %35
  %40 = load %struct.rtw_pwr_seq_cmd*, %struct.rtw_pwr_seq_cmd** %10, align 8
  %41 = getelementptr inbounds %struct.rtw_pwr_seq_cmd, %struct.rtw_pwr_seq_cmd* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %11, align 4
  %43 = load %struct.rtw_pwr_seq_cmd*, %struct.rtw_pwr_seq_cmd** %10, align 8
  %44 = getelementptr inbounds %struct.rtw_pwr_seq_cmd, %struct.rtw_pwr_seq_cmd* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @RTW_PWR_ADDR_SDIO, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %39
  %49 = load i32, i32* @SDIO_LOCAL_OFFSET, align 4
  %50 = load i32, i32* %11, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %48, %39
  %53 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @rtw_read8(%struct.rtw_dev* %53, i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = load %struct.rtw_pwr_seq_cmd*, %struct.rtw_pwr_seq_cmd** %10, align 8
  %57 = getelementptr inbounds %struct.rtw_pwr_seq_cmd, %struct.rtw_pwr_seq_cmd* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %12, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %12, align 4
  %62 = load %struct.rtw_pwr_seq_cmd*, %struct.rtw_pwr_seq_cmd** %10, align 8
  %63 = getelementptr inbounds %struct.rtw_pwr_seq_cmd, %struct.rtw_pwr_seq_cmd* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.rtw_pwr_seq_cmd*, %struct.rtw_pwr_seq_cmd** %10, align 8
  %66 = getelementptr inbounds %struct.rtw_pwr_seq_cmd, %struct.rtw_pwr_seq_cmd* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %64, %67
  %69 = load i32, i32* %12, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %12, align 4
  %71 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @rtw_write8(%struct.rtw_dev* %71, i32 %72, i32 %73)
  br label %105

75:                                               ; preds = %35
  %76 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %77 = load %struct.rtw_pwr_seq_cmd*, %struct.rtw_pwr_seq_cmd** %10, align 8
  %78 = call i32 @rtw_pwr_cmd_polling(%struct.rtw_dev* %76, %struct.rtw_pwr_seq_cmd* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i32, i32* @EBUSY, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %5, align 4
  br label %110

83:                                               ; preds = %75
  br label %105

84:                                               ; preds = %35
  %85 = load %struct.rtw_pwr_seq_cmd*, %struct.rtw_pwr_seq_cmd** %10, align 8
  %86 = getelementptr inbounds %struct.rtw_pwr_seq_cmd, %struct.rtw_pwr_seq_cmd* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @RTW_PWR_DELAY_US, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = load %struct.rtw_pwr_seq_cmd*, %struct.rtw_pwr_seq_cmd** %10, align 8
  %92 = getelementptr inbounds %struct.rtw_pwr_seq_cmd, %struct.rtw_pwr_seq_cmd* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @udelay(i32 %93)
  br label %100

95:                                               ; preds = %84
  %96 = load %struct.rtw_pwr_seq_cmd*, %struct.rtw_pwr_seq_cmd** %10, align 8
  %97 = getelementptr inbounds %struct.rtw_pwr_seq_cmd, %struct.rtw_pwr_seq_cmd* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @mdelay(i32 %98)
  br label %100

100:                                              ; preds = %95, %90
  br label %105

101:                                              ; preds = %35
  br label %105

102:                                              ; preds = %35
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %5, align 4
  br label %110

105:                                              ; preds = %101, %100, %83, %52
  br label %106

106:                                              ; preds = %105, %34
  %107 = load %struct.rtw_pwr_seq_cmd*, %struct.rtw_pwr_seq_cmd** %10, align 8
  %108 = getelementptr inbounds %struct.rtw_pwr_seq_cmd, %struct.rtw_pwr_seq_cmd* %107, i32 1
  store %struct.rtw_pwr_seq_cmd* %108, %struct.rtw_pwr_seq_cmd** %10, align 8
  br label %14

109:                                              ; preds = %14
  store i32 0, i32* %5, align 4
  br label %110

110:                                              ; preds = %109, %102, %80
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i32 @rtw_read8(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_write8(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_pwr_cmd_polling(%struct.rtw_dev*, %struct.rtw_pwr_seq_cmd*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
