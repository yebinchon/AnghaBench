; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_usb_wwan.c_usb_wwan_port_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_usb_wwan.c_usb_wwan_port_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32, i32, i32, i32 }
%struct.usb_wwan_port_private = type { %struct.usb_wwan_port_private**, %struct.urb**, %struct.usb_wwan_port_private**, %struct.urb**, i32 }
%struct.urb = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@N_IN_URB = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@IN_BUFLEN = common dso_local global i32 0, align 4
@usb_wwan_indat_callback = common dso_local global i32 0, align 4
@N_OUT_URB = common dso_local global i32 0, align 4
@OUT_BUFLEN = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@usb_wwan_outdat_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_wwan_port_probe(%struct.usb_serial_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca %struct.usb_wwan_port_private*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca %struct.usb_wwan_port_private*, align 8
  %7 = alloca i32, align 4
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %3, align 8
  %8 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %9 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %14 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12, %1
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %172

20:                                               ; preds = %12
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.usb_wwan_port_private* @kzalloc(i32 40, i32 %21)
  store %struct.usb_wwan_port_private* %22, %struct.usb_wwan_port_private** %4, align 8
  %23 = load %struct.usb_wwan_port_private*, %struct.usb_wwan_port_private** %4, align 8
  %24 = icmp ne %struct.usb_wwan_port_private* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %172

28:                                               ; preds = %20
  %29 = load %struct.usb_wwan_port_private*, %struct.usb_wwan_port_private** %4, align 8
  %30 = getelementptr inbounds %struct.usb_wwan_port_private, %struct.usb_wwan_port_private* %29, i32 0, i32 4
  %31 = call i32 @init_usb_anchor(i32* %30)
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %68, %28
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @N_IN_URB, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %71

36:                                               ; preds = %32
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i64 @__get_free_page(i32 %37)
  %39 = inttoptr i64 %38 to %struct.usb_wwan_port_private*
  store %struct.usb_wwan_port_private* %39, %struct.usb_wwan_port_private** %6, align 8
  %40 = load %struct.usb_wwan_port_private*, %struct.usb_wwan_port_private** %6, align 8
  %41 = icmp ne %struct.usb_wwan_port_private* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  br label %141

43:                                               ; preds = %36
  %44 = load %struct.usb_wwan_port_private*, %struct.usb_wwan_port_private** %6, align 8
  %45 = load %struct.usb_wwan_port_private*, %struct.usb_wwan_port_private** %4, align 8
  %46 = getelementptr inbounds %struct.usb_wwan_port_private, %struct.usb_wwan_port_private* %45, i32 0, i32 0
  %47 = load %struct.usb_wwan_port_private**, %struct.usb_wwan_port_private*** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.usb_wwan_port_private*, %struct.usb_wwan_port_private** %47, i64 %49
  store %struct.usb_wwan_port_private* %44, %struct.usb_wwan_port_private** %50, align 8
  %51 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %52 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %53 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @USB_DIR_IN, align 4
  %56 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %57 = load %struct.usb_wwan_port_private*, %struct.usb_wwan_port_private** %6, align 8
  %58 = load i32, i32* @IN_BUFLEN, align 4
  %59 = load i32, i32* @usb_wwan_indat_callback, align 4
  %60 = call %struct.urb* @usb_wwan_setup_urb(%struct.usb_serial_port* %51, i32 %54, i32 %55, %struct.usb_serial_port* %56, %struct.usb_wwan_port_private* %57, i32 %58, i32 %59)
  store %struct.urb* %60, %struct.urb** %5, align 8
  %61 = load %struct.urb*, %struct.urb** %5, align 8
  %62 = load %struct.usb_wwan_port_private*, %struct.usb_wwan_port_private** %4, align 8
  %63 = getelementptr inbounds %struct.usb_wwan_port_private, %struct.usb_wwan_port_private* %62, i32 0, i32 1
  %64 = load %struct.urb**, %struct.urb*** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.urb*, %struct.urb** %64, i64 %66
  store %struct.urb* %61, %struct.urb** %67, align 8
  br label %68

68:                                               ; preds = %43
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %32

71:                                               ; preds = %32
  store i32 0, i32* %7, align 4
  br label %72

72:                                               ; preds = %108, %71
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @N_OUT_URB, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %111

76:                                               ; preds = %72
  %77 = load i32, i32* @OUT_BUFLEN, align 4
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call %struct.usb_wwan_port_private* @kmalloc(i32 %77, i32 %78)
  store %struct.usb_wwan_port_private* %79, %struct.usb_wwan_port_private** %6, align 8
  %80 = load %struct.usb_wwan_port_private*, %struct.usb_wwan_port_private** %6, align 8
  %81 = icmp ne %struct.usb_wwan_port_private* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %76
  br label %115

83:                                               ; preds = %76
  %84 = load %struct.usb_wwan_port_private*, %struct.usb_wwan_port_private** %6, align 8
  %85 = load %struct.usb_wwan_port_private*, %struct.usb_wwan_port_private** %4, align 8
  %86 = getelementptr inbounds %struct.usb_wwan_port_private, %struct.usb_wwan_port_private* %85, i32 0, i32 2
  %87 = load %struct.usb_wwan_port_private**, %struct.usb_wwan_port_private*** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.usb_wwan_port_private*, %struct.usb_wwan_port_private** %87, i64 %89
  store %struct.usb_wwan_port_private* %84, %struct.usb_wwan_port_private** %90, align 8
  %91 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %92 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %93 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @USB_DIR_OUT, align 4
  %96 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %97 = load %struct.usb_wwan_port_private*, %struct.usb_wwan_port_private** %6, align 8
  %98 = load i32, i32* @OUT_BUFLEN, align 4
  %99 = load i32, i32* @usb_wwan_outdat_callback, align 4
  %100 = call %struct.urb* @usb_wwan_setup_urb(%struct.usb_serial_port* %91, i32 %94, i32 %95, %struct.usb_serial_port* %96, %struct.usb_wwan_port_private* %97, i32 %98, i32 %99)
  store %struct.urb* %100, %struct.urb** %5, align 8
  %101 = load %struct.urb*, %struct.urb** %5, align 8
  %102 = load %struct.usb_wwan_port_private*, %struct.usb_wwan_port_private** %4, align 8
  %103 = getelementptr inbounds %struct.usb_wwan_port_private, %struct.usb_wwan_port_private* %102, i32 0, i32 3
  %104 = load %struct.urb**, %struct.urb*** %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.urb*, %struct.urb** %104, i64 %106
  store %struct.urb* %101, %struct.urb** %107, align 8
  br label %108

108:                                              ; preds = %83
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %7, align 4
  br label %72

111:                                              ; preds = %72
  %112 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %113 = load %struct.usb_wwan_port_private*, %struct.usb_wwan_port_private** %4, align 8
  %114 = call i32 @usb_set_serial_port_data(%struct.usb_serial_port* %112, %struct.usb_wwan_port_private* %113)
  store i32 0, i32* %2, align 4
  br label %172

115:                                              ; preds = %82
  store i32 0, i32* %7, align 4
  br label %116

116:                                              ; preds = %137, %115
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @N_OUT_URB, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %140

120:                                              ; preds = %116
  %121 = load %struct.usb_wwan_port_private*, %struct.usb_wwan_port_private** %4, align 8
  %122 = getelementptr inbounds %struct.usb_wwan_port_private, %struct.usb_wwan_port_private* %121, i32 0, i32 3
  %123 = load %struct.urb**, %struct.urb*** %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.urb*, %struct.urb** %123, i64 %125
  %127 = load %struct.urb*, %struct.urb** %126, align 8
  %128 = call i32 @usb_free_urb(%struct.urb* %127)
  %129 = load %struct.usb_wwan_port_private*, %struct.usb_wwan_port_private** %4, align 8
  %130 = getelementptr inbounds %struct.usb_wwan_port_private, %struct.usb_wwan_port_private* %129, i32 0, i32 2
  %131 = load %struct.usb_wwan_port_private**, %struct.usb_wwan_port_private*** %130, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.usb_wwan_port_private*, %struct.usb_wwan_port_private** %131, i64 %133
  %135 = load %struct.usb_wwan_port_private*, %struct.usb_wwan_port_private** %134, align 8
  %136 = call i32 @kfree(%struct.usb_wwan_port_private* %135)
  br label %137

137:                                              ; preds = %120
  %138 = load i32, i32* %7, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %7, align 4
  br label %116

140:                                              ; preds = %116
  br label %141

141:                                              ; preds = %140, %42
  store i32 0, i32* %7, align 4
  br label %142

142:                                              ; preds = %164, %141
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* @N_IN_URB, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %167

146:                                              ; preds = %142
  %147 = load %struct.usb_wwan_port_private*, %struct.usb_wwan_port_private** %4, align 8
  %148 = getelementptr inbounds %struct.usb_wwan_port_private, %struct.usb_wwan_port_private* %147, i32 0, i32 1
  %149 = load %struct.urb**, %struct.urb*** %148, align 8
  %150 = load i32, i32* %7, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.urb*, %struct.urb** %149, i64 %151
  %153 = load %struct.urb*, %struct.urb** %152, align 8
  %154 = call i32 @usb_free_urb(%struct.urb* %153)
  %155 = load %struct.usb_wwan_port_private*, %struct.usb_wwan_port_private** %4, align 8
  %156 = getelementptr inbounds %struct.usb_wwan_port_private, %struct.usb_wwan_port_private* %155, i32 0, i32 0
  %157 = load %struct.usb_wwan_port_private**, %struct.usb_wwan_port_private*** %156, align 8
  %158 = load i32, i32* %7, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.usb_wwan_port_private*, %struct.usb_wwan_port_private** %157, i64 %159
  %161 = load %struct.usb_wwan_port_private*, %struct.usb_wwan_port_private** %160, align 8
  %162 = ptrtoint %struct.usb_wwan_port_private* %161 to i64
  %163 = call i32 @free_page(i64 %162)
  br label %164

164:                                              ; preds = %146
  %165 = load i32, i32* %7, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %7, align 4
  br label %142

167:                                              ; preds = %142
  %168 = load %struct.usb_wwan_port_private*, %struct.usb_wwan_port_private** %4, align 8
  %169 = call i32 @kfree(%struct.usb_wwan_port_private* %168)
  %170 = load i32, i32* @ENOMEM, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %2, align 4
  br label %172

172:                                              ; preds = %167, %111, %25, %17
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local %struct.usb_wwan_port_private* @kzalloc(i32, i32) #1

declare dso_local i32 @init_usb_anchor(i32*) #1

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local %struct.urb* @usb_wwan_setup_urb(%struct.usb_serial_port*, i32, i32, %struct.usb_serial_port*, %struct.usb_wwan_port_private*, i32, i32) #1

declare dso_local %struct.usb_wwan_port_private* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_set_serial_port_data(%struct.usb_serial_port*, %struct.usb_wwan_port_private*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @kfree(%struct.usb_wwan_port_private*) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
