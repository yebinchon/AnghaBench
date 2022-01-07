; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_cpqphp_ctrl.c_do_pre_bridge_resource_split.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_cpqphp_ctrl.c_do_pre_bridge_resource_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_resource = type { i64, i64, %struct.pci_resource* }

@.str = private unnamed_addr constant [30 x i8] c"do_pre_bridge_resource_split\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pci_resource* (%struct.pci_resource**, %struct.pci_resource**, i32)* @do_pre_bridge_resource_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pci_resource* @do_pre_bridge_resource_split(%struct.pci_resource** %0, %struct.pci_resource** %1, i32 %2) #0 {
  %4 = alloca %struct.pci_resource*, align 8
  %5 = alloca %struct.pci_resource**, align 8
  %6 = alloca %struct.pci_resource**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_resource*, align 8
  %9 = alloca %struct.pci_resource*, align 8
  %10 = alloca %struct.pci_resource*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pci_resource** %0, %struct.pci_resource*** %5, align 8
  store %struct.pci_resource** %1, %struct.pci_resource*** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.pci_resource* null, %struct.pci_resource** %8, align 8
  %13 = call i32 @dbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.pci_resource**, %struct.pci_resource*** %5, align 8
  %15 = load %struct.pci_resource*, %struct.pci_resource** %14, align 8
  %16 = icmp ne %struct.pci_resource* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.pci_resource**, %struct.pci_resource*** %6, align 8
  %19 = load %struct.pci_resource*, %struct.pci_resource** %18, align 8
  %20 = icmp ne %struct.pci_resource* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17, %3
  store %struct.pci_resource* null, %struct.pci_resource** %4, align 8
  br label %148

22:                                               ; preds = %17
  %23 = load %struct.pci_resource**, %struct.pci_resource*** %5, align 8
  %24 = call i32 @cpqhp_resource_sort_and_combine(%struct.pci_resource** %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store %struct.pci_resource* null, %struct.pci_resource** %4, align 8
  br label %148

28:                                               ; preds = %22
  %29 = load %struct.pci_resource**, %struct.pci_resource*** %5, align 8
  %30 = load %struct.pci_resource*, %struct.pci_resource** %29, align 8
  %31 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.pci_resource**, %struct.pci_resource*** %6, align 8
  %34 = load %struct.pci_resource*, %struct.pci_resource** %33, align 8
  %35 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %32, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  store %struct.pci_resource* null, %struct.pci_resource** %4, align 8
  br label %148

39:                                               ; preds = %28
  %40 = load %struct.pci_resource**, %struct.pci_resource*** %5, align 8
  %41 = load %struct.pci_resource*, %struct.pci_resource** %40, align 8
  %42 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.pci_resource**, %struct.pci_resource*** %6, align 8
  %45 = load %struct.pci_resource*, %struct.pci_resource** %44, align 8
  %46 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %43, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  store %struct.pci_resource* null, %struct.pci_resource** %4, align 8
  br label %148

50:                                               ; preds = %39
  %51 = load %struct.pci_resource**, %struct.pci_resource*** %5, align 8
  %52 = load %struct.pci_resource*, %struct.pci_resource** %51, align 8
  store %struct.pci_resource* %52, %struct.pci_resource** %9, align 8
  %53 = load %struct.pci_resource*, %struct.pci_resource** %9, align 8
  %54 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = and i64 %55, %58
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %107

61:                                               ; preds = %50
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call %struct.pci_resource* @kmalloc(i32 24, i32 %62)
  store %struct.pci_resource* %63, %struct.pci_resource** %10, align 8
  %64 = load %struct.pci_resource*, %struct.pci_resource** %10, align 8
  %65 = icmp ne %struct.pci_resource* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  store %struct.pci_resource* null, %struct.pci_resource** %4, align 8
  br label %148

67:                                               ; preds = %61
  %68 = load %struct.pci_resource*, %struct.pci_resource** %9, align 8
  %69 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = or i64 %70, %73
  %75 = add nsw i64 %74, 1
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = sub nsw i64 %75, %77
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %12, align 4
  %80 = load %struct.pci_resource*, %struct.pci_resource** %9, align 8
  %81 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.pci_resource*, %struct.pci_resource** %10, align 8
  %84 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = load %struct.pci_resource*, %struct.pci_resource** %10, align 8
  %88 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = load %struct.pci_resource*, %struct.pci_resource** %9, align 8
  %92 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = sub nsw i64 %93, %90
  store i64 %94, i64* %92, align 8
  %95 = load %struct.pci_resource*, %struct.pci_resource** %10, align 8
  %96 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.pci_resource*, %struct.pci_resource** %9, align 8
  %99 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, %97
  store i64 %101, i64* %99, align 8
  %102 = load %struct.pci_resource*, %struct.pci_resource** %10, align 8
  %103 = load %struct.pci_resource**, %struct.pci_resource*** %5, align 8
  store %struct.pci_resource* %102, %struct.pci_resource** %103, align 8
  %104 = load %struct.pci_resource*, %struct.pci_resource** %9, align 8
  %105 = load %struct.pci_resource*, %struct.pci_resource** %10, align 8
  %106 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %105, i32 0, i32 2
  store %struct.pci_resource* %104, %struct.pci_resource** %106, align 8
  br label %107

107:                                              ; preds = %67, %50
  %108 = load %struct.pci_resource*, %struct.pci_resource** %9, align 8
  %109 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = icmp slt i64 %110, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  store %struct.pci_resource* null, %struct.pci_resource** %4, align 8
  br label %148

115:                                              ; preds = %107
  %116 = load %struct.pci_resource**, %struct.pci_resource*** %5, align 8
  %117 = load %struct.pci_resource*, %struct.pci_resource** %116, align 8
  %118 = load %struct.pci_resource*, %struct.pci_resource** %9, align 8
  %119 = icmp eq %struct.pci_resource* %117, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %115
  %121 = load %struct.pci_resource*, %struct.pci_resource** %9, align 8
  %122 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %121, i32 0, i32 2
  %123 = load %struct.pci_resource*, %struct.pci_resource** %122, align 8
  %124 = load %struct.pci_resource**, %struct.pci_resource*** %5, align 8
  store %struct.pci_resource* %123, %struct.pci_resource** %124, align 8
  br label %144

125:                                              ; preds = %115
  %126 = load %struct.pci_resource**, %struct.pci_resource*** %5, align 8
  %127 = load %struct.pci_resource*, %struct.pci_resource** %126, align 8
  store %struct.pci_resource* %127, %struct.pci_resource** %8, align 8
  br label %128

128:                                              ; preds = %134, %125
  %129 = load %struct.pci_resource*, %struct.pci_resource** %8, align 8
  %130 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %129, i32 0, i32 2
  %131 = load %struct.pci_resource*, %struct.pci_resource** %130, align 8
  %132 = load %struct.pci_resource*, %struct.pci_resource** %9, align 8
  %133 = icmp ne %struct.pci_resource* %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %128
  %135 = load %struct.pci_resource*, %struct.pci_resource** %8, align 8
  %136 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %135, i32 0, i32 2
  %137 = load %struct.pci_resource*, %struct.pci_resource** %136, align 8
  store %struct.pci_resource* %137, %struct.pci_resource** %8, align 8
  br label %128

138:                                              ; preds = %128
  %139 = load %struct.pci_resource*, %struct.pci_resource** %9, align 8
  %140 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %139, i32 0, i32 2
  %141 = load %struct.pci_resource*, %struct.pci_resource** %140, align 8
  %142 = load %struct.pci_resource*, %struct.pci_resource** %8, align 8
  %143 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %142, i32 0, i32 2
  store %struct.pci_resource* %141, %struct.pci_resource** %143, align 8
  br label %144

144:                                              ; preds = %138, %120
  %145 = load %struct.pci_resource*, %struct.pci_resource** %9, align 8
  %146 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %145, i32 0, i32 2
  store %struct.pci_resource* null, %struct.pci_resource** %146, align 8
  %147 = load %struct.pci_resource*, %struct.pci_resource** %9, align 8
  store %struct.pci_resource* %147, %struct.pci_resource** %4, align 8
  br label %148

148:                                              ; preds = %144, %114, %66, %49, %38, %27, %21
  %149 = load %struct.pci_resource*, %struct.pci_resource** %4, align 8
  ret %struct.pci_resource* %149
}

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @cpqhp_resource_sort_and_combine(%struct.pci_resource**) #1

declare dso_local %struct.pci_resource* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
