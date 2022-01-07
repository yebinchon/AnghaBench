; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_smd.c_qcom_smd_parse_edge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_smd.c_qcom_smd_parse_edge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.qcom_smd_edge = type { i32, i32, i32, i32, i32*, i32*, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.device* }

@qcom_channel_scan_worker = common dso_local global i32 0, align 4
@qcom_channel_state_worker = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"qcom,smd-edge\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"edge missing %s property\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QCOM_SMEM_HOST_ANY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"qcom,remote-pid\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"qcom,ipc\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"no qcom,ipc node\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"no offset in %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"no bit in %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"required smd interrupt missing\0A\00", align 1
@qcom_smd_edge_intr = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"failed to request smd irq\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_node*, %struct.qcom_smd_edge*)* @qcom_smd_parse_edge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_smd_parse_edge(%struct.device* %0, %struct.device_node* %1, %struct.qcom_smd_edge* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.qcom_smd_edge*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store %struct.qcom_smd_edge* %2, %struct.qcom_smd_edge** %7, align 8
  %12 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %7, align 8
  %13 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %12, i32 0, i32 13
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %7, align 8
  %16 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %15, i32 0, i32 12
  %17 = call i32 @spin_lock_init(i32* %16)
  %18 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %7, align 8
  %19 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %18, i32 0, i32 11
  %20 = load i32, i32* @qcom_channel_scan_worker, align 4
  %21 = call i32 @INIT_WORK(i32* %19, i32 %20)
  %22 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %7, align 8
  %23 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %22, i32 0, i32 10
  %24 = load i32, i32* @qcom_channel_state_worker, align 4
  %25 = call i32 @INIT_WORK(i32* %23, i32 %24)
  %26 = load %struct.device_node*, %struct.device_node** %6, align 8
  %27 = call i32 @of_node_get(%struct.device_node* %26)
  %28 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %7, align 8
  %29 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %28, i32 0, i32 9
  store i32 %27, i32* %29, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %30 = load %struct.device_node*, %struct.device_node** %6, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %7, align 8
  %33 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %32, i32 0, i32 8
  %34 = call i32 @of_property_read_u32(%struct.device_node* %30, i8* %31, i32* %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %3
  %38 = load %struct.device*, %struct.device** %5, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %181

43:                                               ; preds = %3
  %44 = load i32, i32* @QCOM_SMEM_HOST_ANY, align 4
  %45 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %7, align 8
  %46 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %45, i32 0, i32 7
  store i32 %44, i32* %46, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  %47 = load %struct.device_node*, %struct.device_node** %6, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %7, align 8
  %50 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %49, i32 0, i32 7
  %51 = call i32 @of_property_read_u32(%struct.device_node* %47, i8* %48, i32* %50)
  %52 = load %struct.device*, %struct.device** %5, align 8
  %53 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %7, align 8
  %54 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %53, i32 0, i32 6
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  store %struct.device* %52, %struct.device** %55, align 8
  %56 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %7, align 8
  %57 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %56, i32 0, i32 6
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %7, align 8
  %60 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %59, i32 0, i32 6
  %61 = call i32* @mbox_request_channel(%struct.TYPE_2__* %60, i32 0)
  %62 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %7, align 8
  %63 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %62, i32 0, i32 5
  store i32* %61, i32** %63, align 8
  %64 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %7, align 8
  %65 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %64, i32 0, i32 5
  %66 = load i32*, i32** %65, align 8
  %67 = call i64 @IS_ERR(i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %138

69:                                               ; preds = %43
  %70 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %7, align 8
  %71 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %70, i32 0, i32 5
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @PTR_ERR(i32* %72)
  %74 = load i32, i32* @ENODEV, align 4
  %75 = sub nsw i32 0, %74
  %76 = icmp ne i32 %73, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %69
  %78 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %7, align 8
  %79 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %78, i32 0, i32 5
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @PTR_ERR(i32* %80)
  store i32 %81, i32* %4, align 4
  br label %181

82:                                               ; preds = %69
  %83 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %7, align 8
  %84 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %83, i32 0, i32 5
  store i32* null, i32** %84, align 8
  %85 = load %struct.device_node*, %struct.device_node** %6, align 8
  %86 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %85, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 0)
  store %struct.device_node* %86, %struct.device_node** %8, align 8
  %87 = load %struct.device_node*, %struct.device_node** %8, align 8
  %88 = icmp ne %struct.device_node* %87, null
  br i1 %88, label %94, label %89

89:                                               ; preds = %82
  %90 = load %struct.device*, %struct.device** %5, align 8
  %91 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %90, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %92 = load i32, i32* @ENODEV, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %4, align 4
  br label %181

94:                                               ; preds = %82
  %95 = load %struct.device_node*, %struct.device_node** %8, align 8
  %96 = call i32* @syscon_node_to_regmap(%struct.device_node* %95)
  %97 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %7, align 8
  %98 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %97, i32 0, i32 4
  store i32* %96, i32** %98, align 8
  %99 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %7, align 8
  %100 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %99, i32 0, i32 4
  %101 = load i32*, i32** %100, align 8
  %102 = call i64 @IS_ERR(i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %94
  %105 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %7, align 8
  %106 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %105, i32 0, i32 4
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @PTR_ERR(i32* %107)
  store i32 %108, i32* %4, align 4
  br label %181

109:                                              ; preds = %94
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  %110 = load %struct.device_node*, %struct.device_node** %6, align 8
  %111 = load i8*, i8** %9, align 8
  %112 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %7, align 8
  %113 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %112, i32 0, i32 3
  %114 = call i32 @of_property_read_u32_index(%struct.device_node* %110, i8* %111, i32 1, i32* %113)
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %11, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %109
  %118 = load %struct.device*, %struct.device** %5, align 8
  %119 = load i8*, i8** %9, align 8
  %120 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %118, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %119)
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %4, align 4
  br label %181

123:                                              ; preds = %109
  %124 = load %struct.device_node*, %struct.device_node** %6, align 8
  %125 = load i8*, i8** %9, align 8
  %126 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %7, align 8
  %127 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %126, i32 0, i32 2
  %128 = call i32 @of_property_read_u32_index(%struct.device_node* %124, i8* %125, i32 2, i32* %127)
  store i32 %128, i32* %11, align 4
  %129 = load i32, i32* %11, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %123
  %132 = load %struct.device*, %struct.device** %5, align 8
  %133 = load i8*, i8** %9, align 8
  %134 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %132, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* %133)
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %4, align 4
  br label %181

137:                                              ; preds = %123
  br label %138

138:                                              ; preds = %137, %43
  %139 = load %struct.device_node*, %struct.device_node** %6, align 8
  %140 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %7, align 8
  %141 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %140, i32 0, i32 1
  %142 = call i32 @of_property_read_string(%struct.device_node* %139, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32* %141)
  store i32 %142, i32* %11, align 4
  %143 = load i32, i32* %11, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %138
  %146 = load %struct.device_node*, %struct.device_node** %6, align 8
  %147 = getelementptr inbounds %struct.device_node, %struct.device_node* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %7, align 8
  %150 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  br label %151

151:                                              ; preds = %145, %138
  %152 = load %struct.device_node*, %struct.device_node** %6, align 8
  %153 = call i32 @irq_of_parse_and_map(%struct.device_node* %152, i32 0)
  store i32 %153, i32* %10, align 4
  %154 = load i32, i32* %10, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %151
  %157 = load %struct.device*, %struct.device** %5, align 8
  %158 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %157, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  %159 = load i32, i32* @EINVAL, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %4, align 4
  br label %181

161:                                              ; preds = %151
  %162 = load %struct.device*, %struct.device** %5, align 8
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* @qcom_smd_edge_intr, align 4
  %165 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %166 = load %struct.device_node*, %struct.device_node** %6, align 8
  %167 = getelementptr inbounds %struct.device_node, %struct.device_node* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %7, align 8
  %170 = call i32 @devm_request_irq(%struct.device* %162, i32 %163, i32 %164, i32 %165, i32 %168, %struct.qcom_smd_edge* %169)
  store i32 %170, i32* %11, align 4
  %171 = load i32, i32* %11, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %161
  %174 = load %struct.device*, %struct.device** %5, align 8
  %175 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %174, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %176 = load i32, i32* %11, align 4
  store i32 %176, i32* %4, align 4
  br label %181

177:                                              ; preds = %161
  %178 = load i32, i32* %10, align 4
  %179 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %7, align 8
  %180 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 8
  store i32 0, i32* %4, align 4
  br label %181

181:                                              ; preds = %177, %173, %156, %131, %117, %104, %89, %77, %37
  %182 = load i32, i32* %4, align 4
  ret i32 %182
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @of_node_get(%struct.device_node*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32* @mbox_request_channel(%struct.TYPE_2__*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32* @syscon_node_to_regmap(%struct.device_node*) #1

declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.qcom_smd_edge*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
