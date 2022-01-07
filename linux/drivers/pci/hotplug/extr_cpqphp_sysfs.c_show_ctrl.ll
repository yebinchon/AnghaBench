; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_cpqphp_sysfs.c_show_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_cpqphp_sysfs.c_show_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { %struct.pci_resource*, %struct.pci_resource*, %struct.pci_resource*, %struct.pci_resource* }
%struct.pci_resource = type { i32, i32, %struct.pci_resource* }

@.str = private unnamed_addr constant [24 x i8] c"Free resources: memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"start = %8.8x, length = %8.8x\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Free resources: prefetchable memory\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Free resources: IO\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Free resources: bus numbers\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.controller*, i8*)* @show_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_ctrl(%struct.controller* %0, i8* %1) #0 {
  %3 = alloca %struct.controller*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_resource*, align 8
  store %struct.controller* %0, %struct.controller** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 (i8*, i8*, ...) @sprintf(i8* %9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %11 = load i8*, i8** %5, align 8
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds i8, i8* %11, i64 %12
  store i8* %13, i8** %5, align 8
  store i32 11, i32* %6, align 4
  %14 = load %struct.controller*, %struct.controller** %3, align 8
  %15 = getelementptr inbounds %struct.controller, %struct.controller* %14, i32 0, i32 3
  %16 = load %struct.pci_resource*, %struct.pci_resource** %15, align 8
  store %struct.pci_resource* %16, %struct.pci_resource** %7, align 8
  br label %17

17:                                               ; preds = %26, %2
  %18 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %19 = icmp ne %struct.pci_resource* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %6, align 4
  %23 = icmp ne i32 %21, 0
  br label %24

24:                                               ; preds = %20, %17
  %25 = phi i1 [ false, %17 ], [ %23, %20 ]
  br i1 %25, label %26, label %41

26:                                               ; preds = %24
  %27 = load i8*, i8** %5, align 8
  %28 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %29 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %32 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i8*, i8*, ...) @sprintf(i8* %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %33)
  %35 = load i8*, i8** %5, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8* %37, i8** %5, align 8
  %38 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %39 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %38, i32 0, i32 2
  %40 = load %struct.pci_resource*, %struct.pci_resource** %39, align 8
  store %struct.pci_resource* %40, %struct.pci_resource** %7, align 8
  br label %17

41:                                               ; preds = %24
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 (i8*, i8*, ...) @sprintf(i8* %42, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i8*, i8** %5, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8* %46, i8** %5, align 8
  store i32 11, i32* %6, align 4
  %47 = load %struct.controller*, %struct.controller** %3, align 8
  %48 = getelementptr inbounds %struct.controller, %struct.controller* %47, i32 0, i32 2
  %49 = load %struct.pci_resource*, %struct.pci_resource** %48, align 8
  store %struct.pci_resource* %49, %struct.pci_resource** %7, align 8
  br label %50

50:                                               ; preds = %59, %41
  %51 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %52 = icmp ne %struct.pci_resource* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %6, align 4
  %56 = icmp ne i32 %54, 0
  br label %57

57:                                               ; preds = %53, %50
  %58 = phi i1 [ false, %50 ], [ %56, %53 ]
  br i1 %58, label %59, label %74

59:                                               ; preds = %57
  %60 = load i8*, i8** %5, align 8
  %61 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %62 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %65 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i8*, i8*, ...) @sprintf(i8* %60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %66)
  %68 = load i8*, i8** %5, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  store i8* %70, i8** %5, align 8
  %71 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %72 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %71, i32 0, i32 2
  %73 = load %struct.pci_resource*, %struct.pci_resource** %72, align 8
  store %struct.pci_resource* %73, %struct.pci_resource** %7, align 8
  br label %50

74:                                               ; preds = %57
  %75 = load i8*, i8** %5, align 8
  %76 = call i32 (i8*, i8*, ...) @sprintf(i8* %75, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %77 = load i8*, i8** %5, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  store i8* %79, i8** %5, align 8
  store i32 11, i32* %6, align 4
  %80 = load %struct.controller*, %struct.controller** %3, align 8
  %81 = getelementptr inbounds %struct.controller, %struct.controller* %80, i32 0, i32 1
  %82 = load %struct.pci_resource*, %struct.pci_resource** %81, align 8
  store %struct.pci_resource* %82, %struct.pci_resource** %7, align 8
  br label %83

83:                                               ; preds = %92, %74
  %84 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %85 = icmp ne %struct.pci_resource* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %6, align 4
  %89 = icmp ne i32 %87, 0
  br label %90

90:                                               ; preds = %86, %83
  %91 = phi i1 [ false, %83 ], [ %89, %86 ]
  br i1 %91, label %92, label %107

92:                                               ; preds = %90
  %93 = load i8*, i8** %5, align 8
  %94 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %95 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %98 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i8*, i8*, ...) @sprintf(i8* %93, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %96, i32 %99)
  %101 = load i8*, i8** %5, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  store i8* %103, i8** %5, align 8
  %104 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %105 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %104, i32 0, i32 2
  %106 = load %struct.pci_resource*, %struct.pci_resource** %105, align 8
  store %struct.pci_resource* %106, %struct.pci_resource** %7, align 8
  br label %83

107:                                              ; preds = %90
  %108 = load i8*, i8** %5, align 8
  %109 = call i32 (i8*, i8*, ...) @sprintf(i8* %108, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %110 = load i8*, i8** %5, align 8
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i8, i8* %110, i64 %111
  store i8* %112, i8** %5, align 8
  store i32 11, i32* %6, align 4
  %113 = load %struct.controller*, %struct.controller** %3, align 8
  %114 = getelementptr inbounds %struct.controller, %struct.controller* %113, i32 0, i32 0
  %115 = load %struct.pci_resource*, %struct.pci_resource** %114, align 8
  store %struct.pci_resource* %115, %struct.pci_resource** %7, align 8
  br label %116

116:                                              ; preds = %125, %107
  %117 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %118 = icmp ne %struct.pci_resource* %117, null
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %6, align 4
  %122 = icmp ne i32 %120, 0
  br label %123

123:                                              ; preds = %119, %116
  %124 = phi i1 [ false, %116 ], [ %122, %119 ]
  br i1 %124, label %125, label %140

125:                                              ; preds = %123
  %126 = load i8*, i8** %5, align 8
  %127 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %128 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %131 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (i8*, i8*, ...) @sprintf(i8* %126, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %129, i32 %132)
  %134 = load i8*, i8** %5, align 8
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i8, i8* %134, i64 %135
  store i8* %136, i8** %5, align 8
  %137 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %138 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %137, i32 0, i32 2
  %139 = load %struct.pci_resource*, %struct.pci_resource** %138, align 8
  store %struct.pci_resource* %139, %struct.pci_resource** %7, align 8
  br label %116

140:                                              ; preds = %123
  %141 = load i8*, i8** %5, align 8
  %142 = load i8*, i8** %4, align 8
  %143 = ptrtoint i8* %141 to i64
  %144 = ptrtoint i8* %142 to i64
  %145 = sub i64 %143, %144
  %146 = trunc i64 %145 to i32
  ret i32 %146
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
