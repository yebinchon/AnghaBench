; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_pciback_ops.c_xen_pcibk_control_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_pciback_ops.c_xen_pcibk_control_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, i64, i64, i64, i32 }
%struct.xen_pcibk_dev_data = type { i32, i32, i32, i64, i32 }

@PCI_HEADER_TYPE_NORMAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"%s: #%d %s %s%s %s-> %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"MSI\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"MSI/X\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@xen_pcibk_guest_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [60 x i8] c"%s: failed to install fake IRQ handler for IRQ %d! (rc:%d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"%s: #%d %s %s%s %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"failed to enable\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"failed to disable\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, i32)* @xen_pcibk_control_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_pcibk_control_isr(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xen_pcibk_dev_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = call %struct.xen_pcibk_dev_data* @pci_get_drvdata(%struct.pci_dev* %8)
  store %struct.xen_pcibk_dev_data* %9, %struct.xen_pcibk_dev_data** %5, align 8
  %10 = load %struct.xen_pcibk_dev_data*, %struct.xen_pcibk_dev_data** %5, align 8
  %11 = icmp ne %struct.xen_pcibk_dev_data* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %190

13:                                               ; preds = %2
  %14 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PCI_HEADER_TYPE_NORMAL, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %190

20:                                               ; preds = %13
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load %struct.xen_pcibk_dev_data*, %struct.xen_pcibk_dev_data** %5, align 8
  %25 = getelementptr inbounds %struct.xen_pcibk_dev_data, %struct.xen_pcibk_dev_data* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load %struct.xen_pcibk_dev_data*, %struct.xen_pcibk_dev_data** %5, align 8
  %27 = getelementptr inbounds %struct.xen_pcibk_dev_data, %struct.xen_pcibk_dev_data* %26, i32 0, i32 1
  store i32 0, i32* %27, align 4
  br label %28

28:                                               ; preds = %23, %20
  %29 = load %struct.xen_pcibk_dev_data*, %struct.xen_pcibk_dev_data** %5, align 8
  %30 = getelementptr inbounds %struct.xen_pcibk_dev_data, %struct.xen_pcibk_dev_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.xen_pcibk_dev_data*, %struct.xen_pcibk_dev_data** %5, align 8
  %36 = getelementptr inbounds %struct.xen_pcibk_dev_data, %struct.xen_pcibk_dev_data* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %190

40:                                               ; preds = %34, %28
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.xen_pcibk_dev_data*, %struct.xen_pcibk_dev_data** %5, align 8
  %48 = getelementptr inbounds %struct.xen_pcibk_dev_data, %struct.xen_pcibk_dev_data* %47, i32 0, i32 3
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %43, %40
  %50 = load %struct.xen_pcibk_dev_data*, %struct.xen_pcibk_dev_data** %5, align 8
  %51 = getelementptr inbounds %struct.xen_pcibk_dev_data, %struct.xen_pcibk_dev_data* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %145

55:                                               ; preds = %49
  %56 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %57 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %56, i32 0, i32 4
  %58 = load %struct.xen_pcibk_dev_data*, %struct.xen_pcibk_dev_data** %5, align 8
  %59 = getelementptr inbounds %struct.xen_pcibk_dev_data, %struct.xen_pcibk_dev_data* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.xen_pcibk_dev_data*, %struct.xen_pcibk_dev_data** %5, align 8
  %62 = getelementptr inbounds %struct.xen_pcibk_dev_data, %struct.xen_pcibk_dev_data* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %65 = call i64 @pci_is_enabled(%struct.pci_dev* %64)
  %66 = icmp ne i64 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %69 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %70 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %75 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %76 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %81 = load %struct.xen_pcibk_dev_data*, %struct.xen_pcibk_dev_data** %5, align 8
  %82 = getelementptr inbounds %struct.xen_pcibk_dev_data, %struct.xen_pcibk_dev_data* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)
  %91 = call i32 (i32*, i8*, i32, i64, i8*, i8*, i8*, i8*, ...) @dev_dbg(i32* %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %60, i64 %63, i8* %68, i8* %74, i8* %80, i8* %86, i8* %90)
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %130

94:                                               ; preds = %55
  %95 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %96 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %94
  %100 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %101 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99, %94
  br label %145

105:                                              ; preds = %99
  %106 = load %struct.xen_pcibk_dev_data*, %struct.xen_pcibk_dev_data** %5, align 8
  %107 = getelementptr inbounds %struct.xen_pcibk_dev_data, %struct.xen_pcibk_dev_data* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* @xen_pcibk_guest_interrupt, align 4
  %110 = load i32, i32* @IRQF_SHARED, align 4
  %111 = load %struct.xen_pcibk_dev_data*, %struct.xen_pcibk_dev_data** %5, align 8
  %112 = getelementptr inbounds %struct.xen_pcibk_dev_data, %struct.xen_pcibk_dev_data* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %115 = call i32 @request_irq(i64 %108, i32 %109, i32 %110, i32 %113, %struct.pci_dev* %114)
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %105
  %119 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %120 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %119, i32 0, i32 4
  %121 = load %struct.xen_pcibk_dev_data*, %struct.xen_pcibk_dev_data** %5, align 8
  %122 = getelementptr inbounds %struct.xen_pcibk_dev_data, %struct.xen_pcibk_dev_data* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.xen_pcibk_dev_data*, %struct.xen_pcibk_dev_data** %5, align 8
  %125 = getelementptr inbounds %struct.xen_pcibk_dev_data, %struct.xen_pcibk_dev_data* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @dev_err(i32* %120, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i64 0, i64 0), i32 %123, i64 %126, i32 %127)
  br label %145

129:                                              ; preds = %105
  br label %138

130:                                              ; preds = %55
  %131 = load %struct.xen_pcibk_dev_data*, %struct.xen_pcibk_dev_data** %5, align 8
  %132 = getelementptr inbounds %struct.xen_pcibk_dev_data, %struct.xen_pcibk_dev_data* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %135 = call i32 @free_irq(i64 %133, %struct.pci_dev* %134)
  %136 = load %struct.xen_pcibk_dev_data*, %struct.xen_pcibk_dev_data** %5, align 8
  %137 = getelementptr inbounds %struct.xen_pcibk_dev_data, %struct.xen_pcibk_dev_data* %136, i32 0, i32 3
  store i64 0, i64* %137, align 8
  br label %138

138:                                              ; preds = %130, %129
  %139 = load i32, i32* %7, align 4
  %140 = load %struct.xen_pcibk_dev_data*, %struct.xen_pcibk_dev_data** %5, align 8
  %141 = getelementptr inbounds %struct.xen_pcibk_dev_data, %struct.xen_pcibk_dev_data* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 8
  %142 = load i32, i32* %7, align 4
  %143 = load %struct.xen_pcibk_dev_data*, %struct.xen_pcibk_dev_data** %5, align 8
  %144 = getelementptr inbounds %struct.xen_pcibk_dev_data, %struct.xen_pcibk_dev_data* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  br label %145

145:                                              ; preds = %138, %118, %104, %54
  %146 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %147 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %146, i32 0, i32 4
  %148 = load %struct.xen_pcibk_dev_data*, %struct.xen_pcibk_dev_data** %5, align 8
  %149 = getelementptr inbounds %struct.xen_pcibk_dev_data, %struct.xen_pcibk_dev_data* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.xen_pcibk_dev_data*, %struct.xen_pcibk_dev_data** %5, align 8
  %152 = getelementptr inbounds %struct.xen_pcibk_dev_data, %struct.xen_pcibk_dev_data* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %155 = call i64 @pci_is_enabled(%struct.pci_dev* %154)
  %156 = icmp ne i64 %155, 0
  %157 = zext i1 %156 to i64
  %158 = select i1 %156, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %159 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %160 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  %163 = zext i1 %162 to i64
  %164 = select i1 %162, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %165 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %166 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  %169 = zext i1 %168 to i64
  %170 = select i1 %168, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %171 = load i32, i32* %7, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %145
  %174 = load %struct.xen_pcibk_dev_data*, %struct.xen_pcibk_dev_data** %5, align 8
  %175 = getelementptr inbounds %struct.xen_pcibk_dev_data, %struct.xen_pcibk_dev_data* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = icmp ne i32 %176, 0
  %178 = zext i1 %177 to i64
  %179 = select i1 %177, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0)
  br label %187

180:                                              ; preds = %145
  %181 = load %struct.xen_pcibk_dev_data*, %struct.xen_pcibk_dev_data** %5, align 8
  %182 = getelementptr inbounds %struct.xen_pcibk_dev_data, %struct.xen_pcibk_dev_data* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = icmp ne i32 %183, 0
  %185 = zext i1 %184 to i64
  %186 = select i1 %184, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0)
  br label %187

187:                                              ; preds = %180, %173
  %188 = phi i8* [ %179, %173 ], [ %186, %180 ]
  %189 = call i32 (i32*, i8*, i32, i64, i8*, i8*, i8*, i8*, ...) @dev_dbg(i32* %147, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %150, i64 %153, i8* %158, i8* %164, i8* %170, i8* %188)
  br label %190

190:                                              ; preds = %187, %39, %19, %12
  ret void
}

declare dso_local %struct.xen_pcibk_dev_data* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i64, i8*, i8*, i8*, i8*, ...) #1

declare dso_local i64 @pci_is_enabled(%struct.pci_dev*) #1

declare dso_local i32 @request_irq(i64, i32, i32, i32, %struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i64, i32) #1

declare dso_local i32 @free_irq(i64, %struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
