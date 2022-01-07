; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_p2pdma.c_pci_p2pdma_enable_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_p2pdma.c_pci_p2pdma_enable_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.device = type { i32 }

@pci_bus_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"PCI device has no peer-to-peer memory: %s\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"No such PCI device: %.*s\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_p2pdma_enable_store(i8* %0, %struct.pci_dev** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pci_dev**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.device*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.pci_dev** %1, %struct.pci_dev*** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call %struct.device* @bus_find_device_by_name(i32* @pci_bus_type, i32* null, i8* %9)
  store %struct.device* %10, %struct.device** %8, align 8
  %11 = load %struct.device*, %struct.device** %8, align 8
  %12 = icmp ne %struct.device* %11, null
  br i1 %12, label %13, label %33

13:                                               ; preds = %3
  %14 = load i32*, i32** %7, align 8
  store i32 1, i32* %14, align 4
  %15 = load %struct.device*, %struct.device** %8, align 8
  %16 = call %struct.pci_dev* @to_pci_dev(%struct.device* %15)
  %17 = load %struct.pci_dev**, %struct.pci_dev*** %6, align 8
  store %struct.pci_dev* %16, %struct.pci_dev** %17, align 8
  %18 = load %struct.pci_dev**, %struct.pci_dev*** %6, align 8
  %19 = load %struct.pci_dev*, %struct.pci_dev** %18, align 8
  %20 = call i32 @pci_has_p2pmem(%struct.pci_dev* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %13
  %23 = load %struct.pci_dev**, %struct.pci_dev*** %6, align 8
  %24 = load %struct.pci_dev*, %struct.pci_dev** %23, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @pci_err(%struct.pci_dev* %24, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load %struct.pci_dev**, %struct.pci_dev*** %6, align 8
  %28 = load %struct.pci_dev*, %struct.pci_dev** %27, align 8
  %29 = call i32 @pci_dev_put(%struct.pci_dev* %28)
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %68

32:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %68

33:                                               ; preds = %3
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 48
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 49
  br i1 %44, label %45, label %52

45:                                               ; preds = %39, %33
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = call i32 @iscntrl(i8 signext %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %45
  br label %59

52:                                               ; preds = %45, %39
  %53 = load i8*, i8** %5, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @strtobool(i8* %53, i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %68

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58, %51
  br label %60

60:                                               ; preds = %59
  %61 = load i8*, i8** %5, align 8
  %62 = call i64 @strcspn(i8* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %63 = trunc i64 %62 to i32
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %63, i8* %64)
  %66 = load i32, i32* @ENODEV, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %60, %57, %32, %22
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.device* @bus_find_device_by_name(i32*, i32*, i8*) #1

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local i32 @pci_has_p2pmem(%struct.pci_dev*) #1

declare dso_local i32 @pci_err(%struct.pci_dev*, i8*, i8*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i32 @iscntrl(i8 signext) #1

declare dso_local i32 @strtobool(i8*, i32*) #1

declare dso_local i32 @pr_err(i8*, i32, i8*) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
