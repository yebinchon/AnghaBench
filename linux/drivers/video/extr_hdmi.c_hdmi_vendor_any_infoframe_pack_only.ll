; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/extr_hdmi.c_hdmi_vendor_any_infoframe_pack_only.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/extr_hdmi.c_hdmi_vendor_any_infoframe_pack_only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.hdmi_vendor_any_infoframe = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@HDMI_IEEE_OUI = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.hdmi_vendor_any_infoframe*, i8*, i64)* @hdmi_vendor_any_infoframe_pack_only to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_vendor_any_infoframe_pack_only(%union.hdmi_vendor_any_infoframe* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.hdmi_vendor_any_infoframe*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %union.hdmi_vendor_any_infoframe* %0, %union.hdmi_vendor_any_infoframe** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %union.hdmi_vendor_any_infoframe*, %union.hdmi_vendor_any_infoframe** %5, align 8
  %10 = call i32 @hdmi_vendor_any_infoframe_check_only(%union.hdmi_vendor_any_infoframe* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %4, align 4
  br label %31

15:                                               ; preds = %3
  %16 = load %union.hdmi_vendor_any_infoframe*, %union.hdmi_vendor_any_infoframe** %5, align 8
  %17 = bitcast %union.hdmi_vendor_any_infoframe* %16 to %struct.TYPE_2__*
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @HDMI_IEEE_OUI, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %31

25:                                               ; preds = %15
  %26 = load %union.hdmi_vendor_any_infoframe*, %union.hdmi_vendor_any_infoframe** %5, align 8
  %27 = bitcast %union.hdmi_vendor_any_infoframe* %26 to i32*
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @hdmi_vendor_infoframe_pack_only(i32* %27, i8* %28, i64 %29)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %25, %22, %13
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @hdmi_vendor_any_infoframe_check_only(%union.hdmi_vendor_any_infoframe*) #1

declare dso_local i32 @hdmi_vendor_infoframe_pack_only(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
