; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_cpqphp_sysfs.c_show_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_cpqphp_sysfs.c_show_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { %struct.slot* }
%struct.slot = type { %struct.slot*, i32, i32 }
%struct.pci_resource = type { i32, i32, %struct.pci_resource* }
%struct.pci_func = type { %struct.pci_resource*, %struct.pci_resource*, %struct.pci_resource*, %struct.pci_resource* }

@.str = private unnamed_addr constant [28 x i8] c"assigned resources: memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"start = %8.8x, length = %8.8x\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"assigned resources: prefetchable memory\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"assigned resources: IO\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"assigned resources: bus numbers\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.controller*, i8*)* @show_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_dev(%struct.controller* %0, i8* %1) #0 {
  %3 = alloca %struct.controller*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_resource*, align 8
  %8 = alloca %struct.pci_func*, align 8
  %9 = alloca %struct.slot*, align 8
  store %struct.controller* %0, %struct.controller** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %5, align 8
  %11 = load %struct.controller*, %struct.controller** %3, align 8
  %12 = getelementptr inbounds %struct.controller, %struct.controller* %11, i32 0, i32 0
  %13 = load %struct.slot*, %struct.slot** %12, align 8
  store %struct.slot* %13, %struct.slot** %9, align 8
  br label %14

14:                                               ; preds = %160, %2
  %15 = load %struct.slot*, %struct.slot** %9, align 8
  %16 = icmp ne %struct.slot* %15, null
  br i1 %16, label %17, label %164

17:                                               ; preds = %14
  %18 = load %struct.slot*, %struct.slot** %9, align 8
  %19 = getelementptr inbounds %struct.slot, %struct.slot* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.slot*, %struct.slot** %9, align 8
  %22 = getelementptr inbounds %struct.slot, %struct.slot* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.pci_func* @cpqhp_slot_find(i32 %20, i32 %23, i32 0)
  store %struct.pci_func* %24, %struct.pci_func** %8, align 8
  %25 = load %struct.pci_func*, %struct.pci_func** %8, align 8
  %26 = icmp ne %struct.pci_func* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %17
  br label %164

28:                                               ; preds = %17
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 (i8*, i8*, ...) @sprintf(i8* %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %31 = load i8*, i8** %5, align 8
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  store i8* %33, i8** %5, align 8
  store i32 11, i32* %6, align 4
  %34 = load %struct.pci_func*, %struct.pci_func** %8, align 8
  %35 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %34, i32 0, i32 3
  %36 = load %struct.pci_resource*, %struct.pci_resource** %35, align 8
  store %struct.pci_resource* %36, %struct.pci_resource** %7, align 8
  br label %37

37:                                               ; preds = %46, %28
  %38 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %39 = icmp ne %struct.pci_resource* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %6, align 4
  %43 = icmp ne i32 %41, 0
  br label %44

44:                                               ; preds = %40, %37
  %45 = phi i1 [ false, %37 ], [ %43, %40 ]
  br i1 %45, label %46, label %61

46:                                               ; preds = %44
  %47 = load i8*, i8** %5, align 8
  %48 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %49 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %52 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i8*, i8*, ...) @sprintf(i8* %47, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %53)
  %55 = load i8*, i8** %5, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8* %57, i8** %5, align 8
  %58 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %59 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %58, i32 0, i32 2
  %60 = load %struct.pci_resource*, %struct.pci_resource** %59, align 8
  store %struct.pci_resource* %60, %struct.pci_resource** %7, align 8
  br label %37

61:                                               ; preds = %44
  %62 = load i8*, i8** %5, align 8
  %63 = call i32 (i8*, i8*, ...) @sprintf(i8* %62, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i8*, i8** %5, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8* %66, i8** %5, align 8
  store i32 11, i32* %6, align 4
  %67 = load %struct.pci_func*, %struct.pci_func** %8, align 8
  %68 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %67, i32 0, i32 2
  %69 = load %struct.pci_resource*, %struct.pci_resource** %68, align 8
  store %struct.pci_resource* %69, %struct.pci_resource** %7, align 8
  br label %70

70:                                               ; preds = %79, %61
  %71 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %72 = icmp ne %struct.pci_resource* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %6, align 4
  %76 = icmp ne i32 %74, 0
  br label %77

77:                                               ; preds = %73, %70
  %78 = phi i1 [ false, %70 ], [ %76, %73 ]
  br i1 %78, label %79, label %94

79:                                               ; preds = %77
  %80 = load i8*, i8** %5, align 8
  %81 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %82 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %85 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i8*, i8*, ...) @sprintf(i8* %80, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %83, i32 %86)
  %88 = load i8*, i8** %5, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8* %90, i8** %5, align 8
  %91 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %92 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %91, i32 0, i32 2
  %93 = load %struct.pci_resource*, %struct.pci_resource** %92, align 8
  store %struct.pci_resource* %93, %struct.pci_resource** %7, align 8
  br label %70

94:                                               ; preds = %77
  %95 = load i8*, i8** %5, align 8
  %96 = call i32 (i8*, i8*, ...) @sprintf(i8* %95, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %97 = load i8*, i8** %5, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8* %99, i8** %5, align 8
  store i32 11, i32* %6, align 4
  %100 = load %struct.pci_func*, %struct.pci_func** %8, align 8
  %101 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %100, i32 0, i32 1
  %102 = load %struct.pci_resource*, %struct.pci_resource** %101, align 8
  store %struct.pci_resource* %102, %struct.pci_resource** %7, align 8
  br label %103

103:                                              ; preds = %112, %94
  %104 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %105 = icmp ne %struct.pci_resource* %104, null
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %6, align 4
  %109 = icmp ne i32 %107, 0
  br label %110

110:                                              ; preds = %106, %103
  %111 = phi i1 [ false, %103 ], [ %109, %106 ]
  br i1 %111, label %112, label %127

112:                                              ; preds = %110
  %113 = load i8*, i8** %5, align 8
  %114 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %115 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %118 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (i8*, i8*, ...) @sprintf(i8* %113, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %116, i32 %119)
  %121 = load i8*, i8** %5, align 8
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i8, i8* %121, i64 %122
  store i8* %123, i8** %5, align 8
  %124 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %125 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %124, i32 0, i32 2
  %126 = load %struct.pci_resource*, %struct.pci_resource** %125, align 8
  store %struct.pci_resource* %126, %struct.pci_resource** %7, align 8
  br label %103

127:                                              ; preds = %110
  %128 = load i8*, i8** %5, align 8
  %129 = call i32 (i8*, i8*, ...) @sprintf(i8* %128, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %130 = load i8*, i8** %5, align 8
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  store i8* %132, i8** %5, align 8
  store i32 11, i32* %6, align 4
  %133 = load %struct.pci_func*, %struct.pci_func** %8, align 8
  %134 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %133, i32 0, i32 0
  %135 = load %struct.pci_resource*, %struct.pci_resource** %134, align 8
  store %struct.pci_resource* %135, %struct.pci_resource** %7, align 8
  br label %136

136:                                              ; preds = %145, %127
  %137 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %138 = icmp ne %struct.pci_resource* %137, null
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = load i32, i32* %6, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %6, align 4
  %142 = icmp ne i32 %140, 0
  br label %143

143:                                              ; preds = %139, %136
  %144 = phi i1 [ false, %136 ], [ %142, %139 ]
  br i1 %144, label %145, label %160

145:                                              ; preds = %143
  %146 = load i8*, i8** %5, align 8
  %147 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %148 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %151 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 (i8*, i8*, ...) @sprintf(i8* %146, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %149, i32 %152)
  %154 = load i8*, i8** %5, align 8
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds i8, i8* %154, i64 %155
  store i8* %156, i8** %5, align 8
  %157 = load %struct.pci_resource*, %struct.pci_resource** %7, align 8
  %158 = getelementptr inbounds %struct.pci_resource, %struct.pci_resource* %157, i32 0, i32 2
  %159 = load %struct.pci_resource*, %struct.pci_resource** %158, align 8
  store %struct.pci_resource* %159, %struct.pci_resource** %7, align 8
  br label %136

160:                                              ; preds = %143
  %161 = load %struct.slot*, %struct.slot** %9, align 8
  %162 = getelementptr inbounds %struct.slot, %struct.slot* %161, i32 0, i32 0
  %163 = load %struct.slot*, %struct.slot** %162, align 8
  store %struct.slot* %163, %struct.slot** %9, align 8
  br label %14

164:                                              ; preds = %27, %14
  %165 = load i8*, i8** %5, align 8
  %166 = load i8*, i8** %4, align 8
  %167 = ptrtoint i8* %165 to i64
  %168 = ptrtoint i8* %166 to i64
  %169 = sub i64 %167, %168
  %170 = trunc i64 %169 to i32
  ret i32 %170
}

declare dso_local %struct.pci_func* @cpqhp_slot_find(i32, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
