; ModuleID = '/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorbus_main.c_write_vbus_chp_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorbus_main.c_write_vbus_chp_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.visorchannel = type { i32 }
%struct.visor_vbus_headerinfo = type { i32 }
%struct.visor_vbus_deviceinfo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.visorchannel*, %struct.visor_vbus_headerinfo*, %struct.visor_vbus_deviceinfo*)* @write_vbus_chp_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_vbus_chp_info(%struct.visorchannel* %0, %struct.visor_vbus_headerinfo* %1, %struct.visor_vbus_deviceinfo* %2) #0 {
  %4 = alloca %struct.visorchannel*, align 8
  %5 = alloca %struct.visor_vbus_headerinfo*, align 8
  %6 = alloca %struct.visor_vbus_deviceinfo*, align 8
  %7 = alloca i32, align 4
  store %struct.visorchannel* %0, %struct.visorchannel** %4, align 8
  store %struct.visor_vbus_headerinfo* %1, %struct.visor_vbus_headerinfo** %5, align 8
  store %struct.visor_vbus_deviceinfo* %2, %struct.visor_vbus_deviceinfo** %6, align 8
  %8 = load %struct.visor_vbus_headerinfo*, %struct.visor_vbus_headerinfo** %5, align 8
  %9 = getelementptr inbounds %struct.visor_vbus_headerinfo, %struct.visor_vbus_headerinfo* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %24

13:                                               ; preds = %3
  %14 = load %struct.visor_vbus_headerinfo*, %struct.visor_vbus_headerinfo** %5, align 8
  %15 = getelementptr inbounds %struct.visor_vbus_headerinfo, %struct.visor_vbus_headerinfo* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = add i64 4, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %7, align 4
  %20 = load %struct.visorchannel*, %struct.visorchannel** %4, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.visor_vbus_deviceinfo*, %struct.visor_vbus_deviceinfo** %6, align 8
  %23 = call i32 @visorchannel_write(%struct.visorchannel* %20, i32 %21, %struct.visor_vbus_deviceinfo* %22, i32 4)
  br label %24

24:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @visorchannel_write(%struct.visorchannel*, i32, %struct.visor_vbus_deviceinfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
