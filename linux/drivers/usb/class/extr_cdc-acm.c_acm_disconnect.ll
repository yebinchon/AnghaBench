; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/class/extr_cdc-acm.c_acm_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/class/extr_cdc-acm.c_acm_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.acm = type { i32, i32, i32, %struct.usb_interface*, %struct.usb_interface*, i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.tty_struct = type { i32 }

@dev_attr_wCountryCodes = common dso_local global i32 0, align 4
@dev_attr_iCountryCodeRelDate = common dso_local global i32 0, align 4
@dev_attr_bmCapabilities = common dso_local global i32 0, align 4
@acm_tty_driver = common dso_local global i32 0, align 4
@ACM_NW = common dso_local global i32 0, align 4
@acm_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @acm_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acm_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.acm*, align 8
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call %struct.acm* @usb_get_intfdata(%struct.usb_interface* %6)
  store %struct.acm* %7, %struct.acm** %3, align 8
  %8 = load %struct.acm*, %struct.acm** %3, align 8
  %9 = icmp ne %struct.acm* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %160

11:                                               ; preds = %1
  %12 = load %struct.acm*, %struct.acm** %3, align 8
  %13 = getelementptr inbounds %struct.acm, %struct.acm* %12, i32 0, i32 16
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.acm*, %struct.acm** %3, align 8
  %16 = getelementptr inbounds %struct.acm, %struct.acm* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.acm*, %struct.acm** %3, align 8
  %18 = getelementptr inbounds %struct.acm, %struct.acm* %17, i32 0, i32 18
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %11
  %22 = load %struct.acm*, %struct.acm** %3, align 8
  %23 = getelementptr inbounds %struct.acm, %struct.acm* %22, i32 0, i32 3
  %24 = load %struct.usb_interface*, %struct.usb_interface** %23, align 8
  %25 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %24, i32 0, i32 0
  %26 = call i32 @device_remove_file(i32* %25, i32* @dev_attr_wCountryCodes)
  %27 = load %struct.acm*, %struct.acm** %3, align 8
  %28 = getelementptr inbounds %struct.acm, %struct.acm* %27, i32 0, i32 3
  %29 = load %struct.usb_interface*, %struct.usb_interface** %28, align 8
  %30 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %29, i32 0, i32 0
  %31 = call i32 @device_remove_file(i32* %30, i32* @dev_attr_iCountryCodeRelDate)
  br label %32

32:                                               ; preds = %21, %11
  %33 = load %struct.acm*, %struct.acm** %3, align 8
  %34 = getelementptr inbounds %struct.acm, %struct.acm* %33, i32 0, i32 17
  %35 = call i32 @wake_up_all(i32* %34)
  %36 = load %struct.acm*, %struct.acm** %3, align 8
  %37 = getelementptr inbounds %struct.acm, %struct.acm* %36, i32 0, i32 3
  %38 = load %struct.usb_interface*, %struct.usb_interface** %37, align 8
  %39 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %38, i32 0, i32 0
  %40 = call i32 @device_remove_file(i32* %39, i32* @dev_attr_bmCapabilities)
  %41 = load %struct.acm*, %struct.acm** %3, align 8
  %42 = getelementptr inbounds %struct.acm, %struct.acm* %41, i32 0, i32 3
  %43 = load %struct.usb_interface*, %struct.usb_interface** %42, align 8
  %44 = call i32 @usb_set_intfdata(%struct.usb_interface* %43, i32* null)
  %45 = load %struct.acm*, %struct.acm** %3, align 8
  %46 = getelementptr inbounds %struct.acm, %struct.acm* %45, i32 0, i32 4
  %47 = load %struct.usb_interface*, %struct.usb_interface** %46, align 8
  %48 = call i32 @usb_set_intfdata(%struct.usb_interface* %47, i32* null)
  %49 = load %struct.acm*, %struct.acm** %3, align 8
  %50 = getelementptr inbounds %struct.acm, %struct.acm* %49, i32 0, i32 16
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load %struct.acm*, %struct.acm** %3, align 8
  %53 = getelementptr inbounds %struct.acm, %struct.acm* %52, i32 0, i32 2
  %54 = call %struct.tty_struct* @tty_port_tty_get(i32* %53)
  store %struct.tty_struct* %54, %struct.tty_struct** %4, align 8
  %55 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %56 = icmp ne %struct.tty_struct* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %32
  %58 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %59 = call i32 @tty_vhangup(%struct.tty_struct* %58)
  %60 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %61 = call i32 @tty_kref_put(%struct.tty_struct* %60)
  br label %62

62:                                               ; preds = %57, %32
  %63 = load %struct.acm*, %struct.acm** %3, align 8
  %64 = call i32 @acm_kill_urbs(%struct.acm* %63)
  %65 = load %struct.acm*, %struct.acm** %3, align 8
  %66 = getelementptr inbounds %struct.acm, %struct.acm* %65, i32 0, i32 15
  %67 = call i32 @cancel_work_sync(i32* %66)
  %68 = load i32, i32* @acm_tty_driver, align 4
  %69 = load %struct.acm*, %struct.acm** %3, align 8
  %70 = getelementptr inbounds %struct.acm, %struct.acm* %69, i32 0, i32 14
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @tty_unregister_device(i32 %68, i32 %71)
  %73 = load %struct.acm*, %struct.acm** %3, align 8
  %74 = getelementptr inbounds %struct.acm, %struct.acm* %73, i32 0, i32 13
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @usb_free_urb(i32 %75)
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %91, %62
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @ACM_NW, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %77
  %82 = load %struct.acm*, %struct.acm** %3, align 8
  %83 = getelementptr inbounds %struct.acm, %struct.acm* %82, i32 0, i32 12
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @usb_free_urb(i32 %89)
  br label %91

91:                                               ; preds = %81
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %5, align 4
  br label %77

94:                                               ; preds = %77
  store i32 0, i32* %5, align 4
  br label %95

95:                                               ; preds = %110, %94
  %96 = load i32, i32* %5, align 4
  %97 = load %struct.acm*, %struct.acm** %3, align 8
  %98 = getelementptr inbounds %struct.acm, %struct.acm* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %113

101:                                              ; preds = %95
  %102 = load %struct.acm*, %struct.acm** %3, align 8
  %103 = getelementptr inbounds %struct.acm, %struct.acm* %102, i32 0, i32 11
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @usb_free_urb(i32 %108)
  br label %110

110:                                              ; preds = %101
  %111 = load i32, i32* %5, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %5, align 4
  br label %95

113:                                              ; preds = %95
  %114 = load %struct.acm*, %struct.acm** %3, align 8
  %115 = call i32 @acm_write_buffers_free(%struct.acm* %114)
  %116 = load %struct.acm*, %struct.acm** %3, align 8
  %117 = getelementptr inbounds %struct.acm, %struct.acm* %116, i32 0, i32 10
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.acm*, %struct.acm** %3, align 8
  %120 = getelementptr inbounds %struct.acm, %struct.acm* %119, i32 0, i32 9
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.acm*, %struct.acm** %3, align 8
  %123 = getelementptr inbounds %struct.acm, %struct.acm* %122, i32 0, i32 8
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.acm*, %struct.acm** %3, align 8
  %126 = getelementptr inbounds %struct.acm, %struct.acm* %125, i32 0, i32 7
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @usb_free_coherent(i32 %118, i32 %121, i32 %124, i32 %127)
  %129 = load %struct.acm*, %struct.acm** %3, align 8
  %130 = call i32 @acm_read_buffers_free(%struct.acm* %129)
  %131 = load %struct.acm*, %struct.acm** %3, align 8
  %132 = getelementptr inbounds %struct.acm, %struct.acm* %131, i32 0, i32 6
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @kfree(i32 %133)
  %135 = load %struct.acm*, %struct.acm** %3, align 8
  %136 = getelementptr inbounds %struct.acm, %struct.acm* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %156, label %139

139:                                              ; preds = %113
  %140 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %141 = load %struct.acm*, %struct.acm** %3, align 8
  %142 = getelementptr inbounds %struct.acm, %struct.acm* %141, i32 0, i32 3
  %143 = load %struct.usb_interface*, %struct.usb_interface** %142, align 8
  %144 = icmp eq %struct.usb_interface* %140, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %139
  %146 = load %struct.acm*, %struct.acm** %3, align 8
  %147 = getelementptr inbounds %struct.acm, %struct.acm* %146, i32 0, i32 4
  %148 = load %struct.usb_interface*, %struct.usb_interface** %147, align 8
  br label %153

149:                                              ; preds = %139
  %150 = load %struct.acm*, %struct.acm** %3, align 8
  %151 = getelementptr inbounds %struct.acm, %struct.acm* %150, i32 0, i32 3
  %152 = load %struct.usb_interface*, %struct.usb_interface** %151, align 8
  br label %153

153:                                              ; preds = %149, %145
  %154 = phi %struct.usb_interface* [ %148, %145 ], [ %152, %149 ]
  %155 = call i32 @usb_driver_release_interface(i32* @acm_driver, %struct.usb_interface* %154)
  br label %156

156:                                              ; preds = %153, %113
  %157 = load %struct.acm*, %struct.acm** %3, align 8
  %158 = getelementptr inbounds %struct.acm, %struct.acm* %157, i32 0, i32 2
  %159 = call i32 @tty_port_put(i32* %158)
  br label %160

160:                                              ; preds = %156, %10
  ret void
}

declare dso_local %struct.acm* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.tty_struct* @tty_port_tty_get(i32*) #1

declare dso_local i32 @tty_vhangup(%struct.tty_struct*) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

declare dso_local i32 @acm_kill_urbs(%struct.acm*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @tty_unregister_device(i32, i32) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @acm_write_buffers_free(%struct.acm*) #1

declare dso_local i32 @usb_free_coherent(i32, i32, i32, i32) #1

declare dso_local i32 @acm_read_buffers_free(%struct.acm*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @usb_driver_release_interface(i32*, %struct.usb_interface*) #1

declare dso_local i32 @tty_port_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
