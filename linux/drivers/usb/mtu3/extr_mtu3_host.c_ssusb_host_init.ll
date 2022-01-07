; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_host.c_ssusb_host_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_host.c_ssusb_host_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssusb_mtk = type { %struct.device* }
%struct.device = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"failed to create child devices at %pOF\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"xHCI platform device register success...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssusb_host_init(%struct.ssusb_mtk* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ssusb_mtk*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.ssusb_mtk* %0, %struct.ssusb_mtk** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %8 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %4, align 8
  %9 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %8, i32 0, i32 0
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %4, align 8
  %12 = call i32 @ssusb_host_setup(%struct.ssusb_mtk* %11)
  %13 = load %struct.device_node*, %struct.device_node** %5, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call i32 @of_platform_populate(%struct.device_node* %13, i32* null, i32* null, %struct.device* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = load %struct.device_node*, %struct.device_node** %5, align 8
  %21 = call i32 @dev_dbg(%struct.device* %19, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.device_node* %20)
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %26

23:                                               ; preds = %2
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = call i32 @dev_info(%struct.device* %24, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %23, %18
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @ssusb_host_setup(%struct.ssusb_mtk*) #1

declare dso_local i32 @of_platform_populate(%struct.device_node*, i32*, i32*, %struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, %struct.device_node*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
