; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_handle_ext_role_switch_states.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_handle_ext_role_switch_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.renesas_usb3 = type { i32, i32, %struct.device* }

@.str = private unnamed_addr constant [28 x i8] c"device_attach(host) failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i32)* @handle_ext_role_switch_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_ext_role_switch_states(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.renesas_usb3*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.renesas_usb3* @dev_get_drvdata(%struct.device* %8)
  store %struct.renesas_usb3* %9, %struct.renesas_usb3** %5, align 8
  %10 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %11 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %10, i32 0, i32 2
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = call i32 @renesas_usb3_role_switch_get(%struct.device* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %111 [
    i32 128, label %16
    i32 130, label %29
    i32 129, label %67
  ]

16:                                               ; preds = %2
  %17 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %18 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %17, i32 0, i32 0
  store i32 128, i32* %18, align 8
  %19 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %20 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %25 = call i32 @usb3_disconnect(%struct.renesas_usb3* %24)
  br label %26

26:                                               ; preds = %23, %16
  %27 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %28 = call i32 @usb3_vbus_out(%struct.renesas_usb3* %27, i32 0)
  br label %112

29:                                               ; preds = %2
  %30 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %31 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 128
  br i1 %33, label %34, label %47

34:                                               ; preds = %29
  %35 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %36 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %35, i32 0, i32 0
  store i32 130, i32* %36, align 8
  %37 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %38 = call i32 @usb3_set_mode(%struct.renesas_usb3* %37, i32 0)
  %39 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %40 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %45 = call i32 @usb3_connect(%struct.renesas_usb3* %44)
  br label %46

46:                                               ; preds = %43, %34
  br label %64

47:                                               ; preds = %29
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %48, 129
  br i1 %49, label %50, label %63

50:                                               ; preds = %47
  %51 = load %struct.device*, %struct.device** %6, align 8
  %52 = call i32 @device_release_driver(%struct.device* %51)
  %53 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %54 = call i32 @usb3_set_mode(%struct.renesas_usb3* %53, i32 0)
  %55 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %56 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %61 = call i32 @usb3_connect(%struct.renesas_usb3* %60)
  br label %62

62:                                               ; preds = %59, %50
  br label %63

63:                                               ; preds = %62, %47
  br label %64

64:                                               ; preds = %63, %46
  %65 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %66 = call i32 @usb3_vbus_out(%struct.renesas_usb3* %65, i32 0)
  br label %112

67:                                               ; preds = %2
  %68 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %69 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 128
  br i1 %71, label %72, label %94

72:                                               ; preds = %67
  %73 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %74 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %79 = call i32 @usb3_disconnect(%struct.renesas_usb3* %78)
  br label %80

80:                                               ; preds = %77, %72
  %81 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %82 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %81, i32 0, i32 0
  store i32 129, i32* %82, align 8
  %83 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %84 = call i32 @usb3_set_mode(%struct.renesas_usb3* %83, i32 1)
  %85 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %86 = call i32 @usb3_vbus_out(%struct.renesas_usb3* %85, i32 1)
  %87 = load %struct.device*, %struct.device** %6, align 8
  %88 = call i32 @device_attach(%struct.device* %87)
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %80
  %91 = load %struct.device*, %struct.device** %3, align 8
  %92 = call i32 @dev_err(%struct.device* %91, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %93

93:                                               ; preds = %90, %80
  br label %110

94:                                               ; preds = %67
  %95 = load i32, i32* %7, align 4
  %96 = icmp eq i32 %95, 130
  br i1 %96, label %97, label %109

97:                                               ; preds = %94
  %98 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %99 = call i32 @usb3_disconnect(%struct.renesas_usb3* %98)
  %100 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %101 = call i32 @usb3_set_mode(%struct.renesas_usb3* %100, i32 1)
  %102 = load %struct.device*, %struct.device** %6, align 8
  %103 = call i32 @device_attach(%struct.device* %102)
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %97
  %106 = load %struct.device*, %struct.device** %3, align 8
  %107 = call i32 @dev_err(%struct.device* %106, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %108

108:                                              ; preds = %105, %97
  br label %109

109:                                              ; preds = %108, %94
  br label %110

110:                                              ; preds = %109, %93
  br label %112

111:                                              ; preds = %2
  br label %112

112:                                              ; preds = %111, %110, %64, %26
  ret void
}

declare dso_local %struct.renesas_usb3* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @renesas_usb3_role_switch_get(%struct.device*) #1

declare dso_local i32 @usb3_disconnect(%struct.renesas_usb3*) #1

declare dso_local i32 @usb3_vbus_out(%struct.renesas_usb3*, i32) #1

declare dso_local i32 @usb3_set_mode(%struct.renesas_usb3*, i32) #1

declare dso_local i32 @usb3_connect(%struct.renesas_usb3*) #1

declare dso_local i32 @device_release_driver(%struct.device*) #1

declare dso_local i32 @device_attach(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
