; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_ibmphp_pci.c_add_new_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_ibmphp_pci.c_add_new_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_node = type { i32, i32, i32, %struct.range_node*, %struct.range_node*, %struct.range_node*, i32 }
%struct.range_node = type { i32, i32, i32 }
%struct.resource_node = type { i32, i32 }

@.str = private unnamed_addr constant [98 x i8] c"strange, cannot find bus which is supposed to be at the system... something is terribly wrong...\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bus_node*, %struct.resource_node*, %struct.resource_node*, %struct.resource_node*, i32)* @add_new_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_new_bus(%struct.bus_node* %0, %struct.resource_node* %1, %struct.resource_node* %2, %struct.resource_node* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bus_node*, align 8
  %8 = alloca %struct.resource_node*, align 8
  %9 = alloca %struct.resource_node*, align 8
  %10 = alloca %struct.resource_node*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.range_node*, align 8
  %13 = alloca %struct.range_node*, align 8
  %14 = alloca %struct.range_node*, align 8
  %15 = alloca %struct.bus_node*, align 8
  store %struct.bus_node* %0, %struct.bus_node** %7, align 8
  store %struct.resource_node* %1, %struct.resource_node** %8, align 8
  store %struct.resource_node* %2, %struct.resource_node** %9, align 8
  store %struct.resource_node* %3, %struct.resource_node** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.range_node* null, %struct.range_node** %12, align 8
  store %struct.range_node* null, %struct.range_node** %13, align 8
  store %struct.range_node* null, %struct.range_node** %14, align 8
  store %struct.bus_node* null, %struct.bus_node** %15, align 8
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 255
  br i1 %17, label %18, label %33

18:                                               ; preds = %5
  %19 = load i32, i32* %11, align 4
  %20 = call %struct.bus_node* @ibmphp_find_res_bus(i32 %19)
  store %struct.bus_node* %20, %struct.bus_node** %15, align 8
  %21 = load %struct.bus_node*, %struct.bus_node** %15, align 8
  %22 = icmp ne %struct.bus_node* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = call i32 @err(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %121

27:                                               ; preds = %18
  %28 = load %struct.bus_node*, %struct.bus_node** %7, align 8
  %29 = getelementptr inbounds %struct.bus_node, %struct.bus_node* %28, i32 0, i32 6
  %30 = load %struct.bus_node*, %struct.bus_node** %15, align 8
  %31 = getelementptr inbounds %struct.bus_node, %struct.bus_node* %30, i32 0, i32 6
  %32 = call i32 @list_add(i32* %29, i32* %31)
  br label %33

33:                                               ; preds = %27, %5
  %34 = load %struct.resource_node*, %struct.resource_node** %8, align 8
  %35 = icmp ne %struct.resource_node* %34, null
  br i1 %35, label %36, label %62

36:                                               ; preds = %33
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.range_node* @kzalloc(i32 12, i32 %37)
  store %struct.range_node* %38, %struct.range_node** %12, align 8
  %39 = load %struct.range_node*, %struct.range_node** %12, align 8
  %40 = icmp ne %struct.range_node* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %121

44:                                               ; preds = %36
  %45 = load %struct.resource_node*, %struct.resource_node** %8, align 8
  %46 = getelementptr inbounds %struct.resource_node, %struct.resource_node* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.range_node*, %struct.range_node** %12, align 8
  %49 = getelementptr inbounds %struct.range_node, %struct.range_node* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.resource_node*, %struct.resource_node** %8, align 8
  %51 = getelementptr inbounds %struct.resource_node, %struct.resource_node* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.range_node*, %struct.range_node** %12, align 8
  %54 = getelementptr inbounds %struct.range_node, %struct.range_node* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.range_node*, %struct.range_node** %12, align 8
  %56 = getelementptr inbounds %struct.range_node, %struct.range_node* %55, i32 0, i32 0
  store i32 1, i32* %56, align 4
  %57 = load %struct.bus_node*, %struct.bus_node** %7, align 8
  %58 = getelementptr inbounds %struct.bus_node, %struct.bus_node* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load %struct.range_node*, %struct.range_node** %12, align 8
  %60 = load %struct.bus_node*, %struct.bus_node** %7, align 8
  %61 = getelementptr inbounds %struct.bus_node, %struct.bus_node* %60, i32 0, i32 5
  store %struct.range_node* %59, %struct.range_node** %61, align 8
  br label %62

62:                                               ; preds = %44, %33
  %63 = load %struct.resource_node*, %struct.resource_node** %9, align 8
  %64 = icmp ne %struct.resource_node* %63, null
  br i1 %64, label %65, label %91

65:                                               ; preds = %62
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call %struct.range_node* @kzalloc(i32 12, i32 %66)
  store %struct.range_node* %67, %struct.range_node** %13, align 8
  %68 = load %struct.range_node*, %struct.range_node** %13, align 8
  %69 = icmp ne %struct.range_node* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %6, align 4
  br label %121

73:                                               ; preds = %65
  %74 = load %struct.resource_node*, %struct.resource_node** %9, align 8
  %75 = getelementptr inbounds %struct.resource_node, %struct.resource_node* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.range_node*, %struct.range_node** %13, align 8
  %78 = getelementptr inbounds %struct.range_node, %struct.range_node* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = load %struct.resource_node*, %struct.resource_node** %9, align 8
  %80 = getelementptr inbounds %struct.resource_node, %struct.resource_node* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.range_node*, %struct.range_node** %13, align 8
  %83 = getelementptr inbounds %struct.range_node, %struct.range_node* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.range_node*, %struct.range_node** %13, align 8
  %85 = getelementptr inbounds %struct.range_node, %struct.range_node* %84, i32 0, i32 0
  store i32 1, i32* %85, align 4
  %86 = load %struct.bus_node*, %struct.bus_node** %7, align 8
  %87 = getelementptr inbounds %struct.bus_node, %struct.bus_node* %86, i32 0, i32 1
  store i32 1, i32* %87, align 4
  %88 = load %struct.range_node*, %struct.range_node** %13, align 8
  %89 = load %struct.bus_node*, %struct.bus_node** %7, align 8
  %90 = getelementptr inbounds %struct.bus_node, %struct.bus_node* %89, i32 0, i32 4
  store %struct.range_node* %88, %struct.range_node** %90, align 8
  br label %91

91:                                               ; preds = %73, %62
  %92 = load %struct.resource_node*, %struct.resource_node** %10, align 8
  %93 = icmp ne %struct.resource_node* %92, null
  br i1 %93, label %94, label %120

94:                                               ; preds = %91
  %95 = load i32, i32* @GFP_KERNEL, align 4
  %96 = call %struct.range_node* @kzalloc(i32 12, i32 %95)
  store %struct.range_node* %96, %struct.range_node** %14, align 8
  %97 = load %struct.range_node*, %struct.range_node** %14, align 8
  %98 = icmp ne %struct.range_node* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %94
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %6, align 4
  br label %121

102:                                              ; preds = %94
  %103 = load %struct.resource_node*, %struct.resource_node** %10, align 8
  %104 = getelementptr inbounds %struct.resource_node, %struct.resource_node* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.range_node*, %struct.range_node** %14, align 8
  %107 = getelementptr inbounds %struct.range_node, %struct.range_node* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 4
  %108 = load %struct.resource_node*, %struct.resource_node** %10, align 8
  %109 = getelementptr inbounds %struct.resource_node, %struct.resource_node* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.range_node*, %struct.range_node** %14, align 8
  %112 = getelementptr inbounds %struct.range_node, %struct.range_node* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load %struct.range_node*, %struct.range_node** %14, align 8
  %114 = getelementptr inbounds %struct.range_node, %struct.range_node* %113, i32 0, i32 0
  store i32 1, i32* %114, align 4
  %115 = load %struct.bus_node*, %struct.bus_node** %7, align 8
  %116 = getelementptr inbounds %struct.bus_node, %struct.bus_node* %115, i32 0, i32 2
  store i32 1, i32* %116, align 8
  %117 = load %struct.range_node*, %struct.range_node** %14, align 8
  %118 = load %struct.bus_node*, %struct.bus_node** %7, align 8
  %119 = getelementptr inbounds %struct.bus_node, %struct.bus_node* %118, i32 0, i32 3
  store %struct.range_node* %117, %struct.range_node** %119, align 8
  br label %120

120:                                              ; preds = %102, %91
  store i32 0, i32* %6, align 4
  br label %121

121:                                              ; preds = %120, %99, %70, %41, %23
  %122 = load i32, i32* %6, align 4
  ret i32 %122
}

declare dso_local %struct.bus_node* @ibmphp_find_res_bus(i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local %struct.range_node* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
