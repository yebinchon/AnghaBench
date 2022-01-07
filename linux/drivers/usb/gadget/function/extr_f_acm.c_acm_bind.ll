; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_acm.c_acm_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_acm.c_acm_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_33__ = type { i32, i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_34__ = type { i32 }
%struct.usb_configuration = type { %struct.usb_composite_dev* }
%struct.usb_composite_dev = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i32 }
%struct.usb_function = type { i32 }
%struct.f_acm = type { i32, i32, %struct.TYPE_32__*, %struct.usb_ep*, %struct.TYPE_28__, i32 }
%struct.TYPE_32__ = type { %struct.f_acm*, i32 }
%struct.usb_ep = type { i32 }
%struct.TYPE_28__ = type { %struct.usb_ep*, %struct.usb_ep* }
%struct.usb_string = type { i32 }

@acm_strings = common dso_local global i32 0, align 4
@acm_string_defs = common dso_local global i32 0, align 4
@ACM_CTRL_IDX = common dso_local global i64 0, align 8
@acm_control_interface_desc = common dso_local global %struct.TYPE_27__ zeroinitializer, align 4
@ACM_DATA_IDX = common dso_local global i64 0, align 8
@acm_data_interface_desc = common dso_local global %struct.TYPE_26__ zeroinitializer, align 4
@ACM_IAD_IDX = common dso_local global i64 0, align 8
@acm_iad_descriptor = common dso_local global %struct.TYPE_22__ zeroinitializer, align 4
@acm_union_desc = common dso_local global %struct.TYPE_33__ zeroinitializer, align 4
@acm_call_mgmt_descriptor = common dso_local global %struct.TYPE_29__ zeroinitializer, align 4
@ENODEV = common dso_local global i32 0, align 4
@acm_fs_in_desc = common dso_local global %struct.TYPE_31__ zeroinitializer, align 4
@acm_fs_out_desc = common dso_local global %struct.TYPE_31__ zeroinitializer, align 4
@acm_fs_notify_desc = common dso_local global %struct.TYPE_31__ zeroinitializer, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@acm_cdc_notify_complete = common dso_local global i32 0, align 4
@acm_hs_in_desc = common dso_local global %struct.TYPE_25__ zeroinitializer, align 4
@acm_hs_out_desc = common dso_local global %struct.TYPE_23__ zeroinitializer, align 4
@acm_hs_notify_desc = common dso_local global %struct.TYPE_24__ zeroinitializer, align 4
@acm_ss_in_desc = common dso_local global %struct.TYPE_21__ zeroinitializer, align 4
@acm_ss_out_desc = common dso_local global %struct.TYPE_34__ zeroinitializer, align 4
@acm_fs_function = common dso_local global i32 0, align 4
@acm_hs_function = common dso_local global i32 0, align 4
@acm_ss_function = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"acm ttyGS%d: %s speed IN/%s OUT/%s NOTIFY/%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"super\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"dual\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"%s/%p: can't bind, err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_configuration*, %struct.usb_function*)* @acm_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acm_bind(%struct.usb_configuration* %0, %struct.usb_function* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_configuration*, align 8
  %5 = alloca %struct.usb_function*, align 8
  %6 = alloca %struct.usb_composite_dev*, align 8
  %7 = alloca %struct.f_acm*, align 8
  %8 = alloca %struct.usb_string*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.usb_ep*, align 8
  store %struct.usb_configuration* %0, %struct.usb_configuration** %4, align 8
  store %struct.usb_function* %1, %struct.usb_function** %5, align 8
  %11 = load %struct.usb_configuration*, %struct.usb_configuration** %4, align 8
  %12 = getelementptr inbounds %struct.usb_configuration, %struct.usb_configuration* %11, i32 0, i32 0
  %13 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %12, align 8
  store %struct.usb_composite_dev* %13, %struct.usb_composite_dev** %6, align 8
  %14 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %15 = call %struct.f_acm* @func_to_acm(%struct.usb_function* %14)
  store %struct.f_acm* %15, %struct.f_acm** %7, align 8
  %16 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %17 = load i32, i32* @acm_strings, align 4
  %18 = load i32, i32* @acm_string_defs, align 4
  %19 = call i32 @ARRAY_SIZE(i32 %18)
  %20 = call %struct.usb_string* @usb_gstrings_attach(%struct.usb_composite_dev* %16, i32 %17, i32 %19)
  store %struct.usb_string* %20, %struct.usb_string** %8, align 8
  %21 = load %struct.usb_string*, %struct.usb_string** %8, align 8
  %22 = call i64 @IS_ERR(%struct.usb_string* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.usb_string*, %struct.usb_string** %8, align 8
  %26 = call i32 @PTR_ERR(%struct.usb_string* %25)
  store i32 %26, i32* %3, align 4
  br label %208

27:                                               ; preds = %2
  %28 = load %struct.usb_string*, %struct.usb_string** %8, align 8
  %29 = load i64, i64* @ACM_CTRL_IDX, align 8
  %30 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %28, i64 %29
  %31 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @acm_control_interface_desc, i32 0, i32 1), align 4
  %33 = load %struct.usb_string*, %struct.usb_string** %8, align 8
  %34 = load i64, i64* @ACM_DATA_IDX, align 8
  %35 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %33, i64 %34
  %36 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @acm_data_interface_desc, i32 0, i32 1), align 4
  %38 = load %struct.usb_string*, %struct.usb_string** %8, align 8
  %39 = load i64, i64* @ACM_IAD_IDX, align 8
  %40 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %38, i64 %39
  %41 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @acm_iad_descriptor, i32 0, i32 1), align 4
  %43 = load %struct.usb_configuration*, %struct.usb_configuration** %4, align 8
  %44 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %45 = call i32 @usb_interface_id(%struct.usb_configuration* %43, %struct.usb_function* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %27
  br label %186

49:                                               ; preds = %27
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.f_acm*, %struct.f_acm** %7, align 8
  %52 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @acm_iad_descriptor, i32 0, i32 0), align 4
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @acm_control_interface_desc, i32 0, i32 0), align 4
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* getelementptr inbounds (%struct.TYPE_33__, %struct.TYPE_33__* @acm_union_desc, i32 0, i32 0), align 4
  %56 = load %struct.usb_configuration*, %struct.usb_configuration** %4, align 8
  %57 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %58 = call i32 @usb_interface_id(%struct.usb_configuration* %56, %struct.usb_function* %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  br label %186

62:                                               ; preds = %49
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.f_acm*, %struct.f_acm** %7, align 8
  %65 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @acm_data_interface_desc, i32 0, i32 0), align 4
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* getelementptr inbounds (%struct.TYPE_33__, %struct.TYPE_33__* @acm_union_desc, i32 0, i32 1), align 4
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @acm_call_mgmt_descriptor, i32 0, i32 0), align 4
  %69 = load i32, i32* @ENODEV, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %9, align 4
  %71 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %72 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %71, i32 0, i32 0
  %73 = load %struct.TYPE_30__*, %struct.TYPE_30__** %72, align 8
  %74 = call %struct.usb_ep* @usb_ep_autoconfig(%struct.TYPE_30__* %73, %struct.TYPE_31__* @acm_fs_in_desc)
  store %struct.usb_ep* %74, %struct.usb_ep** %10, align 8
  %75 = load %struct.usb_ep*, %struct.usb_ep** %10, align 8
  %76 = icmp ne %struct.usb_ep* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %62
  br label %186

78:                                               ; preds = %62
  %79 = load %struct.usb_ep*, %struct.usb_ep** %10, align 8
  %80 = load %struct.f_acm*, %struct.f_acm** %7, align 8
  %81 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %81, i32 0, i32 1
  store %struct.usb_ep* %79, %struct.usb_ep** %82, align 8
  %83 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %84 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %83, i32 0, i32 0
  %85 = load %struct.TYPE_30__*, %struct.TYPE_30__** %84, align 8
  %86 = call %struct.usb_ep* @usb_ep_autoconfig(%struct.TYPE_30__* %85, %struct.TYPE_31__* @acm_fs_out_desc)
  store %struct.usb_ep* %86, %struct.usb_ep** %10, align 8
  %87 = load %struct.usb_ep*, %struct.usb_ep** %10, align 8
  %88 = icmp ne %struct.usb_ep* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %78
  br label %186

90:                                               ; preds = %78
  %91 = load %struct.usb_ep*, %struct.usb_ep** %10, align 8
  %92 = load %struct.f_acm*, %struct.f_acm** %7, align 8
  %93 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %93, i32 0, i32 0
  store %struct.usb_ep* %91, %struct.usb_ep** %94, align 8
  %95 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %96 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %95, i32 0, i32 0
  %97 = load %struct.TYPE_30__*, %struct.TYPE_30__** %96, align 8
  %98 = call %struct.usb_ep* @usb_ep_autoconfig(%struct.TYPE_30__* %97, %struct.TYPE_31__* @acm_fs_notify_desc)
  store %struct.usb_ep* %98, %struct.usb_ep** %10, align 8
  %99 = load %struct.usb_ep*, %struct.usb_ep** %10, align 8
  %100 = icmp ne %struct.usb_ep* %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %90
  br label %186

102:                                              ; preds = %90
  %103 = load %struct.usb_ep*, %struct.usb_ep** %10, align 8
  %104 = load %struct.f_acm*, %struct.f_acm** %7, align 8
  %105 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %104, i32 0, i32 3
  store %struct.usb_ep* %103, %struct.usb_ep** %105, align 8
  %106 = load %struct.usb_ep*, %struct.usb_ep** %10, align 8
  %107 = load i32, i32* @GFP_KERNEL, align 4
  %108 = call %struct.TYPE_32__* @gs_alloc_req(%struct.usb_ep* %106, i32 6, i32 %107)
  %109 = load %struct.f_acm*, %struct.f_acm** %7, align 8
  %110 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %109, i32 0, i32 2
  store %struct.TYPE_32__* %108, %struct.TYPE_32__** %110, align 8
  %111 = load %struct.f_acm*, %struct.f_acm** %7, align 8
  %112 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %111, i32 0, i32 2
  %113 = load %struct.TYPE_32__*, %struct.TYPE_32__** %112, align 8
  %114 = icmp ne %struct.TYPE_32__* %113, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %102
  br label %186

116:                                              ; preds = %102
  %117 = load i32, i32* @acm_cdc_notify_complete, align 4
  %118 = load %struct.f_acm*, %struct.f_acm** %7, align 8
  %119 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %118, i32 0, i32 2
  %120 = load %struct.TYPE_32__*, %struct.TYPE_32__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %120, i32 0, i32 1
  store i32 %117, i32* %121, align 8
  %122 = load %struct.f_acm*, %struct.f_acm** %7, align 8
  %123 = load %struct.f_acm*, %struct.f_acm** %7, align 8
  %124 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %123, i32 0, i32 2
  %125 = load %struct.TYPE_32__*, %struct.TYPE_32__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %125, i32 0, i32 0
  store %struct.f_acm* %122, %struct.f_acm** %126, align 8
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @acm_fs_in_desc, i32 0, i32 0), align 4
  store i32 %127, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @acm_hs_in_desc, i32 0, i32 0), align 4
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @acm_fs_out_desc, i32 0, i32 0), align 4
  store i32 %128, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @acm_hs_out_desc, i32 0, i32 0), align 4
  %129 = load i32, i32* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @acm_fs_notify_desc, i32 0, i32 0), align 4
  store i32 %129, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @acm_hs_notify_desc, i32 0, i32 0), align 4
  %130 = load i32, i32* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @acm_fs_in_desc, i32 0, i32 0), align 4
  store i32 %130, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @acm_ss_in_desc, i32 0, i32 0), align 4
  %131 = load i32, i32* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @acm_fs_out_desc, i32 0, i32 0), align 4
  store i32 %131, i32* getelementptr inbounds (%struct.TYPE_34__, %struct.TYPE_34__* @acm_ss_out_desc, i32 0, i32 0), align 4
  %132 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %133 = load i32, i32* @acm_fs_function, align 4
  %134 = load i32, i32* @acm_hs_function, align 4
  %135 = load i32, i32* @acm_ss_function, align 4
  %136 = call i32 @usb_assign_descriptors(%struct.usb_function* %132, i32 %133, i32 %134, i32 %135, i32* null)
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* %9, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %116
  br label %186

140:                                              ; preds = %116
  %141 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %142 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %141, i32 0, i32 0
  %143 = load %struct.TYPE_30__*, %struct.TYPE_30__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %143, i32 0, i32 0
  %145 = load %struct.f_acm*, %struct.f_acm** %7, align 8
  %146 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.usb_configuration*, %struct.usb_configuration** %4, align 8
  %149 = getelementptr inbounds %struct.usb_configuration, %struct.usb_configuration* %148, i32 0, i32 0
  %150 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %149, align 8
  %151 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %150, i32 0, i32 0
  %152 = load %struct.TYPE_30__*, %struct.TYPE_30__** %151, align 8
  %153 = call i64 @gadget_is_superspeed(%struct.TYPE_30__* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %140
  br label %166

156:                                              ; preds = %140
  %157 = load %struct.usb_configuration*, %struct.usb_configuration** %4, align 8
  %158 = getelementptr inbounds %struct.usb_configuration, %struct.usb_configuration* %157, i32 0, i32 0
  %159 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %158, align 8
  %160 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %159, i32 0, i32 0
  %161 = load %struct.TYPE_30__*, %struct.TYPE_30__** %160, align 8
  %162 = call i64 @gadget_is_dualspeed(%struct.TYPE_30__* %161)
  %163 = icmp ne i64 %162, 0
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  br label %166

166:                                              ; preds = %156, %155
  %167 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %155 ], [ %165, %156 ]
  %168 = load %struct.f_acm*, %struct.f_acm** %7, align 8
  %169 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %168, i32 0, i32 4
  %170 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %169, i32 0, i32 1
  %171 = load %struct.usb_ep*, %struct.usb_ep** %170, align 8
  %172 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.f_acm*, %struct.f_acm** %7, align 8
  %175 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %174, i32 0, i32 4
  %176 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %175, i32 0, i32 0
  %177 = load %struct.usb_ep*, %struct.usb_ep** %176, align 8
  %178 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.f_acm*, %struct.f_acm** %7, align 8
  %181 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %180, i32 0, i32 3
  %182 = load %struct.usb_ep*, %struct.usb_ep** %181, align 8
  %183 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @dev_dbg(i32* %144, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %147, i8* %167, i32 %173, i32 %179, i32 %184)
  store i32 0, i32* %3, align 4
  br label %208

186:                                              ; preds = %139, %115, %101, %89, %77, %61, %48
  %187 = load %struct.f_acm*, %struct.f_acm** %7, align 8
  %188 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %187, i32 0, i32 2
  %189 = load %struct.TYPE_32__*, %struct.TYPE_32__** %188, align 8
  %190 = icmp ne %struct.TYPE_32__* %189, null
  br i1 %190, label %191, label %199

191:                                              ; preds = %186
  %192 = load %struct.f_acm*, %struct.f_acm** %7, align 8
  %193 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %192, i32 0, i32 3
  %194 = load %struct.usb_ep*, %struct.usb_ep** %193, align 8
  %195 = load %struct.f_acm*, %struct.f_acm** %7, align 8
  %196 = getelementptr inbounds %struct.f_acm, %struct.f_acm* %195, i32 0, i32 2
  %197 = load %struct.TYPE_32__*, %struct.TYPE_32__** %196, align 8
  %198 = call i32 @gs_free_req(%struct.usb_ep* %194, %struct.TYPE_32__* %197)
  br label %199

199:                                              ; preds = %191, %186
  %200 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %201 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %202 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %205 = load i32, i32* %9, align 4
  %206 = call i32 @ERROR(%struct.usb_composite_dev* %200, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %203, %struct.usb_function* %204, i32 %205)
  %207 = load i32, i32* %9, align 4
  store i32 %207, i32* %3, align 4
  br label %208

208:                                              ; preds = %199, %166, %24
  %209 = load i32, i32* %3, align 4
  ret i32 %209
}

declare dso_local %struct.f_acm* @func_to_acm(%struct.usb_function*) #1

declare dso_local %struct.usb_string* @usb_gstrings_attach(%struct.usb_composite_dev*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i64 @IS_ERR(%struct.usb_string*) #1

declare dso_local i32 @PTR_ERR(%struct.usb_string*) #1

declare dso_local i32 @usb_interface_id(%struct.usb_configuration*, %struct.usb_function*) #1

declare dso_local %struct.usb_ep* @usb_ep_autoconfig(%struct.TYPE_30__*, %struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_32__* @gs_alloc_req(%struct.usb_ep*, i32, i32) #1

declare dso_local i32 @usb_assign_descriptors(%struct.usb_function*, i32, i32, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i64 @gadget_is_superspeed(%struct.TYPE_30__*) #1

declare dso_local i64 @gadget_is_dualspeed(%struct.TYPE_30__*) #1

declare dso_local i32 @gs_free_req(%struct.usb_ep*, %struct.TYPE_32__*) #1

declare dso_local i32 @ERROR(%struct.usb_composite_dev*, i8*, i32, %struct.usb_function*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
