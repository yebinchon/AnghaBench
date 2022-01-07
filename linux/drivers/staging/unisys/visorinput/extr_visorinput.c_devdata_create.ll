; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/unisys/visorinput/extr_visorinput.c_devdata_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/unisys/visorinput/extr_visorinput.c_devdata_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.visorinput_devdata = type { i32, i32, i32, i64, i32, i32, %struct.visor_device* }
%struct.visor_device = type { i32 }
%struct.visor_input_channel_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@KEYCODE_TABLE_BYTES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@visorkbd_keycode = common dso_local global i32 0, align 4
@visorkbd_ext_keycode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.visorinput_devdata* (%struct.visor_device*, i32)* @devdata_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.visorinput_devdata* @devdata_create(%struct.visor_device* %0, i32 %1) #0 {
  %3 = alloca %struct.visorinput_devdata*, align 8
  %4 = alloca %struct.visor_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.visorinput_devdata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.visor_input_channel_data, align 4
  store %struct.visor_device* %0, %struct.visor_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.visorinput_devdata* null, %struct.visorinput_devdata** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 129
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @KEYCODE_TABLE_BYTES, align 4
  %17 = mul nsw i32 %16, 2
  store i32 %17, i32* %7, align 4
  br label %18

18:                                               ; preds = %15, %2
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = add i64 40, %20
  %22 = trunc i64 %21 to i32
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.visorinput_devdata* @kzalloc(i32 %22, i32 %23)
  store %struct.visorinput_devdata* %24, %struct.visorinput_devdata** %6, align 8
  %25 = load %struct.visorinput_devdata*, %struct.visorinput_devdata** %6, align 8
  %26 = icmp ne %struct.visorinput_devdata* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  store %struct.visorinput_devdata* null, %struct.visorinput_devdata** %3, align 8
  br label %142

28:                                               ; preds = %18
  %29 = load %struct.visorinput_devdata*, %struct.visorinput_devdata** %6, align 8
  %30 = getelementptr inbounds %struct.visorinput_devdata, %struct.visorinput_devdata* %29, i32 0, i32 2
  %31 = call i32 @mutex_init(i32* %30)
  %32 = load %struct.visorinput_devdata*, %struct.visorinput_devdata** %6, align 8
  %33 = getelementptr inbounds %struct.visorinput_devdata, %struct.visorinput_devdata* %32, i32 0, i32 2
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.visor_device*, %struct.visor_device** %4, align 8
  %36 = load %struct.visorinput_devdata*, %struct.visorinput_devdata** %6, align 8
  %37 = getelementptr inbounds %struct.visorinput_devdata, %struct.visorinput_devdata* %36, i32 0, i32 6
  store %struct.visor_device* %35, %struct.visor_device** %37, align 8
  %38 = load %struct.visorinput_devdata*, %struct.visorinput_devdata** %6, align 8
  %39 = getelementptr inbounds %struct.visorinput_devdata, %struct.visorinput_devdata* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load i32, i32* %5, align 4
  switch i32 %40, label %98 [
    i32 129, label %41
    i32 128, label %72
  ]

41:                                               ; preds = %28
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.visorinput_devdata*, %struct.visorinput_devdata** %6, align 8
  %44 = getelementptr inbounds %struct.visorinput_devdata, %struct.visorinput_devdata* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.visorinput_devdata*, %struct.visorinput_devdata** %6, align 8
  %46 = getelementptr inbounds %struct.visorinput_devdata, %struct.visorinput_devdata* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @visorkbd_keycode, align 4
  %49 = load i32, i32* @KEYCODE_TABLE_BYTES, align 4
  %50 = call i32 @memcpy(i32 %47, i32 %48, i32 %49)
  %51 = load %struct.visorinput_devdata*, %struct.visorinput_devdata** %6, align 8
  %52 = getelementptr inbounds %struct.visorinput_devdata, %struct.visorinput_devdata* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @KEYCODE_TABLE_BYTES, align 4
  %55 = add nsw i32 %53, %54
  %56 = load i32, i32* @visorkbd_ext_keycode, align 4
  %57 = load i32, i32* @KEYCODE_TABLE_BYTES, align 4
  %58 = call i32 @memcpy(i32 %55, i32 %56, i32 %57)
  %59 = load %struct.visorinput_devdata*, %struct.visorinput_devdata** %6, align 8
  %60 = load %struct.visorinput_devdata*, %struct.visorinput_devdata** %6, align 8
  %61 = getelementptr inbounds %struct.visorinput_devdata, %struct.visorinput_devdata* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @setup_client_keyboard(%struct.visorinput_devdata* %59, i32 %62)
  %64 = load %struct.visorinput_devdata*, %struct.visorinput_devdata** %6, align 8
  %65 = getelementptr inbounds %struct.visorinput_devdata, %struct.visorinput_devdata* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load %struct.visorinput_devdata*, %struct.visorinput_devdata** %6, align 8
  %67 = getelementptr inbounds %struct.visorinput_devdata, %struct.visorinput_devdata* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %41
  br label %135

71:                                               ; preds = %41
  br label %99

72:                                               ; preds = %28
  store i32 8, i32* %8, align 4
  %73 = load %struct.visor_device*, %struct.visor_device** %4, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @visorbus_read_channel(%struct.visor_device* %73, i32 4, %struct.visor_input_channel_data* %12, i32 %74)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %135

79:                                               ; preds = %72
  %80 = getelementptr inbounds %struct.visor_input_channel_data, %struct.visor_input_channel_data* %12, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %9, align 4
  %83 = getelementptr inbounds %struct.visor_input_channel_data, %struct.visor_input_channel_data* %12, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %10, align 4
  %86 = load %struct.visorinput_devdata*, %struct.visorinput_devdata** %6, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @setup_client_mouse(%struct.visorinput_devdata* %86, i32 %87, i32 %88)
  %90 = load %struct.visorinput_devdata*, %struct.visorinput_devdata** %6, align 8
  %91 = getelementptr inbounds %struct.visorinput_devdata, %struct.visorinput_devdata* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 8
  %92 = load %struct.visorinput_devdata*, %struct.visorinput_devdata** %6, align 8
  %93 = getelementptr inbounds %struct.visorinput_devdata, %struct.visorinput_devdata* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %79
  br label %135

97:                                               ; preds = %79
  br label %99

98:                                               ; preds = %28
  br label %99

99:                                               ; preds = %98, %97, %71
  %100 = load %struct.visor_device*, %struct.visor_device** %4, align 8
  %101 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %100, i32 0, i32 0
  %102 = load %struct.visorinput_devdata*, %struct.visorinput_devdata** %6, align 8
  %103 = call i32 @dev_set_drvdata(i32* %101, %struct.visorinput_devdata* %102)
  %104 = load %struct.visorinput_devdata*, %struct.visorinput_devdata** %6, align 8
  %105 = getelementptr inbounds %struct.visorinput_devdata, %struct.visorinput_devdata* %104, i32 0, i32 2
  %106 = call i32 @mutex_unlock(i32* %105)
  %107 = load %struct.visorinput_devdata*, %struct.visorinput_devdata** %6, align 8
  %108 = getelementptr inbounds %struct.visorinput_devdata, %struct.visorinput_devdata* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @input_register_device(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %99
  %113 = load %struct.visorinput_devdata*, %struct.visorinput_devdata** %6, align 8
  %114 = getelementptr inbounds %struct.visorinput_devdata, %struct.visorinput_devdata* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @input_free_device(i32 %115)
  br label %139

117:                                              ; preds = %99
  %118 = load %struct.visorinput_devdata*, %struct.visorinput_devdata** %6, align 8
  %119 = getelementptr inbounds %struct.visorinput_devdata, %struct.visorinput_devdata* %118, i32 0, i32 2
  %120 = call i32 @mutex_lock(i32* %119)
  %121 = load %struct.visorinput_devdata*, %struct.visorinput_devdata** %6, align 8
  %122 = getelementptr inbounds %struct.visorinput_devdata, %struct.visorinput_devdata* %121, i32 0, i32 0
  store i32 0, i32* %122, align 8
  %123 = load %struct.visorinput_devdata*, %struct.visorinput_devdata** %6, align 8
  %124 = getelementptr inbounds %struct.visorinput_devdata, %struct.visorinput_devdata* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %117
  %128 = load %struct.visor_device*, %struct.visor_device** %4, align 8
  %129 = call i32 @visorbus_enable_channel_interrupts(%struct.visor_device* %128)
  br label %130

130:                                              ; preds = %127, %117
  %131 = load %struct.visorinput_devdata*, %struct.visorinput_devdata** %6, align 8
  %132 = getelementptr inbounds %struct.visorinput_devdata, %struct.visorinput_devdata* %131, i32 0, i32 2
  %133 = call i32 @mutex_unlock(i32* %132)
  %134 = load %struct.visorinput_devdata*, %struct.visorinput_devdata** %6, align 8
  store %struct.visorinput_devdata* %134, %struct.visorinput_devdata** %3, align 8
  br label %142

135:                                              ; preds = %96, %78, %70
  %136 = load %struct.visorinput_devdata*, %struct.visorinput_devdata** %6, align 8
  %137 = getelementptr inbounds %struct.visorinput_devdata, %struct.visorinput_devdata* %136, i32 0, i32 2
  %138 = call i32 @mutex_unlock(i32* %137)
  br label %139

139:                                              ; preds = %135, %112
  %140 = load %struct.visorinput_devdata*, %struct.visorinput_devdata** %6, align 8
  %141 = call i32 @kfree(%struct.visorinput_devdata* %140)
  store %struct.visorinput_devdata* null, %struct.visorinput_devdata** %3, align 8
  br label %142

142:                                              ; preds = %139, %130, %27
  %143 = load %struct.visorinput_devdata*, %struct.visorinput_devdata** %3, align 8
  ret %struct.visorinput_devdata* %143
}

declare dso_local %struct.visorinput_devdata* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @setup_client_keyboard(%struct.visorinput_devdata*, i32) #1

declare dso_local i32 @visorbus_read_channel(%struct.visor_device*, i32, %struct.visor_input_channel_data*, i32) #1

declare dso_local i32 @setup_client_mouse(%struct.visorinput_devdata*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.visorinput_devdata*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @input_register_device(i32) #1

declare dso_local i32 @input_free_device(i32) #1

declare dso_local i32 @visorbus_enable_channel_interrupts(%struct.visor_device*) #1

declare dso_local i32 @kfree(%struct.visorinput_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
