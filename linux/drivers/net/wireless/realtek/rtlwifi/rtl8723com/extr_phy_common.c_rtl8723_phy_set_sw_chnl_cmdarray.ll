; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723com/extr_phy_common.c_rtl8723_phy_set_sw_chnl_cmdarray.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723com/extr_phy_common.c_rtl8723_phy_set_sw_chnl_cmdarray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swchnlcmd = type { i32, i64, i64, i64 }

@.str = private unnamed_addr constant [42 x i8] c"rtl8723-common: cmdtable cannot be NULL.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8723_phy_set_sw_chnl_cmdarray(%struct.swchnlcmd* %0, i64 %1, i64 %2, i32 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.swchnlcmd*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.swchnlcmd*, align 8
  store %struct.swchnlcmd* %0, %struct.swchnlcmd** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %17 = load %struct.swchnlcmd*, %struct.swchnlcmd** %9, align 8
  %18 = icmp eq %struct.swchnlcmd* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %7
  %20 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %42

21:                                               ; preds = %7
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* %11, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 0, i32* %8, align 4
  br label %42

26:                                               ; preds = %21
  %27 = load %struct.swchnlcmd*, %struct.swchnlcmd** %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = getelementptr inbounds %struct.swchnlcmd, %struct.swchnlcmd* %27, i64 %28
  store %struct.swchnlcmd* %29, %struct.swchnlcmd** %16, align 8
  %30 = load i32, i32* %12, align 4
  %31 = load %struct.swchnlcmd*, %struct.swchnlcmd** %16, align 8
  %32 = getelementptr inbounds %struct.swchnlcmd, %struct.swchnlcmd* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i64, i64* %13, align 8
  %34 = load %struct.swchnlcmd*, %struct.swchnlcmd** %16, align 8
  %35 = getelementptr inbounds %struct.swchnlcmd, %struct.swchnlcmd* %34, i32 0, i32 3
  store i64 %33, i64* %35, align 8
  %36 = load i64, i64* %14, align 8
  %37 = load %struct.swchnlcmd*, %struct.swchnlcmd** %16, align 8
  %38 = getelementptr inbounds %struct.swchnlcmd, %struct.swchnlcmd* %37, i32 0, i32 2
  store i64 %36, i64* %38, align 8
  %39 = load i64, i64* %15, align 8
  %40 = load %struct.swchnlcmd*, %struct.swchnlcmd** %16, align 8
  %41 = getelementptr inbounds %struct.swchnlcmd, %struct.swchnlcmd* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  store i32 1, i32* %8, align 4
  br label %42

42:                                               ; preds = %26, %25, %19
  %43 = load i32, i32* %8, align 4
  ret i32 %43
}

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
