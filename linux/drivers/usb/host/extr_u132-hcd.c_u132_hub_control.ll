; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_u132-hcd.c_u132_hub_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_u132-hcd.c_u132_hub_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.u132 = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.usb_hub_descriptor = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"device has been removed %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"device is being removed\0A\00", align 1
@ESHUTDOWN = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, i32, i32, i32, i8*, i32)* @u132_hub_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u132_hub_control(%struct.usb_hcd* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_hcd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.u132*, align 8
  %15 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.usb_hcd*, %struct.usb_hcd** %8, align 8
  %17 = call %struct.u132* @hcd_to_u132(%struct.usb_hcd* %16)
  store %struct.u132* %17, %struct.u132** %14, align 8
  %18 = load %struct.u132*, %struct.u132** %14, align 8
  %19 = getelementptr inbounds %struct.u132, %struct.u132* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %33

22:                                               ; preds = %6
  %23 = load %struct.u132*, %struct.u132** %14, align 8
  %24 = getelementptr inbounds %struct.u132, %struct.u132* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.u132*, %struct.u132** %14, align 8
  %28 = getelementptr inbounds %struct.u132, %struct.u132* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i32*, i8*, ...) @dev_err(i32* %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %121

33:                                               ; preds = %6
  %34 = load %struct.u132*, %struct.u132** %14, align 8
  %35 = getelementptr inbounds %struct.u132, %struct.u132* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load %struct.u132*, %struct.u132** %14, align 8
  %40 = getelementptr inbounds %struct.u132, %struct.u132* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 (i32*, i8*, ...) @dev_err(i32* %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @ESHUTDOWN, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %7, align 4
  br label %121

46:                                               ; preds = %33
  store i32 0, i32* %15, align 4
  %47 = load %struct.u132*, %struct.u132** %14, align 8
  %48 = getelementptr inbounds %struct.u132, %struct.u132* %47, i32 0, i32 1
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load i32, i32* %9, align 4
  switch i32 %50, label %107 [
    i32 134, label %51
    i32 129, label %56
    i32 133, label %61
    i32 132, label %70
    i32 131, label %79
    i32 130, label %88
    i32 128, label %98
  ]

51:                                               ; preds = %46
  %52 = load i32, i32* %10, align 4
  switch i32 %52, label %54 [
    i32 135, label %53
    i32 136, label %53
  ]

53:                                               ; preds = %51, %51
  br label %55

54:                                               ; preds = %51
  br label %113

55:                                               ; preds = %53
  br label %116

56:                                               ; preds = %46
  %57 = load i32, i32* %10, align 4
  switch i32 %57, label %59 [
    i32 135, label %58
    i32 136, label %58
  ]

58:                                               ; preds = %56, %56
  br label %60

59:                                               ; preds = %56
  br label %113

60:                                               ; preds = %58
  br label %116

61:                                               ; preds = %46
  %62 = load %struct.u132*, %struct.u132** %14, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @u132_roothub_clearportfeature(%struct.u132* %62, i32 %63, i32 %64)
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %15, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %108

69:                                               ; preds = %61
  br label %116

70:                                               ; preds = %46
  %71 = load %struct.u132*, %struct.u132** %14, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = bitcast i8* %72 to %struct.usb_hub_descriptor*
  %74 = call i32 @u132_roothub_descriptor(%struct.u132* %71, %struct.usb_hub_descriptor* %73)
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %15, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %108

78:                                               ; preds = %70
  br label %116

79:                                               ; preds = %46
  %80 = load %struct.u132*, %struct.u132** %14, align 8
  %81 = load i8*, i8** %12, align 8
  %82 = bitcast i8* %81 to i32*
  %83 = call i32 @u132_roothub_status(%struct.u132* %80, i32* %82)
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* %15, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %108

87:                                               ; preds = %79
  br label %116

88:                                               ; preds = %46
  %89 = load %struct.u132*, %struct.u132** %14, align 8
  %90 = load i8*, i8** %12, align 8
  %91 = bitcast i8* %90 to i32*
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @u132_roothub_portstatus(%struct.u132* %89, i32* %91, i32 %92)
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %15, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  br label %108

97:                                               ; preds = %88
  br label %116

98:                                               ; preds = %46
  %99 = load %struct.u132*, %struct.u132** %14, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @u132_roothub_setportfeature(%struct.u132* %99, i32 %100, i32 %101)
  store i32 %102, i32* %15, align 4
  %103 = load i32, i32* %15, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  br label %108

106:                                              ; preds = %98
  br label %116

107:                                              ; preds = %46
  br label %113

108:                                              ; preds = %105, %96, %86, %77, %68
  %109 = load %struct.u132*, %struct.u132** %14, align 8
  %110 = call i32 @u132_disable(%struct.u132* %109)
  %111 = load %struct.u132*, %struct.u132** %14, align 8
  %112 = getelementptr inbounds %struct.u132, %struct.u132* %111, i32 0, i32 0
  store i32 1, i32* %112, align 8
  br label %116

113:                                              ; preds = %107, %59, %54
  %114 = load i32, i32* @EPIPE, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %15, align 4
  br label %116

116:                                              ; preds = %113, %108, %106, %97, %87, %78, %69, %60, %55
  %117 = load %struct.u132*, %struct.u132** %14, align 8
  %118 = getelementptr inbounds %struct.u132, %struct.u132* %117, i32 0, i32 1
  %119 = call i32 @mutex_unlock(i32* %118)
  %120 = load i32, i32* %15, align 4
  store i32 %120, i32* %7, align 4
  br label %121

121:                                              ; preds = %116, %38, %22
  %122 = load i32, i32* %7, align 4
  ret i32 %122
}

declare dso_local %struct.u132* @hcd_to_u132(%struct.usb_hcd*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @u132_roothub_clearportfeature(%struct.u132*, i32, i32) #1

declare dso_local i32 @u132_roothub_descriptor(%struct.u132*, %struct.usb_hub_descriptor*) #1

declare dso_local i32 @u132_roothub_status(%struct.u132*, i32*) #1

declare dso_local i32 @u132_roothub_portstatus(%struct.u132*, i32*, i32) #1

declare dso_local i32 @u132_roothub_setportfeature(%struct.u132*, i32, i32) #1

declare dso_local i32 @u132_disable(%struct.u132*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
