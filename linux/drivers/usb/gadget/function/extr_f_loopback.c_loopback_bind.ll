; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_loopback.c_loopback_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_loopback.c_loopback_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.usb_configuration = type { %struct.usb_composite_dev* }
%struct.usb_composite_dev = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.usb_function = type { i32 }
%struct.f_loopback = type { %struct.TYPE_17__*, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@loopback_intf = common dso_local global %struct.TYPE_23__ zeroinitializer, align 4
@strings_loopback = common dso_local global %struct.TYPE_20__* null, align 8
@fs_loop_source_desc = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s: can't autoconfigure on %s\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@fs_loop_sink_desc = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4
@hs_loop_source_desc = common dso_local global %struct.TYPE_24__ zeroinitializer, align 4
@hs_loop_sink_desc = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@ss_loop_source_desc = common dso_local global %struct.TYPE_21__ zeroinitializer, align 4
@ss_loop_sink_desc = common dso_local global %struct.TYPE_22__ zeroinitializer, align 4
@fs_loopback_descs = common dso_local global i32 0, align 4
@hs_loopback_descs = common dso_local global i32 0, align 4
@ss_loopback_descs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"%s speed %s: IN/%s, OUT/%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"super\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"dual\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_configuration*, %struct.usb_function*)* @loopback_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loopback_bind(%struct.usb_configuration* %0, %struct.usb_function* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_configuration*, align 8
  %5 = alloca %struct.usb_function*, align 8
  %6 = alloca %struct.usb_composite_dev*, align 8
  %7 = alloca %struct.f_loopback*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_configuration* %0, %struct.usb_configuration** %4, align 8
  store %struct.usb_function* %1, %struct.usb_function** %5, align 8
  %10 = load %struct.usb_configuration*, %struct.usb_configuration** %4, align 8
  %11 = getelementptr inbounds %struct.usb_configuration, %struct.usb_configuration* %10, i32 0, i32 0
  %12 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %11, align 8
  store %struct.usb_composite_dev* %12, %struct.usb_composite_dev** %6, align 8
  %13 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %14 = call %struct.f_loopback* @func_to_loop(%struct.usb_function* %13)
  store %struct.f_loopback* %14, %struct.f_loopback** %7, align 8
  %15 = load %struct.usb_configuration*, %struct.usb_configuration** %4, align 8
  %16 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %17 = call i32 @usb_interface_id(%struct.usb_configuration* %15, %struct.usb_function* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %3, align 4
  br label %124

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @loopback_intf, i32 0, i32 0), align 4
  %24 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %25 = call i32 @usb_string_id(%struct.usb_composite_dev* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %124

30:                                               ; preds = %22
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** @strings_loopback, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @loopback_intf, i32 0, i32 1), align 4
  %36 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %37 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %36, i32 0, i32 0
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %37, align 8
  %39 = call i8* @usb_ep_autoconfig(%struct.TYPE_18__* %38, %struct.TYPE_19__* @fs_loop_source_desc)
  %40 = bitcast i8* %39 to %struct.TYPE_16__*
  %41 = load %struct.f_loopback*, %struct.f_loopback** %7, align 8
  %42 = getelementptr inbounds %struct.f_loopback, %struct.f_loopback* %41, i32 0, i32 1
  store %struct.TYPE_16__* %40, %struct.TYPE_16__** %42, align 8
  %43 = load %struct.f_loopback*, %struct.f_loopback** %7, align 8
  %44 = getelementptr inbounds %struct.f_loopback, %struct.f_loopback* %43, i32 0, i32 1
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %44, align 8
  %46 = icmp ne %struct.TYPE_16__* %45, null
  br i1 %46, label %61, label %47

47:                                               ; preds = %30
  br label %48

48:                                               ; preds = %73, %47
  %49 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %50 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %51 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %54 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %53, i32 0, i32 0
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ERROR(%struct.usb_composite_dev* %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %57)
  %59 = load i32, i32* @ENODEV, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %124

61:                                               ; preds = %30
  %62 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %63 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %62, i32 0, i32 0
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %63, align 8
  %65 = call i8* @usb_ep_autoconfig(%struct.TYPE_18__* %64, %struct.TYPE_19__* @fs_loop_sink_desc)
  %66 = bitcast i8* %65 to %struct.TYPE_17__*
  %67 = load %struct.f_loopback*, %struct.f_loopback** %7, align 8
  %68 = getelementptr inbounds %struct.f_loopback, %struct.f_loopback* %67, i32 0, i32 0
  store %struct.TYPE_17__* %66, %struct.TYPE_17__** %68, align 8
  %69 = load %struct.f_loopback*, %struct.f_loopback** %7, align 8
  %70 = getelementptr inbounds %struct.f_loopback, %struct.f_loopback* %69, i32 0, i32 0
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %70, align 8
  %72 = icmp ne %struct.TYPE_17__* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %61
  br label %48

74:                                               ; preds = %61
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @fs_loop_source_desc, i32 0, i32 0), align 4
  store i32 %75, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @hs_loop_source_desc, i32 0, i32 0), align 4
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @fs_loop_sink_desc, i32 0, i32 0), align 4
  store i32 %76, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @hs_loop_sink_desc, i32 0, i32 0), align 4
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @fs_loop_source_desc, i32 0, i32 0), align 4
  store i32 %77, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @ss_loop_source_desc, i32 0, i32 0), align 4
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @fs_loop_sink_desc, i32 0, i32 0), align 4
  store i32 %78, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @ss_loop_sink_desc, i32 0, i32 0), align 4
  %79 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %80 = load i32, i32* @fs_loopback_descs, align 4
  %81 = load i32, i32* @hs_loopback_descs, align 4
  %82 = load i32, i32* @ss_loopback_descs, align 4
  %83 = call i32 @usb_assign_descriptors(%struct.usb_function* %79, i32 %80, i32 %81, i32 %82, i32* null)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %74
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %3, align 4
  br label %124

88:                                               ; preds = %74
  %89 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %90 = load %struct.usb_configuration*, %struct.usb_configuration** %4, align 8
  %91 = getelementptr inbounds %struct.usb_configuration, %struct.usb_configuration* %90, i32 0, i32 0
  %92 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %91, align 8
  %93 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %92, i32 0, i32 0
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %93, align 8
  %95 = call i64 @gadget_is_superspeed(%struct.TYPE_18__* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  br label %108

98:                                               ; preds = %88
  %99 = load %struct.usb_configuration*, %struct.usb_configuration** %4, align 8
  %100 = getelementptr inbounds %struct.usb_configuration, %struct.usb_configuration* %99, i32 0, i32 0
  %101 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %100, align 8
  %102 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %101, i32 0, i32 0
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %102, align 8
  %104 = call i64 @gadget_is_dualspeed(%struct.TYPE_18__* %103)
  %105 = icmp ne i64 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  br label %108

108:                                              ; preds = %98, %97
  %109 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), %97 ], [ %107, %98 ]
  %110 = load %struct.usb_function*, %struct.usb_function** %5, align 8
  %111 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.f_loopback*, %struct.f_loopback** %7, align 8
  %114 = getelementptr inbounds %struct.f_loopback, %struct.f_loopback* %113, i32 0, i32 1
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.f_loopback*, %struct.f_loopback** %7, align 8
  %119 = getelementptr inbounds %struct.f_loopback, %struct.f_loopback* %118, i32 0, i32 0
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @DBG(%struct.usb_composite_dev* %89, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %109, i32 %112, i32 %117, i32 %122)
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %108, %86, %48, %28, %20
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local %struct.f_loopback* @func_to_loop(%struct.usb_function*) #1

declare dso_local i32 @usb_interface_id(%struct.usb_configuration*, %struct.usb_function*) #1

declare dso_local i32 @usb_string_id(%struct.usb_composite_dev*) #1

declare dso_local i8* @usb_ep_autoconfig(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @ERROR(%struct.usb_composite_dev*, i8*, i32, i32) #1

declare dso_local i32 @usb_assign_descriptors(%struct.usb_function*, i32, i32, i32, i32*) #1

declare dso_local i32 @DBG(%struct.usb_composite_dev*, i8*, i8*, i32, i32, i32) #1

declare dso_local i64 @gadget_is_superspeed(%struct.TYPE_18__*) #1

declare dso_local i64 @gadget_is_dualspeed(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
