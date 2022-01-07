; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/extr_hdmi.c_hdmi_spd_infoframe_unpack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/extr_hdmi.c_hdmi_spd_infoframe_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_spd_infoframe = type { i32 }

@SPD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HDMI_INFOFRAME_TYPE_SPD = common dso_local global i32 0, align 4
@HDMI_SPD_INFOFRAME_SIZE = common dso_local global i32 0, align 4
@HDMI_INFOFRAME_HEADER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdmi_spd_infoframe*, i8*, i64)* @hdmi_spd_infoframe_unpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_spd_infoframe_unpack(%struct.hdmi_spd_infoframe* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdmi_spd_infoframe*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.hdmi_spd_infoframe* %0, %struct.hdmi_spd_infoframe** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %8, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i32, i32* @SPD, align 4
  %14 = call i64 @HDMI_INFOFRAME_SIZE(i32 %13)
  %15 = icmp ult i64 %12, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %68

19:                                               ; preds = %3
  %20 = load i32*, i32** %8, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @HDMI_INFOFRAME_TYPE_SPD, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %36, label %25

25:                                               ; preds = %19
  %26 = load i32*, i32** %8, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %36, label %30

30:                                               ; preds = %25
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @HDMI_SPD_INFOFRAME_SIZE, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30, %25, %19
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %68

39:                                               ; preds = %30
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* @SPD, align 4
  %42 = call i64 @HDMI_INFOFRAME_SIZE(i32 %41)
  %43 = call i64 @hdmi_infoframe_checksum(i8* %40, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %68

48:                                               ; preds = %39
  %49 = load i32, i32* @HDMI_INFOFRAME_HEADER_SIZE, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32* %52, i32** %8, align 8
  %53 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %5, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 8
  %57 = call i32 @hdmi_spd_infoframe_init(%struct.hdmi_spd_infoframe* %53, i32* %54, i32* %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %4, align 4
  br label %68

62:                                               ; preds = %48
  %63 = load i32*, i32** %8, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 24
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %5, align 8
  %67 = getelementptr inbounds %struct.hdmi_spd_infoframe, %struct.hdmi_spd_infoframe* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %62, %60, %45, %36, %16
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i64 @HDMI_INFOFRAME_SIZE(i32) #1

declare dso_local i64 @hdmi_infoframe_checksum(i8*, i64) #1

declare dso_local i32 @hdmi_spd_infoframe_init(%struct.hdmi_spd_infoframe*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
