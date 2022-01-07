; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_glue.c_sym_config_pqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_glue.c_sym_config_pqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i32 }
%struct.sym_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.sym_device*)* @sym_config_pqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_config_pqs(%struct.pci_dev* %0, %struct.sym_device* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.sym_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.sym_device* %1, %struct.sym_device** %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %59, %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 256
  br i1 %10, label %11, label %62

11:                                               ; preds = %8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.pci_dev* @pci_get_slot(i32 %14, i32 %15)
  store %struct.pci_dev* %16, %struct.pci_dev** %7, align 8
  %17 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %18 = icmp ne %struct.pci_dev* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %11
  %20 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 4122
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 9
  br i1 %28, label %29, label %32

29:                                               ; preds = %24, %19, %11
  %30 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %31 = call i32 @pci_dev_put(%struct.pci_dev* %30)
  br label %59

32:                                               ; preds = %24
  %33 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %34 = call i32 @pci_read_config_byte(%struct.pci_dev* %33, i32 68, i32* %6)
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, 2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %39, 2
  store i32 %40, i32* %6, align 4
  %41 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @pci_write_config_byte(%struct.pci_dev* %41, i32 68, i32 %42)
  br label %44

44:                                               ; preds = %38, %32
  %45 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %46 = call i32 @pci_read_config_byte(%struct.pci_dev* %45, i32 69, i32* %6)
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, 4
  store i32 %52, i32* %6, align 4
  %53 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @pci_write_config_byte(%struct.pci_dev* %53, i32 69, i32 %54)
  br label %56

56:                                               ; preds = %50, %44
  %57 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %58 = call i32 @pci_dev_put(%struct.pci_dev* %57)
  br label %62

59:                                               ; preds = %29
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %8

62:                                               ; preds = %56, %8
  %63 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %64 = call i32 @pci_read_config_byte(%struct.pci_dev* %63, i32 132, i32* %6)
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.sym_device*, %struct.sym_device** %4, align 8
  %67 = getelementptr inbounds %struct.sym_device, %struct.sym_device* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  ret void
}

declare dso_local %struct.pci_dev* @pci_get_slot(i32, i32) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
