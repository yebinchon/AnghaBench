; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_typec_register_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_typec_register_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typec_port = type { i8*, i32, i32, i8*, %struct.TYPE_7__, i32, i32, %struct.typec_capability*, i32, i32, i8*, i8* }
%struct.TYPE_7__ = type { i32*, i32, %struct.device*, i32 }
%struct.device = type { i32 }
%struct.typec_capability = type { i32, i8*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@typec_index_ida = common dso_local global i32 0, align 4
@TYPEC_SOURCE = common dso_local global i8* null, align 8
@TYPEC_SINK = common dso_local global i8* null, align 8
@TYPEC_NO_PREFERRED_ROLE = common dso_local global i8* null, align 8
@TYPEC_HOST = common dso_local global i8* null, align 8
@TYPEC_DEVICE = common dso_local global i8* null, align 8
@typec_class = common dso_local global i32 0, align 4
@typec_port_dev_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"port%d\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to register port (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.typec_port* @typec_register_port(%struct.device* %0, %struct.typec_capability* %1) #0 {
  %3 = alloca %struct.typec_port*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.typec_capability*, align 8
  %6 = alloca %struct.typec_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.typec_capability* %1, %struct.typec_capability** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.typec_port* @kzalloc(i32 96, i32 %9)
  store %struct.typec_port* %10, %struct.typec_port** %6, align 8
  %11 = load %struct.typec_port*, %struct.typec_port** %6, align 8
  %12 = icmp ne %struct.typec_port* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.typec_port* @ERR_PTR(i32 %15)
  store %struct.typec_port* %16, %struct.typec_port** %3, align 8
  br label %190

17:                                               ; preds = %2
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i32 @ida_simple_get(i32* @typec_index_ida, i32 0, i32 0, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.typec_port*, %struct.typec_port** %6, align 8
  %24 = call i32 @kfree(%struct.typec_port* %23)
  %25 = load i32, i32* %8, align 4
  %26 = call %struct.typec_port* @ERR_PTR(i32 %25)
  store %struct.typec_port* %26, %struct.typec_port** %3, align 8
  br label %190

27:                                               ; preds = %17
  %28 = load %struct.typec_capability*, %struct.typec_capability** %5, align 8
  %29 = getelementptr inbounds %struct.typec_capability, %struct.typec_capability* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %62 [
    i32 129, label %31
    i32 130, label %38
    i32 131, label %45
  ]

31:                                               ; preds = %27
  %32 = load i8*, i8** @TYPEC_SOURCE, align 8
  %33 = load %struct.typec_port*, %struct.typec_port** %6, align 8
  %34 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** @TYPEC_SOURCE, align 8
  %36 = load %struct.typec_port*, %struct.typec_port** %6, align 8
  %37 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %36, i32 0, i32 11
  store i8* %35, i8** %37, align 8
  br label %62

38:                                               ; preds = %27
  %39 = load i8*, i8** @TYPEC_SINK, align 8
  %40 = load %struct.typec_port*, %struct.typec_port** %6, align 8
  %41 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** @TYPEC_SINK, align 8
  %43 = load %struct.typec_port*, %struct.typec_port** %6, align 8
  %44 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %43, i32 0, i32 11
  store i8* %42, i8** %44, align 8
  br label %62

45:                                               ; preds = %27
  %46 = load %struct.typec_capability*, %struct.typec_capability** %5, align 8
  %47 = getelementptr inbounds %struct.typec_capability, %struct.typec_capability* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = load i8*, i8** @TYPEC_NO_PREFERRED_ROLE, align 8
  %50 = icmp ne i8* %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load %struct.typec_capability*, %struct.typec_capability** %5, align 8
  %53 = getelementptr inbounds %struct.typec_capability, %struct.typec_capability* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.typec_port*, %struct.typec_port** %6, align 8
  %56 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  br label %61

57:                                               ; preds = %45
  %58 = load i8*, i8** @TYPEC_SINK, align 8
  %59 = load %struct.typec_port*, %struct.typec_port** %6, align 8
  %60 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  br label %61

61:                                               ; preds = %57, %51
  br label %62

62:                                               ; preds = %27, %61, %38, %31
  %63 = load %struct.typec_capability*, %struct.typec_capability** %5, align 8
  %64 = getelementptr inbounds %struct.typec_capability, %struct.typec_capability* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  switch i32 %65, label %89 [
    i32 133, label %66
    i32 128, label %70
    i32 132, label %74
  ]

66:                                               ; preds = %62
  %67 = load i8*, i8** @TYPEC_HOST, align 8
  %68 = load %struct.typec_port*, %struct.typec_port** %6, align 8
  %69 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %68, i32 0, i32 10
  store i8* %67, i8** %69, align 8
  br label %89

70:                                               ; preds = %62
  %71 = load i8*, i8** @TYPEC_DEVICE, align 8
  %72 = load %struct.typec_port*, %struct.typec_port** %6, align 8
  %73 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %72, i32 0, i32 10
  store i8* %71, i8** %73, align 8
  br label %89

74:                                               ; preds = %62
  %75 = load %struct.typec_capability*, %struct.typec_capability** %5, align 8
  %76 = getelementptr inbounds %struct.typec_capability, %struct.typec_capability* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = load i8*, i8** @TYPEC_SOURCE, align 8
  %79 = icmp eq i8* %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load i8*, i8** @TYPEC_HOST, align 8
  %82 = load %struct.typec_port*, %struct.typec_port** %6, align 8
  %83 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %82, i32 0, i32 10
  store i8* %81, i8** %83, align 8
  br label %88

84:                                               ; preds = %74
  %85 = load i8*, i8** @TYPEC_DEVICE, align 8
  %86 = load %struct.typec_port*, %struct.typec_port** %6, align 8
  %87 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %86, i32 0, i32 10
  store i8* %85, i8** %87, align 8
  br label %88

88:                                               ; preds = %84, %80
  br label %89

89:                                               ; preds = %62, %88, %70, %66
  %90 = load %struct.typec_port*, %struct.typec_port** %6, align 8
  %91 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %90, i32 0, i32 9
  %92 = call i32 @ida_init(i32* %91)
  %93 = load %struct.typec_port*, %struct.typec_port** %6, align 8
  %94 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %93, i32 0, i32 8
  %95 = call i32 @mutex_init(i32* %94)
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.typec_port*, %struct.typec_port** %6, align 8
  %98 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 8
  %99 = load %struct.typec_capability*, %struct.typec_capability** %5, align 8
  %100 = load %struct.typec_port*, %struct.typec_port** %6, align 8
  %101 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %100, i32 0, i32 7
  store %struct.typec_capability* %99, %struct.typec_capability** %101, align 8
  %102 = load %struct.typec_capability*, %struct.typec_capability** %5, align 8
  %103 = getelementptr inbounds %struct.typec_capability, %struct.typec_capability* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.typec_port*, %struct.typec_port** %6, align 8
  %106 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 4
  %107 = load %struct.typec_capability*, %struct.typec_capability** %5, align 8
  %108 = getelementptr inbounds %struct.typec_capability, %struct.typec_capability* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.typec_port*, %struct.typec_port** %6, align 8
  %111 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %110, i32 0, i32 3
  store i8* %109, i8** %111, align 8
  %112 = load %struct.typec_port*, %struct.typec_port** %6, align 8
  %113 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %112, i32 0, i32 4
  %114 = call i32 @device_initialize(%struct.TYPE_7__* %113)
  %115 = load i32, i32* @typec_class, align 4
  %116 = load %struct.typec_port*, %struct.typec_port** %6, align 8
  %117 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 3
  store i32 %115, i32* %118, align 8
  %119 = load %struct.device*, %struct.device** %4, align 8
  %120 = load %struct.typec_port*, %struct.typec_port** %6, align 8
  %121 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 2
  store %struct.device* %119, %struct.device** %122, align 8
  %123 = load %struct.typec_capability*, %struct.typec_capability** %5, align 8
  %124 = getelementptr inbounds %struct.typec_capability, %struct.typec_capability* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.typec_port*, %struct.typec_port** %6, align 8
  %127 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  store i32 %125, i32* %128, align 8
  %129 = load %struct.typec_port*, %struct.typec_port** %6, align 8
  %130 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  store i32* @typec_port_dev_type, i32** %131, align 8
  %132 = load %struct.typec_port*, %struct.typec_port** %6, align 8
  %133 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %132, i32 0, i32 4
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @dev_set_name(%struct.TYPE_7__* %133, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %134)
  %136 = load %struct.typec_port*, %struct.typec_port** %6, align 8
  %137 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %136, i32 0, i32 4
  %138 = call i32 @typec_switch_get(%struct.TYPE_7__* %137)
  %139 = load %struct.typec_port*, %struct.typec_port** %6, align 8
  %140 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %139, i32 0, i32 6
  store i32 %138, i32* %140, align 4
  %141 = load %struct.typec_port*, %struct.typec_port** %6, align 8
  %142 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %141, i32 0, i32 6
  %143 = load i32, i32* %142, align 4
  %144 = call i64 @IS_ERR(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %89
  %147 = load %struct.typec_port*, %struct.typec_port** %6, align 8
  %148 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %147, i32 0, i32 4
  %149 = call i32 @put_device(%struct.TYPE_7__* %148)
  %150 = load %struct.typec_port*, %struct.typec_port** %6, align 8
  %151 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %150, i32 0, i32 6
  %152 = load i32, i32* %151, align 4
  %153 = call %struct.typec_port* @ERR_CAST(i32 %152)
  store %struct.typec_port* %153, %struct.typec_port** %3, align 8
  br label %190

154:                                              ; preds = %89
  %155 = load %struct.typec_port*, %struct.typec_port** %6, align 8
  %156 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %155, i32 0, i32 4
  %157 = call i32 @typec_mux_get(%struct.TYPE_7__* %156, i32* null)
  %158 = load %struct.typec_port*, %struct.typec_port** %6, align 8
  %159 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %158, i32 0, i32 5
  store i32 %157, i32* %159, align 8
  %160 = load %struct.typec_port*, %struct.typec_port** %6, align 8
  %161 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 8
  %163 = call i64 @IS_ERR(i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %154
  %166 = load %struct.typec_port*, %struct.typec_port** %6, align 8
  %167 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %166, i32 0, i32 4
  %168 = call i32 @put_device(%struct.TYPE_7__* %167)
  %169 = load %struct.typec_port*, %struct.typec_port** %6, align 8
  %170 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 8
  %172 = call %struct.typec_port* @ERR_CAST(i32 %171)
  store %struct.typec_port* %172, %struct.typec_port** %3, align 8
  br label %190

173:                                              ; preds = %154
  %174 = load %struct.typec_port*, %struct.typec_port** %6, align 8
  %175 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %174, i32 0, i32 4
  %176 = call i32 @device_add(%struct.TYPE_7__* %175)
  store i32 %176, i32* %7, align 4
  %177 = load i32, i32* %7, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %188

179:                                              ; preds = %173
  %180 = load %struct.device*, %struct.device** %4, align 8
  %181 = load i32, i32* %7, align 4
  %182 = call i32 @dev_err(%struct.device* %180, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %181)
  %183 = load %struct.typec_port*, %struct.typec_port** %6, align 8
  %184 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %183, i32 0, i32 4
  %185 = call i32 @put_device(%struct.TYPE_7__* %184)
  %186 = load i32, i32* %7, align 4
  %187 = call %struct.typec_port* @ERR_PTR(i32 %186)
  store %struct.typec_port* %187, %struct.typec_port** %3, align 8
  br label %190

188:                                              ; preds = %173
  %189 = load %struct.typec_port*, %struct.typec_port** %6, align 8
  store %struct.typec_port* %189, %struct.typec_port** %3, align 8
  br label %190

190:                                              ; preds = %188, %179, %165, %146, %22, %13
  %191 = load %struct.typec_port*, %struct.typec_port** %3, align 8
  ret %struct.typec_port* %191
}

declare dso_local %struct.typec_port* @kzalloc(i32, i32) #1

declare dso_local %struct.typec_port* @ERR_PTR(i32) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.typec_port*) #1

declare dso_local i32 @ida_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @device_initialize(%struct.TYPE_7__*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @typec_switch_get(%struct.TYPE_7__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @put_device(%struct.TYPE_7__*) #1

declare dso_local %struct.typec_port* @ERR_CAST(i32) #1

declare dso_local i32 @typec_mux_get(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @device_add(%struct.TYPE_7__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
