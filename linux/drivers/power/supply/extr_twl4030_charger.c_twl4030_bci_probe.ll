; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_twl4030_charger.c_twl4030_bci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_twl4030_charger.c_twl4030_bci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_17__*, %struct.twl4030_bci_platform_data* }
%struct.TYPE_17__ = type { i32 }
%struct.twl4030_bci_platform_data = type { i32, i32 }
%struct.twl4030_bci = type { i32, i32, i32, i32, i32, %struct.TYPE_20__*, %struct.TYPE_18__, %struct.TYPE_20__*, %struct.TYPE_20__*, i8*, i8*, %struct.TYPE_19__*, %struct.TYPE_20__*, i32, i32, i8*, i8* }
%struct.TYPE_18__ = type { i32 (%struct.TYPE_18__*, i32, i32*)* }
%struct.TYPE_20__ = type { i32, i32 }
%struct.device_node = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@allow_usb = common dso_local global i64 0, align 8
@CHARGE_AUTO = common dso_local global i8* null, align 8
@twl4030_bci_usb_work = common dso_local global i32 0, align 4
@twl4030_current_worker = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"vac\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"could not request vac iio channel (%d)\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"ti,twl4030-usb\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"could not request transceiver (%d)\00", align 1
@twl4030_bci_ac_desc = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"failed to register ac: %d\0A\00", align 1
@twl4030_bci_usb_desc = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"failed to register usb: %d\0A\00", align 1
@twl4030_charger_interrupt = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"could not request irq %d, status %d\0A\00", align 1
@twl4030_bci_interrupt = common dso_local global i32 0, align 4
@TWL4030_ICHGLOW = common dso_local global i32 0, align 4
@TWL4030_ICHGEOC = common dso_local global i32 0, align 4
@TWL4030_TBATOR2 = common dso_local global i32 0, align 4
@TWL4030_TBATOR1 = common dso_local global i32 0, align 4
@TWL4030_BATSTS = common dso_local global i32 0, align 4
@TWL4030_MODULE_INTERRUPTS = common dso_local global i32 0, align 4
@TWL4030_INTERRUPTS_BCIIMR1A = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"failed to unmask interrupts: %d\0A\00", align 1
@TWL4030_VBATOV = common dso_local global i32 0, align 4
@TWL4030_VBUSOV = common dso_local global i32 0, align 4
@TWL4030_ACCHGOV = common dso_local global i32 0, align 4
@TWL4030_INTERRUPTS_BCIIMR2A = common dso_local global i32 0, align 4
@dev_attr_mode = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"could not create sysfs file\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @twl4030_bci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_bci_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.twl4030_bci*, align 8
  %5 = alloca %struct.twl4030_bci_platform_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.device_node*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 1
  %12 = load %struct.twl4030_bci_platform_data*, %struct.twl4030_bci_platform_data** %11, align 8
  store %struct.twl4030_bci_platform_data* %12, %struct.twl4030_bci_platform_data** %5, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.twl4030_bci* @devm_kzalloc(%struct.TYPE_19__* %14, i32 112, i32 %15)
  store %struct.twl4030_bci* %16, %struct.twl4030_bci** %4, align 8
  %17 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %18 = icmp eq %struct.twl4030_bci* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %355

22:                                               ; preds = %1
  %23 = load %struct.twl4030_bci_platform_data*, %struct.twl4030_bci_platform_data** %5, align 8
  %24 = icmp ne %struct.twl4030_bci_platform_data* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = call %struct.twl4030_bci_platform_data* @twl4030_bci_parse_dt(%struct.TYPE_19__* %27)
  store %struct.twl4030_bci_platform_data* %28, %struct.twl4030_bci_platform_data** %5, align 8
  br label %29

29:                                               ; preds = %25, %22
  %30 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %31 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %30, i32 0, i32 0
  store i32 80100, i32* %31, align 8
  %32 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %33 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %32, i32 0, i32 1
  store i32 241000, i32* %33, align 4
  %34 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %35 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %34, i32 0, i32 2
  store i32 500000, i32* %35, align 8
  %36 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %37 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %36, i32 0, i32 3
  store i32 500000, i32* %37, align 4
  %38 = load i64, i64* @allow_usb, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %29
  %41 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %42 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %41, i32 0, i32 4
  store i32 500000, i32* %42, align 8
  br label %46

43:                                               ; preds = %29
  %44 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %45 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %44, i32 0, i32 4
  store i32 100000, i32* %45, align 8
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i8*, i8** @CHARGE_AUTO, align 8
  %48 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %49 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %48, i32 0, i32 16
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** @CHARGE_AUTO, align 8
  %51 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %52 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %51, i32 0, i32 15
  store i8* %50, i8** %52, align 8
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %56 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %55, i32 0, i32 11
  store %struct.TYPE_19__* %54, %struct.TYPE_19__** %56, align 8
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = call i8* @platform_get_irq(%struct.platform_device* %57, i32 0)
  %59 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %60 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %59, i32 0, i32 10
  store i8* %58, i8** %60, align 8
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = call i8* @platform_get_irq(%struct.platform_device* %61, i32 1)
  %63 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %64 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %63, i32 0, i32 9
  store i8* %62, i8** %64, align 8
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %67 = call i32 @platform_set_drvdata(%struct.platform_device* %65, %struct.twl4030_bci* %66)
  %68 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %69 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %68, i32 0, i32 14
  %70 = load i32, i32* @twl4030_bci_usb_work, align 4
  %71 = call i32 @INIT_WORK(i32* %69, i32 %70)
  %72 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %73 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %72, i32 0, i32 13
  %74 = load i32, i32* @twl4030_current_worker, align 4
  %75 = call i32 @INIT_DELAYED_WORK(i32* %73, i32 %74)
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = call %struct.TYPE_20__* @devm_iio_channel_get(%struct.TYPE_19__* %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %79 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %80 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %79, i32 0, i32 12
  store %struct.TYPE_20__* %78, %struct.TYPE_20__** %80, align 8
  %81 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %82 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %81, i32 0, i32 12
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %82, align 8
  %84 = call i64 @IS_ERR(%struct.TYPE_20__* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %104

86:                                               ; preds = %46
  %87 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %88 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %87, i32 0, i32 12
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %88, align 8
  %90 = call i32 @PTR_ERR(%struct.TYPE_20__* %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @EPROBE_DEFER, align 4
  %93 = sub nsw i32 0, %92
  %94 = icmp eq i32 %91, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %86
  %96 = load i32, i32* %6, align 4
  store i32 %96, i32* %2, align 4
  br label %355

97:                                               ; preds = %86
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = load i32, i32* %6, align 4
  %101 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_warn(%struct.TYPE_19__* %99, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  %102 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %103 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %102, i32 0, i32 12
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %103, align 8
  br label %104

104:                                              ; preds = %97, %46
  %105 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %106 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %105, i32 0, i32 11
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %108, align 8
  %110 = icmp ne %struct.TYPE_17__* %109, null
  br i1 %110, label %111, label %162

111:                                              ; preds = %104
  %112 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %113 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %112, i32 0, i32 11
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call %struct.device_node* @of_get_compatible_child(i32 %118, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store %struct.device_node* %119, %struct.device_node** %8, align 8
  %120 = load %struct.device_node*, %struct.device_node** %8, align 8
  %121 = icmp ne %struct.device_node* %120, null
  br i1 %121, label %122, label %161

122:                                              ; preds = %111
  %123 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %124 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %123, i32 0, i32 6
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 0
  store i32 (%struct.TYPE_18__*, i32, i32*)* @twl4030_bci_usb_ncb, i32 (%struct.TYPE_18__*, i32, i32*)** %125, align 8
  %126 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %127 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %126, i32 0, i32 11
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %127, align 8
  %129 = load %struct.device_node*, %struct.device_node** %8, align 8
  %130 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %131 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %130, i32 0, i32 6
  %132 = call %struct.TYPE_20__* @devm_usb_get_phy_by_node(%struct.TYPE_19__* %128, %struct.device_node* %129, %struct.TYPE_18__* %131)
  %133 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %134 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %133, i32 0, i32 5
  store %struct.TYPE_20__* %132, %struct.TYPE_20__** %134, align 8
  %135 = load %struct.device_node*, %struct.device_node** %8, align 8
  %136 = call i32 @of_node_put(%struct.device_node* %135)
  %137 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %138 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %137, i32 0, i32 5
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %138, align 8
  %140 = call i64 @IS_ERR(%struct.TYPE_20__* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %160

142:                                              ; preds = %122
  %143 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %144 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %143, i32 0, i32 5
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %144, align 8
  %146 = call i32 @PTR_ERR(%struct.TYPE_20__* %145)
  store i32 %146, i32* %6, align 4
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* @EPROBE_DEFER, align 4
  %149 = sub nsw i32 0, %148
  %150 = icmp eq i32 %147, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %142
  %152 = load i32, i32* %6, align 4
  store i32 %152, i32* %2, align 4
  br label %355

153:                                              ; preds = %142
  %154 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %155 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %154, i32 0, i32 0
  %156 = load i32, i32* %6, align 4
  %157 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_warn(%struct.TYPE_19__* %155, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %156)
  %158 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %159 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %158, i32 0, i32 5
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %159, align 8
  br label %160

160:                                              ; preds = %153, %122
  br label %161

161:                                              ; preds = %160, %111
  br label %162

162:                                              ; preds = %161, %104
  %163 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %164 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %163, i32 0, i32 0
  %165 = call i8* @devm_power_supply_register(%struct.TYPE_19__* %164, i32* @twl4030_bci_ac_desc, i32* null)
  %166 = bitcast i8* %165 to %struct.TYPE_20__*
  %167 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %168 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %167, i32 0, i32 7
  store %struct.TYPE_20__* %166, %struct.TYPE_20__** %168, align 8
  %169 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %170 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %169, i32 0, i32 7
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %170, align 8
  %172 = call i64 @IS_ERR(%struct.TYPE_20__* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %184

174:                                              ; preds = %162
  %175 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %176 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %175, i32 0, i32 7
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %176, align 8
  %178 = call i32 @PTR_ERR(%struct.TYPE_20__* %177)
  store i32 %178, i32* %6, align 4
  %179 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %180 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %179, i32 0, i32 0
  %181 = load i32, i32* %6, align 4
  %182 = call i32 (%struct.TYPE_19__*, i8*, i32, ...) @dev_err(%struct.TYPE_19__* %180, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %181)
  %183 = load i32, i32* %6, align 4
  store i32 %183, i32* %2, align 4
  br label %355

184:                                              ; preds = %162
  %185 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %186 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %185, i32 0, i32 0
  %187 = call i8* @devm_power_supply_register(%struct.TYPE_19__* %186, i32* @twl4030_bci_usb_desc, i32* null)
  %188 = bitcast i8* %187 to %struct.TYPE_20__*
  %189 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %190 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %189, i32 0, i32 8
  store %struct.TYPE_20__* %188, %struct.TYPE_20__** %190, align 8
  %191 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %192 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %191, i32 0, i32 8
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %192, align 8
  %194 = call i64 @IS_ERR(%struct.TYPE_20__* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %206

196:                                              ; preds = %184
  %197 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %198 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %197, i32 0, i32 8
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %198, align 8
  %200 = call i32 @PTR_ERR(%struct.TYPE_20__* %199)
  store i32 %200, i32* %6, align 4
  %201 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %202 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %201, i32 0, i32 0
  %203 = load i32, i32* %6, align 4
  %204 = call i32 (%struct.TYPE_19__*, i8*, i32, ...) @dev_err(%struct.TYPE_19__* %202, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %203)
  %205 = load i32, i32* %6, align 4
  store i32 %205, i32* %2, align 4
  br label %355

206:                                              ; preds = %184
  %207 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %208 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %207, i32 0, i32 0
  %209 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %210 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %209, i32 0, i32 10
  %211 = load i8*, i8** %210, align 8
  %212 = load i32, i32* @twl4030_charger_interrupt, align 4
  %213 = load i32, i32* @IRQF_ONESHOT, align 4
  %214 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %215 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %218 = call i32 @devm_request_threaded_irq(%struct.TYPE_19__* %208, i8* %211, i32* null, i32 %212, i32 %213, i32 %216, %struct.twl4030_bci* %217)
  store i32 %218, i32* %6, align 4
  %219 = load i32, i32* %6, align 4
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %221, label %231

221:                                              ; preds = %206
  %222 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %223 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %222, i32 0, i32 0
  %224 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %225 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %224, i32 0, i32 10
  %226 = load i8*, i8** %225, align 8
  %227 = ptrtoint i8* %226 to i32
  %228 = load i32, i32* %6, align 4
  %229 = call i32 (%struct.TYPE_19__*, i8*, i32, ...) @dev_err(%struct.TYPE_19__* %223, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %227, i32 %228)
  %230 = load i32, i32* %6, align 4
  store i32 %230, i32* %2, align 4
  br label %355

231:                                              ; preds = %206
  %232 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %233 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %232, i32 0, i32 0
  %234 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %235 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %234, i32 0, i32 9
  %236 = load i8*, i8** %235, align 8
  %237 = load i32, i32* @twl4030_bci_interrupt, align 4
  %238 = load i32, i32* @IRQF_ONESHOT, align 4
  %239 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %240 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %243 = call i32 @devm_request_threaded_irq(%struct.TYPE_19__* %233, i8* %236, i32* null, i32 %237, i32 %238, i32 %241, %struct.twl4030_bci* %242)
  store i32 %243, i32* %6, align 4
  %244 = load i32, i32* %6, align 4
  %245 = icmp slt i32 %244, 0
  br i1 %245, label %246, label %256

246:                                              ; preds = %231
  %247 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %248 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %247, i32 0, i32 0
  %249 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %250 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %249, i32 0, i32 9
  %251 = load i8*, i8** %250, align 8
  %252 = ptrtoint i8* %251 to i32
  %253 = load i32, i32* %6, align 4
  %254 = call i32 (%struct.TYPE_19__*, i8*, i32, ...) @dev_err(%struct.TYPE_19__* %248, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %252, i32 %253)
  %255 = load i32, i32* %6, align 4
  store i32 %255, i32* %2, align 4
  br label %355

256:                                              ; preds = %231
  %257 = load i32, i32* @TWL4030_ICHGLOW, align 4
  %258 = load i32, i32* @TWL4030_ICHGEOC, align 4
  %259 = or i32 %257, %258
  %260 = load i32, i32* @TWL4030_TBATOR2, align 4
  %261 = or i32 %259, %260
  %262 = load i32, i32* @TWL4030_TBATOR1, align 4
  %263 = or i32 %261, %262
  %264 = load i32, i32* @TWL4030_BATSTS, align 4
  %265 = or i32 %263, %264
  %266 = xor i32 %265, -1
  store i32 %266, i32* %7, align 4
  %267 = load i32, i32* @TWL4030_MODULE_INTERRUPTS, align 4
  %268 = load i32, i32* %7, align 4
  %269 = load i32, i32* @TWL4030_INTERRUPTS_BCIIMR1A, align 4
  %270 = call i32 @twl_i2c_write_u8(i32 %267, i32 %268, i32 %269)
  store i32 %270, i32* %6, align 4
  %271 = load i32, i32* %6, align 4
  %272 = icmp slt i32 %271, 0
  br i1 %272, label %273, label %279

273:                                              ; preds = %256
  %274 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %275 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %274, i32 0, i32 0
  %276 = load i32, i32* %6, align 4
  %277 = call i32 (%struct.TYPE_19__*, i8*, i32, ...) @dev_err(%struct.TYPE_19__* %275, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %276)
  %278 = load i32, i32* %6, align 4
  store i32 %278, i32* %2, align 4
  br label %355

279:                                              ; preds = %256
  %280 = load i32, i32* @TWL4030_VBATOV, align 4
  %281 = load i32, i32* @TWL4030_VBUSOV, align 4
  %282 = or i32 %280, %281
  %283 = load i32, i32* @TWL4030_ACCHGOV, align 4
  %284 = or i32 %282, %283
  %285 = xor i32 %284, -1
  store i32 %285, i32* %7, align 4
  %286 = load i32, i32* @TWL4030_MODULE_INTERRUPTS, align 4
  %287 = load i32, i32* %7, align 4
  %288 = load i32, i32* @TWL4030_INTERRUPTS_BCIIMR2A, align 4
  %289 = call i32 @twl_i2c_write_u8(i32 %286, i32 %287, i32 %288)
  store i32 %289, i32* %6, align 4
  %290 = load i32, i32* %6, align 4
  %291 = icmp slt i32 %290, 0
  br i1 %291, label %292, label %297

292:                                              ; preds = %279
  %293 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %294 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %293, i32 0, i32 0
  %295 = load i32, i32* %6, align 4
  %296 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_warn(%struct.TYPE_19__* %294, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %295)
  br label %297

297:                                              ; preds = %292, %279
  %298 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %299 = call i32 @twl4030_charger_update_current(%struct.twl4030_bci* %298)
  %300 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %301 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %300, i32 0, i32 8
  %302 = load %struct.TYPE_20__*, %struct.TYPE_20__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %302, i32 0, i32 1
  %304 = call i64 @device_create_file(i32* %303, i32* @dev_attr_mode)
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %310

306:                                              ; preds = %297
  %307 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %308 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %307, i32 0, i32 0
  %309 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_warn(%struct.TYPE_19__* %308, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  br label %310

310:                                              ; preds = %306, %297
  %311 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %312 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %311, i32 0, i32 7
  %313 = load %struct.TYPE_20__*, %struct.TYPE_20__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %313, i32 0, i32 1
  %315 = call i64 @device_create_file(i32* %314, i32* @dev_attr_mode)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %321

317:                                              ; preds = %310
  %318 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %319 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %318, i32 0, i32 0
  %320 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_warn(%struct.TYPE_19__* %319, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  br label %321

321:                                              ; preds = %317, %310
  %322 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %323 = call i32 @twl4030_charger_enable_ac(%struct.twl4030_bci* %322, i32 1)
  %324 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %325 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %324, i32 0, i32 5
  %326 = load %struct.TYPE_20__*, %struct.TYPE_20__** %325, align 8
  %327 = call i32 @IS_ERR_OR_NULL(%struct.TYPE_20__* %326)
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %338, label %329

329:                                              ; preds = %321
  %330 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %331 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %330, i32 0, i32 6
  %332 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %333 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %332, i32 0, i32 5
  %334 = load %struct.TYPE_20__*, %struct.TYPE_20__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  %337 = call i32 @twl4030_bci_usb_ncb(%struct.TYPE_18__* %331, i32 %336, i32* null)
  br label %341

338:                                              ; preds = %321
  %339 = load %struct.twl4030_bci*, %struct.twl4030_bci** %4, align 8
  %340 = call i32 @twl4030_charger_enable_usb(%struct.twl4030_bci* %339, i32 0)
  br label %341

341:                                              ; preds = %338, %329
  %342 = load %struct.twl4030_bci_platform_data*, %struct.twl4030_bci_platform_data** %5, align 8
  %343 = icmp ne %struct.twl4030_bci_platform_data* %342, null
  br i1 %343, label %344, label %352

344:                                              ; preds = %341
  %345 = load %struct.twl4030_bci_platform_data*, %struct.twl4030_bci_platform_data** %5, align 8
  %346 = getelementptr inbounds %struct.twl4030_bci_platform_data, %struct.twl4030_bci_platform_data* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 4
  %348 = load %struct.twl4030_bci_platform_data*, %struct.twl4030_bci_platform_data** %5, align 8
  %349 = getelementptr inbounds %struct.twl4030_bci_platform_data, %struct.twl4030_bci_platform_data* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 4
  %351 = call i32 @twl4030_charger_enable_backup(i32 %347, i32 %350)
  br label %354

352:                                              ; preds = %341
  %353 = call i32 @twl4030_charger_enable_backup(i32 0, i32 0)
  br label %354

354:                                              ; preds = %352, %344
  store i32 0, i32* %2, align 4
  br label %355

355:                                              ; preds = %354, %273, %246, %221, %196, %174, %151, %95, %19
  %356 = load i32, i32* %2, align 4
  ret i32 %356
}

declare dso_local %struct.twl4030_bci* @devm_kzalloc(%struct.TYPE_19__*, i32, i32) #1

declare dso_local %struct.twl4030_bci_platform_data* @twl4030_bci_parse_dt(%struct.TYPE_19__*) #1

declare dso_local i8* @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.twl4030_bci*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local %struct.TYPE_20__* @devm_iio_channel_get(%struct.TYPE_19__*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_20__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_20__*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_19__*, i8*, ...) #1

declare dso_local %struct.device_node* @of_get_compatible_child(i32, i8*) #1

declare dso_local i32 @twl4030_bci_usb_ncb(%struct.TYPE_18__*, i32, i32*) #1

declare dso_local %struct.TYPE_20__* @devm_usb_get_phy_by_node(%struct.TYPE_19__*, %struct.device_node*, %struct.TYPE_18__*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i8* @devm_power_supply_register(%struct.TYPE_19__*, i32*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_19__*, i8*, i32, ...) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_19__*, i8*, i32*, i32, i32, i32, %struct.twl4030_bci*) #1

declare dso_local i32 @twl_i2c_write_u8(i32, i32, i32) #1

declare dso_local i32 @twl4030_charger_update_current(%struct.twl4030_bci*) #1

declare dso_local i64 @device_create_file(i32*, i32*) #1

declare dso_local i32 @twl4030_charger_enable_ac(%struct.twl4030_bci*, i32) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.TYPE_20__*) #1

declare dso_local i32 @twl4030_charger_enable_usb(%struct.twl4030_bci*, i32) #1

declare dso_local i32 @twl4030_charger_enable_backup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
