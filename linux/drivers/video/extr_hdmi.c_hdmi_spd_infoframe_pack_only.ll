; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/extr_hdmi.c_hdmi_spd_infoframe_pack_only.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/extr_hdmi.c_hdmi_spd_infoframe_pack_only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_spd_infoframe = type { i64, i64, i64, i64, i32, i32 }

@HDMI_INFOFRAME_HEADER_SIZE = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hdmi_spd_infoframe_pack_only(%struct.hdmi_spd_infoframe* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdmi_spd_infoframe*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.hdmi_spd_infoframe* %0, %struct.hdmi_spd_infoframe** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to i64*
  store i64* %12, i64** %8, align 8
  %13 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %5, align 8
  %14 = call i32 @hdmi_spd_infoframe_check_only(%struct.hdmi_spd_infoframe* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %4, align 4
  br label %76

19:                                               ; preds = %3
  %20 = load i64, i64* @HDMI_INFOFRAME_HEADER_SIZE, align 8
  %21 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %5, align 8
  %22 = getelementptr inbounds %struct.hdmi_spd_infoframe, %struct.hdmi_spd_infoframe* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add i64 %20, %23
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %9, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load i32, i32* @ENOSPC, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %76

31:                                               ; preds = %19
  %32 = load i8*, i8** %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @memset(i8* %32, i32 0, i64 %33)
  %35 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %5, align 8
  %36 = getelementptr inbounds %struct.hdmi_spd_infoframe, %struct.hdmi_spd_infoframe* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64*, i64** %8, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %5, align 8
  %41 = getelementptr inbounds %struct.hdmi_spd_infoframe, %struct.hdmi_spd_infoframe* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64*, i64** %8, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 1
  store i64 %42, i64* %44, align 8
  %45 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %5, align 8
  %46 = getelementptr inbounds %struct.hdmi_spd_infoframe, %struct.hdmi_spd_infoframe* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** %8, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 2
  store i64 %47, i64* %49, align 8
  %50 = load i64*, i64** %8, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 3
  store i64 0, i64* %51, align 8
  %52 = load i64, i64* @HDMI_INFOFRAME_HEADER_SIZE, align 8
  %53 = load i64*, i64** %8, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 %52
  store i64* %54, i64** %8, align 8
  %55 = load i64*, i64** %8, align 8
  %56 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %5, align 8
  %57 = getelementptr inbounds %struct.hdmi_spd_infoframe, %struct.hdmi_spd_infoframe* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @memcpy(i64* %55, i32 %58, i32 4)
  %60 = load i64*, i64** %8, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 8
  %62 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %5, align 8
  %63 = getelementptr inbounds %struct.hdmi_spd_infoframe, %struct.hdmi_spd_infoframe* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @memcpy(i64* %61, i32 %64, i32 4)
  %66 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %5, align 8
  %67 = getelementptr inbounds %struct.hdmi_spd_infoframe, %struct.hdmi_spd_infoframe* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load i64*, i64** %8, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 24
  store i64 %68, i64* %70, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = load i64, i64* %9, align 8
  %73 = call i32 @hdmi_infoframe_set_checksum(i8* %71, i64 %72)
  %74 = load i64, i64* %9, align 8
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %31, %28, %17
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @hdmi_spd_infoframe_check_only(%struct.hdmi_spd_infoframe*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

declare dso_local i32 @hdmi_infoframe_set_checksum(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
