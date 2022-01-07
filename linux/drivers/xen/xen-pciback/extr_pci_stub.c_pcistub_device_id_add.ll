; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_pci_stub.c_pcistub_device_id_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_pci_stub.c_pcistub_device_id_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcistub_device_id = type { i32 }

@pci_domains_supported = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"wants to seize %04x:%02x:%02x.%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @pcistub_device_id_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcistub_device_id_add(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pcistub_device_id*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @PCI_DEVFN(i32 %13, i32 %14)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %4
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %33, %18
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 32
  br label %25

25:                                               ; preds = %22, %19
  %26 = phi i1 [ false, %19 ], [ %24, %22 ]
  br i1 %26, label %27, label %36

27:                                               ; preds = %25
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @pcistub_device_id_add(i32 %28, i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %8, align 4
  br label %19

36:                                               ; preds = %25
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %5, align 4
  br label %111

38:                                               ; preds = %4
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %38
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %56, %41
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 8
  br label %48

48:                                               ; preds = %45, %42
  %49 = phi i1 [ false, %42 ], [ %47, %45 ]
  br i1 %49, label %50, label %59

50:                                               ; preds = %48
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @pcistub_device_id_add(i32 %51, i32 %52, i32 %53, i32 %54)
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %42

59:                                               ; preds = %48
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %5, align 4
  br label %111

61:                                               ; preds = %38
  %62 = load i32, i32* @pci_domains_supported, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %89, label %73

67:                                               ; preds = %61
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %89, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %6, align 4
  %72 = icmp sgt i32 %71, 65535
  br i1 %72, label %89, label %73

73:                                               ; preds = %70, %64
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %89, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %7, align 4
  %78 = icmp sgt i32 %77, 255
  br i1 %78, label %89, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @PCI_SLOT(i32 %80)
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %89, label %84

84:                                               ; preds = %79
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @PCI_FUNC(i32 %85)
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %84, %79, %76, %73, %70, %67, %64
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %5, align 4
  br label %111

92:                                               ; preds = %84
  %93 = load i32, i32* @GFP_KERNEL, align 4
  %94 = call %struct.pcistub_device_id* @kmalloc(i32 4, i32 %93)
  store %struct.pcistub_device_id* %94, %struct.pcistub_device_id** %10, align 8
  %95 = load %struct.pcistub_device_id*, %struct.pcistub_device_id** %10, align 8
  %96 = icmp ne %struct.pcistub_device_id* %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %92
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %5, align 4
  br label %111

100:                                              ; preds = %92
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %101, i32 %102, i32 %103, i32 %104)
  %106 = load %struct.pcistub_device_id*, %struct.pcistub_device_id** %10, align 8
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @pcistub_device_id_add_list(%struct.pcistub_device_id* %106, i32 %107, i32 %108, i32 %109)
  store i32 0, i32* %5, align 4
  br label %111

111:                                              ; preds = %100, %97, %89, %59, %36
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local %struct.pcistub_device_id* @kmalloc(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @pcistub_device_id_add_list(%struct.pcistub_device_id*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
