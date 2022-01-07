; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_ca91cx42.c_ca91cx42_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_ca91cx42.c_ca91cx42_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_master_resource = type { i32, %struct.TYPE_4__, i32*, %struct.vme_bridge* }
%struct.TYPE_4__ = type { i64, i64, i64, i32 }
%struct.vme_bridge = type { i8*, i32 }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"Dev entry NULL\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VMENAMSIZ = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@PCIBIOS_MIN_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [70 x i8] c"Failed to allocate mem resource for window %d size 0x%lx start 0x%lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Failed to remap resource\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vme_master_resource*, i64)* @ca91cx42_alloc_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca91cx42_alloc_resource(%struct.vme_master_resource* %0, i64 %1) #0 {
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
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %2
  %18 = load %struct.vme_bridge*, %struct.vme_bridge** %9, align 8
  %19 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 (i32, i8*, ...) @dev_err(i32 %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %170

24:                                               ; preds = %2
  %25 = load %struct.vme_bridge*, %struct.vme_bridge** %9, align 8
  %26 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.pci_dev* @to_pci_dev(i32 %27)
  store %struct.pci_dev* %28, %struct.pci_dev** %8, align 8
  %29 = load %struct.vme_master_resource*, %struct.vme_master_resource** %4, align 8
  %30 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.vme_master_resource*, %struct.vme_master_resource** %4, align 8
  %34 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = sub i64 %32, %36
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %5, align 8
  %40 = sub i64 %39, 1
  %41 = icmp eq i64 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %170

43:                                               ; preds = %24
  %44 = load i64, i64* %6, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %43
  %47 = load %struct.vme_master_resource*, %struct.vme_master_resource** %4, align 8
  %48 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @iounmap(i32* %49)
  %51 = load %struct.vme_master_resource*, %struct.vme_master_resource** %4, align 8
  %52 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %51, i32 0, i32 2
  store i32* null, i32** %52, align 8
  %53 = load %struct.vme_master_resource*, %struct.vme_master_resource** %4, align 8
  %54 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @kfree(i64 %56)
  %58 = load %struct.vme_master_resource*, %struct.vme_master_resource** %4, align 8
  %59 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %58, i32 0, i32 1
  %60 = call i32 @release_resource(%struct.TYPE_4__* %59)
  %61 = load %struct.vme_master_resource*, %struct.vme_master_resource** %4, align 8
  %62 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %61, i32 0, i32 1
  %63 = call i32 @memset(%struct.TYPE_4__* %62, i32 0, i32 32)
  br label %64

64:                                               ; preds = %46, %43
  %65 = load %struct.vme_master_resource*, %struct.vme_master_resource** %4, align 8
  %66 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %87, label %70

70:                                               ; preds = %64
  %71 = load i64, i64* @VMENAMSIZ, align 8
  %72 = add nsw i64 %71, 3
  %73 = load i32, i32* @GFP_ATOMIC, align 4
  %74 = call i64 @kmalloc(i64 %72, i32 %73)
  %75 = load %struct.vme_master_resource*, %struct.vme_master_resource** %4, align 8
  %76 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  store i64 %74, i64* %77, align 8
  %78 = load %struct.vme_master_resource*, %struct.vme_master_resource** %4, align 8
  %79 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %70
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %7, align 4
  br label %168

86:                                               ; preds = %70
  br label %87

87:                                               ; preds = %86, %64
  %88 = load %struct.vme_master_resource*, %struct.vme_master_resource** %4, align 8
  %89 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to i8*
  %93 = load %struct.vme_bridge*, %struct.vme_bridge** %9, align 8
  %94 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = load %struct.vme_master_resource*, %struct.vme_master_resource** %4, align 8
  %97 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @sprintf(i8* %92, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %95, i32 %98)
  %100 = load %struct.vme_master_resource*, %struct.vme_master_resource** %4, align 8
  %101 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  store i64 0, i64* %102, align 8
  %103 = load i64, i64* %5, align 8
  %104 = load %struct.vme_master_resource*, %struct.vme_master_resource** %4, align 8
  %105 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  store i64 %103, i64* %106, align 8
  %107 = load i32, i32* @IORESOURCE_MEM, align 4
  %108 = load %struct.vme_master_resource*, %struct.vme_master_resource** %4, align 8
  %109 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 3
  store i32 %107, i32* %110, align 8
  %111 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %112 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.vme_master_resource*, %struct.vme_master_resource** %4, align 8
  %115 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %114, i32 0, i32 1
  %116 = load i64, i64* %5, align 8
  %117 = load i32, i32* @PCIBIOS_MIN_MEM, align 4
  %118 = call i32 @pci_bus_alloc_resource(i32 %113, %struct.TYPE_4__* %115, i64 %116, i32 65536, i32 %117, i32 0, i32* null, i32* null)
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %134

121:                                              ; preds = %87
  %122 = load %struct.vme_bridge*, %struct.vme_bridge** %9, align 8
  %123 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.vme_master_resource*, %struct.vme_master_resource** %4, align 8
  %126 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i64, i64* %5, align 8
  %129 = load %struct.vme_master_resource*, %struct.vme_master_resource** %4, align 8
  %130 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = call i32 (i32, i8*, ...) @dev_err(i32 %124, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i32 %127, i64 %128, i64 %132)
  br label %159

134:                                              ; preds = %87
  %135 = load %struct.vme_master_resource*, %struct.vme_master_resource** %4, align 8
  %136 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %5, align 8
  %140 = call i32* @ioremap_nocache(i64 %138, i64 %139)
  %141 = load %struct.vme_master_resource*, %struct.vme_master_resource** %4, align 8
  %142 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %141, i32 0, i32 2
  store i32* %140, i32** %142, align 8
  %143 = load %struct.vme_master_resource*, %struct.vme_master_resource** %4, align 8
  %144 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %154, label %147

147:                                              ; preds = %134
  %148 = load %struct.vme_bridge*, %struct.vme_bridge** %9, align 8
  %149 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = call i32 (i32, i8*, ...) @dev_err(i32 %150, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %152 = load i32, i32* @ENOMEM, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %7, align 4
  br label %155

154:                                              ; preds = %134
  store i32 0, i32* %3, align 4
  br label %170

155:                                              ; preds = %147
  %156 = load %struct.vme_master_resource*, %struct.vme_master_resource** %4, align 8
  %157 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %156, i32 0, i32 1
  %158 = call i32 @release_resource(%struct.TYPE_4__* %157)
  br label %159

159:                                              ; preds = %155, %121
  %160 = load %struct.vme_master_resource*, %struct.vme_master_resource** %4, align 8
  %161 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @kfree(i64 %163)
  %165 = load %struct.vme_master_resource*, %struct.vme_master_resource** %4, align 8
  %166 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %165, i32 0, i32 1
  %167 = call i32 @memset(%struct.TYPE_4__* %166, i32 0, i32 32)
  br label %168

168:                                              ; preds = %159, %83
  %169 = load i32, i32* %7, align 4
  store i32 %169, i32* %3, align 4
  br label %170

170:                                              ; preds = %168, %154, %42, %17
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i32 @release_resource(%struct.TYPE_4__*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @kmalloc(i64, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

declare dso_local i32 @pci_bus_alloc_resource(i32, %struct.TYPE_4__*, i64, i32, i32, i32, i32*, i32*) #1

declare dso_local i32* @ioremap_nocache(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
