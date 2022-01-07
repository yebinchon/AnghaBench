; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_apple-gmux.c_gmux_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_apple-gmux.c_gmux_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apple_gmux_data = type { i64, i64, i32, i32, i32, i32, i32, i32, %struct.backlight_device*, i32 }
%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.pnp_dev = type { i32 }
%struct.pnp_device_id = type { i32 }
%struct.resource = type { i64, i64 }
%struct.backlight_properties = type { i64, i32 }

@ENXIO = common dso_local global i32 0, align 4
@apple_gmux_data = common dso_local global %struct.apple_gmux_data* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to find gmux I/O resource\0A\00", align 1
@GMUX_MIN_IO_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"gmux I/O region too small (%lu < %u)\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Apple gmux\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"gmux I/O already in use\0A\00", align 1
@GMUX_PORT_VERSION_MAJOR = common dso_local global i32 0, align 4
@GMUX_PORT_VERSION_MINOR = common dso_local global i32 0, align 4
@GMUX_PORT_VERSION_RELEASE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"gmux device not present\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Found gmux version %d.%d.%d [%s]\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"indexed\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"classic\00", align 1
@BACKLIGHT_PLATFORM = common dso_local global i32 0, align 4
@GMUX_PORT_MAX_BRIGHTNESS = common dso_local global i32 0, align 4
@GMUX_MAX_BRIGHTNESS = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [15 x i8] c"gmux_backlight\00", align 1
@gmux_bl_ops = common dso_local global i32 0, align 4
@acpi_backlight_vendor = common dso_local global i32 0, align 4
@VGA_SWITCHEROO_ON = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [43 x i8] c"Cannot find acpi handle for pnp device %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"GMGP\00", align 1
@ACPI_DEVICE_NOTIFY = common dso_local global i32 0, align 4
@gmux_notify_handler = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [35 x i8] c"Install notify handler failed: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Cannot enable gpe: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"No GPE found for gmux\0A\00", align 1
@pci_bus_type = common dso_local global i32 0, align 4
@is_thunderbolt = common dso_local global i32 0, align 4
@GMUX_PORT_SWITCH_EXTERNAL = common dso_local global i32 0, align 4
@gmux_handler_indexed = common dso_local global i32 0, align 4
@VGA_SWITCHEROO_NEEDS_EDP_CONFIG = common dso_local global i32 0, align 4
@gmux_handler_classic = common dso_local global i32 0, align 4
@VGA_SWITCHEROO_CAN_SWITCH_DDC = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [43 x i8] c"Failed to register vga_switcheroo handler\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnp_dev*, %struct.pnp_device_id*)* @gmux_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmux_probe(%struct.pnp_dev* %0, %struct.pnp_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pnp_dev*, align 8
  %5 = alloca %struct.pnp_device_id*, align 8
  %6 = alloca %struct.apple_gmux_data*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.backlight_properties, align 8
  %9 = alloca %struct.backlight_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.pnp_dev* %0, %struct.pnp_dev** %4, align 8
  store %struct.pnp_device_id* %1, %struct.pnp_device_id** %5, align 8
  %17 = load i32, i32* @ENXIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %13, align 4
  %19 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** @apple_gmux_data, align 8
  %20 = icmp ne %struct.apple_gmux_data* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %325

24:                                               ; preds = %2
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.apple_gmux_data* @kzalloc(i32 56, i32 %25)
  store %struct.apple_gmux_data* %26, %struct.apple_gmux_data** %6, align 8
  %27 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %6, align 8
  %28 = icmp ne %struct.apple_gmux_data* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %325

32:                                               ; preds = %24
  %33 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %34 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %6, align 8
  %35 = call i32 @pnp_set_drvdata(%struct.pnp_dev* %33, %struct.apple_gmux_data* %34)
  %36 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %37 = load i32, i32* @IORESOURCE_IO, align 4
  %38 = call %struct.resource* @pnp_get_resource(%struct.pnp_dev* %36, i32 %37, i32 0)
  store %struct.resource* %38, %struct.resource** %7, align 8
  %39 = load %struct.resource*, %struct.resource** %7, align 8
  %40 = icmp ne %struct.resource* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %32
  %42 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %321

43:                                               ; preds = %32
  %44 = load %struct.resource*, %struct.resource** %7, align 8
  %45 = getelementptr inbounds %struct.resource, %struct.resource* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %6, align 8
  %48 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.resource*, %struct.resource** %7, align 8
  %50 = getelementptr inbounds %struct.resource, %struct.resource* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.resource*, %struct.resource** %7, align 8
  %53 = getelementptr inbounds %struct.resource, %struct.resource* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %51, %54
  %56 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %6, align 8
  %57 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  %58 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %6, align 8
  %59 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @GMUX_MIN_IO_LEN, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %43
  %64 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %6, align 8
  %65 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @GMUX_MIN_IO_LEN, align 8
  %68 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %66, i64 %67)
  br label %321

69:                                               ; preds = %43
  %70 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %6, align 8
  %71 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %6, align 8
  %74 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @request_region(i64 %72, i64 %75, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %69
  %79 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %321

80:                                               ; preds = %69
  %81 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %6, align 8
  %82 = load i32, i32* @GMUX_PORT_VERSION_MAJOR, align 4
  %83 = call i32 @gmux_read8(%struct.apple_gmux_data* %81, i32 %82)
  store i32 %83, i32* %10, align 4
  %84 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %6, align 8
  %85 = load i32, i32* @GMUX_PORT_VERSION_MINOR, align 4
  %86 = call i32 @gmux_read8(%struct.apple_gmux_data* %84, i32 %85)
  store i32 %86, i32* %11, align 4
  %87 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %6, align 8
  %88 = load i32, i32* @GMUX_PORT_VERSION_RELEASE, align 4
  %89 = call i32 @gmux_read8(%struct.apple_gmux_data* %87, i32 %88)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp eq i32 %90, 255
  br i1 %91, label %92, label %126

92:                                               ; preds = %80
  %93 = load i32, i32* %11, align 4
  %94 = icmp eq i32 %93, 255
  br i1 %94, label %95, label %126

95:                                               ; preds = %92
  %96 = load i32, i32* %12, align 4
  %97 = icmp eq i32 %96, 255
  br i1 %97, label %98, label %126

98:                                               ; preds = %95
  %99 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %6, align 8
  %100 = call i64 @gmux_is_indexed(%struct.apple_gmux_data* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %121

102:                                              ; preds = %98
  %103 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %6, align 8
  %104 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %103, i32 0, i32 9
  %105 = call i32 @mutex_init(i32* %104)
  %106 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %6, align 8
  %107 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %106, i32 0, i32 2
  store i32 1, i32* %107, align 8
  %108 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %6, align 8
  %109 = load i32, i32* @GMUX_PORT_VERSION_MAJOR, align 4
  %110 = call i8* @gmux_read32(%struct.apple_gmux_data* %108, i32 %109)
  %111 = ptrtoint i8* %110 to i32
  store i32 %111, i32* %16, align 4
  %112 = load i32, i32* %16, align 4
  %113 = ashr i32 %112, 24
  %114 = and i32 %113, 255
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %16, align 4
  %116 = ashr i32 %115, 16
  %117 = and i32 %116, 255
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %16, align 4
  %119 = ashr i32 %118, 8
  %120 = and i32 %119, 255
  store i32 %120, i32* %12, align 4
  br label %125

121:                                              ; preds = %98
  %122 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %123 = load i32, i32* @ENODEV, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %13, align 4
  br label %313

125:                                              ; preds = %102
  br label %126

126:                                              ; preds = %125, %95, %92, %80
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* %12, align 4
  %130 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %6, align 8
  %131 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)
  %136 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %127, i32 %128, i32 %129, i8* %135)
  %137 = call i32 @memset(%struct.backlight_properties* %8, i32 0, i32 16)
  %138 = load i32, i32* @BACKLIGHT_PLATFORM, align 4
  %139 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %8, i32 0, i32 1
  store i32 %138, i32* %139, align 8
  %140 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %6, align 8
  %141 = load i32, i32* @GMUX_PORT_MAX_BRIGHTNESS, align 4
  %142 = call i8* @gmux_read32(%struct.apple_gmux_data* %140, i32 %141)
  %143 = ptrtoint i8* %142 to i64
  %144 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %8, i32 0, i32 0
  store i64 %143, i64* %144, align 8
  %145 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %8, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @GMUX_MAX_BRIGHTNESS, align 8
  %148 = icmp sgt i64 %146, %147
  %149 = zext i1 %148 to i32
  %150 = call i64 @WARN_ON(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %126
  %153 = load i64, i64* @GMUX_MAX_BRIGHTNESS, align 8
  %154 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %8, i32 0, i32 0
  store i64 %153, i64* %154, align 8
  br label %155

155:                                              ; preds = %152, %126
  %156 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %157 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %156, i32 0, i32 0
  %158 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %6, align 8
  %159 = call %struct.backlight_device* @backlight_device_register(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32* %157, %struct.apple_gmux_data* %158, i32* @gmux_bl_ops, %struct.backlight_properties* %8)
  store %struct.backlight_device* %159, %struct.backlight_device** %9, align 8
  %160 = load %struct.backlight_device*, %struct.backlight_device** %9, align 8
  %161 = call i64 @IS_ERR(%struct.backlight_device* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %155
  %164 = load %struct.backlight_device*, %struct.backlight_device** %9, align 8
  %165 = call i32 @PTR_ERR(%struct.backlight_device* %164)
  store i32 %165, i32* %13, align 4
  br label %313

166:                                              ; preds = %155
  %167 = load %struct.backlight_device*, %struct.backlight_device** %9, align 8
  %168 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %6, align 8
  %169 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %168, i32 0, i32 8
  store %struct.backlight_device* %167, %struct.backlight_device** %169, align 8
  %170 = load %struct.backlight_device*, %struct.backlight_device** %9, align 8
  %171 = call i32 @gmux_get_brightness(%struct.backlight_device* %170)
  %172 = load %struct.backlight_device*, %struct.backlight_device** %9, align 8
  %173 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 0
  store i32 %171, i32* %174, align 4
  %175 = load %struct.backlight_device*, %struct.backlight_device** %9, align 8
  %176 = call i32 @backlight_update_status(%struct.backlight_device* %175)
  %177 = load i32, i32* @acpi_backlight_vendor, align 4
  %178 = call i32 @acpi_video_set_dmi_backlight_type(i32 %177)
  %179 = call i32 (...) @apple_bl_unregister()
  %180 = load i32, i32* @VGA_SWITCHEROO_ON, align 4
  %181 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %6, align 8
  %182 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %181, i32 0, i32 7
  store i32 %180, i32* %182, align 4
  %183 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %184 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %183, i32 0, i32 0
  %185 = call i32 @ACPI_HANDLE(i32* %184)
  %186 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %6, align 8
  %187 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %186, i32 0, i32 5
  store i32 %185, i32* %187, align 4
  %188 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %6, align 8
  %189 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %188, i32 0, i32 5
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %199, label %192

192:                                              ; preds = %166
  %193 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %194 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %193, i32 0, i32 0
  %195 = call i32 @dev_name(i32* %194)
  %196 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i32 %195)
  %197 = load i32, i32* @ENODEV, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %13, align 4
  br label %310

199:                                              ; preds = %166
  %200 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %6, align 8
  %201 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %200, i32 0, i32 5
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @acpi_evaluate_integer(i32 %202, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* null, i64* %15)
  store i32 %203, i32* %14, align 4
  %204 = load i32, i32* %14, align 4
  %205 = call i64 @ACPI_SUCCESS(i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %240

207:                                              ; preds = %199
  %208 = load i64, i64* %15, align 8
  %209 = trunc i64 %208 to i32
  %210 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %6, align 8
  %211 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %210, i32 0, i32 3
  store i32 %209, i32* %211, align 4
  %212 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %6, align 8
  %213 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %212, i32 0, i32 5
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @ACPI_DEVICE_NOTIFY, align 4
  %216 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %217 = call i32 @acpi_install_notify_handler(i32 %214, i32 %215, i32* @gmux_notify_handler, %struct.pnp_dev* %216)
  store i32 %217, i32* %14, align 4
  %218 = load i32, i32* %14, align 4
  %219 = call i64 @ACPI_FAILURE(i32 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %227

221:                                              ; preds = %207
  %222 = load i32, i32* %14, align 4
  %223 = call i32 @acpi_format_exception(i32 %222)
  %224 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i32 %223)
  %225 = load i32, i32* @ENODEV, align 4
  %226 = sub nsw i32 0, %225
  store i32 %226, i32* %13, align 4
  br label %310

227:                                              ; preds = %207
  %228 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %6, align 8
  %229 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @acpi_enable_gpe(i32* null, i32 %230)
  store i32 %231, i32* %14, align 4
  %232 = load i32, i32* %14, align 4
  %233 = call i64 @ACPI_FAILURE(i32 %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %239

235:                                              ; preds = %227
  %236 = load i32, i32* %14, align 4
  %237 = call i32 @acpi_format_exception(i32 %236)
  %238 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32 %237)
  br label %298

239:                                              ; preds = %227
  br label %244

240:                                              ; preds = %199
  %241 = call i32 @pr_warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
  %242 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %6, align 8
  %243 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %242, i32 0, i32 3
  store i32 -1, i32* %243, align 4
  br label %244

244:                                              ; preds = %240, %239
  %245 = load i32, i32* @is_thunderbolt, align 4
  %246 = call i32 @bus_for_each_dev(i32* @pci_bus_type, i32* null, i32* null, i32 %245)
  %247 = icmp ne i32 %246, 0
  %248 = xor i1 %247, true
  %249 = zext i1 %248 to i32
  %250 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %6, align 8
  %251 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %250, i32 0, i32 4
  store i32 %249, i32* %251, align 8
  %252 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %6, align 8
  %253 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %252, i32 0, i32 4
  %254 = load i32, i32* %253, align 8
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %260, label %256

256:                                              ; preds = %244
  %257 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %6, align 8
  %258 = load i32, i32* @GMUX_PORT_SWITCH_EXTERNAL, align 4
  %259 = call i32 @gmux_write8(%struct.apple_gmux_data* %257, i32 %258, i32 3)
  br label %260

260:                                              ; preds = %256, %244
  %261 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %6, align 8
  store %struct.apple_gmux_data* %261, %struct.apple_gmux_data** @apple_gmux_data, align 8
  %262 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %6, align 8
  %263 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %262, i32 0, i32 6
  %264 = call i32 @init_completion(i32* %263)
  %265 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %6, align 8
  %266 = call i32 @gmux_enable_interrupts(%struct.apple_gmux_data* %265)
  %267 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %6, align 8
  %268 = call i32 @gmux_read_switch_state(%struct.apple_gmux_data* %267)
  %269 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %6, align 8
  %270 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %276

273:                                              ; preds = %260
  %274 = load i32, i32* @VGA_SWITCHEROO_NEEDS_EDP_CONFIG, align 4
  %275 = call i32 @vga_switcheroo_register_handler(i32* @gmux_handler_indexed, i32 %274)
  store i32 %275, i32* %13, align 4
  br label %279

276:                                              ; preds = %260
  %277 = load i32, i32* @VGA_SWITCHEROO_CAN_SWITCH_DDC, align 4
  %278 = call i32 @vga_switcheroo_register_handler(i32* @gmux_handler_classic, i32 %277)
  store i32 %278, i32* %13, align 4
  br label %279

279:                                              ; preds = %276, %273
  %280 = load i32, i32* %13, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %284

282:                                              ; preds = %279
  %283 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0))
  br label %285

284:                                              ; preds = %279
  store i32 0, i32* %3, align 4
  br label %325

285:                                              ; preds = %282
  %286 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %6, align 8
  %287 = call i32 @gmux_disable_interrupts(%struct.apple_gmux_data* %286)
  store %struct.apple_gmux_data* null, %struct.apple_gmux_data** @apple_gmux_data, align 8
  %288 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %6, align 8
  %289 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 4
  %291 = icmp sge i32 %290, 0
  br i1 %291, label %292, label %297

292:                                              ; preds = %285
  %293 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %6, align 8
  %294 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %293, i32 0, i32 3
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @acpi_disable_gpe(i32* null, i32 %295)
  br label %297

297:                                              ; preds = %292, %285
  br label %298

298:                                              ; preds = %297, %235
  %299 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %6, align 8
  %300 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %299, i32 0, i32 3
  %301 = load i32, i32* %300, align 4
  %302 = icmp sge i32 %301, 0
  br i1 %302, label %303, label %309

303:                                              ; preds = %298
  %304 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %6, align 8
  %305 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %304, i32 0, i32 5
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* @ACPI_DEVICE_NOTIFY, align 4
  %308 = call i32 @acpi_remove_notify_handler(i32 %306, i32 %307, i32* @gmux_notify_handler)
  br label %309

309:                                              ; preds = %303, %298
  br label %310

310:                                              ; preds = %309, %221, %192
  %311 = load %struct.backlight_device*, %struct.backlight_device** %9, align 8
  %312 = call i32 @backlight_device_unregister(%struct.backlight_device* %311)
  br label %313

313:                                              ; preds = %310, %163, %121
  %314 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %6, align 8
  %315 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %6, align 8
  %318 = getelementptr inbounds %struct.apple_gmux_data, %struct.apple_gmux_data* %317, i32 0, i32 1
  %319 = load i64, i64* %318, align 8
  %320 = call i32 @release_region(i64 %316, i64 %319)
  br label %321

321:                                              ; preds = %313, %78, %63, %41
  %322 = load %struct.apple_gmux_data*, %struct.apple_gmux_data** %6, align 8
  %323 = call i32 @kfree(%struct.apple_gmux_data* %322)
  %324 = load i32, i32* %13, align 4
  store i32 %324, i32* %3, align 4
  br label %325

325:                                              ; preds = %321, %284, %29, %21
  %326 = load i32, i32* %3, align 4
  ret i32 %326
}

declare dso_local %struct.apple_gmux_data* @kzalloc(i32, i32) #1

declare dso_local i32 @pnp_set_drvdata(%struct.pnp_dev*, %struct.apple_gmux_data*) #1

declare dso_local %struct.resource* @pnp_get_resource(%struct.pnp_dev*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @request_region(i64, i64, i8*) #1

declare dso_local i32 @gmux_read8(%struct.apple_gmux_data*, i32) #1

declare dso_local i64 @gmux_is_indexed(%struct.apple_gmux_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i8* @gmux_read32(%struct.apple_gmux_data*, i32) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @memset(%struct.backlight_properties*, i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.backlight_device* @backlight_device_register(i8*, i32*, %struct.apple_gmux_data*, i32*, %struct.backlight_properties*) #1

declare dso_local i64 @IS_ERR(%struct.backlight_device*) #1

declare dso_local i32 @PTR_ERR(%struct.backlight_device*) #1

declare dso_local i32 @gmux_get_brightness(%struct.backlight_device*) #1

declare dso_local i32 @backlight_update_status(%struct.backlight_device*) #1

declare dso_local i32 @acpi_video_set_dmi_backlight_type(i32) #1

declare dso_local i32 @apple_bl_unregister(...) #1

declare dso_local i32 @ACPI_HANDLE(i32*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @acpi_evaluate_integer(i32, i8*, i32*, i64*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @acpi_install_notify_handler(i32, i32, i32*, %struct.pnp_dev*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_format_exception(i32) #1

declare dso_local i32 @acpi_enable_gpe(i32*, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @bus_for_each_dev(i32*, i32*, i32*, i32) #1

declare dso_local i32 @gmux_write8(%struct.apple_gmux_data*, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @gmux_enable_interrupts(%struct.apple_gmux_data*) #1

declare dso_local i32 @gmux_read_switch_state(%struct.apple_gmux_data*) #1

declare dso_local i32 @vga_switcheroo_register_handler(i32*, i32) #1

declare dso_local i32 @gmux_disable_interrupts(%struct.apple_gmux_data*) #1

declare dso_local i32 @acpi_disable_gpe(i32*, i32) #1

declare dso_local i32 @acpi_remove_notify_handler(i32, i32, i32*) #1

declare dso_local i32 @backlight_device_unregister(%struct.backlight_device*) #1

declare dso_local i32 @release_region(i64, i64) #1

declare dso_local i32 @kfree(%struct.apple_gmux_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
