; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_hid.c_hidg_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_hid.c_hidg_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i8* }
%struct.TYPE_24__ = type { i32, i8* }
%struct.TYPE_25__ = type { i8* }
%struct.TYPE_16__ = type { i32, i8* }
%struct.TYPE_22__ = type { i32, i8* }
%struct.TYPE_23__ = type { i8* }
%struct.TYPE_15__ = type { i32, i8* }
%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i8*, i32 }
%struct.usb_configuration = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.usb_function = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.usb_ep = type { i32 }
%struct.f_hidg = type { i32, i32*, %struct.usb_ep*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.usb_ep* }
%struct.usb_string = type { i32 }
%struct.device = type { i32 }

@ct_func_strings = common dso_local global i32 0, align 4
@ct_func_string_defs = common dso_local global i32 0, align 4
@CT_FUNC_HID_IDX = common dso_local global i64 0, align 8
@hidg_interface_desc = common dso_local global %struct.TYPE_26__ zeroinitializer, align 4
@ENODEV = common dso_local global i32 0, align 4
@hidg_fs_in_ep_desc = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@hidg_fs_out_ep_desc = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@HID_REPORT_PROTOCOL = common dso_local global i32 0, align 4
@hidg_ss_in_ep_desc = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@hidg_ss_in_comp_desc = common dso_local global %struct.TYPE_25__ zeroinitializer, align 8
@hidg_hs_in_ep_desc = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@hidg_ss_out_ep_desc = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8
@hidg_ss_out_comp_desc = common dso_local global %struct.TYPE_23__ zeroinitializer, align 8
@hidg_hs_out_ep_desc = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@HID_DT_REPORT = common dso_local global i32 0, align 4
@hidg_desc = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@hidg_fs_descriptors = common dso_local global i32 0, align 4
@hidg_hs_descriptors = common dso_local global i32 0, align 4
@hidg_ss_descriptors = common dso_local global i32 0, align 4
@f_hidg_fops = common dso_local global i32 0, align 4
@major = common dso_local global i32 0, align 4
@hidg_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"hidg\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"hidg_bind FAILED\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_configuration*, %struct.usb_function*)* @hidg_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidg_bind(%struct.usb_configuration* %0, %struct.usb_function* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_configuration*, align 8
  %5 = alloca %struct.usb_function*, align 8
  %6 = alloca %struct.usb_ep*, align 8
  %7 = alloca %struct.f_hidg*, align 8
  %8 = alloca %struct.usb_string*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usb_configuration* %0, %struct.usb_configuration** %4, align 8
  store %struct.usb_function* %1, %struct.usb_function** %5, align 8
  %12 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %13 = call %struct.f_hidg* @func_to_hidg(%struct.usb_function* %12)
  store %struct.f_hidg* %13, %struct.f_hidg** %7, align 8
  %14 = load %struct.usb_configuration*, %struct.usb_configuration** %4, align 8
  %15 = getelementptr inbounds %struct.usb_configuration, %struct.usb_configuration* %14, i32 0, i32 0
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %17 = load i32, i32* @ct_func_strings, align 4
  %18 = load i32, i32* @ct_func_string_defs, align 4
  %19 = call i32 @ARRAY_SIZE(i32 %18)
  %20 = call %struct.usb_string* @usb_gstrings_attach(%struct.TYPE_20__* %16, i32 %17, i32 %19)
  store %struct.usb_string* %20, %struct.usb_string** %8, align 8
  %21 = load %struct.usb_string*, %struct.usb_string** %8, align 8
  %22 = call i64 @IS_ERR(%struct.usb_string* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.usb_string*, %struct.usb_string** %8, align 8
  %26 = call i32 @PTR_ERR(%struct.usb_string* %25)
  store i32 %26, i32* %3, align 4
  br label %213

27:                                               ; preds = %2
  %28 = load %struct.usb_string*, %struct.usb_string** %8, align 8
  %29 = load i64, i64* @CT_FUNC_HID_IDX, align 8
  %30 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %28, i64 %29
  %31 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @hidg_interface_desc, i32 0, i32 3), align 4
  %33 = load %struct.usb_configuration*, %struct.usb_configuration** %4, align 8
  %34 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %35 = call i32 @usb_interface_id(%struct.usb_configuration* %33, %struct.usb_function* %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  br label %192

39:                                               ; preds = %27
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @hidg_interface_desc, i32 0, i32 0), align 4
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %10, align 4
  %43 = load %struct.usb_configuration*, %struct.usb_configuration** %4, align 8
  %44 = getelementptr inbounds %struct.usb_configuration, %struct.usb_configuration* %43, i32 0, i32 0
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.usb_ep* @usb_ep_autoconfig(i32 %47, %struct.TYPE_21__* @hidg_fs_in_ep_desc)
  store %struct.usb_ep* %48, %struct.usb_ep** %6, align 8
  %49 = load %struct.usb_ep*, %struct.usb_ep** %6, align 8
  %50 = icmp ne %struct.usb_ep* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %39
  br label %192

52:                                               ; preds = %39
  %53 = load %struct.usb_ep*, %struct.usb_ep** %6, align 8
  %54 = load %struct.f_hidg*, %struct.f_hidg** %7, align 8
  %55 = getelementptr inbounds %struct.f_hidg, %struct.f_hidg* %54, i32 0, i32 2
  store %struct.usb_ep* %53, %struct.usb_ep** %55, align 8
  %56 = load %struct.usb_configuration*, %struct.usb_configuration** %4, align 8
  %57 = getelementptr inbounds %struct.usb_configuration, %struct.usb_configuration* %56, i32 0, i32 0
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call %struct.usb_ep* @usb_ep_autoconfig(i32 %60, %struct.TYPE_21__* @hidg_fs_out_ep_desc)
  store %struct.usb_ep* %61, %struct.usb_ep** %6, align 8
  %62 = load %struct.usb_ep*, %struct.usb_ep** %6, align 8
  %63 = icmp ne %struct.usb_ep* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %52
  br label %192

65:                                               ; preds = %52
  %66 = load %struct.usb_ep*, %struct.usb_ep** %6, align 8
  %67 = load %struct.f_hidg*, %struct.f_hidg** %7, align 8
  %68 = getelementptr inbounds %struct.f_hidg, %struct.f_hidg* %67, i32 0, i32 15
  store %struct.usb_ep* %66, %struct.usb_ep** %68, align 8
  %69 = load %struct.f_hidg*, %struct.f_hidg** %7, align 8
  %70 = getelementptr inbounds %struct.f_hidg, %struct.f_hidg* %69, i32 0, i32 14
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @hidg_interface_desc, i32 0, i32 2), align 4
  %72 = load %struct.f_hidg*, %struct.f_hidg** %7, align 8
  %73 = getelementptr inbounds %struct.f_hidg, %struct.f_hidg* %72, i32 0, i32 13
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @hidg_interface_desc, i32 0, i32 1), align 4
  %75 = load i32, i32* @HID_REPORT_PROTOCOL, align 4
  %76 = load %struct.f_hidg*, %struct.f_hidg** %7, align 8
  %77 = getelementptr inbounds %struct.f_hidg, %struct.f_hidg* %76, i32 0, i32 12
  store i32 %75, i32* %77, align 4
  %78 = load %struct.f_hidg*, %struct.f_hidg** %7, align 8
  %79 = getelementptr inbounds %struct.f_hidg, %struct.f_hidg* %78, i32 0, i32 11
  %80 = load i32, i32* %79, align 8
  %81 = call i8* @cpu_to_le16(i32 %80)
  store i8* %81, i8** getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @hidg_ss_in_ep_desc, i32 0, i32 1), align 8
  %82 = load %struct.f_hidg*, %struct.f_hidg** %7, align 8
  %83 = getelementptr inbounds %struct.f_hidg, %struct.f_hidg* %82, i32 0, i32 11
  %84 = load i32, i32* %83, align 8
  %85 = call i8* @cpu_to_le16(i32 %84)
  store i8* %85, i8** getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @hidg_ss_in_comp_desc, i32 0, i32 0), align 8
  %86 = load %struct.f_hidg*, %struct.f_hidg** %7, align 8
  %87 = getelementptr inbounds %struct.f_hidg, %struct.f_hidg* %86, i32 0, i32 11
  %88 = load i32, i32* %87, align 8
  %89 = call i8* @cpu_to_le16(i32 %88)
  store i8* %89, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @hidg_hs_in_ep_desc, i32 0, i32 1), align 8
  %90 = load %struct.f_hidg*, %struct.f_hidg** %7, align 8
  %91 = getelementptr inbounds %struct.f_hidg, %struct.f_hidg* %90, i32 0, i32 11
  %92 = load i32, i32* %91, align 8
  %93 = call i8* @cpu_to_le16(i32 %92)
  store i8* %93, i8** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @hidg_fs_in_ep_desc, i32 0, i32 1), align 8
  %94 = load %struct.f_hidg*, %struct.f_hidg** %7, align 8
  %95 = getelementptr inbounds %struct.f_hidg, %struct.f_hidg* %94, i32 0, i32 11
  %96 = load i32, i32* %95, align 8
  %97 = call i8* @cpu_to_le16(i32 %96)
  store i8* %97, i8** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @hidg_ss_out_ep_desc, i32 0, i32 1), align 8
  %98 = load %struct.f_hidg*, %struct.f_hidg** %7, align 8
  %99 = getelementptr inbounds %struct.f_hidg, %struct.f_hidg* %98, i32 0, i32 11
  %100 = load i32, i32* %99, align 8
  %101 = call i8* @cpu_to_le16(i32 %100)
  store i8* %101, i8** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @hidg_ss_out_comp_desc, i32 0, i32 0), align 8
  %102 = load %struct.f_hidg*, %struct.f_hidg** %7, align 8
  %103 = getelementptr inbounds %struct.f_hidg, %struct.f_hidg* %102, i32 0, i32 11
  %104 = load i32, i32* %103, align 8
  %105 = call i8* @cpu_to_le16(i32 %104)
  store i8* %105, i8** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hidg_hs_out_ep_desc, i32 0, i32 1), align 8
  %106 = load %struct.f_hidg*, %struct.f_hidg** %7, align 8
  %107 = getelementptr inbounds %struct.f_hidg, %struct.f_hidg* %106, i32 0, i32 11
  %108 = load i32, i32* %107, align 8
  %109 = call i8* @cpu_to_le16(i32 %108)
  store i8* %109, i8** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @hidg_fs_out_ep_desc, i32 0, i32 1), align 8
  %110 = load i32, i32* @HID_DT_REPORT, align 4
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @hidg_desc, i32 0, i32 0), align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i64 0
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 1
  store i32 %110, i32* %113, align 8
  %114 = load %struct.f_hidg*, %struct.f_hidg** %7, align 8
  %115 = getelementptr inbounds %struct.f_hidg, %struct.f_hidg* %114, i32 0, i32 10
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @cpu_to_le16(i32 %116)
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @hidg_desc, i32 0, i32 0), align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i64 0
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 0
  store i8* %117, i8** %120, align 8
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @hidg_fs_in_ep_desc, i32 0, i32 0), align 8
  store i32 %121, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @hidg_hs_in_ep_desc, i32 0, i32 0), align 8
  %122 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @hidg_fs_out_ep_desc, i32 0, i32 0), align 8
  store i32 %122, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hidg_hs_out_ep_desc, i32 0, i32 0), align 8
  %123 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @hidg_fs_in_ep_desc, i32 0, i32 0), align 8
  store i32 %123, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @hidg_ss_in_ep_desc, i32 0, i32 0), align 8
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @hidg_fs_out_ep_desc, i32 0, i32 0), align 8
  store i32 %124, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @hidg_ss_out_ep_desc, i32 0, i32 0), align 8
  %125 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %126 = load i32, i32* @hidg_fs_descriptors, align 4
  %127 = load i32, i32* @hidg_hs_descriptors, align 4
  %128 = load i32, i32* @hidg_ss_descriptors, align 4
  %129 = call i32 @usb_assign_descriptors(%struct.usb_function* %125, i32 %126, i32 %127, i32 %128, i32* null)
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %10, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %65
  br label %192

133:                                              ; preds = %65
  %134 = load %struct.f_hidg*, %struct.f_hidg** %7, align 8
  %135 = getelementptr inbounds %struct.f_hidg, %struct.f_hidg* %134, i32 0, i32 9
  %136 = call i32 @spin_lock_init(i32* %135)
  %137 = load %struct.f_hidg*, %struct.f_hidg** %7, align 8
  %138 = getelementptr inbounds %struct.f_hidg, %struct.f_hidg* %137, i32 0, i32 0
  store i32 1, i32* %138, align 8
  %139 = load %struct.f_hidg*, %struct.f_hidg** %7, align 8
  %140 = getelementptr inbounds %struct.f_hidg, %struct.f_hidg* %139, i32 0, i32 1
  store i32* null, i32** %140, align 8
  %141 = load %struct.f_hidg*, %struct.f_hidg** %7, align 8
  %142 = getelementptr inbounds %struct.f_hidg, %struct.f_hidg* %141, i32 0, i32 8
  %143 = call i32 @spin_lock_init(i32* %142)
  %144 = load %struct.f_hidg*, %struct.f_hidg** %7, align 8
  %145 = getelementptr inbounds %struct.f_hidg, %struct.f_hidg* %144, i32 0, i32 7
  %146 = call i32 @init_waitqueue_head(i32* %145)
  %147 = load %struct.f_hidg*, %struct.f_hidg** %7, align 8
  %148 = getelementptr inbounds %struct.f_hidg, %struct.f_hidg* %147, i32 0, i32 6
  %149 = call i32 @init_waitqueue_head(i32* %148)
  %150 = load %struct.f_hidg*, %struct.f_hidg** %7, align 8
  %151 = getelementptr inbounds %struct.f_hidg, %struct.f_hidg* %150, i32 0, i32 5
  %152 = call i32 @INIT_LIST_HEAD(i32* %151)
  %153 = load %struct.f_hidg*, %struct.f_hidg** %7, align 8
  %154 = getelementptr inbounds %struct.f_hidg, %struct.f_hidg* %153, i32 0, i32 3
  %155 = call i32 @cdev_init(i32* %154, i32* @f_hidg_fops)
  %156 = load i32, i32* @major, align 4
  %157 = load %struct.f_hidg*, %struct.f_hidg** %7, align 8
  %158 = getelementptr inbounds %struct.f_hidg, %struct.f_hidg* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @MKDEV(i32 %156, i32 %159)
  store i32 %160, i32* %11, align 4
  %161 = load %struct.f_hidg*, %struct.f_hidg** %7, align 8
  %162 = getelementptr inbounds %struct.f_hidg, %struct.f_hidg* %161, i32 0, i32 3
  %163 = load i32, i32* %11, align 4
  %164 = call i32 @cdev_add(i32* %162, i32 %163, i32 1)
  store i32 %164, i32* %10, align 4
  %165 = load i32, i32* %10, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %133
  br label %189

168:                                              ; preds = %133
  %169 = load i32, i32* @hidg_class, align 4
  %170 = load i32, i32* %11, align 4
  %171 = load %struct.f_hidg*, %struct.f_hidg** %7, align 8
  %172 = getelementptr inbounds %struct.f_hidg, %struct.f_hidg* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 4
  %174 = call %struct.usb_string* @device_create(i32 %169, i32* null, i32 %170, i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %173)
  %175 = bitcast %struct.usb_string* %174 to %struct.device*
  store %struct.device* %175, %struct.device** %9, align 8
  %176 = load %struct.device*, %struct.device** %9, align 8
  %177 = bitcast %struct.device* %176 to %struct.usb_string*
  %178 = call i64 @IS_ERR(%struct.usb_string* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %168
  %181 = load %struct.device*, %struct.device** %9, align 8
  %182 = bitcast %struct.device* %181 to %struct.usb_string*
  %183 = call i32 @PTR_ERR(%struct.usb_string* %182)
  store i32 %183, i32* %10, align 4
  br label %185

184:                                              ; preds = %168
  store i32 0, i32* %3, align 4
  br label %213

185:                                              ; preds = %180
  %186 = load %struct.f_hidg*, %struct.f_hidg** %7, align 8
  %187 = getelementptr inbounds %struct.f_hidg, %struct.f_hidg* %186, i32 0, i32 3
  %188 = call i32 @cdev_del(i32* %187)
  br label %189

189:                                              ; preds = %185, %167
  %190 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %191 = call i32 @usb_free_all_descriptors(%struct.usb_function* %190)
  br label %192

192:                                              ; preds = %189, %132, %64, %51, %38
  %193 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %194 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %193, i32 0, i32 0
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @ERROR(i32 %197, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %199 = load %struct.f_hidg*, %struct.f_hidg** %7, align 8
  %200 = getelementptr inbounds %struct.f_hidg, %struct.f_hidg* %199, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = icmp ne i32* %201, null
  br i1 %202, label %203, label %211

203:                                              ; preds = %192
  %204 = load %struct.f_hidg*, %struct.f_hidg** %7, align 8
  %205 = getelementptr inbounds %struct.f_hidg, %struct.f_hidg* %204, i32 0, i32 2
  %206 = load %struct.usb_ep*, %struct.usb_ep** %205, align 8
  %207 = load %struct.f_hidg*, %struct.f_hidg** %7, align 8
  %208 = getelementptr inbounds %struct.f_hidg, %struct.f_hidg* %207, i32 0, i32 1
  %209 = load i32*, i32** %208, align 8
  %210 = call i32 @free_ep_req(%struct.usb_ep* %206, i32* %209)
  br label %211

211:                                              ; preds = %203, %192
  %212 = load i32, i32* %10, align 4
  store i32 %212, i32* %3, align 4
  br label %213

213:                                              ; preds = %211, %184, %24
  %214 = load i32, i32* %3, align 4
  ret i32 %214
}

declare dso_local %struct.f_hidg* @func_to_hidg(%struct.usb_function*) #1

declare dso_local %struct.usb_string* @usb_gstrings_attach(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i64 @IS_ERR(%struct.usb_string*) #1

declare dso_local i32 @PTR_ERR(%struct.usb_string*) #1

declare dso_local i32 @usb_interface_id(%struct.usb_configuration*, %struct.usb_function*) #1

declare dso_local %struct.usb_ep* @usb_ep_autoconfig(i32, %struct.TYPE_21__*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @usb_assign_descriptors(%struct.usb_function*, i32, i32, i32, i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @cdev_init(i32*, i32*) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @cdev_add(i32*, i32, i32) #1

declare dso_local %struct.usb_string* @device_create(i32, i32*, i32, i32*, i8*, i8*, i32) #1

declare dso_local i32 @cdev_del(i32*) #1

declare dso_local i32 @usb_free_all_descriptors(%struct.usb_function*) #1

declare dso_local i32 @ERROR(i32, i8*) #1

declare dso_local i32 @free_ep_req(%struct.usb_ep*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
