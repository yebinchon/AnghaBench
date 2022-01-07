; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb.c_tegra_xusb_pad_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb.c_tegra_xusb_pad_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_xusb_pad = type { %struct.TYPE_7__, %struct.TYPE_6__*, %struct.tegra_xusb_padctl*, i32 }
%struct.TYPE_7__ = type { %struct.device_node*, i32*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.tegra_xusb_padctl = type { i32 }
%struct.device_node = type { i32 }

@tegra_xusb_pad_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tegra_xusb_pad_init(%struct.tegra_xusb_pad* %0, %struct.tegra_xusb_padctl* %1, %struct.device_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tegra_xusb_pad*, align 8
  %6 = alloca %struct.tegra_xusb_padctl*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  store %struct.tegra_xusb_pad* %0, %struct.tegra_xusb_pad** %5, align 8
  store %struct.tegra_xusb_padctl* %1, %struct.tegra_xusb_padctl** %6, align 8
  store %struct.device_node* %2, %struct.device_node** %7, align 8
  %9 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %5, align 8
  %10 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %9, i32 0, i32 0
  %11 = call i32 @device_initialize(%struct.TYPE_7__* %10)
  %12 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %5, align 8
  %13 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %12, i32 0, i32 3
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %6, align 8
  %16 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %5, align 8
  %19 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  store i32 %17, i32* %20, align 8
  %21 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %5, align 8
  %22 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  store i32* @tegra_xusb_pad_type, i32** %23, align 8
  %24 = load %struct.device_node*, %struct.device_node** %7, align 8
  %25 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %5, align 8
  %26 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store %struct.device_node* %24, %struct.device_node** %27, align 8
  %28 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %6, align 8
  %29 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %5, align 8
  %30 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %29, i32 0, i32 2
  store %struct.tegra_xusb_padctl* %28, %struct.tegra_xusb_padctl** %30, align 8
  %31 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %5, align 8
  %32 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %31, i32 0, i32 0
  %33 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %5, align 8
  %34 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_set_name(%struct.TYPE_7__* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %3
  br label %50

42:                                               ; preds = %3
  %43 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %5, align 8
  %44 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %43, i32 0, i32 0
  %45 = call i32 @device_add(%struct.TYPE_7__* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %50

49:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %55

50:                                               ; preds = %48, %41
  %51 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %5, align 8
  %52 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %51, i32 0, i32 0
  %53 = call i32 @device_unregister(%struct.TYPE_7__* %52)
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %50, %49
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @device_initialize(%struct.TYPE_7__*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @device_add(%struct.TYPE_7__*) #1

declare dso_local i32 @device_unregister(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
