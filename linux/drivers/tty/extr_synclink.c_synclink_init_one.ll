; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink.c_synclink_init_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink.c_synclink_init_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.mgsl_struct = type { i32, i32, i32, i32, i32, i32, i32, i8*, i32, i8* }

@.str = private unnamed_addr constant [30 x i8] c"error enabling pci device %p\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"can't allocate device instance data.\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@MGSL_BUS_TYPE_PCI = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @synclink_init_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @synclink_init_one(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.mgsl_struct*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %8 = call i64 @pci_enable_device(%struct.pci_dev* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.pci_dev* %11)
  %13 = load i32, i32* @EIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %82

15:                                               ; preds = %2
  %16 = call %struct.mgsl_struct* (...) @mgsl_allocate_device()
  store %struct.mgsl_struct* %16, %struct.mgsl_struct** %6, align 8
  %17 = load %struct.mgsl_struct*, %struct.mgsl_struct** %6, align 8
  %18 = icmp ne %struct.mgsl_struct* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %82

23:                                               ; preds = %15
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = call i8* @pci_resource_start(%struct.pci_dev* %24, i32 2)
  %26 = load %struct.mgsl_struct*, %struct.mgsl_struct** %6, align 8
  %27 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %26, i32 0, i32 9
  store i8* %25, i8** %27, align 8
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mgsl_struct*, %struct.mgsl_struct** %6, align 8
  %32 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %31, i32 0, i32 8
  store i32 %30, i32* %32, align 8
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = call i8* @pci_resource_start(%struct.pci_dev* %33, i32 3)
  %35 = load %struct.mgsl_struct*, %struct.mgsl_struct** %6, align 8
  %36 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %35, i32 0, i32 7
  store i8* %34, i8** %36, align 8
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = call i8* @pci_resource_start(%struct.pci_dev* %37, i32 0)
  %39 = ptrtoint i8* %38 to i32
  %40 = load %struct.mgsl_struct*, %struct.mgsl_struct** %6, align 8
  %41 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.mgsl_struct*, %struct.mgsl_struct** %6, align 8
  %43 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @PAGE_SIZE, align 4
  %46 = sub nsw i32 %45, 1
  %47 = and i32 %44, %46
  %48 = load %struct.mgsl_struct*, %struct.mgsl_struct** %6, align 8
  %49 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @PAGE_SIZE, align 4
  %51 = sub nsw i32 %50, 1
  %52 = xor i32 %51, -1
  %53 = load %struct.mgsl_struct*, %struct.mgsl_struct** %6, align 8
  %54 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load i32, i32* @MGSL_BUS_TYPE_PCI, align 4
  %58 = load %struct.mgsl_struct*, %struct.mgsl_struct** %6, align 8
  %59 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %58, i32 0, i32 6
  store i32 %57, i32* %59, align 8
  %60 = load %struct.mgsl_struct*, %struct.mgsl_struct** %6, align 8
  %61 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %60, i32 0, i32 2
  store i32 8, i32* %61, align 8
  %62 = load i32, i32* @IRQF_SHARED, align 4
  %63 = load %struct.mgsl_struct*, %struct.mgsl_struct** %6, align 8
  %64 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 4
  %65 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %66 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 528
  br i1 %68, label %69, label %74

69:                                               ; preds = %23
  %70 = load %struct.mgsl_struct*, %struct.mgsl_struct** %6, align 8
  %71 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %70, i32 0, i32 3
  store i32 8142976, i32* %71, align 4
  %72 = load %struct.mgsl_struct*, %struct.mgsl_struct** %6, align 8
  %73 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %72, i32 0, i32 4
  store i32 1, i32* %73, align 8
  br label %79

74:                                               ; preds = %23
  %75 = load %struct.mgsl_struct*, %struct.mgsl_struct** %6, align 8
  %76 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %75, i32 0, i32 3
  store i32 142492998, i32* %76, align 4
  %77 = load %struct.mgsl_struct*, %struct.mgsl_struct** %6, align 8
  %78 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %77, i32 0, i32 4
  store i32 0, i32* %78, align 8
  br label %79

79:                                               ; preds = %74, %69
  %80 = load %struct.mgsl_struct*, %struct.mgsl_struct** %6, align 8
  %81 = call i32 @mgsl_add_device(%struct.mgsl_struct* %80)
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %79, %19, %10
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local %struct.mgsl_struct* @mgsl_allocate_device(...) #1

declare dso_local i8* @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @mgsl_add_device(%struct.mgsl_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
