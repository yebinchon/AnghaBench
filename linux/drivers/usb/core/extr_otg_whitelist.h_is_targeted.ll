; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_otg_whitelist.h_is_targeted.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_otg_whitelist.h_is_targeted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device_id = type { i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.usb_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64, i64, i32, i32, i32 }

@whitelist_table = common dso_local global %struct.usb_device_id* null, align 8
@USB_DEVICE_ID_MATCH_VENDOR = common dso_local global i32 0, align 4
@USB_DEVICE_ID_MATCH_PRODUCT = common dso_local global i32 0, align 4
@USB_DEVICE_ID_MATCH_DEV_LO = common dso_local global i32 0, align 4
@USB_DEVICE_ID_MATCH_DEV_HI = common dso_local global i32 0, align 4
@USB_DEVICE_ID_MATCH_DEV_CLASS = common dso_local global i32 0, align 4
@USB_DEVICE_ID_MATCH_DEV_SUBCLASS = common dso_local global i32 0, align 4
@USB_DEVICE_ID_MATCH_DEV_PROTOCOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"device v%04x p%04x is not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*)* @is_targeted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_targeted(%struct.usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.usb_device_id*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  %5 = load %struct.usb_device_id*, %struct.usb_device_id** @whitelist_table, align 8
  store %struct.usb_device_id* %5, %struct.usb_device_id** %4, align 8
  %6 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %7 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @le16_to_cpu(i32 %9)
  %11 = icmp eq i32 %10, 6666
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %14 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @le16_to_cpu(i32 %16)
  %18 = icmp eq i32 %17, 47837
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %183

20:                                               ; preds = %12, %1
  %21 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %22 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le16_to_cpu(i32 %24)
  %26 = icmp eq i32 %25, 6666
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %29 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @le16_to_cpu(i32 %31)
  %33 = icmp eq i32 %32, 512
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 1, i32* %2, align 4
  br label %183

35:                                               ; preds = %27, %20
  %36 = load %struct.usb_device_id*, %struct.usb_device_id** @whitelist_table, align 8
  store %struct.usb_device_id* %36, %struct.usb_device_id** %4, align 8
  br label %37

37:                                               ; preds = %166, %35
  %38 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %39 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %169

42:                                               ; preds = %37
  %43 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %44 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @USB_DEVICE_ID_MATCH_VENDOR, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %42
  %50 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %51 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %54 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @le16_to_cpu(i32 %56)
  %58 = icmp ne i32 %52, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  br label %166

60:                                               ; preds = %49, %42
  %61 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %62 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @USB_DEVICE_ID_MATCH_PRODUCT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %60
  %68 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %69 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %72 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @le16_to_cpu(i32 %74)
  %76 = icmp ne i32 %70, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  br label %166

78:                                               ; preds = %67, %60
  %79 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %80 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @USB_DEVICE_ID_MATCH_DEV_LO, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %78
  %86 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %87 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %90 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @le16_to_cpu(i32 %92)
  %94 = icmp sgt i32 %88, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %85
  br label %166

96:                                               ; preds = %85, %78
  %97 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %98 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @USB_DEVICE_ID_MATCH_DEV_HI, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %96
  %104 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %105 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %108 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @le16_to_cpu(i32 %110)
  %112 = icmp slt i32 %106, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %103
  br label %166

114:                                              ; preds = %103, %96
  %115 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %116 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @USB_DEVICE_ID_MATCH_DEV_CLASS, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %114
  %122 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %123 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %122, i32 0, i32 5
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %126 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %124, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %121
  br label %166

131:                                              ; preds = %121, %114
  %132 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %133 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @USB_DEVICE_ID_MATCH_DEV_SUBCLASS, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %148

138:                                              ; preds = %131
  %139 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %140 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %139, i32 0, i32 6
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %143 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %141, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %138
  br label %166

148:                                              ; preds = %138, %131
  %149 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %150 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @USB_DEVICE_ID_MATCH_DEV_PROTOCOL, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %165

155:                                              ; preds = %148
  %156 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %157 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %156, i32 0, i32 7
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %160 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %158, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %155
  br label %166

165:                                              ; preds = %155, %148
  store i32 1, i32* %2, align 4
  br label %183

166:                                              ; preds = %164, %147, %130, %113, %95, %77, %59
  %167 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %168 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %167, i32 1
  store %struct.usb_device_id* %168, %struct.usb_device_id** %4, align 8
  br label %37

169:                                              ; preds = %37
  %170 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %171 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %170, i32 0, i32 1
  %172 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %173 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @le16_to_cpu(i32 %175)
  %177 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %178 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @le16_to_cpu(i32 %180)
  %182 = call i32 @dev_err(i32* %171, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %176, i32 %181)
  store i32 0, i32* %2, align 4
  br label %183

183:                                              ; preds = %169, %165, %34, %19
  %184 = load i32, i32* %2, align 4
  ret i32 %184
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
