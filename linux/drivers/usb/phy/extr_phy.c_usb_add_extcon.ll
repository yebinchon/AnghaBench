; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy.c_usb_add_extcon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy.c_usb_add_extcon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_phy = type { %struct.TYPE_7__, %struct.TYPE_6__*, %struct.TYPE_7__, %struct.extcon_dev*, %struct.extcon_dev*, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32 }
%struct.extcon_dev = type { i32 }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [7 x i8] c"extcon\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"No separate ID extcon device\0A\00", align 1
@EXTCON_USB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"register VBUS notifier failed\0A\00", align 1
@usb_phy_get_charger_type = common dso_local global i64 0, align 8
@EXTCON_CHG_USB_SDP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"register extcon USB SDP failed.\0A\00", align 1
@EXTCON_CHG_USB_CDP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"register extcon USB CDP failed.\0A\00", align 1
@EXTCON_CHG_USB_DCP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"register extcon USB DCP failed.\0A\00", align 1
@EXTCON_CHG_USB_ACA = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"register extcon USB ACA failed.\0A\00", align 1
@EXTCON_USB_HOST = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"register ID notifier failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_phy*)* @usb_add_extcon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_add_extcon(%struct.usb_phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.extcon_dev*, align 8
  store %struct.usb_phy* %0, %struct.usb_phy** %3, align 8
  %6 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %7 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %6, i32 0, i32 1
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @of_property_read_bool(i32 %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %196

13:                                               ; preds = %1
  %14 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %15 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = call i8* @extcon_get_edev_by_phandle(%struct.TYPE_6__* %16, i32 0)
  %18 = bitcast i8* %17 to %struct.extcon_dev*
  %19 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %20 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %19, i32 0, i32 3
  store %struct.extcon_dev* %18, %struct.extcon_dev** %20, align 8
  %21 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %22 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %21, i32 0, i32 3
  %23 = load %struct.extcon_dev*, %struct.extcon_dev** %22, align 8
  %24 = call i64 @IS_ERR(%struct.extcon_dev* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %13
  %27 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %28 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %27, i32 0, i32 3
  %29 = load %struct.extcon_dev*, %struct.extcon_dev** %28, align 8
  %30 = call i32 @PTR_ERR(%struct.extcon_dev* %29)
  store i32 %30, i32* %2, align 4
  br label %206

31:                                               ; preds = %13
  %32 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %33 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %32, i32 0, i32 1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = call i8* @extcon_get_edev_by_phandle(%struct.TYPE_6__* %34, i32 1)
  %36 = bitcast i8* %35 to %struct.extcon_dev*
  %37 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %38 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %37, i32 0, i32 4
  store %struct.extcon_dev* %36, %struct.extcon_dev** %38, align 8
  %39 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %40 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %39, i32 0, i32 4
  %41 = load %struct.extcon_dev*, %struct.extcon_dev** %40, align 8
  %42 = call i64 @IS_ERR(%struct.extcon_dev* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %31
  %45 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %46 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %45, i32 0, i32 4
  store %struct.extcon_dev* null, %struct.extcon_dev** %46, align 8
  %47 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %48 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %47, i32 0, i32 1
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = call i32 @dev_info(%struct.TYPE_6__* %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %44, %31
  %52 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %53 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %52, i32 0, i32 5
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %77

57:                                               ; preds = %51
  %58 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %59 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %58, i32 0, i32 1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %62 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %61, i32 0, i32 3
  %63 = load %struct.extcon_dev*, %struct.extcon_dev** %62, align 8
  %64 = load i32, i32* @EXTCON_USB, align 4
  %65 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %66 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %65, i32 0, i32 5
  %67 = call i32 @devm_extcon_register_notifier(%struct.TYPE_6__* %60, %struct.extcon_dev* %63, i32 %64, %struct.TYPE_7__* %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %57
  %71 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %72 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %71, i32 0, i32 1
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = call i32 @dev_err(%struct.TYPE_6__* %73, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i32, i32* %4, align 4
  store i32 %75, i32* %2, align 4
  br label %206

76:                                               ; preds = %57
  br label %158

77:                                               ; preds = %51
  %78 = load i64, i64* @usb_phy_get_charger_type, align 8
  %79 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %80 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  store i64 %78, i64* %81, align 8
  %82 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %83 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %82, i32 0, i32 1
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %86 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %85, i32 0, i32 3
  %87 = load %struct.extcon_dev*, %struct.extcon_dev** %86, align 8
  %88 = load i32, i32* @EXTCON_CHG_USB_SDP, align 4
  %89 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %90 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %89, i32 0, i32 0
  %91 = call i32 @devm_extcon_register_notifier(%struct.TYPE_6__* %84, %struct.extcon_dev* %87, i32 %88, %struct.TYPE_7__* %90)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %77
  %95 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %96 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %95, i32 0, i32 1
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = call i32 @dev_err(%struct.TYPE_6__* %97, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %99 = load i32, i32* %4, align 4
  store i32 %99, i32* %2, align 4
  br label %206

100:                                              ; preds = %77
  %101 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %102 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %101, i32 0, i32 1
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %105 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %104, i32 0, i32 3
  %106 = load %struct.extcon_dev*, %struct.extcon_dev** %105, align 8
  %107 = load i32, i32* @EXTCON_CHG_USB_CDP, align 4
  %108 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %109 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %108, i32 0, i32 0
  %110 = call i32 @devm_extcon_register_notifier(%struct.TYPE_6__* %103, %struct.extcon_dev* %106, i32 %107, %struct.TYPE_7__* %109)
  store i32 %110, i32* %4, align 4
  %111 = load i32, i32* %4, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %100
  %114 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %115 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %114, i32 0, i32 1
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = call i32 @dev_err(%struct.TYPE_6__* %116, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %118 = load i32, i32* %4, align 4
  store i32 %118, i32* %2, align 4
  br label %206

119:                                              ; preds = %100
  %120 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %121 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %120, i32 0, i32 1
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %124 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %123, i32 0, i32 3
  %125 = load %struct.extcon_dev*, %struct.extcon_dev** %124, align 8
  %126 = load i32, i32* @EXTCON_CHG_USB_DCP, align 4
  %127 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %128 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %127, i32 0, i32 0
  %129 = call i32 @devm_extcon_register_notifier(%struct.TYPE_6__* %122, %struct.extcon_dev* %125, i32 %126, %struct.TYPE_7__* %128)
  store i32 %129, i32* %4, align 4
  %130 = load i32, i32* %4, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %119
  %133 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %134 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %133, i32 0, i32 1
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = call i32 @dev_err(%struct.TYPE_6__* %135, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %137 = load i32, i32* %4, align 4
  store i32 %137, i32* %2, align 4
  br label %206

138:                                              ; preds = %119
  %139 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %140 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %139, i32 0, i32 1
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %143 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %142, i32 0, i32 3
  %144 = load %struct.extcon_dev*, %struct.extcon_dev** %143, align 8
  %145 = load i32, i32* @EXTCON_CHG_USB_ACA, align 4
  %146 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %147 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %146, i32 0, i32 0
  %148 = call i32 @devm_extcon_register_notifier(%struct.TYPE_6__* %141, %struct.extcon_dev* %144, i32 %145, %struct.TYPE_7__* %147)
  store i32 %148, i32* %4, align 4
  %149 = load i32, i32* %4, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %138
  %152 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %153 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %152, i32 0, i32 1
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %153, align 8
  %155 = call i32 @dev_err(%struct.TYPE_6__* %154, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %156 = load i32, i32* %4, align 4
  store i32 %156, i32* %2, align 4
  br label %206

157:                                              ; preds = %138
  br label %158

158:                                              ; preds = %157, %76
  %159 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %160 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %195

164:                                              ; preds = %158
  %165 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %166 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %165, i32 0, i32 4
  %167 = load %struct.extcon_dev*, %struct.extcon_dev** %166, align 8
  %168 = icmp ne %struct.extcon_dev* %167, null
  br i1 %168, label %169, label %173

169:                                              ; preds = %164
  %170 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %171 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %170, i32 0, i32 4
  %172 = load %struct.extcon_dev*, %struct.extcon_dev** %171, align 8
  store %struct.extcon_dev* %172, %struct.extcon_dev** %5, align 8
  br label %177

173:                                              ; preds = %164
  %174 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %175 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %174, i32 0, i32 3
  %176 = load %struct.extcon_dev*, %struct.extcon_dev** %175, align 8
  store %struct.extcon_dev* %176, %struct.extcon_dev** %5, align 8
  br label %177

177:                                              ; preds = %173, %169
  %178 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %179 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %178, i32 0, i32 1
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %179, align 8
  %181 = load %struct.extcon_dev*, %struct.extcon_dev** %5, align 8
  %182 = load i32, i32* @EXTCON_USB_HOST, align 4
  %183 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %184 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %183, i32 0, i32 2
  %185 = call i32 @devm_extcon_register_notifier(%struct.TYPE_6__* %180, %struct.extcon_dev* %181, i32 %182, %struct.TYPE_7__* %184)
  store i32 %185, i32* %4, align 4
  %186 = load i32, i32* %4, align 4
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %177
  %189 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %190 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %189, i32 0, i32 1
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %190, align 8
  %192 = call i32 @dev_err(%struct.TYPE_6__* %191, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %193 = load i32, i32* %4, align 4
  store i32 %193, i32* %2, align 4
  br label %206

194:                                              ; preds = %177
  br label %195

195:                                              ; preds = %194, %158
  br label %196

196:                                              ; preds = %195, %1
  %197 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %198 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %196
  %203 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %204 = call i32 @__usb_phy_get_charger_type(%struct.usb_phy* %203)
  br label %205

205:                                              ; preds = %202, %196
  store i32 0, i32* %2, align 4
  br label %206

206:                                              ; preds = %205, %188, %151, %132, %113, %94, %70, %26
  %207 = load i32, i32* %2, align 4
  ret i32 %207
}

declare dso_local i64 @of_property_read_bool(i32, i8*) #1

declare dso_local i8* @extcon_get_edev_by_phandle(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @IS_ERR(%struct.extcon_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.extcon_dev*) #1

declare dso_local i32 @dev_info(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @devm_extcon_register_notifier(%struct.TYPE_6__*, %struct.extcon_dev*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @__usb_phy_get_charger_type(%struct.usb_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
