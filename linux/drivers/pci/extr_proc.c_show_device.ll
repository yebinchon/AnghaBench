; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_proc.c_show_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_proc.c_show_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.pci_dev = type { %struct.TYPE_4__*, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i64, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.pci_driver = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"%02x%02x\09%04x%04x\09%x\00", align 1
@PCI_ROM_RESOURCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"\09%16llx\00", align 1
@PCI_REGION_FLAG_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @show_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_device(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.pci_driver*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.pci_dev*
  store %struct.pci_dev* %14, %struct.pci_dev** %6, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %16 = icmp eq %struct.pci_dev* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %133

18:                                               ; preds = %2
  %19 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %20 = call %struct.pci_driver* @pci_dev_driver(%struct.pci_dev* %19)
  store %struct.pci_driver* %20, %struct.pci_driver** %7, align 8
  %21 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %22 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 5
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %27, i32 %30, i32 %33, i32 %36, i32 %39)
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %70, %18
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @PCI_ROM_RESOURCE, align 4
  %44 = icmp sle i32 %42, %43
  br i1 %44, label %45, label %73

45:                                               ; preds = %41
  %46 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = call i32 @pci_resource_to_user(%struct.pci_dev* %46, i32 %47, %struct.TYPE_4__* %53, i32* %9, i32* %10)
  %55 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %58 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @PCI_REGION_FLAG_MASK, align 4
  %66 = and i32 %64, %65
  %67 = or i32 %56, %66
  %68 = sext i32 %67 to i64
  %69 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %68)
  br label %70

70:                                               ; preds = %45
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %41

73:                                               ; preds = %41
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %116, %73
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @PCI_ROM_RESOURCE, align 4
  %77 = icmp sle i32 %75, %76
  br i1 %77, label %78, label %119

78:                                               ; preds = %74
  %79 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %82 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %85
  %87 = call i32 @pci_resource_to_user(%struct.pci_dev* %79, i32 %80, %struct.TYPE_4__* %86, i32* %11, i32* %12)
  %88 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %89 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %90 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %98 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp slt i64 %96, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %78
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* %11, align 4
  %109 = sub nsw i32 %107, %108
  %110 = sext i32 %109 to i64
  %111 = add i64 %110, 1
  br label %113

112:                                              ; preds = %78
  br label %113

113:                                              ; preds = %112, %106
  %114 = phi i64 [ %111, %106 ], [ 0, %112 ]
  %115 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %88, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %114)
  br label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %8, align 4
  br label %74

119:                                              ; preds = %74
  %120 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %121 = call i32 @seq_putc(%struct.seq_file* %120, i8 signext 9)
  %122 = load %struct.pci_driver*, %struct.pci_driver** %7, align 8
  %123 = icmp ne %struct.pci_driver* %122, null
  br i1 %123, label %124, label %130

124:                                              ; preds = %119
  %125 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %126 = load %struct.pci_driver*, %struct.pci_driver** %7, align 8
  %127 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @seq_puts(%struct.seq_file* %125, i32 %128)
  br label %130

130:                                              ; preds = %124, %119
  %131 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %132 = call i32 @seq_putc(%struct.seq_file* %131, i8 signext 10)
  store i32 0, i32* %3, align 4
  br label %133

133:                                              ; preds = %130, %17
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local %struct.pci_driver* @pci_dev_driver(%struct.pci_dev*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64, ...) #1

declare dso_local i32 @pci_resource_to_user(%struct.pci_dev*, i32, %struct.TYPE_4__*, i32*, i32*) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
