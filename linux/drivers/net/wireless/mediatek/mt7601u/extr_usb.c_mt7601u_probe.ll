; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_usb.c_mt7601u_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_usb.c_mt7601u_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i32 }
%struct.mt7601u_dev = type { i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@MT_VEND_BUF = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MT_ASIC_VERSION = common dso_local global i32 0, align 4
@MT_MAC_CSR0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"ASIC revision: %08x MAC revision: %08x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@MT_EFUSE_CTRL = common dso_local global i32 0, align 4
@MT_EFUSE_CTRL_SEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Warning: eFUSE not present\0A\00", align 1
@MT7601U_STATE_INITIALIZED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @mt7601u_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7601u_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.mt7601u_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %11 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %12 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %11)
  store %struct.usb_device* %12, %struct.usb_device** %6, align 8
  %13 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %14 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %13, i32 0, i32 0
  %15 = call %struct.mt7601u_dev* @mt7601u_alloc_device(i32* %14)
  store %struct.mt7601u_dev* %15, %struct.mt7601u_dev** %7, align 8
  %16 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %7, align 8
  %17 = icmp ne %struct.mt7601u_dev* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %123

21:                                               ; preds = %2
  %22 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %23 = call %struct.usb_device* @usb_get_dev(%struct.usb_device* %22)
  store %struct.usb_device* %23, %struct.usb_device** %6, align 8
  %24 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %25 = call i32 @usb_reset_device(%struct.usb_device* %24)
  %26 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %27 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %7, align 8
  %28 = call i32 @usb_set_intfdata(%struct.usb_interface* %26, %struct.mt7601u_dev* %27)
  %29 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %7, align 8
  %30 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MT_VEND_BUF, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i32 @devm_kmalloc(i32 %31, i32 %32, i32 %33)
  %35 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %7, align 8
  %36 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %7, align 8
  %38 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %21
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %10, align 4
  br label %108

44:                                               ; preds = %21
  %45 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %46 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %7, align 8
  %47 = call i32 @mt7601u_assign_pipes(%struct.usb_interface* %45, %struct.mt7601u_dev* %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %108

51:                                               ; preds = %44
  %52 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %7, align 8
  %53 = call i32 @mt7601u_wait_asic_ready(%struct.mt7601u_dev* %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %108

57:                                               ; preds = %51
  %58 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %7, align 8
  %59 = load i32, i32* @MT_ASIC_VERSION, align 4
  %60 = call i32 @mt7601u_rr(%struct.mt7601u_dev* %58, i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %7, align 8
  %62 = load i32, i32* @MT_MAC_CSR0, align 4
  %63 = call i32 @mt7601u_rr(%struct.mt7601u_dev* %61, i32 %62)
  store i32 %63, i32* %9, align 4
  %64 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %7, align 8
  %65 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @dev_info(i32 %66, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %68)
  %70 = load i32, i32* %8, align 4
  %71 = ashr i32 %70, 16
  %72 = icmp ne i32 %71, 30209
  br i1 %72, label %73, label %76

73:                                               ; preds = %57
  %74 = load i32, i32* @ENODEV, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %10, align 4
  br label %108

76:                                               ; preds = %57
  %77 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %7, align 8
  %78 = load i32, i32* @MT_EFUSE_CTRL, align 4
  %79 = call i32 @mt7601u_rr(%struct.mt7601u_dev* %77, i32 %78)
  %80 = load i32, i32* @MT_EFUSE_CTRL_SEL, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %76
  %84 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %7, align 8
  %85 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @dev_warn(i32 %86, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %88

88:                                               ; preds = %83, %76
  %89 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %7, align 8
  %90 = call i32 @mt7601u_init_hardware(%struct.mt7601u_dev* %89)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %108

94:                                               ; preds = %88
  %95 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %7, align 8
  %96 = call i32 @mt7601u_register_device(%struct.mt7601u_dev* %95)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %105

100:                                              ; preds = %94
  %101 = load i32, i32* @MT7601U_STATE_INITIALIZED, align 4
  %102 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %7, align 8
  %103 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %102, i32 0, i32 2
  %104 = call i32 @set_bit(i32 %101, i32* %103)
  store i32 0, i32* %3, align 4
  br label %123

105:                                              ; preds = %99
  %106 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %7, align 8
  %107 = call i32 @mt7601u_cleanup(%struct.mt7601u_dev* %106)
  br label %108

108:                                              ; preds = %105, %93, %73, %56, %50, %41
  %109 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %110 = call i32 @usb_set_intfdata(%struct.usb_interface* %109, %struct.mt7601u_dev* null)
  %111 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %112 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %111)
  %113 = call i32 @usb_put_dev(%struct.usb_device* %112)
  %114 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %7, align 8
  %115 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @destroy_workqueue(i32 %116)
  %118 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %7, align 8
  %119 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @ieee80211_free_hw(i32 %120)
  %122 = load i32, i32* %10, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %108, %100, %18
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.mt7601u_dev* @mt7601u_alloc_device(i32*) #1

declare dso_local %struct.usb_device* @usb_get_dev(%struct.usb_device*) #1

declare dso_local i32 @usb_reset_device(%struct.usb_device*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.mt7601u_dev*) #1

declare dso_local i32 @devm_kmalloc(i32, i32, i32) #1

declare dso_local i32 @mt7601u_assign_pipes(%struct.usb_interface*, %struct.mt7601u_dev*) #1

declare dso_local i32 @mt7601u_wait_asic_ready(%struct.mt7601u_dev*) #1

declare dso_local i32 @mt7601u_rr(%struct.mt7601u_dev*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @mt7601u_init_hardware(%struct.mt7601u_dev*) #1

declare dso_local i32 @mt7601u_register_device(%struct.mt7601u_dev*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mt7601u_cleanup(%struct.mt7601u_dev*) #1

declare dso_local i32 @usb_put_dev(%struct.usb_device*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @ieee80211_free_hw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
