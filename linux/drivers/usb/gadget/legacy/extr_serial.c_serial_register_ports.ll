; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_serial.c_serial_register_ports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_serial.c_serial_register_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_composite_dev = type { i32 }
%struct.usb_configuration = type { i32 }

@n_ports = common dso_local global i32 0, align 4
@fi_serial = common dso_local global i32* null, align 8
@f_serial = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_composite_dev*, %struct.usb_configuration*, i8*)* @serial_register_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial_register_ports(%struct.usb_composite_dev* %0, %struct.usb_configuration* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_composite_dev*, align 8
  %6 = alloca %struct.usb_configuration*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_composite_dev* %0, %struct.usb_composite_dev** %5, align 8
  store %struct.usb_configuration* %1, %struct.usb_configuration** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %5, align 8
  %11 = load %struct.usb_configuration*, %struct.usb_configuration** %6, align 8
  %12 = call i32 @usb_add_config_only(%struct.usb_composite_dev* %10, %struct.usb_configuration* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %126

16:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %79, %16
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @n_ports, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %82

21:                                               ; preds = %17
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @usb_get_function_instance(i8* %22)
  %24 = load i32*, i32** @fi_serial, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32 %23, i32* %27, align 4
  %28 = load i32*, i32** @fi_serial, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @IS_ERR(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %21
  %36 = load i32*, i32** @fi_serial, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @PTR_ERR(i32 %40)
  store i32 %41, i32* %9, align 4
  br label %97

42:                                               ; preds = %21
  %43 = load i32*, i32** @fi_serial, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @usb_get_function(i32 %47)
  %49 = load i32*, i32** @f_serial, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %48, i32* %52, align 4
  %53 = load i32*, i32** @f_serial, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @IS_ERR(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %42
  %61 = load i32*, i32** @f_serial, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @PTR_ERR(i32 %65)
  store i32 %66, i32* %9, align 4
  br label %90

67:                                               ; preds = %42
  %68 = load %struct.usb_configuration*, %struct.usb_configuration** %6, align 8
  %69 = load i32*, i32** @f_serial, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @usb_add_function(%struct.usb_configuration* %68, i32 %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  br label %83

78:                                               ; preds = %67
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %17

82:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %128

83:                                               ; preds = %77
  %84 = load i32*, i32** @f_serial, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @usb_put_function(i32 %88)
  br label %90

90:                                               ; preds = %83, %60
  %91 = load i32*, i32** @fi_serial, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @usb_put_function_instance(i32 %95)
  br label %97

97:                                               ; preds = %90, %35
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %103, %97
  %101 = load i32, i32* %8, align 4
  %102 = icmp sge i32 %101, 0
  br i1 %102, label %103, label %125

103:                                              ; preds = %100
  %104 = load %struct.usb_configuration*, %struct.usb_configuration** %6, align 8
  %105 = load i32*, i32** @f_serial, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @usb_remove_function(%struct.usb_configuration* %104, i32 %109)
  %111 = load i32*, i32** @f_serial, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @usb_put_function(i32 %115)
  %117 = load i32*, i32** @fi_serial, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @usb_put_function_instance(i32 %121)
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %8, align 4
  br label %100

125:                                              ; preds = %100
  br label %126

126:                                              ; preds = %125, %15
  %127 = load i32, i32* %9, align 4
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %126, %82
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i32 @usb_add_config_only(%struct.usb_composite_dev*, %struct.usb_configuration*) #1

declare dso_local i32 @usb_get_function_instance(i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @usb_get_function(i32) #1

declare dso_local i32 @usb_add_function(%struct.usb_configuration*, i32) #1

declare dso_local i32 @usb_put_function(i32) #1

declare dso_local i32 @usb_put_function_instance(i32) #1

declare dso_local i32 @usb_remove_function(%struct.usb_configuration*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
