; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_8255_pci.c_pci_8255_auto_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_8255_pci.c_pci_8255_auto_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_8255_boardinfo = type { i32, i32, i64, i32 }
%struct.comedi_device = type { i32, %struct.comedi_subdevice*, i32, i32, %struct.pci_8255_boardinfo* }
%struct.comedi_subdevice = type { i32 }
%struct.pci_dev = type { i32 }

@pci_8255_boards = common dso_local global %struct.pci_8255_boardinfo* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I8255_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i64)* @pci_8255_auto_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_8255_auto_attach(%struct.comedi_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.pci_8255_boardinfo*, align 8
  %8 = alloca %struct.comedi_subdevice*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %12 = call %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device* %11)
  store %struct.pci_dev* %12, %struct.pci_dev** %6, align 8
  store %struct.pci_8255_boardinfo* null, %struct.pci_8255_boardinfo** %7, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.pci_8255_boardinfo*, %struct.pci_8255_boardinfo** @pci_8255_boards, align 8
  %15 = call i64 @ARRAY_SIZE(%struct.pci_8255_boardinfo* %14)
  %16 = icmp ult i64 %13, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.pci_8255_boardinfo*, %struct.pci_8255_boardinfo** @pci_8255_boards, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds %struct.pci_8255_boardinfo, %struct.pci_8255_boardinfo* %18, i64 %19
  store %struct.pci_8255_boardinfo* %20, %struct.pci_8255_boardinfo** %7, align 8
  br label %21

21:                                               ; preds = %17, %2
  %22 = load %struct.pci_8255_boardinfo*, %struct.pci_8255_boardinfo** %7, align 8
  %23 = icmp ne %struct.pci_8255_boardinfo* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %140

27:                                               ; preds = %21
  %28 = load %struct.pci_8255_boardinfo*, %struct.pci_8255_boardinfo** %7, align 8
  %29 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %30 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %29, i32 0, i32 4
  store %struct.pci_8255_boardinfo* %28, %struct.pci_8255_boardinfo** %30, align 8
  %31 = load %struct.pci_8255_boardinfo*, %struct.pci_8255_boardinfo** %7, align 8
  %32 = getelementptr inbounds %struct.pci_8255_boardinfo, %struct.pci_8255_boardinfo* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %35 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %37 = call i32 @comedi_pci_enable(%struct.comedi_device* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %27
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %3, align 4
  br label %140

42:                                               ; preds = %27
  %43 = load %struct.pci_8255_boardinfo*, %struct.pci_8255_boardinfo** %7, align 8
  %44 = getelementptr inbounds %struct.pci_8255_boardinfo, %struct.pci_8255_boardinfo* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %49 = call i32 @pci_8255_mite_init(%struct.pci_dev* %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %3, align 4
  br label %140

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54, %42
  %56 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %57 = load %struct.pci_8255_boardinfo*, %struct.pci_8255_boardinfo** %7, align 8
  %58 = getelementptr inbounds %struct.pci_8255_boardinfo, %struct.pci_8255_boardinfo* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @pci_resource_flags(%struct.pci_dev* %56, i32 %59)
  %61 = load i32, i32* @IORESOURCE_MEM, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %55
  %65 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %66 = load %struct.pci_8255_boardinfo*, %struct.pci_8255_boardinfo** %7, align 8
  %67 = getelementptr inbounds %struct.pci_8255_boardinfo, %struct.pci_8255_boardinfo* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @pci_ioremap_bar(%struct.pci_dev* %65, i32 %68)
  %70 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %71 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %73 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %64
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %140

79:                                               ; preds = %64
  br label %88

80:                                               ; preds = %55
  %81 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %82 = load %struct.pci_8255_boardinfo*, %struct.pci_8255_boardinfo** %7, align 8
  %83 = getelementptr inbounds %struct.pci_8255_boardinfo, %struct.pci_8255_boardinfo* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @pci_resource_start(%struct.pci_dev* %81, i32 %84)
  %86 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %87 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  br label %88

88:                                               ; preds = %80, %79
  %89 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %90 = load %struct.pci_8255_boardinfo*, %struct.pci_8255_boardinfo** %7, align 8
  %91 = getelementptr inbounds %struct.pci_8255_boardinfo, %struct.pci_8255_boardinfo* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %89, i32 %92)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %88
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* %3, align 4
  br label %140

98:                                               ; preds = %88
  store i32 0, i32* %10, align 4
  br label %99

99:                                               ; preds = %136, %98
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.pci_8255_boardinfo*, %struct.pci_8255_boardinfo** %7, align 8
  %102 = getelementptr inbounds %struct.pci_8255_boardinfo, %struct.pci_8255_boardinfo* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %139

105:                                              ; preds = %99
  %106 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %107 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %106, i32 0, i32 1
  %108 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %108, i64 %110
  store %struct.comedi_subdevice* %111, %struct.comedi_subdevice** %8, align 8
  %112 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %113 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %105
  %117 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %118 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* @I8255_SIZE, align 4
  %121 = mul nsw i32 %119, %120
  %122 = call i32 @subdev_8255_mm_init(%struct.comedi_device* %117, %struct.comedi_subdevice* %118, i32* null, i32 %121)
  store i32 %122, i32* %9, align 4
  br label %130

123:                                              ; preds = %105
  %124 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %125 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* @I8255_SIZE, align 4
  %128 = mul nsw i32 %126, %127
  %129 = call i32 @subdev_8255_init(%struct.comedi_device* %124, %struct.comedi_subdevice* %125, i32* null, i32 %128)
  store i32 %129, i32* %9, align 4
  br label %130

130:                                              ; preds = %123, %116
  %131 = load i32, i32* %9, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = load i32, i32* %9, align 4
  store i32 %134, i32* %3, align 4
  br label %140

135:                                              ; preds = %130
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %10, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %10, align 4
  br label %99

139:                                              ; preds = %99
  store i32 0, i32* %3, align 4
  br label %140

140:                                              ; preds = %139, %133, %96, %76, %52, %40, %24
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local %struct.pci_dev* @comedi_to_pci_dev(%struct.comedi_device*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.pci_8255_boardinfo*) #1

declare dso_local i32 @comedi_pci_enable(%struct.comedi_device*) #1

declare dso_local i32 @pci_8255_mite_init(%struct.pci_dev*) #1

declare dso_local i32 @pci_resource_flags(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_ioremap_bar(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #1

declare dso_local i32 @subdev_8255_mm_init(%struct.comedi_device*, %struct.comedi_subdevice*, i32*, i32) #1

declare dso_local i32 @subdev_8255_init(%struct.comedi_device*, %struct.comedi_subdevice*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
