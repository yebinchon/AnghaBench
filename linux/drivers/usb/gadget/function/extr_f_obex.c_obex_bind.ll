; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_obex.c_obex_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_obex.c_obex_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.usb_configuration = type { %struct.usb_composite_dev* }
%struct.usb_composite_dev = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.usb_function = type { i32 }
%struct.f_obex = type { i32, i32, %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { %struct.usb_ep*, %struct.usb_ep* }
%struct.usb_ep = type { i32 }
%struct.usb_string = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@obex_strings = common dso_local global i32 0, align 4
@obex_string_defs = common dso_local global i32 0, align 4
@OBEX_CTRL_IDX = common dso_local global i64 0, align 8
@obex_control_intf = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@OBEX_DATA_IDX = common dso_local global i64 0, align 8
@obex_data_nop_intf = common dso_local global %struct.TYPE_20__ zeroinitializer, align 4
@obex_data_intf = common dso_local global %struct.TYPE_21__ zeroinitializer, align 4
@obex_cdc_union_desc = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@ENODEV = common dso_local global i32 0, align 4
@obex_fs_ep_in_desc = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@obex_fs_ep_out_desc = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@obex_hs_ep_in_desc = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4
@obex_hs_ep_out_desc = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@fs_function = common dso_local global i32 0, align 4
@hs_function = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"obex ttyGS%d: %s speed IN/%s OUT/%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"dual\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"%s/%p: can't bind, err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_configuration*, %struct.usb_function*)* @obex_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @obex_bind(%struct.usb_configuration* %0, %struct.usb_function* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_configuration*, align 8
  %5 = alloca %struct.usb_function*, align 8
  %6 = alloca %struct.usb_composite_dev*, align 8
  %7 = alloca %struct.f_obex*, align 8
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
  %15 = call %struct.f_obex* @func_to_obex(%struct.usb_function* %14)
  store %struct.f_obex* %15, %struct.f_obex** %7, align 8
  %16 = load %struct.usb_configuration*, %struct.usb_configuration** %4, align 8
  %17 = call i32 @can_support_obex(%struct.usb_configuration* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %149

22:                                               ; preds = %2
  %23 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %24 = load i32, i32* @obex_strings, align 4
  %25 = load i32, i32* @obex_string_defs, align 4
  %26 = call i32 @ARRAY_SIZE(i32 %25)
  %27 = call %struct.usb_string* @usb_gstrings_attach(%struct.usb_composite_dev* %23, i32 %24, i32 %26)
  store %struct.usb_string* %27, %struct.usb_string** %8, align 8
  %28 = load %struct.usb_string*, %struct.usb_string** %8, align 8
  %29 = call i64 @IS_ERR(%struct.usb_string* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load %struct.usb_string*, %struct.usb_string** %8, align 8
  %33 = call i32 @PTR_ERR(%struct.usb_string* %32)
  store i32 %33, i32* %3, align 4
  br label %149

34:                                               ; preds = %22
  %35 = load %struct.usb_string*, %struct.usb_string** %8, align 8
  %36 = load i64, i64* @OBEX_CTRL_IDX, align 8
  %37 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %35, i64 %36
  %38 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @obex_control_intf, i32 0, i32 1), align 4
  %40 = load %struct.usb_string*, %struct.usb_string** %8, align 8
  %41 = load i64, i64* @OBEX_DATA_IDX, align 8
  %42 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %40, i64 %41
  %43 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @obex_data_nop_intf, i32 0, i32 1), align 4
  %45 = load %struct.usb_string*, %struct.usb_string** %8, align 8
  %46 = load i64, i64* @OBEX_DATA_IDX, align 8
  %47 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %45, i64 %46
  %48 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @obex_data_intf, i32 0, i32 1), align 4
  %50 = load %struct.usb_configuration*, %struct.usb_configuration** %4, align 8
  %51 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %52 = call i32 @usb_interface_id(%struct.usb_configuration* %50, %struct.usb_function* %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %34
  br label %140

56:                                               ; preds = %34
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.f_obex*, %struct.f_obex** %7, align 8
  %59 = getelementptr inbounds %struct.f_obex, %struct.f_obex* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @obex_control_intf, i32 0, i32 0), align 4
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @obex_cdc_union_desc, i32 0, i32 0), align 4
  %62 = load %struct.usb_configuration*, %struct.usb_configuration** %4, align 8
  %63 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %64 = call i32 @usb_interface_id(%struct.usb_configuration* %62, %struct.usb_function* %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  br label %140

68:                                               ; preds = %56
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.f_obex*, %struct.f_obex** %7, align 8
  %71 = getelementptr inbounds %struct.f_obex, %struct.f_obex* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @obex_data_nop_intf, i32 0, i32 0), align 4
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @obex_data_intf, i32 0, i32 0), align 4
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @obex_cdc_union_desc, i32 0, i32 1), align 4
  %75 = load i32, i32* @ENODEV, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %9, align 4
  %77 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %78 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %77, i32 0, i32 0
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %78, align 8
  %80 = call %struct.usb_ep* @usb_ep_autoconfig(%struct.TYPE_16__* %79, %struct.TYPE_17__* @obex_fs_ep_in_desc)
  store %struct.usb_ep* %80, %struct.usb_ep** %10, align 8
  %81 = load %struct.usb_ep*, %struct.usb_ep** %10, align 8
  %82 = icmp ne %struct.usb_ep* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %68
  br label %140

84:                                               ; preds = %68
  %85 = load %struct.usb_ep*, %struct.usb_ep** %10, align 8
  %86 = load %struct.f_obex*, %struct.f_obex** %7, align 8
  %87 = getelementptr inbounds %struct.f_obex, %struct.f_obex* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 1
  store %struct.usb_ep* %85, %struct.usb_ep** %88, align 8
  %89 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %90 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %89, i32 0, i32 0
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %90, align 8
  %92 = call %struct.usb_ep* @usb_ep_autoconfig(%struct.TYPE_16__* %91, %struct.TYPE_17__* @obex_fs_ep_out_desc)
  store %struct.usb_ep* %92, %struct.usb_ep** %10, align 8
  %93 = load %struct.usb_ep*, %struct.usb_ep** %10, align 8
  %94 = icmp ne %struct.usb_ep* %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %84
  br label %140

96:                                               ; preds = %84
  %97 = load %struct.usb_ep*, %struct.usb_ep** %10, align 8
  %98 = load %struct.f_obex*, %struct.f_obex** %7, align 8
  %99 = getelementptr inbounds %struct.f_obex, %struct.f_obex* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  store %struct.usb_ep* %97, %struct.usb_ep** %100, align 8
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @obex_fs_ep_in_desc, i32 0, i32 0), align 4
  store i32 %101, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @obex_hs_ep_in_desc, i32 0, i32 0), align 4
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @obex_fs_ep_out_desc, i32 0, i32 0), align 4
  store i32 %102, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @obex_hs_ep_out_desc, i32 0, i32 0), align 4
  %103 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %104 = load i32, i32* @fs_function, align 4
  %105 = load i32, i32* @hs_function, align 4
  %106 = call i32 @usb_assign_descriptors(%struct.usb_function* %103, i32 %104, i32 %105, i32* null, i32* null)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %96
  br label %140

110:                                              ; preds = %96
  %111 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %112 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %111, i32 0, i32 0
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = load %struct.f_obex*, %struct.f_obex** %7, align 8
  %116 = getelementptr inbounds %struct.f_obex, %struct.f_obex* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.usb_configuration*, %struct.usb_configuration** %4, align 8
  %119 = getelementptr inbounds %struct.usb_configuration, %struct.usb_configuration* %118, i32 0, i32 0
  %120 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %119, align 8
  %121 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %120, i32 0, i32 0
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %121, align 8
  %123 = call i64 @gadget_is_dualspeed(%struct.TYPE_16__* %122)
  %124 = icmp ne i64 %123, 0
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %127 = load %struct.f_obex*, %struct.f_obex** %7, align 8
  %128 = getelementptr inbounds %struct.f_obex, %struct.f_obex* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 1
  %130 = load %struct.usb_ep*, %struct.usb_ep** %129, align 8
  %131 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.f_obex*, %struct.f_obex** %7, align 8
  %134 = getelementptr inbounds %struct.f_obex, %struct.f_obex* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 0
  %136 = load %struct.usb_ep*, %struct.usb_ep** %135, align 8
  %137 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @dev_dbg(i32* %114, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %117, i8* %126, i32 %132, i32 %138)
  store i32 0, i32* %3, align 4
  br label %149

140:                                              ; preds = %109, %95, %83, %67, %55
  %141 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %142 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %143 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @ERROR(%struct.usb_composite_dev* %141, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %144, %struct.usb_function* %145, i32 %146)
  %148 = load i32, i32* %9, align 4
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %140, %110, %31, %19
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local %struct.f_obex* @func_to_obex(%struct.usb_function*) #1

declare dso_local i32 @can_support_obex(%struct.usb_configuration*) #1

declare dso_local %struct.usb_string* @usb_gstrings_attach(%struct.usb_composite_dev*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i64 @IS_ERR(%struct.usb_string*) #1

declare dso_local i32 @PTR_ERR(%struct.usb_string*) #1

declare dso_local i32 @usb_interface_id(%struct.usb_configuration*, %struct.usb_function*) #1

declare dso_local %struct.usb_ep* @usb_ep_autoconfig(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local i32 @usb_assign_descriptors(%struct.usb_function*, i32, i32, i32*, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i8*, i32, i32) #1

declare dso_local i64 @gadget_is_dualspeed(%struct.TYPE_16__*) #1

declare dso_local i32 @ERROR(%struct.usb_composite_dev*, i8*, i32, %struct.usb_function*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
