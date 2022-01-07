; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-epf-core.c_pci_epf_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-epf-core.c_pci_epf_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_epf = type { %struct.device, i32 }
%struct.device = type { i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pci_epf_bus_type = common dso_local global i32 0, align 4
@pci_epf_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pci_epf* @pci_epf_create(i8* %0) #0 {
  %2 = alloca %struct.pci_epf*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_epf*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.pci_epf* @kzalloc(i32 24, i32 %8)
  store %struct.pci_epf* %9, %struct.pci_epf** %5, align 8
  %10 = load %struct.pci_epf*, %struct.pci_epf** %5, align 8
  %11 = icmp ne %struct.pci_epf* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.pci_epf* @ERR_PTR(i32 %14)
  store %struct.pci_epf* %15, %struct.pci_epf** %2, align 8
  br label %71

16:                                               ; preds = %1
  %17 = load i8*, i8** %3, align 8
  %18 = call i8* @strchrnul(i8* %17, i8 signext 46)
  %19 = load i8*, i8** %3, align 8
  %20 = ptrtoint i8* %18 to i64
  %21 = ptrtoint i8* %19 to i64
  %22 = sub i64 %20, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = load i8*, i8** %3, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i32 @kstrndup(i8* %24, i32 %25, i32 %26)
  %28 = load %struct.pci_epf*, %struct.pci_epf** %5, align 8
  %29 = getelementptr inbounds %struct.pci_epf, %struct.pci_epf* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load %struct.pci_epf*, %struct.pci_epf** %5, align 8
  %31 = getelementptr inbounds %struct.pci_epf, %struct.pci_epf* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %16
  %35 = load %struct.pci_epf*, %struct.pci_epf** %5, align 8
  %36 = call i32 @kfree(%struct.pci_epf* %35)
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.pci_epf* @ERR_PTR(i32 %38)
  store %struct.pci_epf* %39, %struct.pci_epf** %2, align 8
  br label %71

40:                                               ; preds = %16
  %41 = load %struct.pci_epf*, %struct.pci_epf** %5, align 8
  %42 = getelementptr inbounds %struct.pci_epf, %struct.pci_epf* %41, i32 0, i32 0
  store %struct.device* %42, %struct.device** %6, align 8
  %43 = load %struct.device*, %struct.device** %6, align 8
  %44 = call i32 @device_initialize(%struct.device* %43)
  %45 = load %struct.device*, %struct.device** %6, align 8
  %46 = getelementptr inbounds %struct.device, %struct.device* %45, i32 0, i32 1
  store i32* @pci_epf_bus_type, i32** %46, align 8
  %47 = load %struct.device*, %struct.device** %6, align 8
  %48 = getelementptr inbounds %struct.device, %struct.device* %47, i32 0, i32 0
  store i32* @pci_epf_type, i32** %48, align 8
  %49 = load %struct.device*, %struct.device** %6, align 8
  %50 = load i8*, i8** %3, align 8
  %51 = call i32 @dev_set_name(%struct.device* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %40
  %55 = load %struct.device*, %struct.device** %6, align 8
  %56 = call i32 @put_device(%struct.device* %55)
  %57 = load i32, i32* %4, align 4
  %58 = call %struct.pci_epf* @ERR_PTR(i32 %57)
  store %struct.pci_epf* %58, %struct.pci_epf** %2, align 8
  br label %71

59:                                               ; preds = %40
  %60 = load %struct.device*, %struct.device** %6, align 8
  %61 = call i32 @device_add(%struct.device* %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load %struct.device*, %struct.device** %6, align 8
  %66 = call i32 @put_device(%struct.device* %65)
  %67 = load i32, i32* %4, align 4
  %68 = call %struct.pci_epf* @ERR_PTR(i32 %67)
  store %struct.pci_epf* %68, %struct.pci_epf** %2, align 8
  br label %71

69:                                               ; preds = %59
  %70 = load %struct.pci_epf*, %struct.pci_epf** %5, align 8
  store %struct.pci_epf* %70, %struct.pci_epf** %2, align 8
  br label %71

71:                                               ; preds = %69, %64, %54, %34, %12
  %72 = load %struct.pci_epf*, %struct.pci_epf** %2, align 8
  ret %struct.pci_epf* %72
}

declare dso_local %struct.pci_epf* @kzalloc(i32, i32) #1

declare dso_local %struct.pci_epf* @ERR_PTR(i32) #1

declare dso_local i8* @strchrnul(i8*, i8 signext) #1

declare dso_local i32 @kstrndup(i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.pci_epf*) #1

declare dso_local i32 @device_initialize(%struct.device*) #1

declare dso_local i32 @dev_set_name(%struct.device*, i8*, i8*) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @device_add(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
