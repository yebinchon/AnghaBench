; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/extr_mux.c_typec_mux_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/extr_mux.c_typec_mux_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_connection = type { i32, i32, i32* }
%struct.typec_altmode_desc = type { i64 }
%struct.device = type { i32 }

@typec_mux_class = common dso_local global i32 0, align 4
@name_match = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"accessory\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"svid\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mux_fwnode_match = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.device_connection*, i32, i8*)* @typec_mux_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @typec_mux_match(%struct.device_connection* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.device_connection*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.typec_altmode_desc*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  store %struct.device_connection* %0, %struct.device_connection** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.typec_altmode_desc*
  store %struct.typec_altmode_desc* %15, %struct.typec_altmode_desc** %8, align 8
  %16 = load %struct.device_connection*, %struct.device_connection** %5, align 8
  %17 = getelementptr inbounds %struct.device_connection, %struct.device_connection* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %41, label %20

20:                                               ; preds = %3
  %21 = load %struct.device_connection*, %struct.device_connection** %5, align 8
  %22 = getelementptr inbounds %struct.device_connection, %struct.device_connection* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @name_match, align 4
  %29 = call %struct.device* @class_find_device(i32* @typec_mux_class, i32* null, i32 %27, i32 %28)
  store %struct.device* %29, %struct.device** %9, align 8
  %30 = load %struct.device*, %struct.device** %9, align 8
  %31 = icmp ne %struct.device* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %20
  %33 = load %struct.device*, %struct.device** %9, align 8
  %34 = call i8* @to_typec_switch(%struct.device* %33)
  br label %39

35:                                               ; preds = %20
  %36 = load i32, i32* @EPROBE_DEFER, align 4
  %37 = sub nsw i32 0, %36
  %38 = call i8* @ERR_PTR(i32 %37)
  br label %39

39:                                               ; preds = %35, %32
  %40 = phi i8* [ %34, %32 ], [ %38, %35 ]
  store i8* %40, i8** %4, align 8
  br label %140

41:                                               ; preds = %3
  %42 = load %struct.device_connection*, %struct.device_connection** %5, align 8
  %43 = getelementptr inbounds %struct.device_connection, %struct.device_connection* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %123

51:                                               ; preds = %41
  %52 = load %struct.typec_altmode_desc*, %struct.typec_altmode_desc** %8, align 8
  %53 = icmp ne %struct.typec_altmode_desc* %52, null
  br i1 %53, label %63, label %54

54:                                               ; preds = %51
  %55 = load %struct.device_connection*, %struct.device_connection** %5, align 8
  %56 = getelementptr inbounds %struct.device_connection, %struct.device_connection* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @fwnode_property_present(i32 %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %123

62:                                               ; preds = %54
  store i8* null, i8** %4, align 8
  br label %140

63:                                               ; preds = %51
  %64 = load %struct.device_connection*, %struct.device_connection** %5, align 8
  %65 = getelementptr inbounds %struct.device_connection, %struct.device_connection* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @fwnode_property_count_u16(i32 %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp sle i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  store i8* null, i8** %4, align 8
  br label %140

71:                                               ; preds = %63
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = call i64* @kcalloc(i32 %72, i32 8, i32 %73)
  store i64* %74, i64** %12, align 8
  %75 = load i64*, i64** %12, align 8
  %76 = icmp ne i64* %75, null
  br i1 %76, label %81, label %77

77:                                               ; preds = %71
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  %80 = call i8* @ERR_PTR(i32 %79)
  store i8* %80, i8** %4, align 8
  br label %140

81:                                               ; preds = %71
  %82 = load %struct.device_connection*, %struct.device_connection** %5, align 8
  %83 = getelementptr inbounds %struct.device_connection, %struct.device_connection* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i64*, i64** %12, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @fwnode_property_read_u16_array(i32 %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64* %85, i32 %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %81
  %91 = load i64*, i64** %12, align 8
  %92 = call i32 @kfree(i64* %91)
  %93 = load i32, i32* %11, align 4
  %94 = call i8* @ERR_PTR(i32 %93)
  store i8* %94, i8** %4, align 8
  br label %140

95:                                               ; preds = %81
  store i32 0, i32* %13, align 4
  br label %96

96:                                               ; preds = %117, %95
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %11, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %120

100:                                              ; preds = %96
  %101 = load i64*, i64** %12, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.typec_altmode_desc*, %struct.typec_altmode_desc** %8, align 8
  %107 = getelementptr inbounds %struct.typec_altmode_desc, %struct.typec_altmode_desc* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %105, %108
  %110 = zext i1 %109 to i32
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %100
  %114 = load i64*, i64** %12, align 8
  %115 = call i32 @kfree(i64* %114)
  br label %123

116:                                              ; preds = %100
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %13, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %13, align 4
  br label %96

120:                                              ; preds = %96
  %121 = load i64*, i64** %12, align 8
  %122 = call i32 @kfree(i64* %121)
  store i8* null, i8** %4, align 8
  br label %140

123:                                              ; preds = %113, %61, %50
  %124 = load %struct.device_connection*, %struct.device_connection** %5, align 8
  %125 = getelementptr inbounds %struct.device_connection, %struct.device_connection* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @mux_fwnode_match, align 4
  %128 = call %struct.device* @class_find_device(i32* @typec_mux_class, i32* null, i32 %126, i32 %127)
  store %struct.device* %128, %struct.device** %9, align 8
  %129 = load %struct.device*, %struct.device** %9, align 8
  %130 = icmp ne %struct.device* %129, null
  br i1 %130, label %131, label %134

131:                                              ; preds = %123
  %132 = load %struct.device*, %struct.device** %9, align 8
  %133 = call i8* @to_typec_switch(%struct.device* %132)
  br label %138

134:                                              ; preds = %123
  %135 = load i32, i32* @EPROBE_DEFER, align 4
  %136 = sub nsw i32 0, %135
  %137 = call i8* @ERR_PTR(i32 %136)
  br label %138

138:                                              ; preds = %134, %131
  %139 = phi i8* [ %133, %131 ], [ %137, %134 ]
  store i8* %139, i8** %4, align 8
  br label %140

140:                                              ; preds = %138, %120, %90, %77, %70, %62, %39
  %141 = load i8*, i8** %4, align 8
  ret i8* %141
}

declare dso_local %struct.device* @class_find_device(i32*, i32*, i32, i32) #1

declare dso_local i8* @to_typec_switch(%struct.device*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @fwnode_property_present(i32, i8*) #1

declare dso_local i32 @fwnode_property_count_u16(i32, i8*) #1

declare dso_local i64* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @fwnode_property_read_u16_array(i32, i8*, i64*, i32) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
