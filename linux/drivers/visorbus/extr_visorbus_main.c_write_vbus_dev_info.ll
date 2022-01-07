; ModuleID = '/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorbus_main.c_write_vbus_dev_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorbus_main.c_write_vbus_dev_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.visorchannel = type { i32 }
%struct.visor_vbus_headerinfo = type { i32, i32 }
%struct.visor_vbus_deviceinfo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.visorchannel*, %struct.visor_vbus_headerinfo*, %struct.visor_vbus_deviceinfo*, i32)* @write_vbus_dev_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_vbus_dev_info(%struct.visorchannel* %0, %struct.visor_vbus_headerinfo* %1, %struct.visor_vbus_deviceinfo* %2, i32 %3) #0 {
  %5 = alloca %struct.visorchannel*, align 8
  %6 = alloca %struct.visor_vbus_headerinfo*, align 8
  %7 = alloca %struct.visor_vbus_deviceinfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.visorchannel* %0, %struct.visorchannel** %5, align 8
  store %struct.visor_vbus_headerinfo* %1, %struct.visor_vbus_headerinfo** %6, align 8
  store %struct.visor_vbus_deviceinfo* %2, %struct.visor_vbus_deviceinfo** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.visor_vbus_headerinfo*, %struct.visor_vbus_headerinfo** %6, align 8
  %11 = getelementptr inbounds %struct.visor_vbus_headerinfo, %struct.visor_vbus_headerinfo* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %33

15:                                               ; preds = %4
  %16 = load %struct.visor_vbus_headerinfo*, %struct.visor_vbus_headerinfo** %6, align 8
  %17 = getelementptr inbounds %struct.visor_vbus_headerinfo, %struct.visor_vbus_headerinfo* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = add i64 4, %19
  %21 = load %struct.visor_vbus_headerinfo*, %struct.visor_vbus_headerinfo** %6, align 8
  %22 = getelementptr inbounds %struct.visor_vbus_headerinfo, %struct.visor_vbus_headerinfo* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %8, align 4
  %25 = mul i32 %23, %24
  %26 = zext i32 %25 to i64
  %27 = add i64 %20, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %9, align 4
  %29 = load %struct.visorchannel*, %struct.visorchannel** %5, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.visor_vbus_deviceinfo*, %struct.visor_vbus_deviceinfo** %7, align 8
  %32 = call i32 @visorchannel_write(%struct.visorchannel* %29, i32 %30, %struct.visor_vbus_deviceinfo* %31, i32 4)
  br label %33

33:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @visorchannel_write(%struct.visorchannel*, i32, %struct.visor_vbus_deviceinfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
