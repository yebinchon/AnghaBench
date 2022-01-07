; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-mtk-sch.c_check_sch_tt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-mtk-sch.c_check_sch_tt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.mu3h_sch_ep_info = type { i64, i32, i32, i32, i32, %struct.mu3h_sch_tt* }
%struct.mu3h_sch_tt = type { i32 }

@ISOC_OUT_EP = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@FS_PAYLOAD_MAX = common dso_local global i32 0, align 4
@ISOC_IN_EP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.mu3h_sch_ep_info*, i32)* @check_sch_tt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_sch_tt(%struct.usb_device* %0, %struct.mu3h_sch_ep_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.mu3h_sch_ep_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mu3h_sch_tt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %5, align 8
  store %struct.mu3h_sch_ep_info* %1, %struct.mu3h_sch_ep_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %18 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %17, i32 0, i32 5
  %19 = load %struct.mu3h_sch_tt*, %struct.mu3h_sch_tt** %18, align 8
  store %struct.mu3h_sch_tt* %19, %struct.mu3h_sch_tt** %8, align 8
  %20 = load i32, i32* %7, align 4
  %21 = srem i32 %20, 8
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = add nsw i32 %22, 1
  %24 = srem i32 %23, 8
  store i32 %24, i32* %10, align 4
  %25 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %26 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ISOC_OUT_EP, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %69

30:                                               ; preds = %3
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %33 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %31, %34
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp eq i32 %37, 7
  br i1 %38, label %45, label %39

39:                                               ; preds = %30
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %40, 6
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* @ERANGE, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %161

45:                                               ; preds = %39, %30
  store i32 0, i32* %15, align 4
  br label %46

46:                                               ; preds = %65, %45
  %47 = load i32, i32* %15, align 4
  %48 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %49 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %46
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %15, align 4
  %55 = add nsw i32 %53, %54
  %56 = load %struct.mu3h_sch_tt*, %struct.mu3h_sch_tt** %8, align 8
  %57 = getelementptr inbounds %struct.mu3h_sch_tt, %struct.mu3h_sch_tt* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @test_bit(i32 %55, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = load i32, i32* @ERANGE, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %161

64:                                               ; preds = %52
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %15, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %15, align 4
  br label %46

68:                                               ; preds = %46
  br label %160

69:                                               ; preds = %3
  %70 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %71 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @FS_PAYLOAD_MAX, align 4
  %74 = call i32 @DIV_ROUND_UP(i32 %72, i32 %73)
  store i32 %74, i32* %16, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp eq i32 %75, 6
  br i1 %76, label %77, label %80

77:                                               ; preds = %69
  %78 = load i32, i32* @ERANGE, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %161

80:                                               ; preds = %69
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 2
  %83 = srem i32 %82, 8
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %16, align 4
  %86 = add nsw i32 %84, %85
  %87 = sub nsw i32 %86, 1
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %14, align 4
  %89 = icmp sgt i32 %88, 7
  br i1 %89, label %90, label %93

90:                                               ; preds = %80
  %91 = load i32, i32* @ERANGE, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %161

93:                                               ; preds = %80
  %94 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %95 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @ISOC_IN_EP, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %93
  %100 = load i32, i32* %14, align 4
  %101 = icmp eq i32 %100, 7
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 1, i32 2
  store i32 %103, i32* %9, align 4
  br label %109

104:                                              ; preds = %93
  %105 = load i32, i32* %10, align 4
  %106 = icmp eq i32 %105, 6
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32 1, i32 2
  store i32 %108, i32* %9, align 4
  br label %109

109:                                              ; preds = %104, %99
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %16, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %16, align 4
  %113 = load i32, i32* %16, align 4
  %114 = icmp sgt i32 %113, 7
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  store i32 7, i32* %16, align 4
  br label %116

116:                                              ; preds = %115, %109
  store i32 0, i32* %15, align 4
  br label %117

117:                                              ; preds = %135, %116
  %118 = load i32, i32* %15, align 4
  %119 = load i32, i32* %16, align 4
  %120 = add nsw i32 %119, 2
  %121 = icmp slt i32 %118, %120
  br i1 %121, label %122, label %138

122:                                              ; preds = %117
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %15, align 4
  %125 = add nsw i32 %123, %124
  %126 = load %struct.mu3h_sch_tt*, %struct.mu3h_sch_tt** %8, align 8
  %127 = getelementptr inbounds %struct.mu3h_sch_tt, %struct.mu3h_sch_tt* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @test_bit(i32 %125, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %122
  %132 = load i32, i32* @ERANGE, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %4, align 4
  br label %161

134:                                              ; preds = %122
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %15, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %15, align 4
  br label %117

138:                                              ; preds = %117
  %139 = load i32, i32* %16, align 4
  %140 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %141 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 8
  %142 = load i32, i32* %16, align 4
  %143 = add nsw i32 %142, 2
  %144 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %145 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 4
  %146 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %147 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %150 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = icmp sgt i32 %148, %151
  br i1 %152, label %153, label %159

153:                                              ; preds = %138
  %154 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %155 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.mu3h_sch_ep_info*, %struct.mu3h_sch_ep_info** %6, align 8
  %158 = getelementptr inbounds %struct.mu3h_sch_ep_info, %struct.mu3h_sch_ep_info* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 4
  br label %159

159:                                              ; preds = %153, %138
  br label %160

160:                                              ; preds = %159, %68
  store i32 0, i32* %4, align 4
  br label %161

161:                                              ; preds = %160, %131, %90, %77, %61, %42
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
