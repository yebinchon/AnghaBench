; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_cpqphp_ctrl.c_get_io_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_cpqphp_ctrl.c_get_io_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_resource = type { i32, i32, %struct.pci_resource* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pci_resource* (%struct.pci_resource**, i32)* @get_io_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pci_resource* @get_io_resource(%struct.pci_resource** %0, i32 %1) #0 {
  %3 = alloca %struct.pci_resource*, align 8
  %4 = alloca %struct.pci_resource**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_resource*, align 8
  %7 = alloca %struct.pci_resource*, align 8
  %8 = alloca %struct.pci_resource*, align 8
  %9 = alloca i32, align 4
  store %struct.pci_resource** %0, %struct.pci_resource*** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.pci_resource**, %struct.pci_resource*** %4, align 8
  %11 = load %struct.pci_resource*, %struct.pci_resource** %10, align 8
  %12 = icmp ne %struct.pci_resource* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.pci_resource* null, %struct.pci_resource** %3, align 8
  br label %186

14:                                               ; preds = %2
  %15 = load %struct.pci_resource**, %struct.pci_resource*** %4, align 8
  %16 = call i64 @cpqhp_resource_sort_and_combine(%struct.pci_resource** %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store %struct.pci_resource* null, %struct.pci_resource** %3, align 8
  br label %186

19:                                               ; preds = %14
  %20 = load %struct.pci_resource**, %struct.pci_resource*** %4, align 8
  %21 = call i64 @sort_by_size(%struct.pci_resource** %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store %struct.pci_resource* null, %struct.pci_resource** %3, align 8
  br label %186

24:                                               ; preds = %19
  %25 = load %struct.pci_resource**, %struct.pci_resource*** %4, align 8
  %26 = load %struct.pci_resource*, %struct.pci_resource** %25, align 8
  store %struct.pci_resource* %26, %struct.pci_resource** %7, align 8
  br label %27

27:                                               ; preds = %180, %24
  %28 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %29 = icmp ne %struct.pci_resource* %28, null
  br i1 %29, label %30, label %184

30:                                               ; preds = %27
  %31 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %32 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %180

37:                                               ; preds = %30
  %38 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %39 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %5, align 4
  %42 = sub nsw i32 %41, 1
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %102

45:                                               ; preds = %37
  %46 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %47 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %5, align 4
  %50 = sub nsw i32 %49, 1
  %51 = or i32 %48, %50
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  %53 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %54 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %58 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %56, %59
  %61 = sub nsw i32 %55, %60
  %62 = load i32, i32* %5, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %45
  br label %180

65:                                               ; preds = %45
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call %struct.pci_resource* @kmalloc(i32 16, i32 %66)
  store %struct.pci_resource* %67, %struct.pci_resource** %8, align 8
  %68 = load %struct.pci_resource*, %struct.pci_resource** %8, align 8
  %69 = icmp ne %struct.pci_resource* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  store %struct.pci_resource* null, %struct.pci_resource** %3, align 8
  br label %186

71:                                               ; preds = %65
  %72 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %73 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.pci_resource*, %struct.pci_resource** %8, align 8
  %76 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %79 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %77, %80
  %82 = load %struct.pci_resource*, %struct.pci_resource** %8, align 8
  %83 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %86 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.pci_resource*, %struct.pci_resource** %8, align 8
  %88 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %91 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sub nsw i32 %92, %89
  store i32 %93, i32* %91, align 8
  %94 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %95 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %94, i32 0, i32 2
  %96 = load %struct.pci_resource*, %struct.pci_resource** %95, align 8
  %97 = load %struct.pci_resource*, %struct.pci_resource** %8, align 8
  %98 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %97, i32 0, i32 2
  store %struct.pci_resource* %96, %struct.pci_resource** %98, align 8
  %99 = load %struct.pci_resource*, %struct.pci_resource** %8, align 8
  %100 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %101 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %100, i32 0, i32 2
  store %struct.pci_resource* %99, %struct.pci_resource** %101, align 8
  br label %102

102:                                              ; preds = %71, %37
  %103 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %104 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %5, align 4
  %107 = icmp sgt i32 %105, %106
  br i1 %107, label %108, label %140

108:                                              ; preds = %102
  %109 = load i32, i32* @GFP_KERNEL, align 4
  %110 = call %struct.pci_resource* @kmalloc(i32 16, i32 %109)
  store %struct.pci_resource* %110, %struct.pci_resource** %8, align 8
  %111 = load %struct.pci_resource*, %struct.pci_resource** %8, align 8
  %112 = icmp ne %struct.pci_resource* %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %108
  store %struct.pci_resource* null, %struct.pci_resource** %3, align 8
  br label %186

114:                                              ; preds = %108
  %115 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %116 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %117, %118
  %120 = load %struct.pci_resource*, %struct.pci_resource** %8, align 8
  %121 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %123 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %5, align 4
  %126 = sub nsw i32 %124, %125
  %127 = load %struct.pci_resource*, %struct.pci_resource** %8, align 8
  %128 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  %129 = load i32, i32* %5, align 4
  %130 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %131 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  %132 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %133 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %132, i32 0, i32 2
  %134 = load %struct.pci_resource*, %struct.pci_resource** %133, align 8
  %135 = load %struct.pci_resource*, %struct.pci_resource** %8, align 8
  %136 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %135, i32 0, i32 2
  store %struct.pci_resource* %134, %struct.pci_resource** %136, align 8
  %137 = load %struct.pci_resource*, %struct.pci_resource** %8, align 8
  %138 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %139 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %138, i32 0, i32 2
  store %struct.pci_resource* %137, %struct.pci_resource** %139, align 8
  br label %140

140:                                              ; preds = %114, %102
  %141 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %142 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = and i64 %144, 768
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %140
  br label %180

148:                                              ; preds = %140
  %149 = load %struct.pci_resource**, %struct.pci_resource*** %4, align 8
  %150 = load %struct.pci_resource*, %struct.pci_resource** %149, align 8
  %151 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %152 = icmp eq %struct.pci_resource* %150, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %148
  %154 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %155 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %154, i32 0, i32 2
  %156 = load %struct.pci_resource*, %struct.pci_resource** %155, align 8
  %157 = load %struct.pci_resource**, %struct.pci_resource*** %4, align 8
  store %struct.pci_resource* %156, %struct.pci_resource** %157, align 8
  br label %177

158:                                              ; preds = %148
  %159 = load %struct.pci_resource**, %struct.pci_resource*** %4, align 8
  %160 = load %struct.pci_resource*, %struct.pci_resource** %159, align 8
  store %struct.pci_resource* %160, %struct.pci_resource** %6, align 8
  br label %161

161:                                              ; preds = %167, %158
  %162 = load %struct.pci_resource*, %struct.pci_resource** %6, align 8
  %163 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %162, i32 0, i32 2
  %164 = load %struct.pci_resource*, %struct.pci_resource** %163, align 8
  %165 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %166 = icmp ne %struct.pci_resource* %164, %165
  br i1 %166, label %167, label %171

167:                                              ; preds = %161
  %168 = load %struct.pci_resource*, %struct.pci_resource** %6, align 8
  %169 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %168, i32 0, i32 2
  %170 = load %struct.pci_resource*, %struct.pci_resource** %169, align 8
  store %struct.pci_resource* %170, %struct.pci_resource** %6, align 8
  br label %161

171:                                              ; preds = %161
  %172 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %173 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %172, i32 0, i32 2
  %174 = load %struct.pci_resource*, %struct.pci_resource** %173, align 8
  %175 = load %struct.pci_resource*, %struct.pci_resource** %6, align 8
  %176 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %175, i32 0, i32 2
  store %struct.pci_resource* %174, %struct.pci_resource** %176, align 8
  br label %177

177:                                              ; preds = %171, %153
  %178 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %179 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %178, i32 0, i32 2
  store %struct.pci_resource* null, %struct.pci_resource** %179, align 8
  br label %184

180:                                              ; preds = %147, %64, %36
  %181 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %182 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %181, i32 0, i32 2
  %183 = load %struct.pci_resource*, %struct.pci_resource** %182, align 8
  store %struct.pci_resource* %183, %struct.pci_resource** %7, align 8
  br label %27

184:                                              ; preds = %177, %27
  %185 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  store %struct.pci_resource* %185, %struct.pci_resource** %3, align 8
  br label %186

186:                                              ; preds = %184, %113, %70, %23, %18, %13
  %187 = load %struct.pci_resource*, %struct.pci_resource** %3, align 8
  ret %struct.pci_resource* %187
}

declare dso_local i64 @cpqhp_resource_sort_and_combine(%struct.pci_resource**) #1

declare dso_local i64 @sort_by_size(%struct.pci_resource**) #1

declare dso_local %struct.pci_resource* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
