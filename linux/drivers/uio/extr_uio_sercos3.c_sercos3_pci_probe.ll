; ModuleID = '/home/carl/AnghaBench/linux/drivers/uio/extr_uio_sercos3.c_sercos3_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/uio/extr_uio_sercos3.c_sercos3_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.uio_info = type { i8*, i8*, %struct.TYPE_2__*, i32, i32, i32, i32, %struct.uio_info*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.sercos3_priv = type { i8*, i8*, %struct.TYPE_2__*, i32, i32, i32, i32, %struct.sercos3_priv*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"sercos3\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Sercos_III_PCI\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"0.0.1\00", align 1
@IRQF_SHARED = common dso_local global i32 0, align 4
@sercos3_handler = common dso_local global i32 0, align 4
@sercos3_irqcontrol = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @sercos3_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sercos3_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.uio_info*, align 8
  %7 = alloca %struct.sercos3_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.uio_info* @kzalloc(i32 56, i32 %9)
  store %struct.uio_info* %10, %struct.uio_info** %6, align 8
  %11 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %12 = icmp ne %struct.uio_info* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %142

16:                                               ; preds = %2
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.uio_info* @kzalloc(i32 56, i32 %17)
  %19 = bitcast %struct.uio_info* %18 to %struct.sercos3_priv*
  store %struct.sercos3_priv* %19, %struct.sercos3_priv** %7, align 8
  %20 = load %struct.sercos3_priv*, %struct.sercos3_priv** %7, align 8
  %21 = icmp ne %struct.sercos3_priv* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  br label %137

23:                                               ; preds = %16
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = call i64 @pci_enable_device(%struct.pci_dev* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %133

28:                                               ; preds = %23
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = call i64 @pci_request_regions(%struct.pci_dev* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %130

33:                                               ; preds = %28
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %36 = call i64 @sercos3_setup_iomem(%struct.pci_dev* %34, %struct.uio_info* %35, i32 0, i32 0)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %99

39:                                               ; preds = %33
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %42 = call i64 @sercos3_setup_iomem(%struct.pci_dev* %40, %struct.uio_info* %41, i32 1, i32 2)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %99

45:                                               ; preds = %39
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %48 = call i64 @sercos3_setup_iomem(%struct.pci_dev* %46, %struct.uio_info* %47, i32 2, i32 3)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %99

51:                                               ; preds = %45
  %52 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %53 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %54 = call i64 @sercos3_setup_iomem(%struct.pci_dev* %52, %struct.uio_info* %53, i32 3, i32 4)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %99

57:                                               ; preds = %51
  %58 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %59 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %60 = call i64 @sercos3_setup_iomem(%struct.pci_dev* %58, %struct.uio_info* %59, i32 4, i32 5)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %99

63:                                               ; preds = %57
  %64 = load %struct.sercos3_priv*, %struct.sercos3_priv** %7, align 8
  %65 = getelementptr inbounds %struct.sercos3_priv, %struct.sercos3_priv* %64, i32 0, i32 8
  %66 = call i32 @spin_lock_init(i32* %65)
  %67 = load %struct.sercos3_priv*, %struct.sercos3_priv** %7, align 8
  %68 = bitcast %struct.sercos3_priv* %67 to %struct.uio_info*
  %69 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %70 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %69, i32 0, i32 7
  store %struct.uio_info* %68, %struct.uio_info** %70, align 8
  %71 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %72 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %71, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %72, align 8
  %73 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %74 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %73, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %74, align 8
  %75 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %76 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %79 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %78, i32 0, i32 6
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @IRQF_SHARED, align 4
  %81 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %82 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* @sercos3_handler, align 4
  %84 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %85 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @sercos3_irqcontrol, align 4
  %87 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %88 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 8
  %89 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %90 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %91 = call i32 @pci_set_drvdata(%struct.pci_dev* %89, %struct.uio_info* %90)
  %92 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %93 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %92, i32 0, i32 0
  %94 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %95 = call i64 @uio_register_device(i32* %93, %struct.uio_info* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %63
  br label %99

98:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %142

99:                                               ; preds = %97, %62, %56, %50, %44, %38
  store i32 0, i32* %8, align 4
  br label %100

100:                                              ; preds = %124, %99
  %101 = load i32, i32* %8, align 4
  %102 = icmp slt i32 %101, 5
  br i1 %102, label %103, label %127

103:                                              ; preds = %100
  %104 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %105 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %104, i32 0, i32 2
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %103
  %114 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %115 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %114, i32 0, i32 2
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @iounmap(i64 %121)
  br label %123

123:                                              ; preds = %113, %103
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %8, align 4
  br label %100

127:                                              ; preds = %100
  %128 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %129 = call i32 @pci_release_regions(%struct.pci_dev* %128)
  br label %130

130:                                              ; preds = %127, %32
  %131 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %132 = call i32 @pci_disable_device(%struct.pci_dev* %131)
  br label %133

133:                                              ; preds = %130, %27
  %134 = load %struct.sercos3_priv*, %struct.sercos3_priv** %7, align 8
  %135 = bitcast %struct.sercos3_priv* %134 to %struct.uio_info*
  %136 = call i32 @kfree(%struct.uio_info* %135)
  br label %137

137:                                              ; preds = %133, %22
  %138 = load %struct.uio_info*, %struct.uio_info** %6, align 8
  %139 = call i32 @kfree(%struct.uio_info* %138)
  %140 = load i32, i32* @ENODEV, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %137, %98, %13
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local %struct.uio_info* @kzalloc(i32, i32) #1

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i64 @pci_request_regions(%struct.pci_dev*, i8*) #1

declare dso_local i64 @sercos3_setup_iomem(%struct.pci_dev*, %struct.uio_info*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.uio_info*) #1

declare dso_local i64 @uio_register_device(i32*, %struct.uio_info*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.uio_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
