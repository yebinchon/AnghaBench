; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_serial.c_gser_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_serial.c_gser_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.usb_configuration = type { %struct.usb_composite_dev* }
%struct.usb_composite_dev = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.usb_function = type { i32 }
%struct.f_gser = type { i32, %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { %struct.usb_ep*, %struct.usb_ep* }
%struct.usb_ep = type { i32 }

@gser_string_defs = common dso_local global %struct.TYPE_17__* null, align 8
@gser_interface_desc = common dso_local global %struct.TYPE_20__ zeroinitializer, align 4
@ENODEV = common dso_local global i32 0, align 4
@gser_fs_in_desc = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@gser_fs_out_desc = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@gser_hs_in_desc = common dso_local global %struct.TYPE_22__ zeroinitializer, align 4
@gser_hs_out_desc = common dso_local global %struct.TYPE_21__ zeroinitializer, align 4
@gser_ss_in_desc = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4
@gser_ss_out_desc = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@gser_fs_function = common dso_local global i32 0, align 4
@gser_hs_function = common dso_local global i32 0, align 4
@gser_ss_function = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"generic ttyGS%d: %s speed IN/%s OUT/%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"super\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"dual\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"%s: can't bind, err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_configuration*, %struct.usb_function*)* @gser_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gser_bind(%struct.usb_configuration* %0, %struct.usb_function* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_configuration*, align 8
  %5 = alloca %struct.usb_function*, align 8
  %6 = alloca %struct.usb_composite_dev*, align 8
  %7 = alloca %struct.f_gser*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_ep*, align 8
  store %struct.usb_configuration* %0, %struct.usb_configuration** %4, align 8
  store %struct.usb_function* %1, %struct.usb_function** %5, align 8
  %10 = load %struct.usb_configuration*, %struct.usb_configuration** %4, align 8
  %11 = getelementptr inbounds %struct.usb_configuration, %struct.usb_configuration* %10, i32 0, i32 0
  %12 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %11, align 8
  store %struct.usb_composite_dev* %12, %struct.usb_composite_dev** %6, align 8
  %13 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %14 = call %struct.f_gser* @func_to_gser(%struct.usb_function* %13)
  store %struct.f_gser* %14, %struct.f_gser** %7, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** @gser_string_defs, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %2
  %21 = load %struct.usb_configuration*, %struct.usb_configuration** %4, align 8
  %22 = getelementptr inbounds %struct.usb_configuration, %struct.usb_configuration* %21, i32 0, i32 0
  %23 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %22, align 8
  %24 = call i32 @usb_string_id(%struct.usb_composite_dev* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %3, align 4
  br label %133

29:                                               ; preds = %20
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** @gser_string_defs, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  br label %34

34:                                               ; preds = %29, %2
  %35 = load %struct.usb_configuration*, %struct.usb_configuration** %4, align 8
  %36 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %37 = call i32 @usb_interface_id(%struct.usb_configuration* %35, %struct.usb_function* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %125

41:                                               ; preds = %34
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.f_gser*, %struct.f_gser** %7, align 8
  %44 = getelementptr inbounds %struct.f_gser, %struct.f_gser* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @gser_interface_desc, i32 0, i32 0), align 4
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %8, align 4
  %48 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %49 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %48, i32 0, i32 0
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %49, align 8
  %51 = call %struct.usb_ep* @usb_ep_autoconfig(%struct.TYPE_15__* %50, %struct.TYPE_16__* @gser_fs_in_desc)
  store %struct.usb_ep* %51, %struct.usb_ep** %9, align 8
  %52 = load %struct.usb_ep*, %struct.usb_ep** %9, align 8
  %53 = icmp ne %struct.usb_ep* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %41
  br label %125

55:                                               ; preds = %41
  %56 = load %struct.usb_ep*, %struct.usb_ep** %9, align 8
  %57 = load %struct.f_gser*, %struct.f_gser** %7, align 8
  %58 = getelementptr inbounds %struct.f_gser, %struct.f_gser* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  store %struct.usb_ep* %56, %struct.usb_ep** %59, align 8
  %60 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %61 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %60, i32 0, i32 0
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %61, align 8
  %63 = call %struct.usb_ep* @usb_ep_autoconfig(%struct.TYPE_15__* %62, %struct.TYPE_16__* @gser_fs_out_desc)
  store %struct.usb_ep* %63, %struct.usb_ep** %9, align 8
  %64 = load %struct.usb_ep*, %struct.usb_ep** %9, align 8
  %65 = icmp ne %struct.usb_ep* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %55
  br label %125

67:                                               ; preds = %55
  %68 = load %struct.usb_ep*, %struct.usb_ep** %9, align 8
  %69 = load %struct.f_gser*, %struct.f_gser** %7, align 8
  %70 = getelementptr inbounds %struct.f_gser, %struct.f_gser* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  store %struct.usb_ep* %68, %struct.usb_ep** %71, align 8
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @gser_fs_in_desc, i32 0, i32 0), align 4
  store i32 %72, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @gser_hs_in_desc, i32 0, i32 0), align 4
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @gser_fs_out_desc, i32 0, i32 0), align 4
  store i32 %73, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @gser_hs_out_desc, i32 0, i32 0), align 4
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @gser_fs_in_desc, i32 0, i32 0), align 4
  store i32 %74, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @gser_ss_in_desc, i32 0, i32 0), align 4
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @gser_fs_out_desc, i32 0, i32 0), align 4
  store i32 %75, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @gser_ss_out_desc, i32 0, i32 0), align 4
  %76 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %77 = load i32, i32* @gser_fs_function, align 4
  %78 = load i32, i32* @gser_hs_function, align 4
  %79 = load i32, i32* @gser_ss_function, align 4
  %80 = call i32 @usb_assign_descriptors(%struct.usb_function* %76, i32 %77, i32 %78, i32 %79, i32* null)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %67
  br label %125

84:                                               ; preds = %67
  %85 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %86 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %85, i32 0, i32 0
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = load %struct.f_gser*, %struct.f_gser** %7, align 8
  %90 = getelementptr inbounds %struct.f_gser, %struct.f_gser* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.usb_configuration*, %struct.usb_configuration** %4, align 8
  %93 = getelementptr inbounds %struct.usb_configuration, %struct.usb_configuration* %92, i32 0, i32 0
  %94 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %93, align 8
  %95 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %94, i32 0, i32 0
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %95, align 8
  %97 = call i64 @gadget_is_superspeed(%struct.TYPE_15__* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %84
  br label %110

100:                                              ; preds = %84
  %101 = load %struct.usb_configuration*, %struct.usb_configuration** %4, align 8
  %102 = getelementptr inbounds %struct.usb_configuration, %struct.usb_configuration* %101, i32 0, i32 0
  %103 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %102, align 8
  %104 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %103, i32 0, i32 0
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %104, align 8
  %106 = call i64 @gadget_is_dualspeed(%struct.TYPE_15__* %105)
  %107 = icmp ne i64 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  br label %110

110:                                              ; preds = %100, %99
  %111 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %99 ], [ %109, %100 ]
  %112 = load %struct.f_gser*, %struct.f_gser** %7, align 8
  %113 = getelementptr inbounds %struct.f_gser, %struct.f_gser* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 1
  %115 = load %struct.usb_ep*, %struct.usb_ep** %114, align 8
  %116 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.f_gser*, %struct.f_gser** %7, align 8
  %119 = getelementptr inbounds %struct.f_gser, %struct.f_gser* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  %121 = load %struct.usb_ep*, %struct.usb_ep** %120, align 8
  %122 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @dev_dbg(i32* %88, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %91, i8* %111, i32 %117, i32 %123)
  store i32 0, i32* %3, align 4
  br label %133

125:                                              ; preds = %83, %66, %54, %40
  %126 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %127 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %128 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @ERROR(%struct.usb_composite_dev* %126, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %129, i32 %130)
  %132 = load i32, i32* %8, align 4
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %125, %110, %27
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local %struct.f_gser* @func_to_gser(%struct.usb_function*) #1

declare dso_local i32 @usb_string_id(%struct.usb_composite_dev*) #1

declare dso_local i32 @usb_interface_id(%struct.usb_configuration*, %struct.usb_function*) #1

declare dso_local %struct.usb_ep* @usb_ep_autoconfig(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @usb_assign_descriptors(%struct.usb_function*, i32, i32, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i8*, i32, i32) #1

declare dso_local i64 @gadget_is_superspeed(%struct.TYPE_15__*) #1

declare dso_local i64 @gadget_is_dualspeed(%struct.TYPE_15__*) #1

declare dso_local i32 @ERROR(%struct.usb_composite_dev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
