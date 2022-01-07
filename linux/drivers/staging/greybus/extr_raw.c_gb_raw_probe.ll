; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_raw.c_gb_raw_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_raw.c_gb_raw_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_bundle = type { i32, %struct.greybus_descriptor_cport* }
%struct.greybus_descriptor_cport = type { i64, i32 }
%struct.greybus_bundle_id = type { i32 }
%struct.gb_connection = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.gb_raw = type { i32, %struct.gb_connection*, i32, %struct.gb_connection*, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@GREYBUS_PROTOCOL_RAW = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gb_raw_request_handler = common dso_local global i32 0, align 4
@minors = common dso_local global i32 0, align 4
@raw_major = common dso_local global i32 0, align 4
@raw_fops = common dso_local global i32 0, align 4
@raw_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"gb!raw%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_bundle*, %struct.greybus_bundle_id*)* @gb_raw_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_raw_probe(%struct.gb_bundle* %0, %struct.greybus_bundle_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gb_bundle*, align 8
  %5 = alloca %struct.greybus_bundle_id*, align 8
  %6 = alloca %struct.greybus_descriptor_cport*, align 8
  %7 = alloca %struct.gb_connection*, align 8
  %8 = alloca %struct.gb_raw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gb_bundle* %0, %struct.gb_bundle** %4, align 8
  store %struct.greybus_bundle_id* %1, %struct.greybus_bundle_id** %5, align 8
  %11 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %12 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %138

18:                                               ; preds = %2
  %19 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %20 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %19, i32 0, i32 1
  %21 = load %struct.greybus_descriptor_cport*, %struct.greybus_descriptor_cport** %20, align 8
  %22 = getelementptr inbounds %struct.greybus_descriptor_cport, %struct.greybus_descriptor_cport* %21, i64 0
  store %struct.greybus_descriptor_cport* %22, %struct.greybus_descriptor_cport** %6, align 8
  %23 = load %struct.greybus_descriptor_cport*, %struct.greybus_descriptor_cport** %6, align 8
  %24 = getelementptr inbounds %struct.greybus_descriptor_cport, %struct.greybus_descriptor_cport* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @GREYBUS_PROTOCOL_RAW, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %138

31:                                               ; preds = %18
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.gb_raw* @kzalloc(i32 40, i32 %32)
  store %struct.gb_raw* %33, %struct.gb_raw** %8, align 8
  %34 = load %struct.gb_raw*, %struct.gb_raw** %8, align 8
  %35 = icmp ne %struct.gb_raw* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %138

39:                                               ; preds = %31
  %40 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %41 = load %struct.greybus_descriptor_cport*, %struct.greybus_descriptor_cport** %6, align 8
  %42 = getelementptr inbounds %struct.greybus_descriptor_cport, %struct.greybus_descriptor_cport* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @le16_to_cpu(i32 %43)
  %45 = load i32, i32* @gb_raw_request_handler, align 4
  %46 = call %struct.gb_connection* @gb_connection_create(%struct.gb_bundle* %40, i32 %44, i32 %45)
  store %struct.gb_connection* %46, %struct.gb_connection** %7, align 8
  %47 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %48 = call i64 @IS_ERR(%struct.gb_connection* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %39
  %51 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %52 = call i32 @PTR_ERR(%struct.gb_connection* %51)
  store i32 %52, i32* %9, align 4
  br label %134

53:                                               ; preds = %39
  %54 = load %struct.gb_raw*, %struct.gb_raw** %8, align 8
  %55 = getelementptr inbounds %struct.gb_raw, %struct.gb_raw* %54, i32 0, i32 5
  %56 = call i32 @INIT_LIST_HEAD(i32* %55)
  %57 = load %struct.gb_raw*, %struct.gb_raw** %8, align 8
  %58 = getelementptr inbounds %struct.gb_raw, %struct.gb_raw* %57, i32 0, i32 4
  %59 = call i32 @mutex_init(i32* %58)
  %60 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %61 = load %struct.gb_raw*, %struct.gb_raw** %8, align 8
  %62 = getelementptr inbounds %struct.gb_raw, %struct.gb_raw* %61, i32 0, i32 3
  store %struct.gb_connection* %60, %struct.gb_connection** %62, align 8
  %63 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %64 = load %struct.gb_raw*, %struct.gb_raw** %8, align 8
  %65 = call i32 @greybus_set_drvdata(%struct.gb_bundle* %63, %struct.gb_raw* %64)
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call i32 @ida_simple_get(i32* @minors, i32 0, i32 0, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %53
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %9, align 4
  br label %131

72:                                               ; preds = %53
  %73 = load i32, i32* @raw_major, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @MKDEV(i32 %73, i32 %74)
  %76 = load %struct.gb_raw*, %struct.gb_raw** %8, align 8
  %77 = getelementptr inbounds %struct.gb_raw, %struct.gb_raw* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.gb_raw*, %struct.gb_raw** %8, align 8
  %79 = getelementptr inbounds %struct.gb_raw, %struct.gb_raw* %78, i32 0, i32 0
  %80 = call i32 @cdev_init(i32* %79, i32* @raw_fops)
  %81 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %82 = call i32 @gb_connection_enable(%struct.gb_connection* %81)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %72
  br label %128

86:                                               ; preds = %72
  %87 = load %struct.gb_raw*, %struct.gb_raw** %8, align 8
  %88 = getelementptr inbounds %struct.gb_raw, %struct.gb_raw* %87, i32 0, i32 0
  %89 = load %struct.gb_raw*, %struct.gb_raw** %8, align 8
  %90 = getelementptr inbounds %struct.gb_raw, %struct.gb_raw* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @cdev_add(i32* %88, i32 %91, i32 1)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %86
  br label %125

96:                                               ; preds = %86
  %97 = load i32, i32* @raw_class, align 4
  %98 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %99 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load %struct.gb_raw*, %struct.gb_raw** %8, align 8
  %103 = getelementptr inbounds %struct.gb_raw, %struct.gb_raw* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.gb_raw*, %struct.gb_raw** %8, align 8
  %106 = load i32, i32* %10, align 4
  %107 = call %struct.gb_connection* @device_create(i32 %97, i32* %101, i32 %104, %struct.gb_raw* %105, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %106)
  %108 = load %struct.gb_raw*, %struct.gb_raw** %8, align 8
  %109 = getelementptr inbounds %struct.gb_raw, %struct.gb_raw* %108, i32 0, i32 1
  store %struct.gb_connection* %107, %struct.gb_connection** %109, align 8
  %110 = load %struct.gb_raw*, %struct.gb_raw** %8, align 8
  %111 = getelementptr inbounds %struct.gb_raw, %struct.gb_raw* %110, i32 0, i32 1
  %112 = load %struct.gb_connection*, %struct.gb_connection** %111, align 8
  %113 = call i64 @IS_ERR(%struct.gb_connection* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %96
  %116 = load %struct.gb_raw*, %struct.gb_raw** %8, align 8
  %117 = getelementptr inbounds %struct.gb_raw, %struct.gb_raw* %116, i32 0, i32 1
  %118 = load %struct.gb_connection*, %struct.gb_connection** %117, align 8
  %119 = call i32 @PTR_ERR(%struct.gb_connection* %118)
  store i32 %119, i32* %9, align 4
  br label %121

120:                                              ; preds = %96
  store i32 0, i32* %3, align 4
  br label %138

121:                                              ; preds = %115
  %122 = load %struct.gb_raw*, %struct.gb_raw** %8, align 8
  %123 = getelementptr inbounds %struct.gb_raw, %struct.gb_raw* %122, i32 0, i32 0
  %124 = call i32 @cdev_del(i32* %123)
  br label %125

125:                                              ; preds = %121, %95
  %126 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %127 = call i32 @gb_connection_disable(%struct.gb_connection* %126)
  br label %128

128:                                              ; preds = %125, %85
  %129 = load i32, i32* %10, align 4
  %130 = call i32 @ida_simple_remove(i32* @minors, i32 %129)
  br label %131

131:                                              ; preds = %128, %70
  %132 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %133 = call i32 @gb_connection_destroy(%struct.gb_connection* %132)
  br label %134

134:                                              ; preds = %131, %50
  %135 = load %struct.gb_raw*, %struct.gb_raw** %8, align 8
  %136 = call i32 @kfree(%struct.gb_raw* %135)
  %137 = load i32, i32* %9, align 4
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %134, %120, %36, %28, %15
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local %struct.gb_raw* @kzalloc(i32, i32) #1

declare dso_local %struct.gb_connection* @gb_connection_create(%struct.gb_bundle*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @IS_ERR(%struct.gb_connection*) #1

declare dso_local i32 @PTR_ERR(%struct.gb_connection*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @greybus_set_drvdata(%struct.gb_bundle*, %struct.gb_raw*) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @cdev_init(i32*, i32*) #1

declare dso_local i32 @gb_connection_enable(%struct.gb_connection*) #1

declare dso_local i32 @cdev_add(i32*, i32, i32) #1

declare dso_local %struct.gb_connection* @device_create(i32, i32*, i32, %struct.gb_raw*, i8*, i32) #1

declare dso_local i32 @cdev_del(i32*) #1

declare dso_local i32 @gb_connection_disable(%struct.gb_connection*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @gb_connection_destroy(%struct.gb_connection*) #1

declare dso_local i32 @kfree(%struct.gb_raw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
