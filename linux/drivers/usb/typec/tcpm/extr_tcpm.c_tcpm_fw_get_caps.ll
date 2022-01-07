; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_fw_get_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_fw_get_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpm_port = type { i64, i32, i32, i8*, i32, %struct.TYPE_2__, i8*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.fwnode_handle = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"data-role\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"power-role\00", align 1
@TYPEC_PORT_SNK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"source-pdos\00", align 1
@PDO_MAX_OBJECTS = common dso_local global i32 0, align 4
@TYPEC_PORT_SRC = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"try-power-role\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"sink-pdos\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"op-sink-microwatt\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"self-powered\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpm_port*, %struct.fwnode_handle*)* @tcpm_fw_get_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpm_fw_get_caps(%struct.tcpm_port* %0, %struct.fwnode_handle* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tcpm_port*, align 8
  %5 = alloca %struct.fwnode_handle*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tcpm_port* %0, %struct.tcpm_port** %4, align 8
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %5, align 8
  %9 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %10 = icmp ne %struct.fwnode_handle* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %182

14:                                               ; preds = %2
  %15 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %16 = call i32 @fwnode_property_read_string(%struct.fwnode_handle* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %6)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %14
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @typec_find_port_data_role(i8* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %182

26:                                               ; preds = %19
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %29 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  br label %31

31:                                               ; preds = %26, %14
  %32 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %33 = call i32 @fwnode_property_read_string(%struct.fwnode_handle* %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %6)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %182

38:                                               ; preds = %31
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @typec_find_port_power_role(i8* %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %182

45:                                               ; preds = %38
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %48 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %51 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %56 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %58 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @TYPEC_PORT_SNK, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %45
  br label %129

63:                                               ; preds = %45
  %64 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %65 = call i32 @fwnode_property_count_u32(%struct.fwnode_handle* %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp sle i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %182

71:                                               ; preds = %63
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @PDO_MAX_OBJECTS, align 4
  %74 = call i8* @min(i32 %72, i32 %73)
  %75 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %76 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %75, i32 0, i32 6
  store i8* %74, i8** %76, align 8
  %77 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %78 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %79 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %82 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %81, i32 0, i32 6
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @fwnode_property_read_u32_array(%struct.fwnode_handle* %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %80, i8* %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %97, label %87

87:                                               ; preds = %71
  %88 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %89 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %90 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %93 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %92, i32 0, i32 6
  %94 = load i8*, i8** %93, align 8
  %95 = call i64 @tcpm_validate_caps(%struct.tcpm_port* %88, i32 %91, i8* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %87, %71
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %182

100:                                              ; preds = %87
  %101 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %102 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @TYPEC_PORT_SRC, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  store i32 0, i32* %3, align 4
  br label %182

107:                                              ; preds = %100
  %108 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %109 = call i32 @fwnode_property_read_string(%struct.fwnode_handle* %108, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8** %6)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = load i32, i32* %7, align 4
  store i32 %113, i32* %3, align 4
  br label %182

114:                                              ; preds = %107
  %115 = load i8*, i8** %6, align 8
  %116 = call i32 @typec_find_power_role(i8* %115)
  %117 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %118 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %117, i32 0, i32 5
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 2
  store i32 %116, i32* %119, align 4
  %120 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %121 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %120, i32 0, i32 5
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %114
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %3, align 4
  br label %182

128:                                              ; preds = %114
  br label %129

129:                                              ; preds = %128, %62
  %130 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %131 = call i32 @fwnode_property_count_u32(%struct.fwnode_handle* %130, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = icmp sle i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %3, align 4
  br label %182

137:                                              ; preds = %129
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* @PDO_MAX_OBJECTS, align 4
  %140 = call i8* @min(i32 %138, i32 %139)
  %141 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %142 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %141, i32 0, i32 3
  store i8* %140, i8** %142, align 8
  %143 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %144 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %145 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %148 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %147, i32 0, i32 3
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @fwnode_property_read_u32_array(%struct.fwnode_handle* %143, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %146, i8* %149)
  store i32 %150, i32* %7, align 4
  %151 = load i32, i32* %7, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %163, label %153

153:                                              ; preds = %137
  %154 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %155 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %156 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %159 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %158, i32 0, i32 3
  %160 = load i8*, i8** %159, align 8
  %161 = call i64 @tcpm_validate_caps(%struct.tcpm_port* %154, i32 %157, i8* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %153, %137
  %164 = load i32, i32* @EINVAL, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %3, align 4
  br label %182

166:                                              ; preds = %153
  %167 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %168 = call i64 @fwnode_property_read_u32(%struct.fwnode_handle* %167, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32* %8)
  %169 = icmp slt i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %166
  %171 = load i32, i32* @EINVAL, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %3, align 4
  br label %182

173:                                              ; preds = %166
  %174 = load i32, i32* %8, align 4
  %175 = sdiv i32 %174, 1000
  %176 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %177 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 8
  %178 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %179 = call i32 @fwnode_property_read_bool(%struct.fwnode_handle* %178, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %180 = load %struct.tcpm_port*, %struct.tcpm_port** %4, align 8
  %181 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %180, i32 0, i32 2
  store i32 %179, i32* %181, align 4
  store i32 0, i32* %3, align 4
  br label %182

182:                                              ; preds = %173, %170, %163, %134, %125, %112, %106, %97, %68, %43, %36, %24, %11
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

declare dso_local i32 @fwnode_property_read_string(%struct.fwnode_handle*, i8*, i8**) #1

declare dso_local i32 @typec_find_port_data_role(i8*) #1

declare dso_local i32 @typec_find_port_power_role(i8*) #1

declare dso_local i32 @fwnode_property_count_u32(%struct.fwnode_handle*, i8*) #1

declare dso_local i8* @min(i32, i32) #1

declare dso_local i32 @fwnode_property_read_u32_array(%struct.fwnode_handle*, i8*, i32, i8*) #1

declare dso_local i64 @tcpm_validate_caps(%struct.tcpm_port*, i32, i8*) #1

declare dso_local i32 @typec_find_power_role(i8*) #1

declare dso_local i64 @fwnode_property_read_u32(%struct.fwnode_handle*, i8*, i32*) #1

declare dso_local i32 @fwnode_property_read_bool(%struct.fwnode_handle*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
