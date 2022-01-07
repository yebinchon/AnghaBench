; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_devices.c_usb_dump_endpoint_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_devices.c_usb_dump_endpoint_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_endpoint_descriptor = type { i32, i32, i32 }

@USB_SPEED_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"Ctrl\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Isoc\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Bulk\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Int.\00", align 1
@USB_SPEED_SUPER = common dso_local global i32 0, align 4
@format_endpt = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*, i8*, %struct.usb_endpoint_descriptor*)* @usb_dump_endpoint_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @usb_dump_endpoint_descriptor(i32 %0, i8* %1, i8* %2, %struct.usb_endpoint_descriptor* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.usb_endpoint_descriptor*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.usb_endpoint_descriptor* %3, %struct.usb_endpoint_descriptor** %9, align 8
  store i32 1, i32* %14, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = icmp ugt i8* %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i8*, i8** %7, align 8
  store i8* %19, i8** %5, align 8
  br label %130

20:                                               ; preds = %4
  %21 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %22 = call i64 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %21)
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 73, i32 79
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %10, align 1
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @USB_SPEED_HIGH, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %32 = call i32 @usb_endpoint_maxp_mult(%struct.usb_endpoint_descriptor* %31)
  store i32 %32, i32* %14, align 4
  br label %33

33:                                               ; preds = %30, %20
  %34 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %35 = call i32 @usb_endpoint_type(%struct.usb_endpoint_descriptor* %34)
  switch i32 %35, label %85 [
    i32 130, label %36
    i32 128, label %46
    i32 131, label %52
    i32 129, label %66
  ]

36:                                               ; preds = %33
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @USB_SPEED_HIGH, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %42 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %13, align 4
  br label %45

44:                                               ; preds = %36
  store i32 0, i32* %13, align 4
  br label %45

45:                                               ; preds = %44, %40
  store i8 66, i8* %10, align 1
  br label %87

46:                                               ; preds = %33
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  %47 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %48 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sub i32 %49, 1
  %51 = shl i32 1, %50
  store i32 %51, i32* %13, align 4
  br label %87

52:                                               ; preds = %33
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @USB_SPEED_HIGH, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = load i8, i8* %10, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 79
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %62 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %13, align 4
  br label %65

64:                                               ; preds = %56, %52
  store i32 0, i32* %13, align 4
  br label %65

65:                                               ; preds = %64, %60
  br label %87

66:                                               ; preds = %33
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %12, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @USB_SPEED_HIGH, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @USB_SPEED_SUPER, align 4
  %73 = icmp sge i32 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %70, %66
  %75 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %76 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sub i32 %77, 1
  %79 = shl i32 1, %78
  store i32 %79, i32* %13, align 4
  br label %84

80:                                               ; preds = %70
  %81 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %82 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %13, align 4
  br label %84

84:                                               ; preds = %80, %74
  br label %87

85:                                               ; preds = %33
  %86 = load i8*, i8** %7, align 8
  store i8* %86, i8** %5, align 8
  br label %130

87:                                               ; preds = %84, %65, %46, %45
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @USB_SPEED_HIGH, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @USB_SPEED_SUPER, align 4
  %94 = icmp sge i32 %92, %93
  br label %95

95:                                               ; preds = %91, %87
  %96 = phi i1 [ true, %87 ], [ %94, %91 ]
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 125, i32 1000
  %99 = load i32, i32* %13, align 4
  %100 = mul i32 %99, %98
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* %13, align 4
  %102 = urem i32 %101, 1000
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %95
  store i8 117, i8* %11, align 1
  br label %108

105:                                              ; preds = %95
  store i8 109, i8* %11, align 1
  %106 = load i32, i32* %13, align 4
  %107 = udiv i32 %106, 1000
  store i32 %107, i32* %13, align 4
  br label %108

108:                                              ; preds = %105, %104
  %109 = load i8*, i8** %7, align 8
  %110 = load i8*, i8** @format_endpt, align 8
  %111 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %112 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load i8, i8* %10, align 1
  %115 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %116 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i8*, i8** %12, align 8
  %119 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %120 = call i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %119)
  %121 = load i32, i32* %14, align 4
  %122 = mul i32 %120, %121
  %123 = load i32, i32* %13, align 4
  %124 = load i8, i8* %11, align 1
  %125 = call i32 @sprintf(i8* %109, i8* %110, i32 %113, i8 signext %114, i32 %117, i8* %118, i32 %122, i32 %123, i8 signext %124)
  %126 = load i8*, i8** %7, align 8
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  store i8* %128, i8** %7, align 8
  %129 = load i8*, i8** %7, align 8
  store i8* %129, i8** %5, align 8
  br label %130

130:                                              ; preds = %108, %85, %18
  %131 = load i8*, i8** %5, align 8
  ret i8* %131
}

declare dso_local i64 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @usb_endpoint_maxp_mult(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @usb_endpoint_type(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i8 signext, i32, i8*, i32, i32, i8 signext) #1

declare dso_local i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
