; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_proc.c_pci_proc_attach_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_proc.c_pci_proc_attach_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.proc_dir_entry*, i32, i32, %struct.pci_bus* }
%struct.proc_dir_entry = type { i32 }
%struct.pci_bus = type { i32, i64 }

@proc_initialized = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%04x:%02x\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@proc_bus_pci_dir = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"%02x.%x\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@proc_bus_pci_operations = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_proc_attach_device(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pci_bus*, align 8
  %5 = alloca %struct.proc_dir_entry*, align 8
  %6 = alloca [16 x i8], align 16
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 3
  %9 = load %struct.pci_bus*, %struct.pci_bus** %8, align 8
  store %struct.pci_bus* %9, %struct.pci_bus** %4, align 8
  %10 = load i32, i32* @proc_initialized, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @EACCES, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %88

15:                                               ; preds = %1
  %16 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %17 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %52, label %20

20:                                               ; preds = %15
  %21 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %22 = call i64 @pci_proc_domain(%struct.pci_bus* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %26 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %27 = call i32 @pci_domain_nr(%struct.pci_bus* %26)
  %28 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %29 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30)
  br label %38

32:                                               ; preds = %20
  %33 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %34 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %35 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %32, %24
  %39 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %40 = load i32, i32* @proc_bus_pci_dir, align 4
  %41 = call i64 @proc_mkdir(i8* %39, i32 %40)
  %42 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %43 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %45 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %38
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %88

51:                                               ; preds = %38
  br label %52

52:                                               ; preds = %51, %15
  %53 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %54 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @PCI_SLOT(i32 %56)
  %58 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %59 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @PCI_FUNC(i32 %60)
  %62 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %57, i32 %61)
  %63 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %64 = load i32, i32* @S_IFREG, align 4
  %65 = load i32, i32* @S_IRUGO, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @S_IWUSR, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %70 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %73 = call %struct.proc_dir_entry* @proc_create_data(i8* %63, i32 %68, i64 %71, i32* @proc_bus_pci_operations, %struct.pci_dev* %72)
  store %struct.proc_dir_entry* %73, %struct.proc_dir_entry** %5, align 8
  %74 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %75 = icmp ne %struct.proc_dir_entry* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %52
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %88

79:                                               ; preds = %52
  %80 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %81 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %82 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @proc_set_size(%struct.proc_dir_entry* %80, i32 %83)
  %85 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %86 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %87 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %86, i32 0, i32 0
  store %struct.proc_dir_entry* %85, %struct.proc_dir_entry** %87, align 8
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %79, %76, %48, %12
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i64 @pci_proc_domain(%struct.pci_bus*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

declare dso_local i32 @pci_domain_nr(%struct.pci_bus*) #1

declare dso_local i64 @proc_mkdir(i8*, i32) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local %struct.proc_dir_entry* @proc_create_data(i8*, i32, i64, i32*, %struct.pci_dev*) #1

declare dso_local i32 @proc_set_size(%struct.proc_dir_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
