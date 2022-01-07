; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pnv_php.c_pnv_php_add_devtree.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pnv_php.c_pnv_php_add_devtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnv_php_slot = type { %struct.TYPE_4__*, i32, i8*, i8*, i32 }
%struct.TYPE_4__ = type { i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Error %d getting FDT blob\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Cannot unflatten FDT\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Error %d populating changeset\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Error %d applying changeset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnv_php_slot*)* @pnv_php_add_devtree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnv_php_add_devtree(%struct.pnv_php_slot* %0) #0 {
  %2 = alloca %struct.pnv_php_slot*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.pnv_php_slot* %0, %struct.pnv_php_slot** %2, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i8* @kzalloc(i32 65536, i32 %7)
  store i8* %8, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %6, align 4
  br label %126

14:                                               ; preds = %1
  %15 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %2, align 8
  %16 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @pnv_pci_get_device_tree(i32 %19, i8* %20, i32 65536)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %14
  %25 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %2, align 8
  %26 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 (i32, i8*, ...) @pci_warn(i32 %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %123

30:                                               ; preds = %14
  %31 = load i8*, i8** %4, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @fdt_totalsize(i8* %32)
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @kmemdup(i8* %31, i32 %33, i32 %34)
  store i8* %35, i8** %3, align 8
  %36 = load i8*, i8** %3, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %30
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %123

41:                                               ; preds = %30
  %42 = load i8*, i8** %3, align 8
  %43 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %2, align 8
  %44 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = call i8* @of_fdt_unflatten_tree(i8* %42, %struct.TYPE_4__* %45, i32* null)
  store i8* %46, i8** %5, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %56, label %49

49:                                               ; preds = %41
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  %52 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %2, align 8
  %53 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (i32, i8*, ...) @pci_warn(i32 %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %120

56:                                               ; preds = %41
  %57 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %2, align 8
  %58 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %57, i32 0, i32 1
  %59 = call i32 @of_changeset_init(i32* %58)
  %60 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %2, align 8
  %61 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = call i32 @pnv_php_reverse_nodes(%struct.TYPE_4__* %62)
  %64 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %2, align 8
  %65 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %64, i32 0, i32 1
  %66 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %2, align 8
  %67 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = call i32 @pnv_php_populate_changeset(i32* %65, %struct.TYPE_4__* %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %56
  %73 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %2, align 8
  %74 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = call i32 @pnv_php_reverse_nodes(%struct.TYPE_4__* %75)
  %77 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %2, align 8
  %78 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 (i32, i8*, ...) @pci_warn(i32 %79, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  br label %113

82:                                               ; preds = %56
  %83 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %2, align 8
  %84 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i32* null, i32** %86, align 8
  %87 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %2, align 8
  %88 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %87, i32 0, i32 1
  %89 = call i32 @of_changeset_apply(i32* %88)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %82
  %93 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %2, align 8
  %94 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = call i32 (i32, i8*, ...) @pci_warn(i32 %95, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %96)
  br label %109

98:                                               ; preds = %82
  %99 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %2, align 8
  %100 = call i32 @pnv_php_add_pdns(%struct.pnv_php_slot* %99)
  %101 = load i8*, i8** %3, align 8
  %102 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %2, align 8
  %103 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %102, i32 0, i32 3
  store i8* %101, i8** %103, align 8
  %104 = load i8*, i8** %5, align 8
  %105 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %2, align 8
  %106 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %105, i32 0, i32 2
  store i8* %104, i8** %106, align 8
  %107 = load i8*, i8** %4, align 8
  %108 = call i32 @kfree(i8* %107)
  br label %126

109:                                              ; preds = %92
  %110 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %2, align 8
  %111 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %110, i32 0, i32 1
  %112 = call i32 @of_changeset_destroy(i32* %111)
  br label %113

113:                                              ; preds = %109, %72
  %114 = load i8*, i8** %5, align 8
  %115 = call i32 @kfree(i8* %114)
  %116 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %2, align 8
  %117 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %116, i32 0, i32 0
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  store i32* null, i32** %119, align 8
  br label %120

120:                                              ; preds = %113, %49
  %121 = load i8*, i8** %3, align 8
  %122 = call i32 @kfree(i8* %121)
  br label %123

123:                                              ; preds = %120, %38, %24
  %124 = load i8*, i8** %4, align 8
  %125 = call i32 @kfree(i8* %124)
  br label %126

126:                                              ; preds = %123, %98, %11
  %127 = load i32, i32* %6, align 4
  ret i32 %127
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @pnv_pci_get_device_tree(i32, i8*, i32) #1

declare dso_local i32 @pci_warn(i32, i8*, ...) #1

declare dso_local i8* @kmemdup(i8*, i32, i32) #1

declare dso_local i32 @fdt_totalsize(i8*) #1

declare dso_local i8* @of_fdt_unflatten_tree(i8*, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @of_changeset_init(i32*) #1

declare dso_local i32 @pnv_php_reverse_nodes(%struct.TYPE_4__*) #1

declare dso_local i32 @pnv_php_populate_changeset(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @of_changeset_apply(i32*) #1

declare dso_local i32 @pnv_php_add_pdns(%struct.pnv_php_slot*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @of_changeset_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
