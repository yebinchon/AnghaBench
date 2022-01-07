; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_tsi148.c_tsi148_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_tsi148.c_tsi148_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_master_resource = type { i32, %struct.TYPE_4__, i32*, %struct.vme_bridge* }
%struct.TYPE_4__ = type { i64, i64, i64, i32 }
%struct.vme_bridge = type { i8*, i32 }
%struct.pci_dev = type { i32 }

@VMENAMSIZ = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@PCIBIOS_MIN_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"Failed to allocate mem resource for window %d size 0x%lx start 0x%lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to remap resource\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vme_master_resource*, i64)* @tsi148_alloc_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi148_alloc_resource(%struct.vme_master_resource* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vme_master_resource*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca %struct.vme_bridge*, align 8
  store %struct.vme_master_resource* %0, %struct.vme_master_resource** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.vme_master_resource*, %struct.vme_master_resource** %4, align 8
  %11 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %10, i32 0, i32 3
  %12 = load %struct.vme_bridge*, %struct.vme_bridge** %11, align 8
  store %struct.vme_bridge* %12, %struct.vme_bridge** %9, align 8
  %13 = load %struct.vme_bridge*, %struct.vme_bridge** %9, align 8
  %14 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.pci_dev* @to_pci_dev(i32 %15)
  store %struct.pci_dev* %16, %struct.pci_dev** %8, align 8
  %17 = load %struct.vme_master_resource*, %struct.vme_master_resource** %4, align 8
  %18 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.vme_master_resource*, %struct.vme_master_resource** %4, align 8
  %22 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = sub i64 %20, %24
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %2
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %5, align 8
  %31 = sub i64 %30, 1
  %32 = icmp eq i64 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %165

34:                                               ; preds = %28, %2
  %35 = load i64, i64* %6, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %34
  %38 = load %struct.vme_master_resource*, %struct.vme_master_resource** %4, align 8
  %39 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @iounmap(i32* %40)
  %42 = load %struct.vme_master_resource*, %struct.vme_master_resource** %4, align 8
  %43 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %42, i32 0, i32 2
  store i32* null, i32** %43, align 8
  %44 = load %struct.vme_master_resource*, %struct.vme_master_resource** %4, align 8
  %45 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @kfree(i64 %47)
  %49 = load %struct.vme_master_resource*, %struct.vme_master_resource** %4, align 8
  %50 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %49, i32 0, i32 1
  %51 = call i32 @release_resource(%struct.TYPE_4__* %50)
  %52 = load %struct.vme_master_resource*, %struct.vme_master_resource** %4, align 8
  %53 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %52, i32 0, i32 1
  %54 = call i32 @memset(%struct.TYPE_4__* %53, i32 0, i32 32)
  br label %55

55:                                               ; preds = %37, %34
  %56 = load i64, i64* %5, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %165

59:                                               ; preds = %55
  %60 = load %struct.vme_master_resource*, %struct.vme_master_resource** %4, align 8
  %61 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %82, label %65

65:                                               ; preds = %59
  %66 = load i64, i64* @VMENAMSIZ, align 8
  %67 = add nsw i64 %66, 3
  %68 = load i32, i32* @GFP_ATOMIC, align 4
  %69 = call i64 @kmalloc(i64 %67, i32 %68)
  %70 = load %struct.vme_master_resource*, %struct.vme_master_resource** %4, align 8
  %71 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  store i64 %69, i64* %72, align 8
  %73 = load %struct.vme_master_resource*, %struct.vme_master_resource** %4, align 8
  %74 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %65
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %7, align 4
  br label %163

81:                                               ; preds = %65
  br label %82

82:                                               ; preds = %81, %59
  %83 = load %struct.vme_master_resource*, %struct.vme_master_resource** %4, align 8
  %84 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to i8*
  %88 = load %struct.vme_bridge*, %struct.vme_bridge** %9, align 8
  %89 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.vme_master_resource*, %struct.vme_master_resource** %4, align 8
  %92 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @sprintf(i8* %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %90, i32 %93)
  %95 = load %struct.vme_master_resource*, %struct.vme_master_resource** %4, align 8
  %96 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  store i64 0, i64* %97, align 8
  %98 = load i64, i64* %5, align 8
  %99 = load %struct.vme_master_resource*, %struct.vme_master_resource** %4, align 8
  %100 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  store i64 %98, i64* %101, align 8
  %102 = load i32, i32* @IORESOURCE_MEM, align 4
  %103 = load %struct.vme_master_resource*, %struct.vme_master_resource** %4, align 8
  %104 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 3
  store i32 %102, i32* %105, align 8
  %106 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %107 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.vme_master_resource*, %struct.vme_master_resource** %4, align 8
  %110 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %109, i32 0, i32 1
  %111 = load i64, i64* %5, align 8
  %112 = load i32, i32* @PCIBIOS_MIN_MEM, align 4
  %113 = call i32 @pci_bus_alloc_resource(i32 %108, %struct.TYPE_4__* %110, i64 %111, i32 65536, i32 %112, i32 0, i32* null, i32* null)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %82
  %117 = load %struct.vme_bridge*, %struct.vme_bridge** %9, align 8
  %118 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.vme_master_resource*, %struct.vme_master_resource** %4, align 8
  %121 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i64, i64* %5, align 8
  %124 = load %struct.vme_master_resource*, %struct.vme_master_resource** %4, align 8
  %125 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = call i32 (i32, i8*, ...) @dev_err(i32 %119, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %122, i64 %123, i64 %127)
  br label %154

129:                                              ; preds = %82
  %130 = load %struct.vme_master_resource*, %struct.vme_master_resource** %4, align 8
  %131 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* %5, align 8
  %135 = call i32* @ioremap_nocache(i64 %133, i64 %134)
  %136 = load %struct.vme_master_resource*, %struct.vme_master_resource** %4, align 8
  %137 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %136, i32 0, i32 2
  store i32* %135, i32** %137, align 8
  %138 = load %struct.vme_master_resource*, %struct.vme_master_resource** %4, align 8
  %139 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %138, i32 0, i32 2
  %140 = load i32*, i32** %139, align 8
  %141 = icmp ne i32* %140, null
  br i1 %141, label %149, label %142

142:                                              ; preds = %129
  %143 = load %struct.vme_bridge*, %struct.vme_bridge** %9, align 8
  %144 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = call i32 (i32, i8*, ...) @dev_err(i32 %145, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %147 = load i32, i32* @ENOMEM, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %7, align 4
  br label %150

149:                                              ; preds = %129
  store i32 0, i32* %3, align 4
  br label %165

150:                                              ; preds = %142
  %151 = load %struct.vme_master_resource*, %struct.vme_master_resource** %4, align 8
  %152 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %151, i32 0, i32 1
  %153 = call i32 @release_resource(%struct.TYPE_4__* %152)
  br label %154

154:                                              ; preds = %150, %116
  %155 = load %struct.vme_master_resource*, %struct.vme_master_resource** %4, align 8
  %156 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @kfree(i64 %158)
  %160 = load %struct.vme_master_resource*, %struct.vme_master_resource** %4, align 8
  %161 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %160, i32 0, i32 1
  %162 = call i32 @memset(%struct.TYPE_4__* %161, i32 0, i32 32)
  br label %163

163:                                              ; preds = %154, %78
  %164 = load i32, i32* %7, align 4
  store i32 %164, i32* %3, align 4
  br label %165

165:                                              ; preds = %163, %149, %58, %33
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i32 @release_resource(%struct.TYPE_4__*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @kmalloc(i64, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

declare dso_local i32 @pci_bus_alloc_resource(i32, %struct.TYPE_4__*, i64, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32* @ioremap_nocache(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
