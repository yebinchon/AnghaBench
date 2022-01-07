; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_power_supply.c_gb_power_supply_prop_descriptors_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_power_supply.c_gb_power_supply_prop_descriptors_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_power_supply = type { i32, i32*, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.gb_connection = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.gb_power_supply_get_property_descriptors_request = type { i32 }
%struct.gb_power_supply_get_property_descriptors_response = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32 }
%struct.gb_operation = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { %struct.gb_power_supply_get_property_descriptors_response* }
%struct.TYPE_6__ = type { %struct.gb_power_supply_get_property_descriptors_request* }

@GB_POWER_SUPPLY_TYPE_GET_PROP_DESCRIPTORS = common dso_local global i32 0, align 4
@props = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"greybus property %u it is not supported by this kernel, dropped\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_power_supply*)* @gb_power_supply_prop_descriptors_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_power_supply_prop_descriptors_get(%struct.gb_power_supply* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_power_supply*, align 8
  %4 = alloca %struct.gb_connection*, align 8
  %5 = alloca %struct.gb_power_supply_get_property_descriptors_request*, align 8
  %6 = alloca %struct.gb_power_supply_get_property_descriptors_response*, align 8
  %7 = alloca %struct.gb_operation*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.gb_power_supply* %0, %struct.gb_power_supply** %3, align 8
  %13 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %14 = call %struct.gb_connection* @get_conn_from_psy(%struct.gb_power_supply* %13)
  store %struct.gb_connection* %14, %struct.gb_connection** %4, align 8
  %15 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %16 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  store i32 0, i32* %12, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %214

21:                                               ; preds = %1
  %22 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %23 = load i32, i32* @GB_POWER_SUPPLY_TYPE_GET_PROP_DESCRIPTORS, align 4
  %24 = load %struct.gb_power_supply_get_property_descriptors_response*, %struct.gb_power_supply_get_property_descriptors_response** %6, align 8
  %25 = load i32, i32* @props, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @struct_size(%struct.gb_power_supply_get_property_descriptors_response* %24, i32 %25, i32 %26)
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.gb_operation* @gb_operation_create(%struct.gb_connection* %22, i32 %23, i32 4, i32 %27, i32 %28)
  store %struct.gb_operation* %29, %struct.gb_operation** %7, align 8
  %30 = load %struct.gb_operation*, %struct.gb_operation** %7, align 8
  %31 = icmp ne %struct.gb_operation* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %21
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %214

35:                                               ; preds = %21
  %36 = load %struct.gb_operation*, %struct.gb_operation** %7, align 8
  %37 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.gb_power_supply_get_property_descriptors_request*, %struct.gb_power_supply_get_property_descriptors_request** %39, align 8
  store %struct.gb_power_supply_get_property_descriptors_request* %40, %struct.gb_power_supply_get_property_descriptors_request** %5, align 8
  %41 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %42 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.gb_power_supply_get_property_descriptors_request*, %struct.gb_power_supply_get_property_descriptors_request** %5, align 8
  %45 = getelementptr inbounds %struct.gb_power_supply_get_property_descriptors_request, %struct.gb_power_supply_get_property_descriptors_request* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.gb_operation*, %struct.gb_operation** %7, align 8
  %47 = call i32 @gb_operation_request_send_sync(%struct.gb_operation* %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %35
  br label %210

51:                                               ; preds = %35
  %52 = load %struct.gb_operation*, %struct.gb_operation** %7, align 8
  %53 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load %struct.gb_power_supply_get_property_descriptors_response*, %struct.gb_power_supply_get_property_descriptors_response** %55, align 8
  store %struct.gb_power_supply_get_property_descriptors_response* %56, %struct.gb_power_supply_get_property_descriptors_response** %6, align 8
  store i32 0, i32* %11, align 4
  br label %57

57:                                               ; preds = %92, %51
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %95

61:                                               ; preds = %57
  %62 = load %struct.gb_power_supply_get_property_descriptors_response*, %struct.gb_power_supply_get_property_descriptors_response** %6, align 8
  %63 = getelementptr inbounds %struct.gb_power_supply_get_property_descriptors_response, %struct.gb_power_supply_get_property_descriptors_response* %62, i32 0, i32 0
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @get_psp_from_gb_prop(i32 %69, i32* %9)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %91

73:                                               ; preds = %61
  %74 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %75 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %74, i32 0, i32 0
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load %struct.gb_power_supply_get_property_descriptors_response*, %struct.gb_power_supply_get_property_descriptors_response** %6, align 8
  %79 = getelementptr inbounds %struct.gb_power_supply_get_property_descriptors_response, %struct.gb_power_supply_get_property_descriptors_response* %78, i32 0, i32 0
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @dev_warn(i32* %77, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %85)
  %87 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %88 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %73, %61
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %11, align 4
  br label %57

95:                                               ; preds = %57
  %96 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %97 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @GFP_KERNEL, align 4
  %100 = call i8* @kcalloc(i32 %98, i32 12, i32 %99)
  %101 = bitcast i8* %100 to %struct.TYPE_10__*
  %102 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %103 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %102, i32 0, i32 2
  store %struct.TYPE_10__* %101, %struct.TYPE_10__** %103, align 8
  %104 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %105 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %104, i32 0, i32 2
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = icmp ne %struct.TYPE_10__* %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %95
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %10, align 4
  br label %210

111:                                              ; preds = %95
  %112 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %113 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @GFP_KERNEL, align 4
  %116 = call i8* @kcalloc(i32 %114, i32 4, i32 %115)
  %117 = bitcast i8* %116 to i32*
  %118 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %119 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %118, i32 0, i32 1
  store i32* %117, i32** %119, align 8
  %120 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %121 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %111
  %125 = load i32, i32* @ENOMEM, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %10, align 4
  br label %210

127:                                              ; preds = %111
  store i32 0, i32* %11, align 4
  br label %128

128:                                              ; preds = %204, %127
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %207

132:                                              ; preds = %128
  %133 = load %struct.gb_power_supply_get_property_descriptors_response*, %struct.gb_power_supply_get_property_descriptors_response** %6, align 8
  %134 = getelementptr inbounds %struct.gb_power_supply_get_property_descriptors_response, %struct.gb_power_supply_get_property_descriptors_response* %133, i32 0, i32 0
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %134, align 8
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @get_psp_from_gb_prop(i32 %140, i32* %9)
  store i32 %141, i32* %10, align 4
  %142 = load i32, i32* %10, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %132
  %145 = load i32, i32* %12, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %12, align 4
  br label %204

147:                                              ; preds = %132
  %148 = load i32, i32* %9, align 4
  %149 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %150 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %149, i32 0, i32 2
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %150, align 8
  %152 = load i32, i32* %11, align 4
  %153 = load i32, i32* %12, align 4
  %154 = sub nsw i32 %152, %153
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  store i32 %148, i32* %157, align 4
  %158 = load %struct.gb_power_supply_get_property_descriptors_response*, %struct.gb_power_supply_get_property_descriptors_response** %6, align 8
  %159 = getelementptr inbounds %struct.gb_power_supply_get_property_descriptors_response, %struct.gb_power_supply_get_property_descriptors_response* %158, i32 0, i32 0
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %159, align 8
  %161 = load i32, i32* %11, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %167 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %166, i32 0, i32 2
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %167, align 8
  %169 = load i32, i32* %11, align 4
  %170 = load i32, i32* %12, align 4
  %171 = sub nsw i32 %169, %170
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 2
  store i32 %165, i32* %174, align 4
  %175 = load i32, i32* %9, align 4
  %176 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %177 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %11, align 4
  %180 = load i32, i32* %12, align 4
  %181 = sub nsw i32 %179, %180
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %178, i64 %182
  store i32 %175, i32* %183, align 4
  %184 = load %struct.gb_power_supply_get_property_descriptors_response*, %struct.gb_power_supply_get_property_descriptors_response** %6, align 8
  %185 = getelementptr inbounds %struct.gb_power_supply_get_property_descriptors_response, %struct.gb_power_supply_get_property_descriptors_response* %184, i32 0, i32 0
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %185, align 8
  %187 = load i32, i32* %11, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %203

193:                                              ; preds = %147
  %194 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %195 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %194, i32 0, i32 2
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %195, align 8
  %197 = load i32, i32* %11, align 4
  %198 = load i32, i32* %12, align 4
  %199 = sub nsw i32 %197, %198
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 1
  store i32 1, i32* %202, align 4
  br label %203

203:                                              ; preds = %193, %147
  br label %204

204:                                              ; preds = %203, %144
  %205 = load i32, i32* %11, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %11, align 4
  br label %128

207:                                              ; preds = %128
  %208 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %209 = call i32 @_gb_power_supply_append_props(%struct.gb_power_supply* %208)
  store i32 0, i32* %10, align 4
  br label %210

210:                                              ; preds = %207, %124, %108, %50
  %211 = load %struct.gb_operation*, %struct.gb_operation** %7, align 8
  %212 = call i32 @gb_operation_put(%struct.gb_operation* %211)
  %213 = load i32, i32* %10, align 4
  store i32 %213, i32* %2, align 4
  br label %214

214:                                              ; preds = %210, %32, %20
  %215 = load i32, i32* %2, align 4
  ret i32 %215
}

declare dso_local %struct.gb_connection* @get_conn_from_psy(%struct.gb_power_supply*) #1

declare dso_local %struct.gb_operation* @gb_operation_create(%struct.gb_connection*, i32, i32, i32, i32) #1

declare dso_local i32 @struct_size(%struct.gb_power_supply_get_property_descriptors_response*, i32, i32) #1

declare dso_local i32 @gb_operation_request_send_sync(%struct.gb_operation*) #1

declare dso_local i32 @get_psp_from_gb_prop(i32, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @_gb_power_supply_append_props(%struct.gb_power_supply*) #1

declare dso_local i32 @gb_operation_put(%struct.gb_operation*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
