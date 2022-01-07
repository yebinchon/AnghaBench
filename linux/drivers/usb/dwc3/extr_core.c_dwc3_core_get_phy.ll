; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_core.c_dwc3_core_get_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_core.c_dwc3_core_get_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i32*, i32*, i32*, i32*, %struct.device* }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"usb-phy\00", align 1
@USB_PHY_TYPE_USB2 = common dso_local global i32 0, align 4
@USB_PHY_TYPE_USB3 = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"no usb2 phy configured\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"no usb3 phy configured\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"usb2-phy\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"usb3-phy\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc3*)* @dwc3_core_get_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_core_get_phy(%struct.dwc3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwc3*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  store %struct.dwc3* %0, %struct.dwc3** %3, align 8
  %7 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %8 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %7, i32 0, i32 4
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %5, align 8
  %13 = load %struct.device_node*, %struct.device_node** %5, align 8
  %14 = icmp ne %struct.device_node* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call i8* @devm_usb_get_phy_by_phandle(%struct.device* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  %18 = bitcast i8* %17 to i32*
  %19 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %20 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %19, i32 0, i32 3
  store i32* %18, i32** %20, align 8
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = call i8* @devm_usb_get_phy_by_phandle(%struct.device* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 1)
  %23 = bitcast i8* %22 to i32*
  %24 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %25 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %24, i32 0, i32 2
  store i32* %23, i32** %25, align 8
  br label %39

26:                                               ; preds = %1
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = load i32, i32* @USB_PHY_TYPE_USB2, align 4
  %29 = call i8* @devm_usb_get_phy(%struct.device* %27, i32 %28)
  %30 = bitcast i8* %29 to i32*
  %31 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %32 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %31, i32 0, i32 3
  store i32* %30, i32** %32, align 8
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = load i32, i32* @USB_PHY_TYPE_USB3, align 4
  %35 = call i8* @devm_usb_get_phy(%struct.device* %33, i32 %34)
  %36 = bitcast i8* %35 to i32*
  %37 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %38 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %37, i32 0, i32 2
  store i32* %36, i32** %38, align 8
  br label %39

39:                                               ; preds = %26, %15
  %40 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %41 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = call i64 @IS_ERR(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %74

45:                                               ; preds = %39
  %46 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %47 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @PTR_ERR(i32* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @ENXIO, align 4
  %52 = sub nsw i32 0, %51
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %59, label %54

54:                                               ; preds = %45
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %54, %45
  %60 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %61 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %60, i32 0, i32 3
  store i32* null, i32** %61, align 8
  br label %73

62:                                               ; preds = %54
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @EPROBE_DEFER, align 4
  %65 = sub nsw i32 0, %64
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %2, align 4
  br label %190

69:                                               ; preds = %62
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = call i32 @dev_err(%struct.device* %70, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %2, align 4
  br label %190

73:                                               ; preds = %59
  br label %74

74:                                               ; preds = %73, %39
  %75 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %76 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = call i64 @IS_ERR(i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %109

80:                                               ; preds = %74
  %81 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %82 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @PTR_ERR(i32* %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @ENXIO, align 4
  %87 = sub nsw i32 0, %86
  %88 = icmp eq i32 %85, %87
  br i1 %88, label %94, label %89

89:                                               ; preds = %80
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @ENODEV, align 4
  %92 = sub nsw i32 0, %91
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %89, %80
  %95 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %96 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %95, i32 0, i32 2
  store i32* null, i32** %96, align 8
  br label %108

97:                                               ; preds = %89
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @EPROBE_DEFER, align 4
  %100 = sub nsw i32 0, %99
  %101 = icmp eq i32 %98, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = load i32, i32* %6, align 4
  store i32 %103, i32* %2, align 4
  br label %190

104:                                              ; preds = %97
  %105 = load %struct.device*, %struct.device** %4, align 8
  %106 = call i32 @dev_err(%struct.device* %105, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %2, align 4
  br label %190

108:                                              ; preds = %94
  br label %109

109:                                              ; preds = %108, %74
  %110 = load %struct.device*, %struct.device** %4, align 8
  %111 = call i8* @devm_phy_get(%struct.device* %110, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %112 = bitcast i8* %111 to i32*
  %113 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %114 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %113, i32 0, i32 1
  store i32* %112, i32** %114, align 8
  %115 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %116 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = call i64 @IS_ERR(i32* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %149

120:                                              ; preds = %109
  %121 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %122 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @PTR_ERR(i32* %123)
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* @ENOSYS, align 4
  %127 = sub nsw i32 0, %126
  %128 = icmp eq i32 %125, %127
  br i1 %128, label %134, label %129

129:                                              ; preds = %120
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* @ENODEV, align 4
  %132 = sub nsw i32 0, %131
  %133 = icmp eq i32 %130, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %129, %120
  %135 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %136 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %135, i32 0, i32 1
  store i32* null, i32** %136, align 8
  br label %148

137:                                              ; preds = %129
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* @EPROBE_DEFER, align 4
  %140 = sub nsw i32 0, %139
  %141 = icmp eq i32 %138, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %137
  %143 = load i32, i32* %6, align 4
  store i32 %143, i32* %2, align 4
  br label %190

144:                                              ; preds = %137
  %145 = load %struct.device*, %struct.device** %4, align 8
  %146 = call i32 @dev_err(%struct.device* %145, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %147 = load i32, i32* %6, align 4
  store i32 %147, i32* %2, align 4
  br label %190

148:                                              ; preds = %134
  br label %149

149:                                              ; preds = %148, %109
  %150 = load %struct.device*, %struct.device** %4, align 8
  %151 = call i8* @devm_phy_get(%struct.device* %150, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %152 = bitcast i8* %151 to i32*
  %153 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %154 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %153, i32 0, i32 0
  store i32* %152, i32** %154, align 8
  %155 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %156 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = call i64 @IS_ERR(i32* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %189

160:                                              ; preds = %149
  %161 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %162 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = call i32 @PTR_ERR(i32* %163)
  store i32 %164, i32* %6, align 4
  %165 = load i32, i32* %6, align 4
  %166 = load i32, i32* @ENOSYS, align 4
  %167 = sub nsw i32 0, %166
  %168 = icmp eq i32 %165, %167
  br i1 %168, label %174, label %169

169:                                              ; preds = %160
  %170 = load i32, i32* %6, align 4
  %171 = load i32, i32* @ENODEV, align 4
  %172 = sub nsw i32 0, %171
  %173 = icmp eq i32 %170, %172
  br i1 %173, label %174, label %177

174:                                              ; preds = %169, %160
  %175 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %176 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %175, i32 0, i32 0
  store i32* null, i32** %176, align 8
  br label %188

177:                                              ; preds = %169
  %178 = load i32, i32* %6, align 4
  %179 = load i32, i32* @EPROBE_DEFER, align 4
  %180 = sub nsw i32 0, %179
  %181 = icmp eq i32 %178, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %177
  %183 = load i32, i32* %6, align 4
  store i32 %183, i32* %2, align 4
  br label %190

184:                                              ; preds = %177
  %185 = load %struct.device*, %struct.device** %4, align 8
  %186 = call i32 @dev_err(%struct.device* %185, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %187 = load i32, i32* %6, align 4
  store i32 %187, i32* %2, align 4
  br label %190

188:                                              ; preds = %174
  br label %189

189:                                              ; preds = %188, %149
  store i32 0, i32* %2, align 4
  br label %190

190:                                              ; preds = %189, %184, %182, %144, %142, %104, %102, %69, %67
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local i8* @devm_usb_get_phy_by_phandle(%struct.device*, i8*, i32) #1

declare dso_local i8* @devm_usb_get_phy(%struct.device*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i8* @devm_phy_get(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
