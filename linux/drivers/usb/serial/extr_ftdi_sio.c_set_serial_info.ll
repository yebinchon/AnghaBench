; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ftdi_sio.c_set_serial_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ftdi_sio.c_set_serial_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.usb_serial_port* }
%struct.usb_serial_port = type { i32 }
%struct.serial_struct = type { i32, i64, i64 }
%struct.ftdi_private = type { i32, i64, i64, i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@ASYNC_USR_MASK = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ASYNC_FLAGS = common dso_local global i32 0, align 4
@ASYNC_SPD_MASK = common dso_local global i32 0, align 4
@ASYNC_SPD_CUST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"use of SPD flags is deprecated\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.serial_struct*)* @set_serial_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_serial_info(%struct.tty_struct* %0, %struct.serial_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.serial_struct*, align 8
  %6 = alloca %struct.usb_serial_port*, align 8
  %7 = alloca %struct.ftdi_private*, align 8
  %8 = alloca %struct.ftdi_private, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.serial_struct* %1, %struct.serial_struct** %5, align 8
  %9 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 0
  %11 = load %struct.usb_serial_port*, %struct.usb_serial_port** %10, align 8
  store %struct.usb_serial_port* %11, %struct.usb_serial_port** %6, align 8
  %12 = load %struct.usb_serial_port*, %struct.usb_serial_port** %6, align 8
  %13 = call %struct.ftdi_private* @usb_get_serial_port_data(%struct.usb_serial_port* %12)
  store %struct.ftdi_private* %13, %struct.ftdi_private** %7, align 8
  %14 = load %struct.ftdi_private*, %struct.ftdi_private** %7, align 8
  %15 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %14, i32 0, i32 3
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.ftdi_private*, %struct.ftdi_private** %7, align 8
  %18 = bitcast %struct.ftdi_private* %8 to i8*
  %19 = bitcast %struct.ftdi_private* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 32, i1 false)
  %20 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %21 = call i32 @capable(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %61, label %23

23:                                               ; preds = %2
  %24 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %25 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.ftdi_private*, %struct.ftdi_private** %7, align 8
  %28 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = xor i32 %26, %29
  %31 = load i32, i32* @ASYNC_USR_MASK, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %23
  %36 = load %struct.ftdi_private*, %struct.ftdi_private** %7, align 8
  %37 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %36, i32 0, i32 3
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load i32, i32* @EPERM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %141

41:                                               ; preds = %23
  %42 = load %struct.ftdi_private*, %struct.ftdi_private** %7, align 8
  %43 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ASYNC_USR_MASK, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 %44, %46
  %48 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %49 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @ASYNC_USR_MASK, align 4
  %52 = and i32 %50, %51
  %53 = or i32 %47, %52
  %54 = load %struct.ftdi_private*, %struct.ftdi_private** %7, align 8
  %55 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %57 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.ftdi_private*, %struct.ftdi_private** %7, align 8
  %60 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  br label %95

61:                                               ; preds = %2
  %62 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %63 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.ftdi_private*, %struct.ftdi_private** %7, align 8
  %66 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %64, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %61
  %70 = load %struct.ftdi_private*, %struct.ftdi_private** %7, align 8
  %71 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %70, i32 0, i32 3
  %72 = call i32 @mutex_unlock(i32* %71)
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %141

75:                                               ; preds = %61
  %76 = load %struct.ftdi_private*, %struct.ftdi_private** %7, align 8
  %77 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @ASYNC_FLAGS, align 4
  %80 = xor i32 %79, -1
  %81 = and i32 %78, %80
  %82 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %83 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @ASYNC_FLAGS, align 4
  %86 = and i32 %84, %85
  %87 = or i32 %81, %86
  %88 = load %struct.ftdi_private*, %struct.ftdi_private** %7, align 8
  %89 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %91 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.ftdi_private*, %struct.ftdi_private** %7, align 8
  %94 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %93, i32 0, i32 1
  store i64 %92, i64* %94, align 8
  br label %95

95:                                               ; preds = %75, %41
  %96 = load %struct.usb_serial_port*, %struct.usb_serial_port** %6, align 8
  %97 = call i32 @write_latency_timer(%struct.usb_serial_port* %96)
  %98 = load %struct.ftdi_private*, %struct.ftdi_private** %7, align 8
  %99 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %8, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = xor i32 %100, %102
  %104 = load i32, i32* @ASYNC_SPD_MASK, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %122, label %107

107:                                              ; preds = %95
  %108 = load %struct.ftdi_private*, %struct.ftdi_private** %7, align 8
  %109 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @ASYNC_SPD_MASK, align 4
  %112 = and i32 %110, %111
  %113 = load i32, i32* @ASYNC_SPD_CUST, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %137

115:                                              ; preds = %107
  %116 = load %struct.ftdi_private*, %struct.ftdi_private** %7, align 8
  %117 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %8, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %118, %120
  br i1 %121, label %122, label %137

122:                                              ; preds = %115, %95
  %123 = load %struct.ftdi_private*, %struct.ftdi_private** %7, align 8
  %124 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @ASYNC_SPD_MASK, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %122
  %130 = load %struct.usb_serial_port*, %struct.usb_serial_port** %6, align 8
  %131 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %130, i32 0, i32 0
  %132 = call i32 @dev_warn_ratelimited(i32* %131, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %133

133:                                              ; preds = %129, %122
  %134 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %135 = load %struct.usb_serial_port*, %struct.usb_serial_port** %6, align 8
  %136 = call i32 @change_speed(%struct.tty_struct* %134, %struct.usb_serial_port* %135)
  br label %137

137:                                              ; preds = %133, %115, %107
  %138 = load %struct.ftdi_private*, %struct.ftdi_private** %7, align 8
  %139 = getelementptr inbounds %struct.ftdi_private, %struct.ftdi_private* %138, i32 0, i32 3
  %140 = call i32 @mutex_unlock(i32* %139)
  store i32 0, i32* %3, align 4
  br label %141

141:                                              ; preds = %137, %69, %35
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local %struct.ftdi_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @write_latency_timer(%struct.usb_serial_port*) #1

declare dso_local i32 @dev_warn_ratelimited(i32*, i8*) #1

declare dso_local i32 @change_speed(%struct.tty_struct*, %struct.usb_serial_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
