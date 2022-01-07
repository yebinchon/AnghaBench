; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_iov.c_pci_iov_remove_virtfn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_iov.c_pci_iov_remove_virtfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@VIRTFN_ID_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"virtfn%u\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"physfn\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_iov_remove_virtfn(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @VIRTFN_ID_LEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @pci_domain_nr(i32 %15)
  %17 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @pci_iov_virtfn_bus(%struct.pci_dev* %17, i32 %18)
  %20 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @pci_iov_virtfn_devfn(%struct.pci_dev* %20, i32 %21)
  %23 = call %struct.pci_dev* @pci_get_domain_bus_and_slot(i32 %16, i32 %19, i32 %22)
  store %struct.pci_dev* %23, %struct.pci_dev** %7, align 8
  %24 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %25 = icmp ne %struct.pci_dev* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  br label %59

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @sprintf(i8* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = call i32 @sysfs_remove_link(%struct.TYPE_4__* %32, i8* %12)
  %34 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %27
  %41 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = call i32 @sysfs_remove_link(%struct.TYPE_4__* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %40, %27
  %46 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %47 = call i32 @pci_stop_and_remove_bus_device(%struct.pci_dev* %46)
  %48 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %52 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @virtfn_remove_bus(i32 %50, i32 %53)
  %55 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %56 = call i32 @pci_dev_put(%struct.pci_dev* %55)
  %57 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %58 = call i32 @pci_dev_put(%struct.pci_dev* %57)
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %45, %26
  %60 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %60)
  %61 = load i32, i32* %8, align 4
  switch i32 %61, label %63 [
    i32 0, label %62
    i32 1, label %62
  ]

62:                                               ; preds = %59, %59
  ret void

63:                                               ; preds = %59
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.pci_dev* @pci_get_domain_bus_and_slot(i32, i32, i32) #2

declare dso_local i32 @pci_domain_nr(i32) #2

declare dso_local i32 @pci_iov_virtfn_bus(%struct.pci_dev*, i32) #2

declare dso_local i32 @pci_iov_virtfn_devfn(%struct.pci_dev*, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i32 @sysfs_remove_link(%struct.TYPE_4__*, i8*) #2

declare dso_local i32 @pci_stop_and_remove_bus_device(%struct.pci_dev*) #2

declare dso_local i32 @virtfn_remove_bus(i32, i32) #2

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
