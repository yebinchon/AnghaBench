; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_host.c_host_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_host.c_host_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci_hdrc = type { %struct.TYPE_10__*, %struct.usb_hcd*, %struct.usb_otg, %struct.TYPE_11__*, i32, %struct.TYPE_8__, i64, i64 }
%struct.TYPE_10__ = type { i32, i32*, i32 (%struct.ci_hdrc*, i32)*, i64, i32, i32, i32 }
%struct.usb_hcd = type { i32, i32, %struct.TYPE_9__, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.usb_otg = type { %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.ehci_hcd = type { i64, i32, i32, i32, i32 }
%struct.ehci_ci_priv = type { i32* }

@ENODEV = common dso_local global i32 0, align 4
@ci_ehci_hc_driver = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CI_HDRC_TURN_VBUS_EARLY_ON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to enable vbus regulator, ret=%d\0A\00", align 1
@CI_HDRC_IMX_IS_HSIC = common dso_local global i32 0, align 4
@CI_HDRC_IMX_HSIC_ACTIVE_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ci_hdrc*)* @host_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @host_start(%struct.ci_hdrc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ci_hdrc*, align 8
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca %struct.ehci_hcd*, align 8
  %6 = alloca %struct.ehci_ci_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_otg*, align 8
  store %struct.ci_hdrc* %0, %struct.ci_hdrc** %3, align 8
  %9 = call i64 (...) @usb_disabled()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %274

14:                                               ; preds = %1
  %15 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %16 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %15, i32 0, i32 3
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %21 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %20, i32 0, i32 3
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %24 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %23, i32 0, i32 3
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = call i32 @dev_name(%struct.TYPE_11__* %25)
  %27 = call %struct.usb_hcd* @__usb_create_hcd(i32* @ci_ehci_hc_driver, i32 %19, %struct.TYPE_11__* %22, i32 %26, i32* null)
  store %struct.usb_hcd* %27, %struct.usb_hcd** %4, align 8
  %28 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %29 = icmp ne %struct.usb_hcd* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %14
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %274

33:                                               ; preds = %14
  %34 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %35 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %34, i32 0, i32 3
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %38 = call i32 @dev_set_drvdata(%struct.TYPE_11__* %36, %struct.ci_hdrc* %37)
  %39 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %40 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %44 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %43, i32 0, i32 8
  store i32 %42, i32* %44, align 8
  %45 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %46 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %50 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %49, i32 0, i32 7
  store i32 %48, i32* %50, align 4
  %51 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %52 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %56 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %55, i32 0, i32 6
  store i32 %54, i32* %56, align 8
  %57 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %58 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %60 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %59, i32 0, i32 0
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %65 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 4
  %66 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %67 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %66, i32 0, i32 0
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %72 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 8
  %73 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %74 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %73, i32 0, i32 7
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %33
  %78 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %79 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %78, i32 0, i32 6
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %77, %33
  %83 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %84 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %83, i32 0, i32 1
  store i32 1, i32* %84, align 4
  %85 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %86 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %85, i32 0, i32 6
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %82
  %90 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %91 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %90, i32 0, i32 6
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %94 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %93, i32 0, i32 3
  store i64 %92, i64* %94, align 8
  br label %95

95:                                               ; preds = %89, %82
  br label %96

96:                                               ; preds = %95, %77
  %97 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %98 = call %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd* %97)
  store %struct.ehci_hcd* %98, %struct.ehci_hcd** %5, align 8
  %99 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %100 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %99, i32 0, i32 5
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %104 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %103, i32 0, i32 4
  store i32 %102, i32* %104, align 4
  %105 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %106 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %105, i32 0, i32 5
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %110 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 8
  %111 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %112 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %111, i32 0, i32 5
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %116 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 4
  %117 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %118 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %121 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 8
  %122 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %123 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = inttoptr i64 %124 to %struct.ehci_ci_priv*
  store %struct.ehci_ci_priv* %125, %struct.ehci_ci_priv** %6, align 8
  %126 = load %struct.ehci_ci_priv*, %struct.ehci_ci_priv** %6, align 8
  %127 = getelementptr inbounds %struct.ehci_ci_priv, %struct.ehci_ci_priv* %126, i32 0, i32 0
  store i32* null, i32** %127, align 8
  %128 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %129 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %128, i32 0, i32 0
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %172

134:                                              ; preds = %96
  %135 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %136 = call i64 @ci_otg_is_fsm_mode(%struct.ci_hdrc* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %172, label %138

138:                                              ; preds = %134
  %139 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %140 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %139, i32 0, i32 0
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @CI_HDRC_TURN_VBUS_EARLY_ON, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %163

147:                                              ; preds = %138
  %148 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %149 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %148, i32 0, i32 0
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = call i32 @regulator_enable(i32* %152)
  store i32 %153, i32* %7, align 4
  %154 = load i32, i32* %7, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %147
  %157 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %158 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %157, i32 0, i32 3
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %158, align 8
  %160 = load i32, i32* %7, align 4
  %161 = call i32 @dev_err(%struct.TYPE_11__* %159, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %160)
  br label %270

162:                                              ; preds = %147
  br label %171

163:                                              ; preds = %138
  %164 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %165 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %164, i32 0, i32 0
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = load %struct.ehci_ci_priv*, %struct.ehci_ci_priv** %6, align 8
  %170 = getelementptr inbounds %struct.ehci_ci_priv, %struct.ehci_ci_priv* %169, i32 0, i32 0
  store i32* %168, i32** %170, align 8
  br label %171

171:                                              ; preds = %163, %162
  br label %172

172:                                              ; preds = %171, %134, %96
  %173 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %174 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %173, i32 0, i32 0
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %191

179:                                              ; preds = %172
  %180 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %181 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %180, i32 0, i32 0
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %186 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %185, i32 0, i32 0
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  %190 = call i32 @pinctrl_select_state(i32 %184, i64 %189)
  br label %191

191:                                              ; preds = %179, %172
  %192 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %193 = call i32 @usb_add_hcd(%struct.usb_hcd* %192, i32 0, i32 0)
  store i32 %193, i32* %7, align 4
  %194 = load i32, i32* %7, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %191
  br label %242

197:                                              ; preds = %191
  %198 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %199 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %198, i32 0, i32 2
  store %struct.usb_otg* %199, %struct.usb_otg** %8, align 8
  %200 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %201 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %202 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %201, i32 0, i32 1
  store %struct.usb_hcd* %200, %struct.usb_hcd** %202, align 8
  %203 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %204 = call i64 @ci_otg_is_fsm_mode(%struct.ci_hdrc* %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %214

206:                                              ; preds = %197
  %207 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %208 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %207, i32 0, i32 2
  %209 = load %struct.usb_otg*, %struct.usb_otg** %8, align 8
  %210 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %209, i32 0, i32 0
  store %struct.TYPE_9__* %208, %struct.TYPE_9__** %210, align 8
  %211 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %212 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 0
  store i32 1, i32* %213, align 8
  br label %214

214:                                              ; preds = %206, %197
  %215 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %216 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %215, i32 0, i32 0
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 2
  %219 = load i32 (%struct.ci_hdrc*, i32)*, i32 (%struct.ci_hdrc*, i32)** %218, align 8
  %220 = icmp ne i32 (%struct.ci_hdrc*, i32)* %219, null
  br i1 %220, label %221, label %239

221:                                              ; preds = %214
  %222 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %223 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %222, i32 0, i32 0
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @CI_HDRC_IMX_IS_HSIC, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %239

230:                                              ; preds = %221
  %231 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %232 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %231, i32 0, i32 0
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 2
  %235 = load i32 (%struct.ci_hdrc*, i32)*, i32 (%struct.ci_hdrc*, i32)** %234, align 8
  %236 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %237 = load i32, i32* @CI_HDRC_IMX_HSIC_ACTIVE_EVENT, align 4
  %238 = call i32 %235(%struct.ci_hdrc* %236, i32 %237)
  br label %239

239:                                              ; preds = %230, %221, %214
  br label %240

240:                                              ; preds = %239
  %241 = load i32, i32* %7, align 4
  store i32 %241, i32* %2, align 4
  br label %274

242:                                              ; preds = %196
  %243 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %244 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %243, i32 0, i32 0
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 1
  %247 = load i32*, i32** %246, align 8
  %248 = icmp ne i32* %247, null
  br i1 %248, label %249, label %269

249:                                              ; preds = %242
  %250 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %251 = call i64 @ci_otg_is_fsm_mode(%struct.ci_hdrc* %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %269, label %253

253:                                              ; preds = %249
  %254 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %255 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %254, i32 0, i32 0
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* @CI_HDRC_TURN_VBUS_EARLY_ON, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %269

262:                                              ; preds = %253
  %263 = load %struct.ci_hdrc*, %struct.ci_hdrc** %3, align 8
  %264 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %263, i32 0, i32 0
  %265 = load %struct.TYPE_10__*, %struct.TYPE_10__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 1
  %267 = load i32*, i32** %266, align 8
  %268 = call i32 @regulator_disable(i32* %267)
  br label %269

269:                                              ; preds = %262, %253, %249, %242
  br label %270

270:                                              ; preds = %269, %156
  %271 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %272 = call i32 @usb_put_hcd(%struct.usb_hcd* %271)
  %273 = load i32, i32* %7, align 4
  store i32 %273, i32* %2, align 4
  br label %274

274:                                              ; preds = %270, %240, %30, %11
  %275 = load i32, i32* %2, align 4
  ret i32 %275
}

declare dso_local i64 @usb_disabled(...) #1

declare dso_local %struct.usb_hcd* @__usb_create_hcd(i32*, i32, %struct.TYPE_11__*, i32, i32*) #1

declare dso_local i32 @dev_name(%struct.TYPE_11__*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_11__*, %struct.ci_hdrc*) #1

declare dso_local %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd*) #1

declare dso_local i64 @ci_otg_is_fsm_mode(%struct.ci_hdrc*) #1

declare dso_local i32 @regulator_enable(i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @pinctrl_select_state(i32, i64) #1

declare dso_local i32 @usb_add_hcd(%struct.usb_hcd*, i32, i32) #1

declare dso_local i32 @regulator_disable(i32*) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
