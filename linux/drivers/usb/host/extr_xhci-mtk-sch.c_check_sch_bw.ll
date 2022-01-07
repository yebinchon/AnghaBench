; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-mtk-sch.c_check_sch_bw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-mtk-sch.c_check_sch_bw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i64 }
%struct.mu3h_sch_bw_info = type { i32 }
%struct.mu3h_sch_ep_info = type { i64, i64, i64, i64 }

@USB_SPEED_SUPER_PLUS = common dso_local global i64 0, align 8
@SSP_BW_BOUNDARY = common dso_local global i64 0, align 8
@USB_SPEED_SUPER = common dso_local global i64 0, align 8
@SS_BW_BOUNDARY = common dso_local global i64 0, align 8
@HS_BW_BOUNDARY = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.mu3h_sch_bw_info*, %struct.mu3h_sch_ep_info*)* @check_sch_bw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_sch_bw(%struct.usb_device* %0, %struct.mu3h_sch_bw_info* %1, %struct.mu3h_sch_ep_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.mu3h_sch_bw_info*, align 8
  %7 = alloca %struct.mu3h_sch_ep_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %5, align 8
  store %struct.mu3h_sch_bw_info* %1, %struct.mu3h_sch_bw_info** %6, align 8
  store %struct.mu3h_sch_ep_info* %2, %struct.mu3h_sch_ep_info** %7, align 8
  store i32 0, i32* %16, align 4
  %18 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %7, align 8
  %19 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %9, align 8
  store i64 -1, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %21 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %7, align 8
  %22 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %15, align 8
  %24 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %7, align 8
  %25 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %14, align 8
  store i64 0, i64* %8, align 8
  br label %27

27:                                               ; preds = %80, %3
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %83

31:                                               ; preds = %27
  %32 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %33 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @is_fs_or_ls(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %39 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @check_sch_tt(%struct.usb_device* %38, %struct.mu3h_sch_ep_info* %39, i64 %40)
  store i32 %41, i32* %17, align 4
  %42 = load i32, i32* %17, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %80

45:                                               ; preds = %37
  store i32 1, i32* %16, align 4
  br label %46

46:                                               ; preds = %45
  br label %47

47:                                               ; preds = %46, %31
  %48 = load i64, i64* %8, align 8
  %49 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %7, align 8
  %50 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %48, %51
  %53 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %7, align 8
  %54 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  br label %83

58:                                               ; preds = %47
  %59 = load %struct.mu3h_sch_bw_info*, %struct.mu3h_sch_bw_info** %6, align 8
  %60 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %7, align 8
  %61 = load i64, i64* %8, align 8
  %62 = call i64 @get_max_bw(%struct.mu3h_sch_bw_info* %59, %struct.mu3h_sch_ep_info* %60, i64 %61)
  store i64 %62, i64* %12, align 8
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* %12, align 8
  %65 = icmp sgt i64 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %58
  %67 = load i64, i64* %12, align 8
  store i64 %67, i64* %10, align 8
  %68 = load i64, i64* %8, align 8
  store i64 %68, i64* %11, align 8
  %69 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %7, align 8
  %70 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %15, align 8
  %72 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %7, align 8
  %73 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %14, align 8
  br label %75

75:                                               ; preds = %66, %58
  %76 = load i64, i64* %10, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  br label %83

79:                                               ; preds = %75
  br label %80

80:                                               ; preds = %79, %44
  %81 = load i64, i64* %8, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %8, align 8
  br label %27

83:                                               ; preds = %78, %57, %27
  %84 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %85 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @USB_SPEED_SUPER_PLUS, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i64, i64* @SSP_BW_BOUNDARY, align 8
  store i64 %90, i64* %13, align 8
  br label %102

91:                                               ; preds = %83
  %92 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %93 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @USB_SPEED_SUPER, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i64, i64* @SS_BW_BOUNDARY, align 8
  store i64 %98, i64* %13, align 8
  br label %101

99:                                               ; preds = %91
  %100 = load i64, i64* @HS_BW_BOUNDARY, align 8
  store i64 %100, i64* %13, align 8
  br label %101

101:                                              ; preds = %99, %97
  br label %102

102:                                              ; preds = %101, %89
  %103 = load i64, i64* %10, align 8
  %104 = load i64, i64* %13, align 8
  %105 = icmp sgt i64 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = load i32, i32* @ERANGE, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %4, align 4
  br label %138

109:                                              ; preds = %102
  %110 = load i64, i64* %11, align 8
  %111 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %7, align 8
  %112 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %111, i32 0, i32 3
  store i64 %110, i64* %112, align 8
  %113 = load i64, i64* %15, align 8
  %114 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %7, align 8
  %115 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %114, i32 0, i32 1
  store i64 %113, i64* %115, align 8
  %116 = load i64, i64* %14, align 8
  %117 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %7, align 8
  %118 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %117, i32 0, i32 2
  store i64 %116, i64* %118, align 8
  %119 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %120 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i64 @is_fs_or_ls(i64 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %109
  %125 = load i32, i32* %16, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %124
  %128 = load i32, i32* @ERANGE, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %4, align 4
  br label %138

130:                                              ; preds = %124
  %131 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %132 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %7, align 8
  %133 = call i32 @update_sch_tt(%struct.usb_device* %131, %struct.mu3h_sch_ep_info* %132)
  br label %134

134:                                              ; preds = %130, %109
  %135 = load %struct.mu3h_sch_bw_info*, %struct.mu3h_sch_bw_info** %6, align 8
  %136 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %7, align 8
  %137 = call i32 @update_bus_bw(%struct.mu3h_sch_bw_info* %135, %struct.mu3h_sch_ep_info* %136, i32 1)
  store i32 0, i32* %4, align 4
  br label %138

138:                                              ; preds = %134, %127, %106
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i64 @is_fs_or_ls(i64) #1

declare dso_local i32 @check_sch_tt(%struct.usb_device*, %struct.mu3h_sch_ep_info*, i64) #1

declare dso_local i64 @get_max_bw(%struct.mu3h_sch_bw_info*, %struct.mu3h_sch_ep_info*, i64) #1

declare dso_local i32 @update_sch_tt(%struct.usb_device*, %struct.mu3h_sch_ep_info*) #1

declare dso_local i32 @update_bus_bw(%struct.mu3h_sch_bw_info*, %struct.mu3h_sch_ep_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
