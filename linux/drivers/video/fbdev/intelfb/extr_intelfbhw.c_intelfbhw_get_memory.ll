; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/intelfb/extr_intelfbhw.c_intelfbhw_get_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/intelfb/extr_intelfbhw.c_intelfbhw_get_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"cannot find bridge device\0A\00", align 1
@INTEL_GMCH_CTRL = common dso_local global i32 0, align 4
@INTEL_GMCH_MEM_MASK = common dso_local global i32 0, align 4
@INTEL_GMCH_MEM_64M = common dso_local global i32 0, align 4
@INTEL_830_GMCH_GMS_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"only local memory found\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"video memory is disabled\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"unexpected GMCH_GMS value: 0x%02x\0A\00", align 1
@INTEL_855_GMCH_GMS_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intelfbhw_get_memory(%struct.pci_dev* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %12 = icmp ne %struct.pci_dev* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32*, i32** %7, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %13, %3
  store i32 1, i32* %4, align 4
  br label %158

20:                                               ; preds = %16
  %21 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pci_domain_nr(i32 %23)
  %25 = call i32 @PCI_DEVFN(i32 0, i32 0)
  %26 = call %struct.pci_dev* @pci_get_domain_bus_and_slot(i32 %24, i32 0, i32 %25)
  store %struct.pci_dev* %26, %struct.pci_dev** %8, align 8
  %27 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %28 = icmp ne %struct.pci_dev* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %20
  %30 = call i32 (i8*, ...) @ERR_MSG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %158

31:                                               ; preds = %20
  store i32 0, i32* %9, align 4
  %32 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %33 = load i32, i32* @INTEL_GMCH_CTRL, align 4
  %34 = call i32 @pci_read_config_word(%struct.pci_dev* %32, i32 %33, i32* %9)
  %35 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %36 = call i32 @pci_dev_put(%struct.pci_dev* %35)
  %37 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %52 [
    i32 134, label %40
    i32 133, label %40
    i32 132, label %40
    i32 131, label %40
    i32 130, label %40
    i32 129, label %40
    i32 128, label %40
  ]

40:                                               ; preds = %31, %31, %31, %31, %31, %31, %31
  %41 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %42 = call i32 @pci_resource_start(%struct.pci_dev* %41, i32 2)
  %43 = and i32 %42, 134217728
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = call i32 @MB(i32 128)
  %47 = load i32*, i32** %6, align 8
  store i32 %46, i32* %47, align 4
  br label %51

48:                                               ; preds = %40
  %49 = call i32 @MB(i32 256)
  %50 = load i32*, i32** %6, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %45
  br label %65

52:                                               ; preds = %31
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @INTEL_GMCH_MEM_MASK, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @INTEL_GMCH_MEM_64M, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = call i32 @MB(i32 64)
  %60 = load i32*, i32** %6, align 8
  store i32 %59, i32* %60, align 4
  br label %64

61:                                               ; preds = %52
  %62 = call i32 @MB(i32 128)
  %63 = load i32*, i32** %6, align 8
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %61, %58
  br label %65

65:                                               ; preds = %64, %51
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @MB(i32 1)
  %69 = sdiv i32 %67, %68
  %70 = add nsw i32 %69, 4
  store i32 %70, i32* %10, align 4
  %71 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %72 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  switch i32 %73, label %105 [
    i32 136, label %74
    i32 135, label %74
  ]

74:                                               ; preds = %65, %65
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @INTEL_830_GMCH_GMS_MASK, align 4
  %77 = and i32 %75, %76
  switch i32 %77, label %100 [
    i32 146, label %78
    i32 147, label %84
    i32 145, label %90
    i32 148, label %96
    i32 149, label %98
  ]

78:                                               ; preds = %74
  %79 = call i32 @KB(i32 512)
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @KB(i32 %80)
  %82 = sub nsw i32 %79, %81
  %83 = load i32*, i32** %7, align 8
  store i32 %82, i32* %83, align 4
  store i32 0, i32* %4, align 4
  br label %158

84:                                               ; preds = %74
  %85 = call i32 @MB(i32 1)
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @KB(i32 %86)
  %88 = sub nsw i32 %85, %87
  %89 = load i32*, i32** %7, align 8
  store i32 %88, i32* %89, align 4
  store i32 0, i32* %4, align 4
  br label %158

90:                                               ; preds = %74
  %91 = call i32 @MB(i32 8)
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @KB(i32 %92)
  %94 = sub nsw i32 %91, %93
  %95 = load i32*, i32** %7, align 8
  store i32 %94, i32* %95, align 4
  store i32 0, i32* %4, align 4
  br label %158

96:                                               ; preds = %74
  %97 = call i32 (i8*, ...) @ERR_MSG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %158

98:                                               ; preds = %74
  %99 = call i32 (i8*, ...) @ERR_MSG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %158

100:                                              ; preds = %74
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @INTEL_830_GMCH_GMS_MASK, align 4
  %103 = and i32 %101, %102
  %104 = call i32 (i8*, ...) @ERR_MSG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %103)
  store i32 1, i32* %4, align 4
  br label %158

105:                                              ; preds = %65
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* @INTEL_855_GMCH_GMS_MASK, align 4
  %108 = and i32 %106, %107
  switch i32 %108, label %153 [
    i32 142, label %109
    i32 140, label %115
    i32 139, label %121
    i32 143, label %127
    i32 141, label %133
    i32 138, label %139
    i32 137, label %145
    i32 144, label %151
  ]

109:                                              ; preds = %105
  %110 = call i32 @MB(i32 1)
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @KB(i32 %111)
  %113 = sub nsw i32 %110, %112
  %114 = load i32*, i32** %7, align 8
  store i32 %113, i32* %114, align 4
  store i32 0, i32* %4, align 4
  br label %158

115:                                              ; preds = %105
  %116 = call i32 @MB(i32 4)
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @KB(i32 %117)
  %119 = sub nsw i32 %116, %118
  %120 = load i32*, i32** %7, align 8
  store i32 %119, i32* %120, align 4
  store i32 0, i32* %4, align 4
  br label %158

121:                                              ; preds = %105
  %122 = call i32 @MB(i32 8)
  %123 = load i32, i32* %10, align 4
  %124 = call i32 @KB(i32 %123)
  %125 = sub nsw i32 %122, %124
  %126 = load i32*, i32** %7, align 8
  store i32 %125, i32* %126, align 4
  store i32 0, i32* %4, align 4
  br label %158

127:                                              ; preds = %105
  %128 = call i32 @MB(i32 16)
  %129 = load i32, i32* %10, align 4
  %130 = call i32 @KB(i32 %129)
  %131 = sub nsw i32 %128, %130
  %132 = load i32*, i32** %7, align 8
  store i32 %131, i32* %132, align 4
  store i32 0, i32* %4, align 4
  br label %158

133:                                              ; preds = %105
  %134 = call i32 @MB(i32 32)
  %135 = load i32, i32* %10, align 4
  %136 = call i32 @KB(i32 %135)
  %137 = sub nsw i32 %134, %136
  %138 = load i32*, i32** %7, align 8
  store i32 %137, i32* %138, align 4
  store i32 0, i32* %4, align 4
  br label %158

139:                                              ; preds = %105
  %140 = call i32 @MB(i32 48)
  %141 = load i32, i32* %10, align 4
  %142 = call i32 @KB(i32 %141)
  %143 = sub nsw i32 %140, %142
  %144 = load i32*, i32** %7, align 8
  store i32 %143, i32* %144, align 4
  store i32 0, i32* %4, align 4
  br label %158

145:                                              ; preds = %105
  %146 = call i32 @MB(i32 64)
  %147 = load i32, i32* %10, align 4
  %148 = call i32 @KB(i32 %147)
  %149 = sub nsw i32 %146, %148
  %150 = load i32*, i32** %7, align 8
  store i32 %149, i32* %150, align 4
  store i32 0, i32* %4, align 4
  br label %158

151:                                              ; preds = %105
  %152 = call i32 (i8*, ...) @ERR_MSG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %158

153:                                              ; preds = %105
  %154 = load i32, i32* %9, align 4
  %155 = load i32, i32* @INTEL_855_GMCH_GMS_MASK, align 4
  %156 = and i32 %154, %155
  %157 = call i32 (i8*, ...) @ERR_MSG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %156)
  store i32 1, i32* %4, align 4
  br label %158

158:                                              ; preds = %153, %151, %145, %139, %133, %127, %121, %115, %109, %100, %98, %96, %90, %84, %78, %29, %19
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local %struct.pci_dev* @pci_get_domain_bus_and_slot(i32, i32, i32) #1

declare dso_local i32 @pci_domain_nr(i32) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local i32 @ERR_MSG(i8*, ...) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @MB(i32) #1

declare dso_local i32 @KB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
