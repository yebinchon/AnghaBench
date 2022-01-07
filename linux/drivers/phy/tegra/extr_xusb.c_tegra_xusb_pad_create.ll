; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb.c_tegra_xusb_pad_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb.c_tegra_xusb_pad_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_xusb_pad = type { i32 }
%struct.tegra_xusb_padctl = type { %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad*, i32 }
%struct.tegra_xusb_pad_soc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.tegra_xusb_pad* (%struct.tegra_xusb_padctl*, %struct.tegra_xusb_pad_soc*, %struct.device_node*)* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"failed to create pad %s: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"pcie\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"sata\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"usb2\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"ulpi\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"hsic\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tegra_xusb_pad* (%struct.tegra_xusb_padctl*, %struct.tegra_xusb_pad_soc*)* @tegra_xusb_pad_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tegra_xusb_pad* @tegra_xusb_pad_create(%struct.tegra_xusb_padctl* %0, %struct.tegra_xusb_pad_soc* %1) #0 {
  %3 = alloca %struct.tegra_xusb_pad*, align 8
  %4 = alloca %struct.tegra_xusb_padctl*, align 8
  %5 = alloca %struct.tegra_xusb_pad_soc*, align 8
  %6 = alloca %struct.tegra_xusb_pad*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  store %struct.tegra_xusb_padctl* %0, %struct.tegra_xusb_padctl** %4, align 8
  store %struct.tegra_xusb_pad_soc* %1, %struct.tegra_xusb_pad_soc** %5, align 8
  %9 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %10 = load %struct.tegra_xusb_pad_soc*, %struct.tegra_xusb_pad_soc** %5, align 8
  %11 = getelementptr inbounds %struct.tegra_xusb_pad_soc, %struct.tegra_xusb_pad_soc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.device_node* @tegra_xusb_find_pad_node(%struct.tegra_xusb_padctl* %9, i32 %12)
  store %struct.device_node* %13, %struct.device_node** %7, align 8
  %14 = load %struct.device_node*, %struct.device_node** %7, align 8
  %15 = icmp ne %struct.device_node* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.device_node*, %struct.device_node** %7, align 8
  %18 = call i32 @of_device_is_available(%struct.device_node* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16, %2
  store %struct.tegra_xusb_pad* null, %struct.tegra_xusb_pad** %3, align 8
  br label %99

21:                                               ; preds = %16
  %22 = load %struct.tegra_xusb_pad_soc*, %struct.tegra_xusb_pad_soc** %5, align 8
  %23 = getelementptr inbounds %struct.tegra_xusb_pad_soc, %struct.tegra_xusb_pad_soc* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.tegra_xusb_pad* (%struct.tegra_xusb_padctl*, %struct.tegra_xusb_pad_soc*, %struct.device_node*)*, %struct.tegra_xusb_pad* (%struct.tegra_xusb_padctl*, %struct.tegra_xusb_pad_soc*, %struct.device_node*)** %25, align 8
  %27 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %28 = load %struct.tegra_xusb_pad_soc*, %struct.tegra_xusb_pad_soc** %5, align 8
  %29 = load %struct.device_node*, %struct.device_node** %7, align 8
  %30 = call %struct.tegra_xusb_pad* %26(%struct.tegra_xusb_padctl* %27, %struct.tegra_xusb_pad_soc* %28, %struct.device_node* %29)
  store %struct.tegra_xusb_pad* %30, %struct.tegra_xusb_pad** %6, align 8
  %31 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %6, align 8
  %32 = call i64 @IS_ERR(%struct.tegra_xusb_pad* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %21
  %35 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %6, align 8
  %36 = call i32 @PTR_ERR(%struct.tegra_xusb_pad* %35)
  store i32 %36, i32* %8, align 4
  %37 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %38 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.tegra_xusb_pad_soc*, %struct.tegra_xusb_pad_soc** %5, align 8
  %41 = getelementptr inbounds %struct.tegra_xusb_pad_soc, %struct.tegra_xusb_pad_soc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = call %struct.tegra_xusb_pad* @ERR_PTR(i32 %45)
  store %struct.tegra_xusb_pad* %46, %struct.tegra_xusb_pad** %3, align 8
  br label %99

47:                                               ; preds = %21
  %48 = load %struct.tegra_xusb_pad_soc*, %struct.tegra_xusb_pad_soc** %5, align 8
  %49 = getelementptr inbounds %struct.tegra_xusb_pad_soc, %struct.tegra_xusb_pad_soc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @strcmp(i32 %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %6, align 8
  %55 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %56 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %55, i32 0, i32 4
  store %struct.tegra_xusb_pad* %54, %struct.tegra_xusb_pad** %56, align 8
  br label %57

57:                                               ; preds = %53, %47
  %58 = load %struct.tegra_xusb_pad_soc*, %struct.tegra_xusb_pad_soc** %5, align 8
  %59 = getelementptr inbounds %struct.tegra_xusb_pad_soc, %struct.tegra_xusb_pad_soc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @strcmp(i32 %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %6, align 8
  %65 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %66 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %65, i32 0, i32 3
  store %struct.tegra_xusb_pad* %64, %struct.tegra_xusb_pad** %66, align 8
  br label %67

67:                                               ; preds = %63, %57
  %68 = load %struct.tegra_xusb_pad_soc*, %struct.tegra_xusb_pad_soc** %5, align 8
  %69 = getelementptr inbounds %struct.tegra_xusb_pad_soc, %struct.tegra_xusb_pad_soc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @strcmp(i32 %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %6, align 8
  %75 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %76 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %75, i32 0, i32 2
  store %struct.tegra_xusb_pad* %74, %struct.tegra_xusb_pad** %76, align 8
  br label %77

77:                                               ; preds = %73, %67
  %78 = load %struct.tegra_xusb_pad_soc*, %struct.tegra_xusb_pad_soc** %5, align 8
  %79 = getelementptr inbounds %struct.tegra_xusb_pad_soc, %struct.tegra_xusb_pad_soc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @strcmp(i32 %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %6, align 8
  %85 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %86 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %85, i32 0, i32 1
  store %struct.tegra_xusb_pad* %84, %struct.tegra_xusb_pad** %86, align 8
  br label %87

87:                                               ; preds = %83, %77
  %88 = load %struct.tegra_xusb_pad_soc*, %struct.tegra_xusb_pad_soc** %5, align 8
  %89 = getelementptr inbounds %struct.tegra_xusb_pad_soc, %struct.tegra_xusb_pad_soc* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @strcmp(i32 %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %6, align 8
  %95 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %4, align 8
  %96 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %95, i32 0, i32 0
  store %struct.tegra_xusb_pad* %94, %struct.tegra_xusb_pad** %96, align 8
  br label %97

97:                                               ; preds = %93, %87
  %98 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %6, align 8
  store %struct.tegra_xusb_pad* %98, %struct.tegra_xusb_pad** %3, align 8
  br label %99

99:                                               ; preds = %97, %34, %20
  %100 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %3, align 8
  ret %struct.tegra_xusb_pad* %100
}

declare dso_local %struct.device_node* @tegra_xusb_find_pad_node(%struct.tegra_xusb_padctl*, i32) #1

declare dso_local i32 @of_device_is_available(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(%struct.tegra_xusb_pad*) #1

declare dso_local i32 @PTR_ERR(%struct.tegra_xusb_pad*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local %struct.tegra_xusb_pad* @ERR_PTR(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
